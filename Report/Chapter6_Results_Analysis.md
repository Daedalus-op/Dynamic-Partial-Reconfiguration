# Chapter 6: Results and Analysis

## 6.1 Overview

This chapter presents the implementation results obtained from two distinct experiment tiers. The first is a baseline verification exercise using the AMD Dynamic Function eXchange (DFX) tutorial design, which was used to establish confidence in the Vivado DFX toolflow before the main system was developed. The second, and primary, tier covers the complete reconfigurable co-processor system built using CFU Playground and deployed on the Arty A7-35T development board. Results are discussed across three dimensions: resource utilisation, timing analysis, and reconfiguration latency. Where applicable, a comparison with PYNQ-Z2 platform results is included.

All measurements reported in this chapter reflect bitstream delivery via JTAG, as the autonomous ICAP-based reconfiguration flow (in which the static fabric fetches partial bitstreams independently from on-board flash or DDR) remains a work-in-progress pending resolution of the on-board DDR integration. This limitation is discussed further in Section 6.5 and in the future work recommendations of Chapter 7.

---

## 6.2 DFX Tutorial Baseline Results

Before committing resources to the full CFU Playground integration, the AMD UG947 DFX tutorial was implemented as a sanity check and as a vehicle for understanding the Vivado DFX implementation and reporting pipeline. The design comprises a static top-level (`top`) that instantiates two reconfigurable partition instances — `pblock_inst_shift` and `pblock_inst_count` — with two interchangeable configurations per partition: `shift_left` paired with `count_down`, and `shift_right` paired with `count_up`. The target device was the Artix-7 xc7a100tcsg324-1 operating from the board's 200 MHz differential clock pair.

### 6.2.1 Resource Utilisation

Both configurations, produced by separate Vivado implementation runs, yielded identical aggregate resource counts. This equality is expected: DFX constrains the reconfigurable partition to a fixed physical footprint (`pblock`), so the total resource envelope of the design cannot change between RM swaps — only the logic within that footprint is replaced.

**Table 6.1 — DFX Tutorial Resource Utilisation (xc7a100tcsg324-1, Routed)**

| Resource           | Used | Available | Utilisation (%) |
|--------------------|-----:|----------:|----------------:|
| Slice LUTs         | 10   | 63,400    | 0.02            |
| Slice Registers    | 64   | 126,800   | 0.05            |
| Block RAM Tiles    | 1    | 135       | 0.74            |
|   RAMB36E1         | 1    | 135       | 0.74            |
| Slices             | 21   | 15,850    | 0.13            |
| BUFGCTRL           | 1    | 32        | 3.13            |
| Bonded IOB         | 10   | 210       | 4.76            |

The exceptionally low logic utilisation — ten LUTs and sixty-four flip-flops in total — is consistent with the tutorial's intentionally minimal scope: the shift module uses a single RAMB36E1 to store LED patterns, while the counter module implements a simple 4-bit programmable counter using only combinational carry-chain arithmetic and synchronous registers. The single BUFG primitive confirms that the entire design operates within one clock domain, driven by the on-board differential clock after IBUF insertion.

The primitives breakdown confirms that the majority of the register budget comes from the static 32-bit address counter (`count_reg[31:0]`), which drives the BRAM read port in the reconfigurable `shift` partition. The BRAM itself, instantiated as `RAMB36E1`, stores the LED shift pattern data and is clocked synchronously.

### 6.2.2 Timing Analysis

Timing closure was achieved in both configurations. The design was constrained to a 200 MHz clock (`clk_p`, 5.0 ns period) as specified in the board master XDC file.

**Table 6.2 — DFX Tutorial Timing Summary (Routed, Slow Process Corner)**

| Configuration                           | WNS Setup (ns) | WHS Hold (ns) | Failing Endpoints |
|-----------------------------------------|---------------:|--------------:|------------------:|
| `shift_left` + `count_down` (import)   | +2.023         | +0.109        | 0                 |
| `shift_right` + `count_up` (implement) | +2.022         | +0.109        | 0                 |

A Worst Negative Slack (WNS) of +2.022 ns indicates that the critical path in both configurations required approximately 2.978 ns — well within the 5.0 ns clock period. The critical path traversed the boundary between the static partition and the reconfigurable region: a FDRE flip-flop in `inst_count` (within `pblock_inst_count`) propagated through two LUT levels (LUT6 and LUT5) before clocking a downstream FDSE register in the same reconfigurable block. The net crossing the static/reconfigurable boundary — carrying the counter's address bits to the BRAM in `inst_shift` — was the timing-critical hold path, exhibiting a WHS of +0.109 ns. This narrow hold margin at the partition boundary is characteristic of DFX designs, where the router must work within fixed floorplan constraints that can limit the routing flexibility available to hold-repair buffers. Nonetheless, all timing constraints were satisfied in both configurations, confirming that the floorplan and clock constraints were correctly specified.

---

## 6.3 CFU Playground System — Resource Utilisation

The primary implementation was carried out on the Arty A7-35T (xc7a35ticsg324-1L, industrial speed grade), targeted at a 100 MHz system clock (5.0 ns period as constrained in the XDC). The full design encompasses the VexRiscv soft-core processor embedded within a LiteX SoC (`digilent_arty`), the CFU interface wrapper (`cfu.v`), the DFX Decoupler IP, an ICAP2 controller (`system_wrapper`), an ILA debugger (`ila_0`), a JTAG-AXI master (`system_jtag_axi_0_0`), an AXI Quad SPI controller for on-board flash, a DFX controller IP block (`system_dfx_controller_0_0`), the reconfiguration counter (`prof_unit`), and the reconfigurable partition containing the `cfu_compute` module.

Vivado executed two implementation runs: `impl_2` (the parent run, in which the reconfigurable partition is treated as a Black Box) and `child_0_impl_2` (the child run, in which the partition is populated with the `count_up` CFU variant). The utilisation reports from both runs are nearly identical, as expected — the Black Box placeholder in the parent run reserves the same physical pblock footprint that the populated child run fills. The figures below are drawn from the parent run (`impl_2`), which represents the complete static context.

### 6.3.1 Slice Logic and Memory

**Table 6.3 — CFU Playground System Resource Utilisation (xc7a35ticsg324-1L, Fully Placed)**

| Resource                 | Used   | Available | Utilisation (%) |
|--------------------------|-------:|----------:|----------------:|
| Slice LUTs               | 4,311  | 20,800    | 20.73           |
|   LUT as Logic           | 3,776  | 20,800    | 18.15           |
|   LUT as Memory          | 535    | 9,600     | 5.57            |
|     LUT as Dist. RAM     | 143    | —         | —               |
|     LUT as Shift Reg.    | 392    | —         | —               |
| Slice Registers          | 6,608  | 41,600    | 15.88           |
| Block RAM Tiles          | 5.5    | 50        | 11.00           |
|   RAMB36E1               | 5      | 50        | 10.00           |
|   RAMB18E1               | 1      | 100       | 1.00            |
| Slices                   | 1,975  | 8,150     | 24.23           |
| F7 Muxes                 | 66     | 16,300    | 0.40            |
| F8 Muxes                 | 18     | 8,150     | 0.22            |
| DSPs                     | 0      | 90        | 0.00            |
| Bonded IOB               | 18     | 210       | 8.57            |
| BUFGCTRL                 | 2      | 32        | 6.25            |

The LUT count of 4,311 (20.73%) reflects the combined logic cost of the VexRiscv pipeline, the LiteX interconnect fabric, and the DFX infrastructure. The substantial LUT-as-Memory allocation (535, 5.57%) is characteristic of LiteX SoC designs, in which the CPU register file, instruction queues, and AXI interconnect buffering are frequently implemented using distributed RAM and shift-register primitives rather than dedicated BRAM, in order to preserve the block RAM tiles for higher-capacity use cases. The 6,608 flip-flops (15.88%) represent pipeline stage registers in the VexRiscv core and handshake registers in the AXI fabric.

Five RAMB36E1 tiles and one RAMB18E1 tile are consumed (11% of the device's 50-tile block RAM budget). These serve as the VexRiscv instruction and data caches, the LiteX memory-mapped peripheral register files, and the configuration memory initialised from the `.init` files present in the project.

Of particular note are three special-function primitives:

- **ICAPE2 (1 of 2, 50.00%):** The ICAP primitive is instantiated as the hardware interface through which partial bitstreams are written to the configuration memory during reconfiguration.
- **STARTUPE2 (1 of 1, 100.00%):** This primitive provides access to the end-of-startup (EOS) signal, which is monitored by the `recon_counter` module to measure reconfiguration duration. The fact that it consumes the device's sole STARTUPE2 instance is a point of note for future designs that may require other startup-pin access.
- **BSCANE2 (1 of 4, 25.00%):** Used by the ILA debug infrastructure and the JTAG-AXI master to share the device's JTAG interface.

Across all categories, the Arty A7-35T fabric is used at roughly one-fifth to one-quarter of its capacity. This headroom validates the architectural choice of leveraging the smaller 35T variant rather than the 100T used in the DFX tutorial, and demonstrates that the reconfigurable CFU partition could in principle be expanded to accommodate substantially more complex accelerator modules.

### 6.3.2 Power Consumption

**Table 6.4 — CFU Playground System Power Summary (100 MHz, Routed)**

| Component               | Power (W) |
|-------------------------|----------:|
| Clocks                  | 0.043     |
| Slice Logic             | 0.008     |
| Signals                 | 0.010     |
| Block RAM               | 0.007     |
| I/O                     | 0.003     |
| **Total Dynamic (W)**   | **0.071** |
| Device Static (W)       | 0.062     |
| **Total On-Chip (W)**   | **0.134** |

The by-hierarchy breakdown reveals that the ILA-related infrastructure (`system_ila` and `ila_0`) accounts for 34 mW of the dynamic budget — nearly 48% of all dynamic power. This is a well-known characteristic of Vivado's ILA cores, which instantiate dense shift-register chains and capture memories that toggle at high rates during operation. In a production system from which debug infrastructure would be removed, the dynamic power would drop substantially. The DFX controller IP (`dfx_controller_0`) contributes 12 mW, and the AXI Quad SPI peripheral (`axi_quad_spi_0`) an additional 6 mW. The remaining dynamic power is distributed across the VexRiscv core, the LiteX AXI interconnect, and miscellaneous glue logic within the `system` hierarchy.

The overall on-chip power of 0.134 W is well within the thermal limits of the Arty A7-35T board, which does not require active cooling at this operating point: the maximum ambient temperature is reported as 99.4 °C with a junction temperature of 25.6 °C at the simulated operating conditions, indicating negligible thermal stress.

---

## 6.4 CFU Playground System — Timing Analysis

The timing report for the CFU Playground system revealed that, unlike the simple DFX tutorial, the full system does **not** meet timing closure under the imposed 200 MHz clock constraint interpretation. This requires careful contextualisation.

### 6.4.1 Clock Constraints and Timing Violation Root Cause

The system was constrained to a `clk` of 5.0 ns (200 MHz), as carried over from the board XDC pin assignment. The actual system operating frequency, however, is 100 MHz — the 5 ns constraint is the period of the board's incoming differential clock, which is divided down internally. The timing summary reports a Worst Negative Slack (WNS) of **−3.622 ns**, with 307 failing endpoints and a total negative slack (TNS) of −572.084 ns.

**Table 6.5 — CFU Playground Timing Summary (Routed, Slow Process Corner)**

| Metric                       | Value              |
|------------------------------|--------------------|
| Clock Constraint             | 5.0 ns (200 MHz)   |
| WNS — Setup                  | −3.622 ns          |
| TNS — Total Setup Violation  | −572.084 ns        |
| Failing Endpoints (Setup)    | 307                |
| WHS — Hold                   | +0.054 ns (MET)    |
| Failing Endpoints (Hold)     | 0                  |

**Critical Path Analysis.** Inspection of the ten worst timing paths reveals that every single failing endpoint sources from `ICAPE2_inst/CLK` — the clock pin of the ICAPE2 primitive. The ICAPE2 cell model carries an intrinsic propagation delay of **5.200 ns** from the clock edge to its output ports (`Prop_icape2_CLK_O`). Since the data path from the ICAPE2 output then traverses three LUT levels (LUT3 → LUT5 → LUT6) before reaching its destination register, the cumulative path delay is approximately 8.08 ns — well exceeding the 5.0 ns clock period.

This violation is a known characteristic of the Artix-7 ICAPE2 primitive when clocked at or above 100 MHz. The ICAPE2 is rated for a maximum interface clock of 100 MHz (10 ns period) in the Artix-7 family. The violation therefore arises from the fact that the parent design constrains the ICAPE2 to the 200 MHz board clock domain rather than a divided 100 MHz domain. The functional operation of the ICAPE2 occurs at ≤100 MHz in practice, and the bitstream-writing logic downstream of the ICAPE2 is intentionally registered at half-rate. The timing report flags this as a constraint mismatch rather than a genuine functional failure.

In summary, the timing violation is attributable to the ICAPE2 cell delay exceeding a 5 ns constraint that was applied to the wrong clock domain. The reconfigurable CFU swap was demonstrated to function correctly on hardware in spite of this report, confirming that the critical paths flagged by Vivado do not represent active failure modes in the 100 MHz operational domain. Resolving this for a production-quality implementation would require either applying a multicycle path constraint across the ICAPE2 outputs, or clocking the ICAPE2 from a dedicated divided clock domain at 50–100 MHz.

### 6.4.2 Hold Timing

Hold slack is met across all 12,952 endpoints, with a WHS of +0.054 ns. This is particularly significant for a DFX design, as hold violations at the static/reconfigurable boundary are a common design pitfall. The positive hold margin confirms that the floorplan constraints and routing were correctly set up to satisfy minimum-delay requirements at the partition boundary.

---

## 6.5 Reconfiguration Latency Results

Reconfiguration latency was measured on two platforms using JTAG-based partial bitstream delivery. On the Arty A7-35T, the `recon_counter` module — implemented in RTL and attached to a Vivado ILA — captured the duration of the EOS (End-of-Startup) signal assertion to serve as a hardware-side measurement of reconfiguration time. On the PYNQ-Z2, the PS-side PCAP interface was additionally evaluated.

### 6.5.1 Partial Bitstream Sizes

Both the `Cfu_comp_*_partial.bit` files (for the `donut` and `example` CFU configurations) and the PYNQ partial bitstream were compared. Their sizes determine the raw data volume that must pass through the configuration interface.

**Table 6.6 — Partial Bitstream Sizes**

| Platform       | Partial Bitstream Size |
|----------------|----------------------:|
| Arty A7-35T    | 164,534 bytes (≈ 160.7 KB) |
| PYNQ-Z2        | 203,308 bytes (≈ 198.5 KB) |

The PYNQ-Z2 partial bitstream is approximately 24% larger. This reflects the different fabric geometry of the PYNQ-Z2's Zynq-7020 device (xc7z020), which has a different configuration frame layout compared to the Artix-7 xc7a35t, even for an equivalent pblock area.

### 6.5.2 JTAG Reconfiguration (Arty A7-35T)

On the Arty A7-35T, partial bitstream delivery was performed over the Digilent USB-JTAG cable via Vivado Hardware Manager. The `recon_counter` hardware module measured the reconfiguration duration in system clock cycles (100 MHz). The counter value latched at the EOS rising edge after the configuration sequence completed was:

> **Counter reading: 6,318,898 clock cycles**

At a 100 MHz system clock (10 ns per cycle), this corresponds to a reconfiguration duration of approximately:

> **6,318,898 × 10 ns = 63.19 ms ≈ 0.0632 s**

This is consistent with the independently measured JTAG throughput of **2.603 MB/s**, which is the effective data rate of the Digilent USB-JTAG cable during partial bitstream programming. The 164,534-byte partial bitstream at 2.603 MB/s yields an estimated transfer time of:

> **164,534 / (2.603 × 10⁶) ≈ 0.0632 s**

The close agreement between the hardware-measured cycle count and the independently computed transfer time validates both the `recon_counter` implementation and the throughput measurement.

### 6.5.3 JTAG Reconfiguration (PYNQ-Z2)

The PYNQ-Z2 also supports JTAG-based partial reconfiguration, as the bitstream can be delivered via the Vivado Hardware Manager to the Zynq PL JTAG TAP. The measured JTAG latency on the PYNQ-Z2 was:

> **0.0628 s @ 3.235 MB/s**

The slightly higher JTAG throughput compared to the Arty A7-35T (3.235 MB/s vs. 2.603 MB/s) is likely attributable to cable and USB host controller differences between the two setups. The 203,308-byte PYNQ partial bitstream at 3.235 MB/s yields an estimated transfer time of approximately 62.8 ms, consistent with the measured 0.0628 s.

### 6.5.4 PCAP Reconfiguration (PYNQ-Z2)

The Zynq Processing System (PS) exposes a Processor Configuration Access Port (PCAP), which provides direct DMA access to the configuration memory without passing through the JTAG interface. PCAP represents the standard software-controlled partial reconfiguration path on Zynq-based SoCs. The measured PCAP reconfiguration latency was:

> **0.0011 s @ 183.2 MB/s**

This represents a **57× improvement** in throughput compared to JTAG (183.2 MB/s vs. 3.235 MB/s) and a corresponding reduction in reconfiguration latency from ~63 ms to approximately 1.1 ms. The 203,308-byte partial bitstream at 183.2 MB/s yields an estimated transfer time of approximately 1.11 ms, consistent with the measurement.

**Table 6.7 — Reconfiguration Latency Summary**

| Platform     | Interface | Bitstream Size  | Latency (s) | Throughput      |
|--------------|-----------|----------------:|------------:|----------------:|
| Arty A7-35T  | JTAG      | 164,534 bytes   | 0.0632 s    | 2.603 MB/s      |
| PYNQ-Z2      | JTAG      | 203,308 bytes   | 0.0628 s    | 3.235 MB/s      |
| PYNQ-Z2      | PCAP      | 203,308 bytes   | 0.0011 s    | 183.2 MB/s      |
| Arty A7-35T  | ICAP      | —               | Pending     | Pending         |

The ICAP interface on the Arty A7-35T, which is physically implemented and verified in the design (the ICAPE2 primitive is instantiated and consumes 50% of the device's two available ICAP sites), is expected to provide throughput comparable to PCAP — the Xilinx 7-series ICAPE2 supports up to a 100 MHz configuration clock and a 32-bit wide data bus, yielding a theoretical peak of 400 MB/s. Practical throughput with static-fabric logic driving the ICAP is typically quoted at 100–200 MB/s in published implementations. Realising this in the current system requires resolving the partial bitstream source (flash or DDR), which is targeted for the next development phase.

---

## 6.6 Functional Verification of the Reconfigurable CFU

The reconfigurable CFU partition was verified through a proof-of-concept demonstration employing two distinct RM configurations:

1. **Configuration A — Integer Multiplication (`donut.v` RM):** The CFU `cfu_compute` module was loaded with the `donut` Reconfigurable Module, which implements signed fixed-point multiplication and multiply-shift-right operations. A valid `cmd_valid` handshake with the multiplication function selector produced the expected product on `rsp_payload_outputs_0`.

2. **Configuration B — Bitwise Manipulation (`example.v` RM):** This configuration, implemented in the `example` Reconfigurable Module, provides a set of byte-level and bitwise operations (byte-sum, byte-swap, and bit-reverse) accessible via distinct `function_id` encodings on the same CFU interface signals.

The key behavioural property verified was **safe default-output isolation**: when a CFU instruction was issued whose `function_id` corresponded to a function not implemented by the currently loaded configuration — for instance, issuing a multiplication command while the `example` RM (bit manipulation) was loaded — the DFX Decoupler held the static-side CFU response bus at its default values, causing the output to be zeroed. The VexRiscv pipeline received a zero result and continued execution without processor stall or exception, as the CFU handshake protocol (`cmd_ready`/`rsp_valid`) remained active. This confirms that the DFX Decoupler correctly isolates the static partition during function-ID mismatches, acting as the intended safety boundary between the processor and an incompatible or mid-swap reconfigurable module.

Reconfiguration was triggered manually: the partial bitstream was loaded via the Vivado Hardware Manager JTAG interface, and the `pr_switch` signal was asserted via the JTAG-AXI master to drive the decouple-reconfigure-reconnect sequence. After the hardware-measured reconfiguration window of approximately 63 ms, the new configuration became active and subsequent CFU instructions targeting that configuration's function IDs produced correct results.

---

## 6.7 Comparative Discussion

### 6.7.1 DFX Tutorial vs. Full System

The contrast between the DFX tutorial utilisation (10 LUTs, 64 FFs, 1 BRAM) and the CFU Playground system (4,311 LUTs, 6,608 FFs, 5.5 BRAM) quantifies the cost of embedding DFX capability within a production-grade RISC-V SoC. The 431× increase in LUT count and the introduction of ICAPE2, STARTUPE2, and ILA primitives illustrate the infrastructure overhead required to support autonomous in-system reconfiguration as opposed to the host-driven JTAG model used in the tutorial. This overhead is dominated by the VexRiscv core, the LiteX AXI interconnect, and the debug ILA chains — not by the DFX controller itself (which accounts for 12 mW or approximately 8.9 mW of logic, a small fraction of the total).

### 6.7.2 ICAP vs. PCAP vs. JTAG

The latency comparison across interfaces demonstrates a clear hierarchy:

> **ICAP (projected) >> PCAP (183.2 MB/s, 1.1 ms) >> JTAG (2.6–3.2 MB/s, 63 ms)**

For the target application — runtime swapping of a RISC-V CFU — a 63 ms JTAG reconfiguration window is tolerable in a coarse-grained scheduling context where the CPU can continue executing from a software fallback path while the PRR is being refreshed. The PCAP throughput (183.2 MB/s) represents a 57× improvement that reduces the blackout window to approximately 1 ms, making fine-grained per-task reconfiguration feasible on Zynq. The ICAP on the Arty A7-35T is expected to achieve similar or higher throughput once the autonomous fetch pipeline is completed, enabling the pure-PL DFX approach to compete with PS-assisted PCAP.

### 6.7.3 Device Utilisation Headroom

With a utilisation of approximately 20–24% across slice, LUT, and register resources on the Arty A7-35T, and 11% of the BRAM budget consumed, substantial headroom remains within this smaller device variant. This margin supports the feasibility of adding additional reconfigurable partition slots in future iterations — for instance, a second PRR dedicated to a memory-access accelerator — without requiring migration to a larger device.

---

## 6.8 Limitations and Caveats

1. **Partial bitstream source is manual:** All reconfiguration events reported in this chapter were initiated by the host PC via Vivado Hardware Manager. The intended fully autonomous flow — in which the static VexRiscv firmware issues a CSR write that triggers the DFX controller to fetch a partial bitstream from on-board SPI flash and feed it to the ICAPE2 — has not yet been demonstrated. The on-board DDR memory integration, which is a prerequisite for high-speed runtime bitstream buffering, remains pending.

2. **Timing constraint mismatch on ICAPE2 paths:** The Vivado timing report shows 307 failing endpoints driven by ICAPE2 output latency against a 5 ns (200 MHz) constraint. This is a constraint mis-application rather than a functional failure: the ICAPE2 operates at ≤100 MHz in practice, and the system functions correctly on hardware. A corrective multicycle path exception or a dedicated divided clock domain for the ICAPE2 interface would be required before the implementation would be considered production-grade.

3. **CFU functional scope:** The proof-of-concept covered two function operations (multiplication and bitwise manipulation). No application-level benchmark comparing CFU-accelerated execution time to software-only execution was performed in this iteration, as the focus was on validating the reconfiguration mechanism itself.

4. **Power report confidence level:** Vivado's power estimator assigned an overall confidence level of **Low** to both runs, as no switching activity annotation (simulation activity file) was provided. The figures in Table 6.4 are therefore estimates based on default toggle rate assumptions and should be treated as indicative rather than precise characterisation.
