# Chapter 4: Design and Implementation

---

## 4.1 Design Goals

The central objective of the design described in this chapter is the demonstration of runtime partial reconfiguration of a RISC-V co-processor's Custom Function Unit (CFU) without halting the processor pipeline or disrupting the surrounding SoC infrastructure. This objective is decomposed into four concrete engineering goals that collectively define the scope and success criteria of the implemented system.

**Goal 1 — Runtime CFU swap without processor reset.** The Reconfigurable Module (RM) occupying the `cfu_compute` slot must be replaceable at runtime through a controlled sequence of isolation, bitstream transfer, and reconnection, with no assertion of the VexRiscv processor's reset line and no interruption of the UART communication between the host workstation and the LiteX SoC. The processor pipeline may stall during the reconfiguration window — specifically, the DFX Decoupler will hold `cmd_ready` low, preventing any CUSTOM0 instruction from being accepted — but it must resume normal execution once the new RM is active without requiring a software restart.

**Goal 2 — Hardware-timed reconfiguration latency measurement.** The duration of each reconfiguration event must be measured at hardware precision, expressed in terms of the number of 100 MHz clock cycles elapsed between the assertion and de-assertion of the STARTUPE2 End-of-Startup (EOS) signal. The `recon_counter` module, described in §3.3.2, fulfils this role. Its 32-bit cycle counter is read out via an Integrated Logic Analyser (ILA) probe, allowing the reconfiguration time to be recorded without modifying the firmware or processor software stack. At 100 MHz, the counter resolution is 10 ns per tick.

**Goal 3 — A functionally valid Reconfigurable Partition and multiple Reconfigurable Modules.** The `cfu_compute` Pblock must be demonstrated to host at least two distinct, functionally correct RMs that produce verifiably different outputs to the same CFU invocations, thereby confirming that both the synthesis of new RMs into the fixed Pblock and the runtime swap are operating correctly. The use of multiple RMs with different logic — rather than a trivially identical pair — eliminates the possibility of false positives caused by incomplete reconfiguration or silent failures in the bitstream write path.

**Goal 4 — A validated baseline using the AMD DFX tutorial.** Before deploying the full CFU Playground DFX system, the AMD UG947 Dynamic Function eXchange tutorial is reproduced as a sanity check. This baseline validates that the Vivado DFX toolflow on the Arty A7-100T produces correct partial bitstreams, that the JTAG-based reconfiguration path functions as expected, and that the timing and resource utilisation of a known-good design are consistent with published figures. Any deviation from the expected baseline indicates a toolflow misconfiguration rather than a design error.

---

## 4.2 Static Partition Design

The static partition encompasses all logic that must remain powered and functionally active throughout — and between — reconfiguration events. Its correct design is critical because any functional or timing error within the static partition cannot be corrected at runtime without a full device reconfiguration, which defeats the purpose of the DPR system.

### 4.2.1 The `system_wrapper` Reconfiguration Controller

The `system_wrapper` module serves as the orchestration layer for all reconfiguration-related hardware tasks. It is assigned entirely to the static partition and contains the following functional blocks:

**ICAP interface logic.** The module drives the `ICAP_7SERIES` primitive's control signals (`CSIB`, `RDWRB`) and data bus (`I[31:0]`). It presents the configuration word sequence — beginning with the synchronisation header and proceeding through the frame data words as described in §3.3.3 — to the ICAP on consecutive rising clock edges at 100 MHz. The bit-reversal transformation required by 7-series ICAP (each byte individually bit-reversed within its 32-bit word) is performed combinationally in the data path before the word is presented at the `I` port.

**Decouple control logic.** The `decouple` output wire is asserted in response to the `pr_switch` input, which is connected to a push-button (SW0) on the Arty A7-100T's user I/O bank. The assertion sequence is: assert `decouple` → wait for a configurable number of clock cycles to allow the DFX Decoupler's isolation registers to settle → commence ICAP write sequence → poll for EOS falling edge → continue ICAP write until bitstream is fully transferred → wait for EOS rising edge → de-assert `decouple`. This sequence ensures that the isolation boundary is established before any frame is written and is released only after the new RM's startup sequence is complete.

**QSPI flash interface.** The `system_wrapper` also contains the control logic for the board-mounted 128 Mb (16 MB) Quad-SPI (QSPI) flash memory on the Arty A7-100T (S25FL128S device, connected via the `qspi_flash` I/O). Partial bitstreams are intended to be pre-loaded into dedicated flash address regions at board programming time (via the Vivado Hardware Manager's `program_flash` command). During reconfiguration, the flash controller issues a fast-read command to the QSPI device, streams the response bytes into a 32-bit assembly register, applies the byte-level bit reversal, and forwards the resulting words to the ICAP data input. As discussed in §4.7, full integration of the flash-fetch path with the ICAP writer is the primary outstanding engineering task; in the current implementation, bitstreams are presented to the ICAP via a direct in-fabric ROM, populated at synthesis time.

### 4.2.2 Clock and Reset Distribution

The Arty A7-100T board supplies a 100 MHz differential crystal oscillator, brought onto the FPGA via the `sys_clk_p`/`sys_clk_n` pair. Within the LiteX SoC, this is routed through a Mixed Mode Clock Manager (MMCM) that generates the 100 MHz system clock (`clk100`) distributed to both the `digilent_arty` domain and the `system_wrapper`. The ICAP is also clocked from this same `clk100` source, satisfying the 7-series requirement that ICAP be driven by a non-inverted, single-ended, jitter-minimised clock routed through a Global Clock Buffer (BUFG).

The `cpu_reset` signal — a board push-button (BTN0) — is connected exclusively to the VexRiscv reset port within `digilent_arty`. It does not propagate to `system_wrapper` or the ICAP controller, which remain running continuously. This separation is deliberate: a processor reset should never abort an in-progress reconfiguration sequence, as an incomplete bitstream write to the ICAP would leave the configuration memory in an undefined state.

### 4.2.3 Board I/O Allocation

The static partition's I/O allocation on the Arty A7-100T is governed by the board's pin-constraint file (`.xdc`). The following table summarises the principal I/O interfaces assigned to the static partition:

| Interface | Signals | Function |
|---|---|---|
| Crystal oscillator | `sys_clk_p`, `sys_clk_n` | 100 MHz system clock |
| UART | `serial_rx`, `serial_tx` | Host communication for CFU Playground |
| DDR3 SDRAM | 32 signals (address, data, control) | Runtime memory for LiteX SoC |
| QSPI flash | `qspi_flash_io[3:0]`, `clk`, `cs_n` | Partial bitstream storage |
| Reconfiguration switch | `sw[0]` | Triggers PR sequence |
| User LEDs | `led[3:0]` | Status indication |
| JTAG | Implicit (Digilent USB-JTAG) | Hardware Manager + ILA |
| PMOD JA | `ja[7:0]` | UART bridge (Phase 3, §4.5) |

---

## 4.3 Reconfigurable Partition Design

The `cfu_compute` Reconfigurable Partition (RP) is designed to present the same port interface to the DFX Decoupler regardless of which Reconfigurable Module (RM) occupies it at any given time. This interface invariance is the fundamental requirement imposed by the DFX toolflow: all RMs for a given RP must share an identical port list, port directions, and port widths. Vivado's DFX implementation enforces this constraint by treating the RP's port interface as a fixed routing stub within the static partition's implementation checkpoint, into which each RM is independently placed and routed without modifying the surrounding static routes.

### 4.3.1 The `cfu.v` Wrapper and DFX Decoupler Placement

As described in §3.2.3, the `cfu.v` module constitutes the static wrapper that bridges the VexRiscv CFU port to the RP. The DFX Decoupler (`dfx_decoupler_0`) resides within `cfu.v`, placed in the static partition. The RP — the `cfu_compute` instantiation — is connected to the Decoupler's RP-side ports.

This placement satisfies two constraints simultaneously. First, it ensures that the isolation registers, which must be reliable even when the RP's configuration memory is in a transitional state, are always within the static partition's guaranteed-stable logic. Second, it allows the Decoupler's static-side behaviour — in particular, the clamping of `cmd_ready` to 0 during decoupling — to be enforced by static logic independently of any state within the RP, preventing the processor from issuing a CFU command to undefined logic.

### 4.3.2 Reconfigurable Module Implementations

Four Reconfigurable Modules have been developed for the `cfu_compute` RP, each implementing the same top-level port interface:

**`example.v` — Multi-function arithmetic RM.** This RM implements three operations selectable via the `function_id` field:
- `function_id = 0`: Byte-sum — sums the four bytes of `inputs_0` and returns the 32-bit zero-extended result.
- `function_id = 1`: Byte-swap — returns `inputs_0` with its bytes in reversed order (i.e., `{B0, B1, B2, B3}` becomes `{B3, B2, B1, B0}`).
- `function_id = 2`: Bit-reverse — returns `inputs_0` with all 32 bits individually reversed.

All three operations complete in a single clock cycle (fully combinational), setting `rsp_valid` immediately after `cmd_valid` is asserted and the result is available.

**`donut.v` — Iterative compute RM.** This module implements a more computationally intensive operation that requires multiple clock cycles to produce its result, exercising the CFU handshake's ability to stall the VexRiscv pipeline across multiple cycles.

**`dse_template.v` — Design Space Exploration stub.** A parameterised template intended for rapid substitution of different arithmetic datapaths (e.g., integer multiply-accumulate configurations) to evaluate area-performance trade-offs without modifying the surrounding DFX infrastructure. The current instantiation implements a 16×16-bit unsigned multiply with 32-bit accumulate, returning the accumulated result after a fixed two-cycle latency.

**KWS (Keyword Spotting) module.** A reduced-precision inference accelerator stub targeting the CFU Playground's keyword spotting benchmark. This RM represents the application motivation for the broader DPR system: at runtime, the CFU slot is intended to be swapped from a general-purpose arithmetic RM to a domain-specific inference accelerator to serve a workload that cannot be efficiently executed on the VexRiscv's integer ALU.

### 4.3.3 Pblock Constraints and Floorplanning

The `cfu_compute` Pblock was defined iteratively through the Vivado DFX flow's guided-mode constraint assistant. The primary constraints imposed are:

- **Complete-column containment:** All CLB, BRAM, and DSP columns intersected by the Pblock's bounding box must be fully enclosed within the box — neither partial columns nor cross-boundary routing of RP signals are permitted.
- **Exclusion from static LUT/FF resources:** The Pblock must not overlap with the Pblock area required by the `digilent_arty` SoC, as simultaneous placement by both partitions would cause a resource conflict during RM implementation.
- **Timing closure of the DFX Decoupler interface:** The inter-partition path through the Decoupler's isolation registers must meet the 100 MHz timing constraint with positive worst-negative-slack (WNS). The maximum permissible routing delay across the partition boundary is determined by the Decoupler IP's timing model, which accounts for the register-register path through its two isolation flip-flop stages.
- **Minimum RM fit:** The Pblock must be large enough to accommodate the largest RM without placement overflow. The DPR design rule requires that all RMs be implementable within the exact same physical placement boundary, so the Pblock size is governed by the largest RM's resource utilisation — in the present design, the KWS module, which consumes the greatest number of LUTs.

---

## 4.4 Reconfiguration Control Flow

The reconfiguration sequence is a precisely ordered protocol governing the transition from one active RM to another. Each step in the sequence is controlled by the `system_wrapper`'s finite state machine (FSM), and the correctness of the overall system depends on the steps being executed in the order described below. An incorrect ordering — for example, releasing the DFX Decoupler before the EOS rising edge — can result in the processor receiving undefined values from the RP's output ports during the period between the bitstream write's completion and the new RM's startup sequence conclusion.

### 4.4.1 Step-by-Step Reconfiguration Sequence

**Step 1 — Reconfiguration trigger.** The VexRiscv processor (or the board-level push-button `SW0`, in the current hardware validation configuration) asserts the `pr_switch` signal. The `system_wrapper` FSM transitions from its `IDLE` state to the `DECOUPLE_ASSERT` state.

**Step 2 — Isolation assertion.** The `system_wrapper` asserts the `decouple` wire high. The DFX Decoupler, receiving this signal on its `decouple` input, immediately clamps all signals on the RP side of its isolation registers: all data outputs to the RP are driven to zero, `cmd_valid` to the RP is driven low, and all outputs from the RP to the static side are overridden with zero (including `cmd_ready`, which is driven low, preventing the processor from completing any further CFU dispatch). A small settling delay (16 clock cycles at 100 MHz, i.e., 160 ns) is inserted before the ICAP write begins, allowing any in-flight pipeline stages within the Decoupler to drain.

**Step 3 — ICAP write commencement.** The `system_wrapper` FSM transitions to the `ICAP_WRITE` state and begins clocking configuration words into the ICAP. `CSIB` is driven low (active chip-enable) and `RDWRB` is driven low (write mode). The first word presented is the padding sequence (0xFFFFFFFF, repeated 8 times), followed by the synchronisation word (0xAA995566), and then the instruction and frame data sequence described in §3.3.3. All words are presented at the `I[31:0]` port of `ICAP_7SERIES` on the rising edge of `clk100`.

**Step 4 — EOS falling edge (start of startup sequence).** As the configuration state machine within the FPGA's configuration logic detects the synchronisation word and begins validating and writing the incoming frames, the STARTUPE2 primitive de-asserts the EOS output (EOS goes low). The `recon_counter` detects this falling edge and transitions to its `RECON` state, beginning to increment its 32-bit counter on every subsequent clock cycle.

**Step 5 — ICAP write completion.** After the final frame data word, the CRC, RCRC, and DESYNC words are presented. The ICAP write sequence is considered complete when all words have been clocked in. `CSIB` is then de-asserted (driven high) and `RDWRB` is returned high.

**Step 6 — EOS rising edge (end of startup sequence).** The configuration state machine raises EOS after the newly loaded RM's GSR de-assertion and startup sequence are complete. The `recon_counter` detects this rising edge, transitions back to `IDLE`, and holds the final counter value steady. The ILA probe captures this value.

**Step 7 — Isolation release.** The `system_wrapper` FSM, confirming that EOS is high, de-asserts `decouple`. The DFX Decoupler immediately becomes transparent, passing all signals bidirectionally. The VexRiscv processor resumes normal CFU operation through the new RM.

### 4.4.2 Current Implementation State

In the validated implementation, the partial bitstream is presented to the ICAP from a block of initialised fabric registers (effectively an in-fabric ROM synthesised from the RM's bitstream bytes), rather than from an external flash or DDR source. This approach was adopted as an interim measure to validate the complete hardware reconfiguration sequence — including ICAP write, EOS monitoring, decoupler sequencing, and ILA-captured timing — on actual hardware before the flash-fetch and DDR storage paths described in §4.7 are completed. The limitation of this approach is that the bitstream must be embedded at synthesis time and cannot be updated at runtime; section §4.7 provides the roadmap for replacing this with a fully autonomous storage fetch mechanism.

---

## 4.5 Hardware Implementation Phases

The system described in the preceding sections was not developed against a single target platform from the outset. Instead, three distinct implementation phases were pursued across two physical hardware platforms — the Digilent Arty A7-100T and the Digilent PYNQ-Z2 — reflecting the evolving understanding of each platform's capabilities, constraints, and suitability for the project's objectives. The following subsections document each phase in full, including the methods validated, the challenges encountered, and the resolutions or workarounds adopted.

### 4.5.1 Phase 1 — Arty A7-100T (Standalone DPR Validation)

The Digilent Arty A7-100T served as the primary development platform for the entire project. Its selection was motivated by the board's native compatibility with the CFU Playground's LiteX build scripts, its mid-range Artix-7 XC7A100T fabric, and its availability of JTAG, QSPI flash, DDR3 SDRAM, and four PMOD connectors — providing sufficient I/O flexibility for both the CFU Playground UART communication path and the eventual PMOD-based inter-board bridge described in Phase 3.

#### JTAG-Based Partial Reconfiguration (Validated ✅)

The first milestone was the demonstration of host-driven JTAG partial reconfiguration on the Arty A7-100T. In this configuration, the Vivado Hardware Manager is used as the bitstream delivery mechanism: the full static bitstream (containing the VexRiscv SoC, `system_wrapper`, `recon_counter`, and the initial `cfu_compute` RM) is programmed onto the device via the Digilent USB-JTAG cable. Without powering off the board, a partial bitstream for a second RM is then delivered via the Hardware Manager's `program_hw_devices` command with the `-partial` flag, which instructs the JTAG TAP controller to route the bitstream data to the internal configuration logic rather than performing a full device erase-and-program cycle.

The DFX Decoupler must still be asserted via a write to its AXI-Lite control register before the partial bitstream is delivered, and de-asserted after EOS is re-confirmed. In the JTAG-based validation, this was accomplished by issuing corresponding TCL commands in the Vivado Hardware Manager console, synchronized manually with the partial programming command. Although this manual synchronisation introduces a window in which the Decoupler's isolation hold-time is enforced by the operator rather than by hardware, the functional result — confirming that the processor resumes correctly with the new RM active — was reproducibly demonstrated.

The ILA connected to `recon_counter` was used to capture the EOS transition during each JTAG reconfiguration event. The captured counter values provided the first hardware-validated reconfiguration latency measurements for the `cfu_compute` Pblock, with the bitstream sizes and measured timings detailed in Chapter 6.

#### ICAP-Based Partial Reconfiguration (Work In Progress)

The intended longer-term reconfiguration path on the Arty A7-100T is a fully autonomous ICAP-based flow, in which the reconfiguration sequence described in §4.4 is executed entirely by the `system_wrapper` logic without any host involvement. Progress towards this goal has been achieved in two respects: (a) the complete `system_wrapper` FSM and ICAP interface logic are implemented and synthesised, and (b) the ICAP write has been demonstrated to correctly update the RP's configuration using an in-fabric ROM as the bitstream source (the interim approach described in §4.4.2).

The remaining gap between the current state and a fully autonomous implementation is the bitstream storage and fetch mechanism. The intended architecture is for partial bitstreams to reside in one of two storage tiers — QSPI flash for boot-time access, or DDR3 SDRAM for runtime-accessible random storage — and to be streamed from that storage tier into the ICAP data port on demand. The engineering steps required to bridge this gap are described in §4.7.

### 4.5.2 Phase 2 — PYNQ-Z2 (Zynq-7020, Standalone Validation)

The Digilent PYNQ-Z2 was introduced as a secondary evaluation platform after the project's scope expanded to include an investigation of PS-assisted reconfiguration pathways. The PYNQ-Z2 is based on the Xilinx Zynq-7020 SoC, which integrates a dual-core ARM Cortex-A9 Processing System (PS) with a Programmable Logic (PL) fabric equivalent in capacity to the XC7Z020 (approximately 85,000 LUTs, 220 DSP48 slices, and 140 BRAM tiles).

The availability of the ARM PS introduces a configuration access port not present on the pure PL-only Arty A7-100T: the Processor Configuration Access Port (PCAP). PCAP is the primary bitstream delivery interface on Zynq devices; it is accessed from the PS through the DevC (Device Configuration) AXI slave peripheral and allows Linux user-space applications to initiate full or partial device configurations by writing bitstream file paths to the `/sys/class/fpga_manager/fpga0/` sysfs interface — the standard FPGA Manager driver interface in Xilinx's PetaLinux distributions.

#### JTAG-Based Partial Reconfiguration on PYNQ-Z2 (Validated ✅)

As with the Arty A7-100T, JTAG-based partial reconfiguration on the PYNQ-Z2 was validated first, using the Vivado Hardware Manager with `program_hw_devices -partial` as the bitstream delivery mechanism. The Zynq DFX flow requires the static region to be programmed first (to establish the PS configuration, PL-PS interfaces, and clock infrastructure), after which partial bitstreams for specific RPs can be delivered identically to the Artix-7 case.

The larger PL fabric of the Zynq-7020 relative to the XC7A100T provided more comfortable floorplanning headroom for the `cfu_compute` Pblock, reducing the number of iterative constraint adjustments required to achieve placement of all RMs without resource overflow.

#### PCAP-Based Partial Reconfiguration (Validated ✅)

PCAP-based reconfiguration was validated by executing a partial reconfiguration from within a running Linux environment on the Zynq PS. The validated flow proceeds as follows:

1. A custom DTS overlay (`.dtbo`) is applied at runtime to register the DFX region managed by the FPGA Manager with the Linux device tree.
2. The partial bitstream binary is copied to a path accessible from user space (e.g., `/lib/firmware/`).
3. A `write` to `/sys/class/fpga_manager/fpga0/firmware` with the bitstream filename initiates the PCAP transfer. The Linux FPGA Manager driver handles all PCAP register setup, DMA descriptor construction, and transfer completion polling internally.
4. The successful completion of the transfer is confirmed via the PCAP status register (`MCTRL` field of the `DEVCFG` peripheral), which the driver reads after the DMA engine signals transfer-done.

The PCAP on the Zynq-7020 is rated for a maximum configuration throughput of 200 MB/s using single-channel 32-bit mode, or up to 400 MB/s in 8-bit port width mode with optimised AXI DMA. In practice, the measured transfer rate in the test configuration was approximately 180 MB/s, limited by the DDR-to-PCAP DMA arbitration.

#### ICAP on Zynq: Architecture Constraint

Although the Zynq-7020 PL fabric contains the `ICAP_7SERIES` primitive at the same physical location as in all 7-series devices, using ICAP from PL logic on a Zynq device requires explicit coordination with the PS's PCAP arbitration hardware. The Zynq-7000 TRM specifies that ICAP and PCAP must not be used simultaneously; achieving PL-side ICAP access requires either disabling PCAP in software (by clearing the `PCAP_PR` bit in `DEVCFG.CTRL`) or designing a hardware arbitration scheme. This constraint was noted as a limitation of the Zynq platform for future PL-autonomous DPR flows and was not pursued further in the current project scope.

### 4.5.3 Phase 3 — Arty A7 + PYNQ-Z2 Inter-Board Bridge

Phase 3 arose from a practical connectivity problem introduced by the simultaneous use of both boards with their full feature sets enabled. The DFX validation flow requires three concurrent connections to the PYNQ-Z2: (a) the JTAG connection for bitstream programming and ILA data capture via the Vivado Hardware Manager, (b) the UART connection for the CFU Playground host-to-firmware communication, and (c) the PCAP validation path described above. However, the PYNQ-Z2 exposes only a single physical USB port to the host workstation, and this port is shared by a FTDI FT4232H multi-function bridge IC that internally assigns its four channels among JTAG (channel A), UART (channel B), and SPI debug (channels C/D). Under normal operation, both JTAG and UART are simultaneously accessible to the host through this single USB connection, since they appear as separate virtual serial ports after USB enumeration.

The conflict arose specifically when the ILA was required to maintain a persistent JTAG connection to the Hardware Manager for continuous `recon_counter` data capture. While the JTAG channel is occupied by an active ILA capture session, the USB port's JTAG channel is exclusively allocated to the Hardware Manager, and the host operating system's UART driver may experience access contention for the same physical USB endpoint depending on the host driver implementation. Rather than resolve this through software UART multiplexing or USB hub insertion, an alternative hardware path was designed to route the PYNQ-Z2's UART through a completely separate physical interface.

#### Attempted Workaround: PMOD-to-Arty UART Bridge

The PYNQ-Z2 exposes two PMOD connectors (JA and JB), each providing eight GPIO pins mapped to PL fabric I/O banks. The approach taken was to route the UART TX and RX signals from the Z2's PL fabric through the JA PMOD connector, connected via hookup wire to the JA PMOD connector on the Arty A7-100T. The Arty A7-100T was programmed with a minimal bitstream containing, in its entirety, two signal assignments in Verilog:

```verilog
assign usb_uart_tx = ja[0];   // PMOD_RX → Arty USB-UART TX
assign ja[1]       = usb_uart_rx; // Arty USB-UART RX → PMOD_TX
```

This bitstream, requiring only a handful of pass-through routing resources and no clock domain, was intended to provide a transparent electrical bridge between the Z2's PMOD UART output and the Arty's on-board Digilent FTDI USB-UART, which remains independently accessible to the host via a separate USB cable.

The bridge did not operate correctly in practice. Examination of the signal integrity on the PMOD-to-PMOD wire with an oscilloscope revealed that the idle-high UART signal on the Z2's 3.3 V PL GPIO was not reliably received at the Arty's PMOD input under baud rates above 9600 baud. This was attributed to the direct GPIO-to-GPIO connection lacking any line-driver buffering or impedance matching, and to a marginal voltage-level difference between the two boards' PMOD I/O standards when sourcing current into the shared wire without a termination resistor.

#### Resolution: Dedicated PMOD-UART Converter Module

The connectivity issue was resolved by the procurement of a commercial PMOD-to-USB-UART converter module (based on a CH340G USB-UART bridge IC), which provides proper CMOS-level buffering and USB-UART conversion without intermediate electrical coupling through a second FPGA. The Z2's PMOD UART signals are connected to the converter module's RX/TX pins, and the converter appears as an independent virtual serial port on the host workstation, eliminating any resource conflict with the JTAG channel. This solution has been verified to operate reliably at baud rates up to 1 Mbps.

---

## 4.6 DFX Tutorial Baseline Validation

Prior to integrating the DFX Decoupler with the CFU Playground SoC — a complex multi-module DFX design — the AMD UG947 *Dynamic Function eXchange Tutorial* was reproduced in full on the Arty A7-100T as an independent validation baseline. This step serves a dual purpose: it confirms that the Vivado DFX toolflow is correctly installed and licensed, and it provides a known-good reference point against which the resource utilisation and timing results of the final system can be compared.

### 4.6.1 Tutorial Design Summary

The UG947 tutorial instantiates a minimal DFX design consisting of two components:

- **Static partition:** A 3-bit LED shift register that continuously shifts a single illuminated LED across the four user LEDs at a user-configurable rate. This logic is synthesised once and embedded in the full bitstream and all partial bitstreams as the persistent static region.
- **Reconfigurable partition:** A `count_shift_led` module, for which two RMs are provided — a binary counter variant and a shift-register variant — each implementing the same port interface but producing distinct LED patterns. The RP is a single Pblock defined over a small area of the XC7A100T fabric.

The tutorial walks through the complete DFX implementation flow: defining the RP and RMs in the Vivado project settings, running out-of-context (OOC) synthesis for each RM, performing the DFX implementation of the full design in Vivado, and generating both the full bitstream and the per-RM partial bitstreams. JTAG-based reconfiguration is then demonstrated using the Hardware Manager, with the LED pattern changing visibly between the counter and shift-register behaviours after each partial bitstream load.

### 4.6.2 Measured Baseline Results

The implementation of the tutorial design on the Arty A7-100T yielded the following resource utilisation figures, obtained from the Vivado Implementation Report:

| Resource | Used | Available (XC7A100T) | Utilisation |
|---|---|---|---|
| Slice LUTs | 10 | 63,400 | <1% |
| Slice FFs | 64 | 126,800 | <1% |
| Block RAMs (36K) | 0 | 135 | 0% |
| DSP48E1 | 0 | 240 | 0% |
| Pblock area (slices) | 21 | — | — |

Timing summary from the post-implementation timing report:
- Worst Negative Slack (setup): **+2.022 ns** (timing closed with margin)
- Worst Negative Slack (hold): **+0.109 ns** (all hold paths met)
- No I/O timing constraints violated

The successful closure of this baseline confirmed that the Vivado DFX flow on the project's exact tool version (Vivado 2022.2), board support package, and constraint file was operating correctly. It also established the overhead of the tutorial's static logic as a reference: 10 LUTs and 64 FFs for the shift counter, leaving effectively all of the device's fabric available for the subsequent CFU Playground DFX implementation.

### 4.6.3 Partial Bitstream Validation

Partial bitstreams for both RMs were generated and verified by issuing the `.bit` files through the Vivado Hardware Manager's partial programming interface. Switching between the counter RM and the shift-register RM without resetting the static LED shifter logic was confirmed to work correctly on three consecutive round-trip reconfiguration events, with the ILA monitoring the EOS transition confirming a clean startup sequence for each RM swap. The total partial bitstream size for each RM in the tutorial design was approximately 340 KB, consistent with the frame count implied by the Pblock's bounding box dimensions on the XC7A100T device.

---

## 4.7 Partial Bitstream Storage — Current State and Roadmap

The automation of partial bitstream retrieval and delivery to the ICAP is the final engineering step separating the current implementation from a fully autonomous, software-triggered DPR system. This section describes the current state of the bitstream storage subsystem, the constraints that have delayed its completion, and the concrete technical roadmap for achieving full autonomy.

### 4.7.1 Current State: In-Fabric ROM (Synthesis-Time Embedding)

In the present implementation, partial bitstreams are stored in initialised BlockRAM tiles within the static partition. The content of each BRAM tile is specified using Verilog's `$readmemh` system task during synthesis — the bitstream bytes are hex-encoded and stored in a `.mem` file that is read by the synthesis tool and compiled into the BRAM initialisation attributes (`INIT_00` through `INIT_3F` parameters on the `RAMB36E1` primitives). At runtime, the `system_wrapper` FSM reads words from this BRAM sequentially and forwards them to the ICAP interface.

This arrangement successfully validates the complete reconfiguration sequence — DFX Decoupler assertion, ICAP write, EOS monitoring, and Decoupler release — on real hardware, and the ILA-captured `recon_counter` values in this configuration represent the true hardware reconfiguration latency of the ICAP primitive itself (exclusive of any bitstream fetch latency, since the BRAM read latency is negligible relative to the ICAP word rate). The limitation is that the bitstream is fixed at synthesis time: modifying the target RM requires resynthesising the static partition, which negates the runtime flexibility that is the core objective of DPR.

### 4.7.2 Near-Term Plan: QSPI Flash Fetch

The near-term target is to replace the BRAM ROM with a QSPI flash read path. The Arty A7-100T's on-board Quad-SPI flash (S25FL128S, 128 Mb / 16 MB) is already accessible from within the `system_wrapper` via the board's `qspi_flash` I/O bank. The implementation plan for this stage is:

1. **Flash programming:** At board-programming time (alongside the full static bitstream via the Hardware Manager), each RM's partial bitstream is written to a reserved flash sector at a fixed, pre-agreed base address (e.g., RM0 at offset `0x00400000`, RM1 at offset `0x00500000`).

2. **Flash controller state machine:** A fast-read (`0x0B`) command is issued to the flash with the appropriate 24-bit address. The S25FL128S returns data bytes sequentially at up to 104 MHz with a one-byte dummy cycle following the address. The `system_wrapper` pipeline collects four consecutive bytes, byte-reverses each (applying the 7-series ICAP bit-reversal requirement), and assembles them into a 32-bit word.

3. **ICAP write coincidence:** The assembled 32-bit words are forwarded directly to the ICAP without intermediate buffering, provided that the QSPI clock rate matches the ICAP's acceptance rate. If the QSPI read rate is slower than the ICAP word rate, a FIFO of sufficient depth must be interposed to absorb the rate difference.

This approach does not require DDR integration, making it the lower-complexity of the two bitstream storage strategies and the one designated as the primary near-term engineering objective.

### 4.7.3 Longer-Term Plan: DDR3 SDRAM Storage

Following the successful integration of the QSPI flash fetch path, a second storage tier — DDR3 SDRAM — is planned. DDR3 SDRAM provides substantially higher bandwidth than QSPI flash and lower random-access latency, making it suitable for scenarios in which multiple partial bitstreams must be accessed at low latency or in which the partial bitstreams are generated or transferred at runtime from a host.

Two architectural approaches are under consideration for DDR-backed bitstream storage:

**Approach A — Boot-time migration.** At system startup, after the full bitstream has been loaded and the DDR3 controller is initialised, the `system_wrapper` reads all partial bitstreams from QSPI flash and copies them into pre-allocated DDR3 address regions. Subsequent reconfiguration events fetch bitstreams directly from DDR3 via an AXI4 burst read, benefiting from the DDR's higher sustained bandwidth and lower per-word latency relative to flash.

**Approach B — Runtime host transfer.** Partial bitstreams are transferred from the host workstation to the FPGA's DDR3 memory at runtime via the existing UART channel. The VexRiscv firmware receives the bitstream bytes via UART, writes them into DDR3 through the LiteX SoC's Wishbone-to-AXI bridge, and then signals the `system_wrapper` to initiate a reconfiguration event against the newly written address region. This approach provides the maximum flexibility — any RM can be uploaded and instantiated at runtime without any prior flash programming — at the cost of UART-limited transfer bandwidth (approximately 1 MB/s at 10 Mbps UART, implying a transfer time of approximately 350–420 ms for a 350–420 KB partial bitstream).

The DDR3 path is the longer-term objective and is described in the Future Work section (§7.2) as the ultimate target architecture for producing a ZyCAP-comparable autonomous reconfiguration capability on a non-Zynq Artix-7 fabric.

### 4.7.4 Report Scope Clarification

All reconfiguration latency measurements reported in Chapter 6 reflect the in-fabric BRAM ROM delivery path: the `recon_counter` values capture only the ICAP write and startup sequence duration, not any bitstream fetch latency. This is a deliberate measurement choice: by eliminating memory latency from the measurement, the reported figures represent the lower bound on reconfiguration time — the time attributable to the ICAP primitive and the STARTUPE2 startup sequence themselves — which is the hardware characteristic of primary interest for comparing DPR systems across platforms. When the flash or DDR fetch paths are integrated, total reconfiguration latency (fetch latency + ICAP write + startup) will be separately quantified.

---
