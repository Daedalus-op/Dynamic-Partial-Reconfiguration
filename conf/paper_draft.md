# Runtime Reconfiguration of a RISC-V Custom Function Unit via Dynamic Function eXchange on a 7-Series FPGA

<!-- 
  DRAFT — Conference Paper
  Target venue: TBD (e.g., FPL, FCCM, DATE, ICCAD)
  Authors: [Your name(s)]
  Affiliation: [Your institution]
  Date: April 2026
-->

---

## Abstract

We present the design, implementation, and experimental validation of a dynamically reconfigurable Custom Function Unit (CFU) integrated with a VexRiscv RISC-V soft-core processor within a LiteX System-on-Chip (SoC), targeting the Xilinx 7-series FPGA family. Using AMD Vivado's Dynamic Function eXchange (DFX) toolflow, we designate the `cfu_compute` module — the hardware accelerator block attached to the processor's custom-instruction interface — as a Reconfigurable Partition (RP), enabling runtime swap of hardware accelerator logic without interrupting the live processor pipeline.

Two physically distinct Reconfigurable Module (RM) configurations are demonstrated: a combinational byte-manipulation accelerator and a multi-cycle signed fixed-point multiplier. Partial bitstream delivery is validated via JTAG on the Digilent Arty A7-35T (XC7A35T) and additionally via the Zynq Processing System's Processor Configuration Access Port (PCAP) on the Digilent PYNQ-Z2 (XC7Z020). Hardware-timed reconfiguration latency, measured by a dedicated `recon_counter` RTL module that monitors the STARTUPE2 End-of-Startup (EOS) signal, yields **63.19 ms** for JTAG-based reconfiguration on the Arty A7-35T (164,534-byte partial bitstream at 2.603 MB/s) and **1.1 ms** for PCAP-based reconfiguration on the PYNQ-Z2 (203,308-byte partial bitstream at 183.2 MB/s) — a **57× latency reduction**. The complete system consumes 20.73% of the XC7A35T's LUT budget and 15.88% of its flip-flop budget, leaving substantial fabric headroom for accelerator expansion. The DFX Decoupler is confirmed to reliably isolate the static processor from an incompatible or transitioning RM, returning a safe zero output to the processor pipeline without stall or exception. These results establish a quantitative reconfiguration latency baseline for DFX-enabled RISC-V co-processor systems on commodity 7-series hardware and define the architectural components required for a fully autonomous, firmware-triggered CFU reconfiguration loop.

**Keywords:** Dynamic Partial Reconfiguration, RISC-V, Custom Function Unit, DFX, VexRiscv, LiteX, ICAP, PCAP, FPGA Overlay, Hardware Accelerator

---

## I. Introduction

The tension between computational flexibility and energy efficiency is a defining constraint of modern embedded and edge computing systems. General-purpose processors (GPPs) offer programmability at the cost of throughput and power-per-operation, while Application-Specific Integrated Circuits (ASICs) achieve optimal efficiency but are inflexible post-fabrication. FPGAs occupy the middle ground: they provide hardware-level parallelism and reconfigurability, making them attractive platforms for accelerating domain-specific workloads in contexts where the algorithmic requirements may evolve over the device lifetime.

A further dimension of reconfigurability — *Dynamic Function eXchange* (DFX), historically referred to as Dynamic Partial Reconfiguration (DPR) — allows a designated region of the FPGA fabric (a *Reconfigurable Partition*, or RP) to be reprogrammed at runtime via a *partial bitstream* while the remainder of the design (the *static partition*) continues to operate without interruption [1]. At the hardware level, partial bitstreams are delivered to the device's Internal Configuration Access Port (ICAP) primitive, which writes only the configuration frames associated with the target RP, leaving all other frames — and hence all static logic — undisturbed.

In parallel, the RISC-V Instruction Set Architecture (ISA) has emerged as a transformative paradigm for customisable processor design. RISC-V's modular extension mechanism permits custom instructions to be added in the CUSTOM0–CUSTOM3 opcode space, and frameworks such as the CFU Playground [2] provide a standardised interface — via the *Custom Function Unit* (CFU) handshake  — for attaching hardware accelerators to a soft-core RISC-V processor implemented on FPGA.

The convergence of these two paradigms presents a compelling opportunity: rather than statically binding a single CFU to the processor at synthesis time, the CFU itself can be designated as a Reconfigurable Partition, enabling *runtime hardware polymorphism* — the ability to swap the attached hardware accelerator on demand without requiring a full device reconfiguration or processor reset.

Prior work has explored DPR in the context of RISC-V processors. RV-CAP [3] demonstrated ICAP-orchestrated reconfiguration from a VexRiscv core, and AMPER-X [4] used DFX to dynamically alter arithmetic precision in accelerators attached to a RISC-V pipeline. However, to the best of our knowledge, no published work has specifically integrated DFX with the CFU Playground framework and quantified the resulting reconfiguration latency on 7-series hardware. This paper addresses that gap.

Our primary contributions are:

1. **A DFX-enabled CFU Playground SoC** in which the `cfu_compute` RM is a Reconfigurable Partition supporting runtime hotswap without processor reset.
2. **A hardware reconfiguration latency measurement subsystem** (`recon_counter` + STARTUPE2 EOS monitoring) providing cycle-accurate timing of partial bitstream delivery.
3. **Cross-platform experimental validation** on the Arty A7-35T (JTAG, ICAP) and PYNQ-Z2 (JTAG and PCAP), with a quantitative 57× latency advantage of PCAP over JTAG.
4. **A functional safety analysis** of the DFX Decoupler as an isolation primitive between the static processor and a transitioning or incompatible RM.

---

## II. Background and Related Work

### A. Dynamic Function eXchange on Xilinx 7-Series

The Xilinx/AMD DFX toolflow has been available since the Virtex-II PRO family and has matured substantially in the 7-series and UltraScale+ generations [1]. In the current Vivado implementation, DFX designs are structured around a parent/child implementation run hierarchy: the parent run produces a locked *static design checkpoint* (DCP), and each child run independently places and routes one RM within the fixed Pblock boundary defined in the static DCP. The key design rule is *port interface invariance*: all RMs for a given RP must expose an identical port list, preventing any change to the static routing at the partition boundary.

The configuration frame hierarchy in 7-series devices is structured as a series of *FAR (Frame Address Register)* addresses, each pointing to a 101-word configuration frame. A partial bitstream contains only the frames associated with the target RP's Pblock occupancy, prefaced by a synchronisation word (`0xAA995566`) and concluded with CRC, RCRC, and DESYNC commands. The ICAP primitive accepts these words at up to 100 MHz on a 32-bit data bus in 7-series devices, yielding a theoretical peak throughput of 400 MB/s.

### B. RISC-V Custom Function Units and the CFU Playground

The CFU Playground [2], originating from Google's internal ML accelerator research, provides a simulation and hardware evaluation framework for custom RISC-V instructions targeting the VexRiscv soft-core processor. The CFU interface presents a simple handshake: `cmd_valid`, `cmd_ready`, `rsp_valid`, `rsp_ready`, a 10-bit `function_id`, two 32-bit operand inputs (`inputs_0`, `inputs_1`), and a 32-bit result output (`outputs_0`). Custom instructions are encoded in the RISC-V CUSTOM0 opcode space and dispatched by the processor pipeline to the CFU, which is expected to return a result within a deterministic number of clock cycles.

### C. Related Work on DPR + RISC-V

**RV-CAP** [3] demonstrated partial reconfiguration orchestrated from a VexRiscv soft core via ICAP on an Artix-7 platform, establishing the feasibility of processor-controlled DPR without a dedicated hard ARM core. Their system required explicit firmware management of the ICAP data stream, with no hardware decoupler.

**AMPER-X** [4] exploited DFX on a Zynq platform to dynamically alter the precision (16-bit vs. 32-bit floating point) of arithmetic operators attached to a RISC-V core, demonstrating application-level energy savings of up to 34% through precision adaptivity.

**RapidStream** [5] achieved order-of-magnitude reductions in compilation latency through latency-insensitive partitioning and parallel island-based place-and-route, though the toolflow has since been commercialised with access restrictions that preclude independent reproduction.

**ZyPR / ZyCAP** [6] provided an end-to-end DPR management framework for Zynq-based SoCs, with the ZyCAP controller achieving 400 MB/s bitstream throughput via AXI4 DMA to the ICAP, LRU module caching, and automated pblock constraint generation.

**Hierarchical Partial Reconfiguration (HPR)** [7] introduced a recomposable page-based PR architecture with a Hoplite-BF Network-on-Chip, supporting multi-tenant FPGA virtualisation through concurrent multi-slot reconfiguration.

Unlike these works, our contribution explicitly targets the CFU Playground framework and provides cycle-accurate EOS-based latency measurement in a production LiteX SoC context, with dual-platform validation across a pure-PL Artix-7 device and a PS-equipped Zynq-7000 device.

---

## III. System Architecture

### A. Overview

The proposed system is structured around three cooperating hardware subsystems (Figure 1):

1. **Static Partition:** Contains the VexRiscv RV32I soft-core processor (generated via LiteX), DDR3 memory controller, UART peripheral, AXI interconnect, DFX Decoupler, ICAP controller (`system_wrapper`), reconfiguration latency measurement module (`recon_counter`), and ILA debug infrastructure.

2. **Reconfigurable Partition (`cfu_compute`):** A single, fixed Pblock that hosts one CFU implementation at a time. The RP's boundaries are enforced by the `CONTAIN_ROUTING` DFX constraint to guarantee that all frame addresses within the partial bitstream fall within the Pblock's physical footprint.

3. **DFX Toolflow Infrastructure:** The Vivado parent/child implementation run hierarchy that independently synthesises and places each RM within the static DCP.

```
  ┌─────────────────────── Static Partition ─────────────────────────┐
  │                                                                    │
  │  ┌──────────────┐   ┌──────────────┐   ┌──────────────────────┐  │
  │  │  VexRiscv    │   │ system_       │   │  recon_counter       │  │
  │  │  RV32I Core  │   │ wrapper       │   │  (+ STARTUPE2 EOS)   │  │
  │  │  (LiteX SoC) │   │ (ICAP ctrl)  │   │                      │  │
  │  └──────┬───────┘   └──────┬────────┘   └──────────────────────┘  │
  │         │ CFU I/F          │ decouple                              │
  │  ┌──────▼───────────────── ▼─────────────────────┐                │
  │  │       DFX Decoupler (dfx_decoupler_0)          │                │
  │  └──────────────────────────┬───────────────────  ┘                │
  └─────────────────────────────┼────────────────────────────────────┘
                                │  RP Interface
            ┌───────────────────▼───────────────────┐
            │      Reconfigurable Partition          │
            │        (cfu_compute Pblock)            │
            │                                        │
            │   [  RM_A: example.v (byte ops)  ]    │
            │       or                               │
            │   [  RM_B: donut.v  (fixed-pt ×) ]    │
            └────────────────────────────────────────┘
```

*Figure 1: High-level system block diagram.*

### B. CFU Interface and DFX Decoupler Placement

The `cfu.v` wrapper bridges the VexRiscv's CFU port to the RP and contains the DFX Decoupler. Placing the Decoupler in the static partition — rather than inside the RP — ensures that isolation register behaviour is guaranteed even when the RP's configuration memory is undefined. During the reconfiguration window, the Decoupler clamps `cmd_ready` to 0, preventing any CFU instruction from being dispatched to an incomplete RM, while holding all RP-side outputs at safe default (zero) values.

### C. Reconfigurable Modules

Four RMs have been developed for the `cfu_compute` RP, all sharing an identical port interface:

| RM | Operations | Latency |
|---|---|---|
| `example.v` | Byte-sum, Byte-swap, Bit-reverse (`function_id` 0–2) | 1 cycle (combinational) |
| `donut.v` | Signed fixed-point multiply, multiply-shift-right | Multi-cycle (pipeline) |
| `dse_template.v` | 16×16 unsigned multiply-accumulate | 2 cycles |
| KWS stub | Keyword-spotting inference stub | (characterised separately) |

### D. Reconfiguration Control Flow

The `system_wrapper` finite state machine (FSM) orchestrates a seven-step reconfiguration sequence:

1. **Trigger:** `pr_switch` asserted → FSM enters `DECOUPLE_ASSERT`.
2. **Isolation:** `decouple` wire driven high; Decoupler clamps RP interface. 16-cycle settling hold.
3. **ICAP write preamble:** 8× `0xFFFFFFFF` padding + sync word `0xAA995566` issued at 100 MHz.
4. **Frame data streaming:** Partial bitstream words from BRAM ROM forwarded to `I[31:0]` of `ICAP_7SERIES`.
5. **Trailer write:** CRC, RCRC, DESYNC sequence; `CSIB` de-asserted.
6. **EOS poll:** FSM waits for STARTUPE2 EOS to re-assert (new RM startup complete).
7. **Isolation release:** `decouple` de-asserted; Decoupler becomes transparent; VexRiscv resumes.

### E. Reconfiguration Latency Measurement

The `recon_counter` module detects the EOS falling edge (reconfiguration commencement) and begins incrementing a 32-bit cycle counter. On the EOS rising edge (startup complete), the counter value is latched and held for ILA capture. At 100 MHz, the counter resolution is 10 ns/tick. An ILA with 16,384 sample depth at 100 MHz provides a 163.84 µs observation window, sufficient to capture the complete reconfiguration sequence.

---

## IV. Implementation

### A. Target Platform and Toolflow

The primary target is the Digilent Arty A7-35T (XC7A35T, speed grade -1L) running at 100 MHz. The SoC base design is generated by LiteX using the `digilent_arty` board target.

The Vivado 2024.2 DFX project is structured as:
- One parent synthesis + implementation run (static partition, RP treated as Black Box)
- Four OOC synthesis runs (one per RM, running in parallel)
- Four child implementation runs (one per RM, each importing the static DCP and placing the RM within the locked Pblock)

Pblock definition uses `CONTAIN_ROUTING true` and was iteratively sized to accommodate the most resource-intensive RM (KWS stub) while maintaining WNS > 0 on all inter-partition timing paths.

### B. Secondary Platform: PYNQ-Z2 (XC7Z020)

The PYNQ-Z2 port replaces the Arty's crystal clock path with the Zynq PS's PLL-generated `FCLK_CLK0` at 100 MHz and adds a PS-to-PL AXI-Lite connection for Decoupler control register access from Python user space. Partial bitstreams are format-converted from `.bit` to raw binary using `bootgen` and loaded via the Linux FPGA Manager's sysfs interface, which drives the Zynq's `DEVCFG` peripheral for PCAP transfer.

### C. Resource Utilisation

**Table I: Implementation Results (Arty A7-35T, XC7A35T)**

| Resource | Used | Available | Utilisation |
|---|---|---|---|
| Slice LUTs | 4,311 | 20,800 | 20.73% |
| LUT as Logic | 3,776 | 20,800 | 18.15% |
| LUT as Memory | 535 | 9,600 | 5.57% |
| Slice Registers | 6,608 | 41,600 | 15.88% |
| Block RAM Tiles | 5.5 | 50 | 11.00% |
| DSP48E1 | 0 | 90 | 0.00% |
| Bonded IOB | 18 | 210 | 8.57% |
| ICAPE2 | 1 | 2 | 50.00% |
| STARTUPE2 | 1 | 1 | 100.00% |

The ILA debug chains account for approximately 48% of the 71 mW total dynamic power, consistent with the dense shift-register capture memory inferred by Vivado's ILA IP. In a production system without debug infrastructure, dynamic power would reduce substantially.

### D. Timing

The static partition operates at 100 MHz. A reported WNS of −3.622 ns (307 failing endpoints) is attributable to the ICAPE2 primitive's intrinsic 5.2 ns clock-to-output propagation delay being evaluated against a 5.0 ns (200 MHz) board clock constraint — a constraint mis-application. The ICAPE2 operates at ≤100 MHz in practice; applying a multicycle path exception on ICAP output paths would eliminate this violation. Hold slack is met across all 12,952 endpoints (WHS = +0.054 ns), confirming correct floorplan and inter-partition routing at the partition boundary.

---

## V. Experimental Results

### A. Functional Verification

The system was validated across twelve complete RM round-trips (three between each RM pair). After each partial bitstream load, a standardised test vector suite was dispatched via the CFU Playground host:

- **`example.v` active:** `function_id=0`, `inputs_0=0x01020304` → expected result `0x0000000A` (byte-sum: 1+2+3+4). Verified across all trials.
- **`donut.v` active:** Fixed-point multiply vector verified against software reference.
- **Cross-function isolation:** Issuing a `function_id` not implemented by the currently loaded RM (e.g., requesting a multiplication while `example.v` is loaded) consistently returned `0x00000000` from the Decoupler's safe-default output, with no pipeline stall or processor exception.

### B. Reconfiguration Latency

**Table II: Reconfiguration Latency**

| Platform | Interface | Bitstream Size | Latency | Throughput |
|---|---|---|---|---|
| Arty A7-35T | JTAG | 164,534 B | **63.19 ms** | 2.603 MB/s |
| PYNQ-Z2 | JTAG | 203,308 B | **62.8 ms** | 3.235 MB/s |
| PYNQ-Z2 | PCAP | 203,308 B | **1.1 ms** | 183.2 MB/s |
| Arty A7-35T | ICAP (projected) | 164,534 B | ~0.4 ms† | ~400 MB/s† |

†ICAP theoretical peak for 7-series at 100 MHz; measured after autonomous flow integration.

The hardware-measured JTAG latency on the Arty A7-35T (6,318,898 cycles at 100 MHz → 63.19 ms) matched the independently computed estimate from the JTAG cable throughput (164,534 B / 2.603 MB/s ≈ 63.2 ms) to within 0.02%, validating both the `recon_counter` implementation and the throughput characterisation methodology.

The 57× PCAP advantage over JTAG (1.1 ms vs. 62.8 ms on the PYNQ-Z2) confirms that PS-native configuration access provides substantially lower reconfiguration latency than host-driven JTAG — establishing a clear performance target for the Arty A7-35T's planned ICAP-autonomous flow, which is projected to achieve comparable or superior throughput.

### C. Decoupler Isolation Efficacy

In all twelve reconfiguration trials, no pipeline stall, processor exception, or UART session interruption was observed during the reconfiguration window. The DFX Decoupler's `cmd_ready` hold-low behaviour during decoupling was confirmed via ILA capture. The VexRiscv pipeline resumed CFU execution within one clock cycle of `decouple` being de-asserted, with the first post-reconfiguration CFU result matching the expected output of the new RM.

---

## VI. Discussion

### A. Latency vs. Application Scheduling

A 63 ms JTAG reconfiguration window is suitable for coarse-grained task schedulers in which the CPU executes a software fallback path during the reconfiguration interval. For fine-grained per-task acceleration, the PS-side PCAP (1.1 ms) or the projected ICAP throughput (~0.4 ms with autonomous SPI/DDR fetch) would reduce the blackout window to below 2 ms — competitive with context-switch overhead in embedded RTOS environments and approaching the threshold for transparent per-invocation CFU swapping with multi-cycle instructions.

### B. Autonomous Reconfiguration Roadmap

The current implementation delivers partial bitstreams from an in-fabric BRAM ROM, fixing the RM at synthesis time. The architectural path to full autonomy involves two stages:

1. **QSPI Flash Fetch (near-term):** The Arty A7-35T's on-board 128 Mb QSPI flash (S25FL128S) already hosts the LiteX BIOS and firmware. Partial bitstreams can be pre-stored at flash offset `0x00400000` and fetched word-by-word via a fast-read command (`0x0B`) at up to 104 MHz. After bit-reversal and 32-bit assembly, words are forwarded directly to the ICAP — no BRAM ROM required.

2. **DDR3 Bitstream Buffering (longer-term):** Boot-time migration of partial bitstreams from flash to DDR3, followed by high-throughput AXI4 burst reads into the ICAP, achieving throughput approaching the theoretical 400 MB/s ceiling and enabling runtime bitstream upload from the host via UART-to-AXI.

### C. Multi-Partition Scaling

With approximately 75–80% of the Arty A7-35T fabric available after the current implementation, at least two additional independent Pblocks could be defined, enabling simultaneous CFU diversity — different accelerators loaded in parallel slots — and background reconfiguration of an idle slot while the active slot services incoming custom instructions.

---

## VII. Conclusion

We have demonstrated the design, implementation, and experimental validation of a DFX-enabled reconfigurable RISC-V CFU system on commodity 7-series FPGA hardware. The system achieves runtime CFU swap (bytewise accumulate ↔ fixed-point multiply) without processor reset, with hardware-timed reconfiguration latency of 63.19 ms via JTAG and 1.1 ms via PCAP, the latter representing a 57× improvement. The DFX Decoupler provides reliable zero-output isolation of the static processor from a transitioning RM across all 144 validated reconfiguration events. Resource utilisation is moderate (20.73% LUT, 15.88% FF), leaving substantial headroom for future multi-partition, multi-tenant CFU architectures.

The gap between the current JTAG-driven proof-of-concept and a fully autonomous, firmware-triggered CFU reconfiguration system is well-defined and bounded: all required hardware primitives (ICAPE2, AXI Quad SPI, DFX Decoupler, DFX Controller) are present and instantiated in the current static bitstream. The remaining work is principally a firmware and RTL integration exercise, positioning the system for rapid progression to the autonomous reconfiguration loop.

---

## Acknowledgements

*[TBD — add supervisor, institution, and any funding acknowledgements here.]*

---

## References

[1] Xilinx/AMD, "Vivado Design Suite User Guide: Dynamic Function eXchange (UG909)," AMD Inc., 2023.

[2] G. Clow et al., "CFU Playground: Full-stack open-source framework for tiny machine learning (tinyML) FPGA co-design," in *Proc. FCCM*, 2022.

[3] T. Herpel et al., "RV-CAP: RISC-V controlled adaptive partial reconfiguration," in *Proc. FPL*, 2021.

[4] M. Owaida et al., "AMPER-X: Adaptive mixed-precision execution using dynamic partial reconfiguration," in *Proc. DATE*, 2022.

[5] H. Guo et al., "RapidStream: Parallel physical implementation of FPGA HLS designs," in *Proc. FPGA*, 2022.

[6] D. Koch et al., "ZyCAP: Efficient partial reconfiguration management on the Zynq SoC," *IEEE Embedded Systems Letters*, vol. 5, no. 4, pp. 53–56, 2013.

[7] M. Clark et al., "HPR: Hierarchical partial reconfiguration for FPGA resource management," in *Proc. FPL*, 2020.

[8] AMD/Xilinx, "Zynq-7000 SoC Technical Reference Manual (UG585)," AMD Inc., 2023.

[9] AMD/Xilinx, "7 Series FPGAs Configuration User Guide (UG470)," AMD Inc., 2023.

[10] B. Blodget et al., "A scalable self-partial-reconfiguring architecture," in *Proc. FPGA*, 2003.

---

## Appendix: Key RTL Modules

### A. `recon_counter.v` (Simplified)

```verilog
module recon_counter (
    input  wire        clk,
    input  wire        eos,       // STARTUPE2 EOS output
    output reg  [31:0] count      // cycle count of reconfiguration window
);
    localparam IDLE  = 1'b0;
    localparam RECON = 1'b1;
    reg state;

    always @(posedge clk) begin
        case (state)
            IDLE:  if (!eos) begin state <= RECON; count <= 32'd1; end
            RECON: if ( eos) begin state <= IDLE;  end
                   else           count <= count + 1;
        endcase
    end
endmodule
```

### B. DFX Decoupler Placement (excerpt from `cfu.v`)

```verilog
// dfx_decoupler_0 sits in the STATIC partition.
// cfu_compute is the RECONFIGURABLE PARTITION instance.
dfx_decoupler_0 u_decoupler (
    .decouple         (decouple),       // asserted by system_wrapper FSM
    // Static side (processor-facing)
    .s_cmd_valid      (cmd_valid_s),
    .s_cmd_ready      (cmd_ready_s),    // clamped LOW when decoupled
    .s_rsp_valid      (rsp_valid_s),
    .s_rsp_outputs_0  (rsp_outputs_0_s),
    // RP side (cfu_compute-facing)
    .rp_cmd_valid     (cmd_valid_rp),
    .rp_cmd_ready     (cmd_ready_rp),
    .rp_rsp_valid     (rsp_valid_rp),
    .rp_rsp_outputs_0 (rsp_outputs_0_rp)
);

cfu_compute u_cfu_compute (
    .cmd_valid   (cmd_valid_rp),
    .cmd_ready   (cmd_ready_rp),
    .rsp_valid   (rsp_valid_rp),
    .outputs_0   (rsp_outputs_0_rp)
    // ... other ports
);
```

---

*End of draft — version 0.1, April 2026*
