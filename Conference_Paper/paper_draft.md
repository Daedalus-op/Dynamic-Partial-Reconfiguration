# An Architecture for Runtime-Reconfigurable RISC-V Co-Processors using Dynamic Partial Reconfiguration

**Arun Murrugappan I, Pranav Varkey, Shrikrishna Pandit**
Centre for Heterogeneous and Intelligent Processing Systems, PES University, Bangalore, India

---

## Abstract

We propose an architecture that enables runtime swapping of hardware accelerators attached to a RISC-V soft-core processor without resetting the device. The architecture uses Dynamic Partial Reconfiguration (DPR) — implemented through AMD's Dynamic Function eXchange (DFX) toolflow — together with Google's CFU Playground framework. The Custom Function Unit (CFU), the hardware block that executes RISC-V `custom-0` instructions, is placed inside a Reconfigurable Partition and isolated by a DFX Decoupler IP in the static region. Because signals must cross the Pblock boundary and traverse the DFX Decoupler, pipeline registers are added at both the input and output of the CFU inside the partition to maintain timing closure at 100 MHz; this introduces a two-cycle latency penalty on every CFU instruction. We validate the architecture on two 7-series FPGA platforms: the Digilent Arty A7-100T (Artix-7, pure programmable logic) and the PYNQ-Z2 (Zynq-7020, with an ARM Processing System). Three reconfiguration paths — JTAG, PCAP, and ICAP — are analysed in terms of the hardware they require and the latency they achieve. JTAG-driven reconfiguration completes in approximately 63 ms on both platforms. PCAP, available only on the Zynq device, reduces this to 1.1 ms at the hardware level, though Linux driver overhead adds approximately 67 ms to the end-to-end time — motivating the fully autonomous ICAP path. Across all tested reconfiguration events, the DFX Decoupler maintained complete isolation of the static partition with zero processor exceptions. The static partition uses approximately 19.6% of LUTs and 7.8% of flip-flops, leaving substantial headroom for multi-partition extensions.

**Keywords:** Dynamic Partial Reconfiguration, Custom Function Unit, RISC-V, VexRiscv, LiteX, DFX Decoupler, ICAP, PCAP, 7-series FPGA

---

## I. Introduction

General-purpose processors are flexible but inefficient for compute-heavy tasks. ASICs are efficient but cannot be changed after fabrication. FPGAs sit between these two extremes: they offer hardware-level parallelism and can be reconfigured after deployment. Dynamic Partial Reconfiguration (DPR) takes this a step further by allowing a specific region of the FPGA fabric to be updated at runtime while the rest of the device continues operating. AMD implements this capability through its Dynamic Function eXchange (DFX) toolflow [1], which provides the design infrastructure — Reconfigurable Partitions, Pblock constraints, and the DFX Decoupler IP — used in this work.

Separately, RISC-V's open instruction set architecture allows designers to add custom hardware instructions. The CFU Playground framework [2], developed by Google Research, provides a standard interface — the Custom Function Unit (CFU) — for connecting domain-specific accelerators to a VexRiscv soft-core processor on FPGA. In its standard use, a single CFU implementation is fixed at synthesis time and cannot be changed without reprogramming the entire device.

This paper proposes an architecture that combines these two capabilities. By placing the CFU inside a DFX Reconfigurable Partition, we make the processor's hardware accelerator swappable at runtime. The processor continues executing while the accelerator is replaced — effectively hot-patching the RISC-V instruction set without a device reset.

Prior work has explored related ideas. RV-CAP [3] demonstrated partial reconfiguration controlled by a VexRiscv core via ICAP on an Artix-7, showing that a soft-core processor can manage its own reconfiguration without a hard ARM core. AMPER-X [4] used DFX on a Zynq platform to swap floating-point precision in accelerators attached to a RISC-V pipeline, achieving up to 34% energy savings. Neither of these targets the CFU Playground interface, and neither addresses the specific challenge of integrating the standardised CFU handshake with a DFX Decoupler boundary.

The contributions of this work are:

1. An architecture that integrates AMD's DFX toolflow with Google's CFU Playground framework, enabling runtime accelerator swap without processor reset — the first such integration reported in the literature.
2. A comparative analysis of three reconfiguration paths (JTAG, PCAP, ICAP) in terms of hardware overhead, host dependency, and observed latency.
3. Cross-platform validation on both a pure-PL device (Artix-7) and a PS-assisted device (Zynq-7020), demonstrating that the architecture is portable across 7-series variants.
4. Experimental confirmation that the DFX Decoupler provides deterministic isolation during reconfiguration, with zero pipeline stalls across all tested events.

---

## II. Background and Related Work

### A. DFX on Xilinx 7-Series

The DFX toolflow structures FPGA designs around a parent/child implementation hierarchy. The parent run produces a locked static design checkpoint (DCP), and each child run independently places and routes one Reconfigurable Module (RM) within a fixed Pblock boundary [1]. All RMs for a given Reconfigurable Partition (RP) must share an identical port list so that the static-side routing does not need to change when the RM is swapped.

Configuration memory on 7-series devices is organised as 101-word frames, each addressed by a Frame Address Register (FAR). A partial bitstream contains only the frames that belong to the target Pblock. The ICAP primitive accepts 32-bit words at up to 100 MHz. The DFX Decoupler IP (PG227) clamps all signals crossing the RP boundary to safe default values when asserted, preventing undefined signal propagation during reconfiguration [1].

### B. CFU Playground and VexRiscv

CFU Playground [2] provides a reference LiteX SoC built around a VexRiscv RV32IM soft-core processor. The CFU interface uses a simple handshake: `cmd_valid`, `cmd_ready`, a 10-bit `function_id`, two 32-bit operand inputs, `rsp_valid`, `rsp_ready`, and a 32-bit result output. Custom instructions encoded in the `CUSTOM0` opcode space are dispatched by the processor pipeline to the CFU, which returns a result within a deterministic number of cycles.

### C. Related Work

**RV-CAP** [3] implemented ICAP-controlled partial reconfiguration from a VexRiscv core on Artix-7, requiring explicit firmware management of the ICAP data stream with no hardware decoupler. **AMPER-X** [4] used DFX on Zynq to dynamically change floating-point precision in RISC-V-attached operators. **RapidStream** [5] achieved order-of-magnitude compilation speedups through island-based parallel place-and-route. **ZyPR/ZyCAP** [6] provided an end-to-end partial reconfiguration management framework for Zynq SoCs, with ZyCAP using AXI4 DMA to drive the ICAP at high throughput. **HPR** [7] introduced a page-based partial reconfiguration architecture with a Hoplite-BF Network-on-Chip for multi-tenant FPGA virtualisation. **DORA** [10] reduced DFX Decoupler isolation overhead through signal-based acknowledgement.

Unlike these works, our architecture targets the CFU Playground framework's standardised interface and validates across both pure-PL and PS-assisted 7-series platforms, with a focus on the architectural integration rather than a single configuration path.

---

## III. System Architecture

### A. Overview

The architecture is built around three cooperating subsystems (Fig. 1):

1. **Static Partition**: Contains the VexRiscv RV32I core (generated via LiteX), DDR3 memory controller, UART peripheral, DFX Decoupler, ICAP controller (`system_wrapper`), reconfiguration counter (`recon_counter`), and ILA debug core. All static logic is clocked at 100 MHz from an on-board MMCM.

2. **Reconfigurable Partition (`cfu_compute`)**: A single Pblock that hosts one CFU implementation at a time. The Pblock boundary is enforced by the `CONTAIN_ROUTING` DFX constraint, which ensures that all configuration frames within the partial bitstream fall within the Pblock's physical footprint.

3. **DFX Toolflow Infrastructure**: Vivado's parent/child implementation run hierarchy, which independently synthesises and places each RM within the locked static DCP.

![Fig. 1: System block diagram — DFX-integrated CFU Playground architecture showing the static partition, DFX Decoupler boundary, and reconfigurable cfu_compute partition.](../Report/assets/CFUxDFx.png)

### B. CFU Interface and DFX Decoupler Placement

![Fig. 2: CFU Playground interface architecture — the standardised handshake between VexRiscv and the Custom Function Unit.](../Report/assets/CFU_Architecture.png)

The `cfu.v` wrapper bridges the VexRiscv's CFU port to the RP and contains the DFX Decoupler instance. The Decoupler is placed in the static partition rather than inside the RP. This is a deliberate design choice: if the Decoupler were inside the RP, it would be destroyed during reconfiguration and could not provide isolation when it is needed most. By keeping it in the static region, the Decoupler remains functional even when the RP's configuration memory is in an undefined state.

During reconfiguration, the Decoupler holds `cmd_valid` and `rsp_valid` low on the RP-facing side. This prevents the processor from dispatching any CFU instruction to an incomplete RM and ensures that any instruction issued during this window returns a deterministic zero rather than undefined data.

### C. Reconfigurable Modules

Four RMs have been developed for the `cfu_compute` partition. All share an identical port interface, as required by DFX:

| RM | Operations | Compute Latency | Total Latency (with boundary registers) |
|---|---|---|---|
| `example.v` | Byte-sum, byte-swap, bit-reverse (`function_id` 0–2) | Combinational | 3 cycles |
| `donut.v` | Signed fixed-point multiply, multiply-shift-right | 1 cycle (pipelined) | 3 cycles |

**Pblock boundary pipelining.** Signals crossing the Pblock boundary must travel through the DFX Decoupler and across the physical gap between the static and reconfigurable regions. At 100 MHz (10 ns clock period), the combined propagation delay through the Decoupler and across the boundary exceeded the available timing margin, causing setup violations. To resolve this, a register stage was added at both the input and output of the CFU inside the Pblock. The input register captures the incoming command signals (`cmd_valid`, `function_id`, `inputs_0`, `inputs_1`) one cycle after they arrive from the static side. The output register captures the CFU's computed result one cycle before it is sent back. Together, these two registers add two cycles of latency to every CFU instruction. For a CFU that would otherwise be combinational (like `example.v`), the total response time becomes three cycles: one for the input register, one for the combinational compute, and one for the output register. The VexRiscv pipeline stalls for these additional cycles, waiting for `rsp_valid` to assert. This is a necessary cost of placing the CFU across a DFX partition boundary — without the registers, the design does not close timing at the target frequency.

### D. Design Decisions and Trade-offs

**Single partition vs. multi-partition.** The current architecture uses a single RP. This simplifies the DFX constraint setup and avoids the complexity of multi-region clock distribution, but limits the system to one active accelerator at a time. The low resource utilisation of the static partition (~19.6% LUTs) leaves substantial headroom for adding additional independent Pblocks in future work.

**Pipeline stall trade-off.** The two-cycle latency added by the boundary registers (§III-C) means the VexRiscv pipeline stalls for two extra cycles on every `custom-0` instruction. For compute-heavy workloads where each CFU call replaces tens or hundreds of scalar instructions, this overhead is negligible. For tight inner loops issuing back-to-back CFU calls, the stall becomes more visible. This is an inherent cost of crossing a DFX partition boundary at high clock frequencies and could be reduced by lowering the system clock or by placing the Pblock closer to the processor's physical location on the die.

**Static-side measurement infrastructure.** The reconfiguration latency counter (`recon_counter`) and the ILA debug core are both placed in the static partition. This ensures they are not affected by the reconfiguration process and can observe it from the outside. The counter uses the STARTUPE2 primitive's End-of-Startup (EOS) signal as its gating input: EOS drops low when the configuration engine begins processing a partial bitstream and rises when the startup sequence for the new RM completes. At 100 MHz, this gives 10 ns resolution.

**Port interface invariance.** All RMs expose exactly the same port list. This is a hard requirement of DFX — the static routing at the partition boundary must not change between RM swaps. In practice, this means that RMs with fewer features simply ignore unused `function_id` values and return zero for unrecognised instructions.

### E. Reconfiguration Control Flow

Regardless of which path delivers the bitstream data, the reconfiguration sequence inside the FPGA follows the same steps:

1. **Trigger**: A reconfiguration request is asserted — via push-button (`pr_switch`), a PYNQ API call, or a firmware signal.
2. **Isolate**: The `decouple` signal is driven high. The DFX Decoupler clamps all signals at the RP boundary to safe defaults.
3. **Stream**: Partial bitstream frames are written to the configuration memory through the active path (JTAG, PCAP, or ICAP).
4. **Configure**: The configuration engine processes the incoming frames. During this interval, the STARTUPE2 EOS signal is low and the `recon_counter` increments.
5. **Complete**: EOS rises, indicating the new RM has completed its startup sequence. The counter latches its final value.
6. **Release**: The `decouple` signal is de-asserted. The Decoupler becomes transparent and the new RM is live on the CFU interface.

---

## IV. Reconfiguration Paths

The architecture supports three distinct reconfiguration paths, each offering a different trade-off between implementation complexity, host dependency, and achievable latency. This section describes each path and compares the hardware overhead they introduce.

### A. JTAG-Based Reconfiguration

![Fig. 3: JTAG-based reconfiguration architecture — the host PC streams partial bitstream data to the FPGA through the USB-JTAG bridge.](../Report/assets/JTAG_reconfig_arch.png)

JTAG is the simplest reconfiguration path. The host PC connects to the FPGA through the on-board USB-JTAG bridge and uses Vivado Hardware Manager to stream the partial bitstream. The FPGA's internal JTAG TAP controller receives the data and writes it directly into the configuration memory for the target Pblock. No additional RTL is required on the FPGA side — the TAP controller handles the configuration write internally.

**Hardware overhead:** None beyond what is already present on the FPGA. The JTAG TAP controller is a hard silicon primitive and does not consume programmable logic resources. This makes JTAG the zero-cost entry point for validating a DFX design.

**Limitation:** JTAG requires a host PC to be connected and is constrained by the USB link bandwidth. The USB-JTAG bridge on both the Arty A7 and PYNQ-Z2 sustains only 2–3 MB/s of effective data transfer, making this the slowest path by a wide margin.

### B. PCAP-Based Reconfiguration

![Fig. 4: PCAP-based reconfiguration architecture — the Zynq PS writes partial bitstream data to the PL configuration engine through the on-chip PCAP port.](../Report/assets/PCAP_reconfig_arch.png)

PCAP (Processor Configuration Access Port) is available only on Zynq devices, where an ARM Processing System (PS) sits alongside the Programmable Logic (PL). On the PYNQ-Z2, the PS runs Linux with the PYNQ Python framework. The partial bitstream is stored on the PS-side filesystem (SD card), and reconfiguration is triggered by writing to the Linux FPGA Manager sysfs interface (`/sys/class/fpga_manager/fpga0/firmware`). The kernel driver reads the bitstream and writes it to the PCAP port, which feeds directly into the PL's configuration engine.

**Hardware overhead:** The PCAP port itself is a hard silicon primitive within the Zynq PS and does not consume PL resources. However, the Zynq PS must be configured and running Linux, which adds system-level complexity. On the PL side, a PS-to-PL AXI-Lite connection is added for Decoupler control register access from Python.

**Limitation:** PCAP is not available on pure-PL devices like the Arty A7. Additionally, the Linux FPGA Manager driver introduces significant software overhead. While the hardware reconfiguration itself completes in approximately 1.1 ms, the end-to-end time measured from the PYNQ Python API is 68.55 ms — an overhead of 67.44 ms caused by the PYNQ driver stack, FPGA Manager sysfs path, kernel-space bitstream validation, and PS-to-PL bridge setup.

| Metric | Value |
|--------|-------|
| Avg. hardware reconfiguration time (ILA) | 1.109 ms |
| Avg. software reconfiguration time (PYNQ API) | 68.55 ms |
| Avg. software overhead | 67.44 ms |

This result is significant: the PCAP hardware path is fast enough for sub-millisecond reconfiguration, but the Linux software stack adds over 60 ms of overhead, bringing the user-visible latency back into the same range as JTAG. For applications that need low-latency autonomous reconfiguration on Zynq, bypassing the FPGA Manager in favour of a bare-metal or DMA-backed controller (such as ZyCAP [6]) would be necessary to realise the full benefit of the PCAP path.

### C. ICAP-Based Reconfiguration (Autonomous Path)

![Fig. 5: ICAP-based reconfiguration architecture — the target autonomous path where bitstream storage, retrieval, and delivery occur entirely within the FPGA fabric.](../Report/assets/ICAP_reconfig_arch.png)

ICAP (Internal Configuration Access Port) is the fully autonomous reconfiguration path. In this architecture, all bitstream storage, retrieval, and delivery happen within the FPGA fabric — no host PC and no hard processor are required at runtime. The static region includes a DFx Controller FSM, a Memory Controller, and a connection to external memory (SPI flash or DDR). When reconfiguration is triggered, the DFx Controller reads bitstream data from memory and writes it word-by-word to the ICAP primitive.

**Hardware overhead:** This is the most resource-intensive path. The static partition must include:
- The ICAP controller FSM (sequencing sync words, data streaming, CRC/DESYNC)
- A memory read pipeline (SPI flash controller or DDR interface)
- Flow control logic to satisfy ICAP timing and byte-ordering requirements
- The ICAPE2 primitive instance (one of two available on 7-series)

In exchange, ICAP is the only path that enables true standalone operation: the FPGA can reconfigure itself in response to an on-chip event without any external connection.

**Current status:** The ICAP controller and STARTUPE2 counter are instantiated and functional in the static region. However, the data-fetch pipeline from SPI flash has not been connected. Completing this pipeline — reading partial bitstreams from the on-board QSPI flash (Micron N25Q128) and forwarding them to the ICAP — is the primary remaining development task. Based on the flash's read throughput of approximately 50 MB/s, the projected reconfiguration latency for the current bitstream sizes is in the range of 3–4 ms.

### D. Path Comparison

| Property | JTAG | PCAP | ICAP |
|----------|------|------|------|
| Host required? | Yes (PC + USB) | Yes (Zynq PS + Linux) | No (autonomous) |
| PL resource cost | None | Minimal (AXI-Lite bridge) | Moderate (FSM + memory controller) |
| Available on Arty A7? | Yes | No | Yes |
| Available on PYNQ-Z2? | Yes | Yes | Yes |
| Observed latency | ~63 ms | ~1.1 ms (hardware) | Not yet measured |
| Implementation complexity | Trivial | Low (Linux driver handles it) | High (custom RTL required) |

The three paths represent a clear trade-off: JTAG requires no FPGA-side development but is slow and host-dependent; PCAP is fast at the hardware level but requires a Zynq device and suffers from software overhead; ICAP offers full autonomy and the highest potential throughput but demands the most RTL development effort.

---

## V. Implementation

### A. Primary Platform: Arty A7-100T

The primary target is the Digilent Arty A7-100T (XC7A100T) running at 100 MHz, clocked from a Xilinx MMCM driven by the on-board oscillator. The Vivado 2024.2 DFX project comprises one parent implementation run (static partition with the RP treated as a black box), four out-of-context synthesis runs (one per RM, executed in parallel), and four child implementation runs that each import the locked static DCP and place one RM within the Pblock.

The Pblock was iteratively sized to accommodate the most resource-intensive RM (the KWS stub) while maintaining positive worst negative slack (WNS) across all inter-partition timing paths. QSPI flash (Micron N25Q128) is allocated to the static region for initial full-bitstream delivery; the same flash will host partial bitstreams once the ICAP data-fetch pipeline is completed.

JTAG-based reconfiguration was used for initial bring-up: Vivado Hardware Manager's partial bitstream programming function performs the configuration write under host control. Post-reconfiguration functional correctness was verified by executing CFU instructions from VexRiscv firmware and checking UART output.

### B. Secondary Platform: PYNQ-Z2 (XC7Z020)

The PYNQ-Z2 port replaces the Arty's crystal clock with the Zynq PS PLL-generated FCLK_CLK0 at 100 MHz. Partial bitstreams are format-converted to raw binary via `bootgen` and loaded through the Linux FPGA Manager sysfs interface. JTAG reconfiguration was validated first to confirm that DFX Decoupler and Pblock constraints were satisfiable on the Zynq PL grid, before exercising the PCAP path.

### C. DFX Tutorial Validation

The AMD UG947 tutorial design (a counter/shift-register RM pair on a minimal Pblock) was implemented as a DFX sanity check prior to CFU Playground integration. Successful RM swap confirmed that the project environment was correctly configured for DFX compilation.

---

## VI. Validation

### A. Resource Utilisation

**Table I: Implementation Results (Arty A7-100T, XC7A100T, `donut.v` RM active)**

| Resource | Static | PRR (donut.v) | Total | Available | Utilisation |
|---|---|---|---|---|---|
| LUTs | ~12,400 | 48 | ~12,448 | 63,400 | ~19.6% |
| FFs | ~9,800 | 32 | ~9,832 | 126,800 | ~7.8% |
| BRAMs | 16 | 0 | 16 | 135 | 11.9% |
| DSPs | 4 | 0 | 4 | 240 | 1.7% |

The static region overhead is dominated by the LiteX SoC interconnect and the VexRiscv cache hierarchy. The PRR utilisation is negligible — a deliberate choice to ensure all four planned RMs fit without constraint relaxation. With roughly 80% of LUTs and 90% of flip-flops still available, the device has substantial capacity for additional reconfigurable partitions.

### B. Reconfiguration Latency

**Table II: Observed Reconfiguration Latency**

| Platform | Interface | Bitstream Size | Latency |
|---|---|---|---|
| Arty A7-35T | JTAG | 164,534 B (160.7 KB) | **63.2 ms** |
| PYNQ-Z2 | JTAG | 203,308 B (198.5 KB) | **62.8 ms** |
| PYNQ-Z2 | PCAP | 203,308 B (198.5 KB) | **1.1 ms** |

All latency values are measured using the `recon_counter` hardware timer (STARTUPE2 EOS-gated, 100 MHz clock). The counter captures the interval during which the configuration engine is actively processing the partial bitstream — from the moment EOS drops low (reconfiguration begins) to when EOS rises (startup sequence completes for the new RM). This measurement is independent of the delivery path and does not include any software-side overhead.

**JTAG is USB-bottlenecked.** Despite different bitstream sizes and different boards, both JTAG measurements land near 63 ms. The USB-JTAG link — not the FPGA — is the limiting factor. The actual configuration engine processing is a small fraction of the total; USB framing and host-side software overhead dominate.

**PCAP reduces hardware reconfiguration time to approximately 1 ms.** On the same PYNQ-Z2 board and bitstream, switching from JTAG to PCAP reduced the observed hardware reconfiguration time from 62.8 ms to 1.1 ms. However, as discussed in §IV-B, the Linux FPGA Manager adds approximately 67 ms of software overhead, bringing the end-to-end time back to ~68.6 ms from the application's perspective. This motivates the autonomous ICAP path, which would bypass all software layers entirely.

> **Note:** ICAP-autonomous reconfiguration latency is projected but not yet empirically validated. Based on the Arty A7's QSPI flash read rate (~50 MB/s) and the 165 KB bitstream size, the estimated latency is 3–4 ms.

### C. Functional Verification

The system was validated across twelve complete RM round-trips (three between each RM pair). After each partial bitstream load, a test vector suite was dispatched via CFU Playground:

- **`example.v` active**: `function_id=0`, `inputs_0=0x01020304` → result `0x0000000A` (byte-sum: 1+2+3+4). Verified across all trials.
- **`donut.v` active**: Fixed-point multiply vectors verified against a software reference.
- **Cross-function isolation**: Issuing a `function_id` not supported by the loaded RM (e.g., requesting a multiply while `example.v` is active) consistently returned `0x00000000` — the Decoupler's safe-default output — with no pipeline stall or processor exception.

### D. Decoupler Isolation Efficacy

Across all reconfiguration trials, no pipeline stall, processor exception, or UART session interruption was observed. The Decoupler's `cmd_ready` hold-low behaviour during isolation was confirmed via ILA capture. The VexRiscv pipeline resumed CFU execution within one clock cycle of `decouple` de-assertion, with the first post-reconfiguration result matching the expected output of the newly loaded RM.

---

## VII. Discussion and Future Work

### A. What the Architecture Enables

The architecture demonstrated here decouples the processor's instruction set from its synthesis-time hardware configuration. A VexRiscv core compiled with CFU Playground can start with a byte-manipulation accelerator, swap to a fixed-point multiplier mid-execution, and swap again to a keyword-spotting feature extractor — all without a device reset. The static partition continues operating throughout, and the processor sees only a brief window (one to tens of milliseconds, depending on the reconfiguration path) during which CFU instructions return zero.

For coarse-grained task scheduling — where the workload shifts every few seconds or minutes — even the 63 ms JTAG path is acceptable. For finer-grained switching, the PCAP hardware path (1.1 ms) or the projected ICAP path (3–4 ms) bring the reconfiguration window close to embedded RTOS context-switch overhead, making per-task CFU swapping a realistic possibility.

### B. Completing the ICAP Data Pipeline

The primary remaining development task is connecting the SPI flash read path to the ICAP controller's data pipeline. The Arty A7's on-board QSPI flash (Micron N25Q128) already hosts the LiteX BIOS and firmware. Partial bitstreams can be pre-stored at a flash offset and fetched word-by-word via a fast-read command at up to 104 MHz. Following bit-reversal and 32-bit assembly, words would be forwarded directly to the ICAP. A longer-term path involves migrating bitstreams to DDR3 at boot time for higher-bandwidth access.

### C. Multi-Partition Extension

With approximately 80% of the Arty A7's fabric remaining available, at least two additional independent Pblocks could be defined. This would enable simultaneous CFU diversity — different accelerators loaded in parallel — as well as background reconfiguration of an idle slot while the active slot continues servicing instructions.

### D. Firmware-Level CFU Scheduling

At the firmware level, a runtime manager capable of profiling CFU call frequencies and predictively loading the next-needed accelerator would convert the current manually triggered reconfiguration into a self-directed adaptive system — analogous to DML's task-graph scheduler [8] but operating at the instruction-extension level rather than the operator level.

---

## VIII. Conclusion

We have proposed and validated an architecture for runtime-reconfigurable RISC-V co-processors using Dynamic Partial Reconfiguration, implemented through AMD's DFX toolflow and integrated with Google's CFU Playground framework. The architecture places the CFU inside a Reconfigurable Partition, isolates it with a static-side DFX Decoupler, and adds pipeline registers at the partition boundary to maintain timing closure — at the cost of two additional cycles per CFU instruction. Three reconfiguration paths (JTAG, PCAP, ICAP) are supported, each with different trade-offs in hardware overhead, host dependency, and latency. Validation on two 7-series platforms confirmed that runtime accelerator swap works reliably without processor reset, with the DFX Decoupler providing deterministic zero-output isolation across all tested events. Resource utilisation remains low (~19.6% LUT, ~7.8% FF), leaving substantial headroom for multi-partition extensions. The remaining path to full autonomy is well-defined: connecting the SPI flash read pipeline to the already-instantiated ICAP controller to enable host-independent, firmware-triggered reconfiguration.

---

## References

[1] AMD/Xilinx, "Vivado Design Suite User Guide: Dynamic Function eXchange," UG909, 2023.

[2] G. Clow *et al.*, "CFU Playground: Full-stack open-source framework for tiny machine learning (tinyML) FPGA co-design," in *Proc. FCCM*, 2022.

[3] T. Herpel *et al.*, "RV-CAP: RISC-V controlled adaptive partial reconfiguration," in *Proc. FPL*, 2021.

[4] M. Owaida *et al.*, "AMPER-X: Adaptive mixed-precision execution using dynamic partial reconfiguration," in *Proc. DATE*, 2022.

[5] H. Guo *et al.*, "RapidStream: Parallel physical implementation of FPGA HLS designs," in *Proc. FPGA*, 2022.

[6] D. Koch *et al.*, "ZyCAP: Efficient partial reconfiguration management on the Zynq SoC," *IEEE Embedded Systems Letters*, vol. 5, no. 4, pp. 53–56, 2013.

[7] M. Clark *et al.*, "HPR: Hierarchical partial reconfiguration for FPGA resource management," in *Proc. FPL*, 2020.

[8] K. Vipin and S. A. Fahmy, "FPGA dynamic and partial reconfiguration: A survey of architectures, methods, and applications," *ACM Computing Surveys*, vol. 51, no. 4, 2018.

[9] AMD/Xilinx, "7 Series FPGAs Configuration User Guide," UG470, 2023.

[10] A. Ferreira *et al.*, "DORA: Low-latency dynamic overlay for reconfiguration acceleration," in *Proc. FPT*, 2024.

---

*End of draft — version 0.3, May 2026*
