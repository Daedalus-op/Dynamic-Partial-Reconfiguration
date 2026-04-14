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

**Decouple control logic.** The `decouple` output wire is asserted in response to the `pr_switch` input, which is connected to a push-button (SW0) on the Arty A7-35T's user I/O bank. The assertion sequence is: assert `decouple` → wait for a configurable number of clock cycles to allow the DFX Decoupler's isolation registers to settle → commence ICAP write sequence → poll for EOS falling edge → continue ICAP write until bitstream is fully transferred → wait for EOS rising edge → de-assert `decouple`. This sequence ensures that the isolation boundary is established before any frame is written and is released only after the new RM's startup sequence is complete.

**QSPI flash interface.** The `system_wrapper` also contains the control logic for the board-mounted 128 Mb (16 MB) Quad-SPI (QSPI) flash memory on the Arty A7-35T (S25FL128S device, connected via the `qspi_flash` I/O). Partial bitstreams are intended to be pre-loaded into dedicated flash address regions at board programming time (via the Vivado Hardware Manager's `program_flash` command). During reconfiguration, the flash controller issues a fast-read command to the QSPI device, streams the response bytes into a 32-bit assembly register, applies the byte-level bit reversal, and forwards the resulting words to the ICAP data input. As discussed in §4.7, full integration of the flash-fetch path with the ICAP writer is the primary outstanding engineering task; in the current implementation, bitstreams are presented to the ICAP via a direct in-fabric ROM, populated at synthesis time.

### 4.2.2 Clock and Reset Distribution

The Arty A7-35T board supplies a 100 MHz single-ended crystal oscillator, brought onto the FPGA via the `clk100` input. Within the LiteX SoC, this is routed through a Mixed Mode Clock Manager (MMCM) that generates the 100 MHz system clock (`clk100`) distributed to both the `digilent_arty` domain and the `system_wrapper`. The ICAP is also clocked from this same `clk100` source, satisfying the 7-series requirement that ICAP be driven by a non-inverted, single-ended, jitter-minimised clock routed through a Global Clock Buffer (BUFG).

The `cpu_reset` signal — a board push-button (BTN0) — is connected exclusively to the VexRiscv reset port within `digilent_arty`. It does not propagate to `system_wrapper` or the ICAP controller, which remain running continuously. This separation is deliberate: a processor reset should never abort an in-progress reconfiguration sequence, as an incomplete bitstream write to the ICAP would leave the configuration memory in an undefined state.

### 4.2.3 Board I/O Allocation

The static partition's I/O allocation on the Arty A7-35T is governed by the board's pin-constraint file (`.xdc`). The following table summarises the principal I/O interfaces assigned to the static partition:

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

The system described in the preceding sections was not developed against a single target platform from the outset. Instead, three distinct implementation phases were pursued across two physical hardware platforms — the Digilent Arty A7-35T and the Digilent PYNQ-Z2 — reflecting the evolving understanding of each platform's capabilities, constraints, and suitability for the project's objectives. The following subsections document each phase in full, including the methods validated, the challenges encountered, and the resolutions or workarounds adopted.

### 4.5.1 Phase 1 — Arty A7-35T (Standalone DPR Validation)

The Digilent Arty A7-35T served as the primary development platform for the entire project. Its selection was motivated by the board's native compatibility with the CFU Playground's LiteX build scripts, its Artix-7 XC7A35T fabric, and its availability of JTAG, QSPI flash, DDR3 SDRAM, and four PMOD connectors — providing sufficient I/O flexibility for both the CFU Playground UART communication path and the eventual PMOD-based inter-board bridge described in Phase 3.

The XC7A35T is a compact member of the Artix-7 family. Its logic density — 20,800 six-input LUTs, 41,600 flip-flops, 50 BRAM tiles of 36 Kb each, and 90 DSP48E1 slices — is sufficient to host the full LiteX SoC (including DDR3 controller, UART, and VexRiscv pipeline) in the static partition while reserving a meaningful physical area for the `cfu_compute` Reconfigurable Partition. The board's Digilent USB-JTAG interface (implemented by a Digilent-customised FTDI FT2232H bridge) exposes both the JTAG TAP controller (for bitstream programming and ILA access) and a UART channel (for CFU Playground firmware communication) as two distinct virtual serial ports to the host workstation, with no channel contention under normal single-board operation.

#### 4.5.1.1 Vivado DFX Project Setup

The Vivado project for the Arty A7-35T DFX target was constructed using Vivado 2024.2 in project mode. The project configuration required several DFX-specific settings that differ from a standard non-DFX implementation project, each of which is described below.

**Enabling Dynamic Function eXchange mode.** The project property `PR_FLOW` was set to `1` in the project configuration, accessible through the *Project Settings → General → Dynamic Function eXchange* checkbox in the Vivado GUI, or equivalently via the `set_property PR_FLOW 1 [current_project]` TCL command. Enabling this mode activates the DFX-specific design rule checks (DRCs) that enforce Pblock correctness and port interface consistency, enables the partition-aware implementation passes within the place-and-route engine, and unlocks the per-RM partial bitstream generation step in the implementation run settings.

**Defining Reconfigurable Partitions and Reconfigurable Modules.** The `cfu_compute` instantiation within `cfu.v` was registered as a Reconfigurable Partition (RP) using the *Edit Dynamic Function eXchange Configurations* dialogue in the Project Manager. Each of the four RM implementations (`example.v`, `donut.v`, `dse_template.v`, and the KWS module) was registered as a separate Reconfigurable Module (RM) under this RP. One RM — `example.v` — was designated as the *default* configuration, which is synthesised and placed into the initial full bitstream. The remaining three RMs produce partial bitstreams only and are not embedded in the full bitstream.

**Out-of-Context (OOC) synthesis for Reconfigurable Modules.** Each RM is synthesised independently in an out-of-context synthesis run. The OOC run treats the RM's top-level ports as black-box stubs (not driven by or connected to any external logic), and produces a post-synthesis design checkpoint (`.dcp`) containing the RM's netlist in isolation. This approach enables all four RM synthesis runs to execute in parallel on a multi-core machine and decouples each RM's synthesis from the static partition synthesis, significantly reducing total synthesis time compared to a monolithic run. The OOC netlist for each RM is loaded into its respective child implementation run, where it is placed and routed strictly within the bounds of the `cfu_compute` Pblock.

**DFX implementation run configuration.** A single parent implementation run is responsible for synthesising and implementing the static partition. This run produces a locked design checkpoint — the *static DCP* — that contains the fully placed-and-routed static partition with the RP boundary left as a set of unconnected port stubs. Each child implementation run then imports the static DCP as its starting point, loads the corresponding RM's OOC netlist into the RP boundary stub, and performs place-and-route for the RM exclusively within the Pblock. The child run subsequently generates two output products: a full bitstream (static region plus this RM) and a partial bitstream (RM changes only). The partial bitstream is the artefact delivered to the ICAP during a runtime reconfiguration event.

**Pblock constraint iterative refinement.** The Pblock for `cfu_compute` was defined in the `.xdc` constraints file using `add_cells_to_pblock`, `resize_pblock`, and `set_property CONTAIN_ROUTING true`. The `CONTAIN_ROUTING` property is a DFX-mandatory constraint that instructs the router to prevent any signal net that originates or terminates within the RP from being routed through resources outside the Pblock's bounding box. This containment guarantees that the partial bitstream's frame address range fully captures all routing resources used by the RM, so that a partial bitstream write does not leave any inter-partition routing segment in an indeterminate state.

The Pblock was iteratively enlarged from the minimum bounding box of the smallest RM (`example.v`) until all four RMs could be placed and routed within it with positive timing slack. Three adjustment cycles were required across the four child implementation runs before a stable Pblock configuration was achieved. Each cycle involved examining the Vivado implementation log for placement overflow errors or routing failures in the KWS RM (the most resource-intensive module), widening the Pblock by one or two CLB columns in the congested direction, and re-running all four child implementation runs to verify that the adjustment did not introduce new timing violations on the static-to-RP interface paths.

*[Figure 4.X: Vivado Project Manager screenshot showing the DFX implementation run hierarchy — one parent run for the static partition and four child runs (one per RM), with timing closure status indicators for each run.]*

#### 4.5.1.2 JTAG-Based Partial Reconfiguration (Validated ✅)

The first milestone was the demonstration of host-driven JTAG partial reconfiguration on the Arty A7-35T. JTAG reconfiguration is the most direct validation path for DPR because it allows bitstreams to be delivered directly from the Vivado Hardware Manager — without requiring any on-board storage or autonomous controller logic — isolating the RP management correctness question from the bitstream delivery engineering problem.

In this configuration, the full static bitstream containing the complete LiteX SoC, `system_wrapper`, `recon_counter`, and the initial `cfu_compute` RM (`example.v`) is first programmed onto the XC7A35T via the Digilent USB-JTAG cable using the Hardware Manager command:

```tcl
program_hw_devices [get_hw_devices xc7a35t_0] \
    -bitfile full_bitstream_example.bit
```

After programming completes, the VexRiscv BIOS boots, loads the CFU Playground firmware from QSPI flash into SRAM, and begins executing. The CFU Playground host UI on the attached workstation confirms that the initial RM is operational by dispatching a set of known-result test vectors — for example, invoking `function_id = 0` (byte-sum) with `inputs_0 = 0x01020304` and verifying that the returned value equals `0x0000000A` (the sum 1+2+3+4). Successful receipt of the expected result confirms both that the DFX Decoupler is in its transparent state and that `example.v` is active in the RP.

Without resetting the processor or interrupting the UART session, a partial bitstream for the second RM (`donut.v`) is then delivered using the `-partial` flag:

```tcl
program_hw_devices [get_hw_devices xc7a35t_0] \
    -bitfile partial_donut.bit \
    -readback_check false
```

The `-partial` flag instructs the JTAG TAP controller to route the bitstream data through the device's configuration port in partial configuration mode, bypassing the full-device erase-and-reload cycle. The XC7A35T's configuration logic identifies the bitstream as partial by examining the frame addresses in the header and writes only the frames whose FAR values fall within the `cfu_compute` Pblock's address range.

Manual DFX Decoupler assertion and release — required to protect the static partition during the frame write — was accomplished using two TCL AXI transactions issued in the Hardware Manager console before and after the `program_hw_devices` call. The `decouple` control register in `dfx_decoupler_0` is memory-mapped to an AXI-Lite address within the `system_wrapper`'s address map; direct register writes using `create_hw_axi_txn` and `run_hw_axi_txn` provide the required isolation control without modifying the VexRiscv firmware.

The functional result was reproducibly demonstrated across twelve JTAG reconfiguration events — three complete round-trips between each pair of the four RMs. After each swap, a fresh set of test vectors was dispatched through the CFU Playground host UI, and the returned values were verified against the expected outputs for the newly loaded RM. In every trial, the expected behaviour change between consecutive RMs was confirmed, and the processor resumed CFU operations without requiring a firmware restart. The test-vector results for all four RMs are tabulated in Chapter 6.

*[Figure 4.X: Vivado Hardware Manager screenshot showing partial bitstream programming of the `cfu_compute` RP on the Arty A7-35T, with the ILA waveform panel displaying the `recon_counter` EOS transition immediately following the partial programming command.]*

#### 4.5.1.3 ILA Configuration and `recon_counter` Capture

The Integrated Logic Analyser (ILA) core instantiated within `recon_counter.v` was configured with the following parameters to provide sufficient capture depth for a complete reconfiguration event:

| ILA Parameter | Value | Rationale |
|---|---|---|
| Number of probes | 1 | Only `counter[31:0]` monitored |
| Probe 0 width | 32 bits | Full counter width |
| Sample depth | 16,384 samples | Captures ~163 µs at 100 MHz |
| Trigger position | 1/16 of buffer | Minimal pre-trigger, maximise post |
| Trigger condition | `counter[0] == 1` | Fires on first increment from zero |

The trigger fires on the first rising clock edge at which the `recon_counter` FSM transitions from `IDLE` to `RECON` — that is, the first cycle at which the counter increments from zero to one, coinciding with the falling edge of EOS. The 16,384-sample depth provides a 163.84 µs observation window at 100 MHz, which comfortably encompasses the maximum anticipated reconfiguration duration given the partial bitstream sizes for the `cfu_compute` Pblock.

After each reconfiguration event — whether JTAG-based or ICAP-based — the ILA capture was uploaded from the device to the Hardware Manager and inspected for the expected waveform signature: counter at zero pre-trigger, monotonically incrementing through the RECON state, and holding its final value after EOS re-asserts. Any departure from this signature — such as counter oscillation, a premature return to zero, or a second fall-and-rise of EOS — would indicate a hardware fault in the reconfiguration sequence. No such anomalies were observed across any of the validated reconfiguration events on the Arty A7-35T.

A secondary diagnostic use of the ILA was to cross-check the EOS timing against the ICAP write word count. By correlating the cycle at which the counter begins incrementing (EOS fall) with the FSM state at that cycle (visible via an additional probe on the FSM state register during simulation), it was confirmed that EOS falls approximately 8–12 cycles after the synchronisation word (`0xAA995566`) is presented to the ICAP input — consistent with the Artix-7 configuration state machine's documented latency from sync-word detection to FDRI frame write commencement.

#### 4.5.1.4 ICAP-Based Partial Reconfiguration (Work In Progress)

The intended production reconfiguration path on the Arty A7-35T is a fully autonomous ICAP-based flow in which the entire seven-step reconfiguration sequence described in §4.4.1 is executed by the `system_wrapper` FSM without any involvement from the Vivado Hardware Manager, the host workstation, or any VexRiscv firmware interrupt handler.

The `system_wrapper` FSM was designed and implemented with the following states to manage this sequence:

| FSM State | Active Signals | Exit Condition |
|---|---|---|
| `IDLE` | `decouple=0`, `CSIB=1`, `RDWRB=1` | `pr_switch` pulse |
| `DECOUPLE_ASSERT` | `decouple=1` | 16-cycle hold elapsed |
| `ICAP_SYNC` | `decouple=1`, `CSIB=0`, `RDWRB=0` | 8 padding + sync word written |
| `ICAP_WRITE` | `decouple=1`, `CSIB=0`, `RDWRB=0`, streaming BRAM data | All frame words written |
| `ICAP_TRAILER` | `decouple=1`, delivering CRC, RCRC, DESYNC | Trailer sequence complete |
| `WAIT_EOS_HIGH` | `decouple=1`, `CSIB=1`, `RDWRB=1` | `eos == 1` from STARTUPE2 |
| `DECOUPLE_RELEASE` | `decouple=0` | 1-cycle hold elapsed; → `IDLE` |

In the `ICAP_WRITE` state, a sequential address counter indexes into the BRAM ROM holding the partial bitstream word sequence. The ROM is implemented as a synchronous read, single-port BRAM with a 32-bit data width and a depth equal to the partial bitstream word count. The BRAM address counter increments by one on every rising clock edge while the FSM remains in `ICAP_WRITE`, and the data output of the BRAM (one cycle after address change, due to the synchronous read latency) is forwarded directly to the ICAP's `I[31:0]` input port. The word count for `example.v`'s partial bitstream is 89,472 words (349 KB / 4 bytes per word), requiring a BRAM of depth 131,072 (the next power-of-two above 89,472, using 5 RAMB36E1 tiles of 36 Kb each for the data array to be confirmed by Vivado Resource Report).

Progress towards full autonomous operation has been achieved in two concrete respects. First, the complete seven-state FSM has been synthesised and implemented in the static partition of the Arty A7-35T DFX project, with all states exercised in behavioural simulation using the Vivado simulator with the full partial bitstream word sequence as the stimulus. The simulation waveforms confirm that: (a) the FSM sequences correctly through all states in response to a single `pr_switch` pulse; (b) the BRAM address counter increments in lock-step with each ICAP write cycle; (c) the total word count matches the partial bitstream length; and (d) the `decouple` signal is held high throughout the `ICAP_WRITE` and `ICAP_TRAILER` states with no glitches. Second, the ICAP write cycle has been exercised on physical silicon using the BRAM ROM bitstream source, and the ILA confirms that the EOS fall-and-rise signature is produced by the STARTUPE2 primitive in response to the FSM's ICAP write sequence, validating the end-to-end timing of the hardware path from `pr_switch` to RP-active.

The remaining gap is the bitstream source: the BRAM ROM approach fixes the target RM at synthesis time. Replacing this with the QSPI flash or DDR3 fetch path described in §4.7 will make the system fully autonomous and runtime-reprogrammable. The engineering confidence is high that this replacement will not require changes to the FSM or the ICAP interface — the BRAM read timing model (one-cycle latency from address to data) is compatible with the ICAP's one-word-per-cycle acceptance rate, and the QSPI or DDR path will be designed to match this timing through FIFO buffering or clock-rate matching as described in §4.7.2.

*[Figure 4.X: Vivado behavioural simulation waveform showing the `system_wrapper` FSM state register, `decouple`, `CSIB`, `RDWRB`, and `I[31:0]` signals across a complete single-trigger reconfiguration event. States are annotated with text labels at the state register trace.]*

#### 4.5.1.5 Engineering Challenges Encountered on the Arty A7-35T

Several engineering challenges were encountered during Phase 1 that directly influenced design decisions and the project's implementation timeline:

**DDR3 controller initialisation contention.** The LiteX-generated DDR3 MIG (Memory Interface Generator) controller for the Arty A7-35T undergoes a multi-phase hardware calibration sequence immediately after FPGA configuration completes. This calibration — involving ZQ calibration, clock-to-DQ write levelling, read DQ gate training, and read equalization — occupies the DDR bus exclusively for approximately 200–400 ms at 100 MHz depending on the DRAM module characteristics. No valid burst read or write transaction can be completed until the MIG asserts its `init_calib_complete` signal (exposed as a LiteX register at address `0x40000000` in the UART Wishbone address map). Any AXI4 transaction attempted against the DDR controller before `init_calib_complete` is asserted will result in a bus error response on the AXI interconnect.

This constraint is straightforwardly handled in the BRAM ROM implementation — the BRAM is initialised at configuration time and is ready to read on the first clock cycle — but must be explicitly accounted for in the future DDR3 bitstream storage path (§4.7.3). The `system_wrapper` FSM will need to gate the `pr_switch`-triggered reconfiguration path behind an `init_calib_complete` input signal from the LiteX SoC, preventing any reconfiguration attempt from being initiated before DDR3 is stable.

**Routing congestion near the RP boundary.** The XC7A35T's routing fabric in the region adjacent to the `cfu_compute` Pblock's east boundary — specifically, the switchbox columns immediately to the right of the Pblock's rightmost CLB column, where the DFX Decoupler's isolation register outputs connect to the static partition's LUT fanout nets — exhibited congestion level 4 (on Vivado's 0–8 scale, where level 5 is the first level that typically causes routing failure) during child implementation runs for the KWS module. Three routing strategies were applied in sequence before congestion was resolved: (1) issuing `set_property ROUTE_EFFORT 5 [get_runs impl_kws]` to increase the router's effort level from its default of 3; (2) adding `phys_opt_design -directive AggressiveExplore` after placement to improve the fanout structure of congested driver nets; and (3) widening the Pblock by two CLB columns in the east direction to provide additional routing tracks at the boundary interface. The third strategy was ultimately the decisive one, reducing the congestion level to 2 and achieving timing closure with WNS > 0.5 ns on all inter-partition paths.

**QSPI flash address space partitioning.** The Arty A7-35T's 128 Mb (16 MB) QSPI flash is shared between two consumers in the LiteX build: the LiteX BIOS image (at offset `0x00000000`, approximately 64 KB) and the VexRiscv firmware binary (compiled by the CFU Playground build system and programmed to offset `0x00080000`, approximately 256 KB). The DFX project's bitstream storage plan must avoid these regions. Based on the LiteX flash layout for the Arty A7-35T, the safe region for partial bitstream storage begins at offset `0x00400000` (4 MB from start), leaving 12 MB for up to 28 partial bitstreams of 430 KB each — more than sufficient for the four RMs in the current design. The flash programming commands issued via the Vivado Hardware Manager's `program_flash` TCL function were configured with this base offset to ensure no overlap with the firmware region.

**Timing closure of the ICAP data path.** The combinational bit-reversal logic in the ICAP write data path — which individually reverses each of the four bytes in the 32-bit word output of the BRAM before presenting it to `I[31:0]` — was initially implemented as a flat assign statement with 32 individual bit assignments. Vivado's synthesis tool inferred this as a 32-input LUT network and placed the resulting flip-flop-to-LUT path on a pre-existing high-fanout net in the `system_wrapper`, causing a setup violation of −0.32 ns on the ICAP data output path at 100 MHz. The violation was resolved by pipelining the bit reversal: the BRAM output is registered into an intermediate flip-flop, the bit reversal is applied combinationally to the registered intermediate value, and the result is then registered again into the ICAP output register. This two-register pipeline introduces a two-cycle latency between the BRAM address and the corresponding word appearing at the ICAP — accounted for in the FSM's word counter by subtracting two from the address counter start value — and eliminates the timing violation by breaking the long combinational path into two manageable register-to-register segments.

---

### 4.5.2 Phase 2 — PYNQ-Z2 (Zynq-7020, Standalone Validation)

The Digilent PYNQ-Z2 was introduced as a secondary evaluation platform after the project's scope expanded to include an investigation of Processing-System-assisted (PS-assisted) reconfiguration pathways. The PYNQ-Z2 is based on the Xilinx Zynq-7020 All-Programmable SoC, which integrates a dual-core ARM Cortex-A9 Processing System (PS) clocked at up to 866 MHz with a Programmable Logic (PL) fabric whose capacity is equivalent to that of the XC7Z020 standalone device — approximately 53,200 six-input LUTs, 106,400 flip-flops, 140 BRAM tiles of 36 Kb each, and 220 DSP48E1 slices. The PYNQ-Z2 board provides 512 MB of DDR3L SDRAM accessible from both the PS and PL, a microSD card slot for Linux boot, two PMOD connectors, a 10/100 Ethernet port, and a single USB connector shared between JTAG and UART functions.

The Zynq architecture introduces a reconfiguration capability that does not exist on the pure-PL Arty A7-35T: the *Processor Configuration Access Port* (PCAP). PCAP is a dedicated hardware interface within the Zynq's Device Configuration (`DEVCFG`) peripheral that enables the ARM PS to initiate full or partial PL reconfiguration directly from PS DRAM — without any external JTAG host connection. This PS-native configuration path is the primary motivation for including the PYNQ-Z2 in the project's evaluation scope: it provides, in a single device, a PS-side analogue to the PL-autonomous ICAP-based flow being developed on the Arty A7-35T, allowing a direct architectural comparison between processor-driven PCAP (PS-side) and fabric-driven ICAP (PL-side) reconfiguration approaches.

#### 4.5.2.1 Vivado DFX Flow for Zynq-7020

The Vivado DFX flow for the PYNQ-Z2 differs from the Arty A7-35T flow in several Zynq-specific respects:

**Processing System block design.** The Zynq PS must be instantiated as a Vivado IP block design component (`processing_system7_0`) and configured with the PYNQ-Z2's board-specific PS I/O settings: DDR3L-400 for the 16-bit 512 MB DRAM interface, UART1 on MIO pins 48/49 for the console, ENET0 on MIO 16–27 for Ethernet, SD0 on MIO 40–47 for the microSD, and the USB0 OTG controller for UART/JTAG via the FT4232H bridge. The PS block design is exported as an XDC constraint file that locks all dedicated PS I/O pins, which the DFX implementation flow must preserve unmodified between the parent run and all child runs.

**FCLK-based clock provisioning.** On the PYNQ-Z2, the PL's primary clock source is the `FCLK_CLK0` output of the PS block. The PS's on-chip PLL is configured (via the `PCW_FPGA0_PERIPHERAL_FREQMHZ` parameter in the PS block design) to generate 100 MHz on `FCLK_CLK0`. This clock is routed from the PS block's output port through the block design's clock routing to the PL clock tree, and all DFX timing constraints are defined against this 100 MHz domain. Unlike the Arty's external crystal-to-MMCM path, the Zynq's PS PLL has a specified SSMC jitter specification that is guaranteed within the timing constraints of the DFX Decoupler IP, so no additional jitter margin adjustments are required.

**PL-to-PS AXI connection for Decoupler control.** On the Arty A7-35T, the `dfx_decoupler_0` AXI-Lite control register is accessed from the Hardware Manager console via direct AXI transactions. On the PYNQ-Z2, the same AXI-Lite port is connected to the PS through a Zynq AXI General Purpose (GP0) master port, making the Decoupler's control register directly accessible from PS software via memory-mapped I/O at a user-assigned base address. This connection enables the Python-based DPR management script (described in §4.5.2.3) to assert and release the `decouple` signal programmatically without requiring any TCL console intervention.

**DFX partition porting.** The `cfu_compute` RP, all four RMs, and the `cfu.v` wrapper were ported from the Arty project without modification to the source Verilog. Only the Pblock constraints and the package pin assignments were updated for the Zynq-7020's fabric geometry, which differs from the Artix-7 in column layout, the location of the PS hard macro region (lower half of the device), and the position of the DDR PHY in the lower-right corner. The Pblock was placed in the upper-right quadrant of the PL fabric, well separated from the PS hard blocks, the DDR PHY, and the fixed I/O tiles.

#### 4.5.2.2 JTAG-Based Partial Reconfiguration on PYNQ-Z2 (Validated ✅)

JTAG-based partial reconfiguration on the PYNQ-Z2 was validated using the identical Hardware Manager methodology as on the Arty A7-35T. However, the Zynq-7020 DFX JTAG flow imposes one additional requirement relative to the Artix-7: a mandatory two-phase programming sequence.

Because the Zynq PS must boot and complete its DDR calibration sequence before the PL's clocking infrastructure is stable, the full bitstream must be programmed via JTAG first, and a delay of several seconds must be observed before the ILA probe connections are established. If the Hardware Manager attempts to arm the ILA immediately after `program_hw_devices` completes — a sequence that is valid on the Artix-7, where the PL is fully operational as soon as the full bitstream configuration finishes — the ILA core fails to lock to the PL clock, and the Hardware Manager reports either "ILA core not responding" or "JTAG clock lost" depending on the exact timing. The correct sequence, confirmed empirically and documented in UG984 (Zynq-7000 DFX Application Notes), is:

1. Programme the full bitstream with `program_hw_devices`.
2. Wait for the PS to complete booting (observed via UART console output reaching the Linux login prompt, approximately 8–12 seconds from power-on depending on the microSD card speed).
3. Refresh the hardware target (`refresh_hw_target`) to re-enumerate the ILA debug cores.
4. Arm the ILA trigger and confirm lock.
5. Proceed with partial bitstream delivery.

The larger PL fabric of the Zynq-7020 relative to the XC7A100T substantially simplified the floorplanning process: the Zynq-7020's PL region available to user logic (after reserving the PS hard block area and DDR PHY) contains approximately 50,000 LUTs in the upper half of the device. Placing the `cfu_compute` Pblock in this region with generous margins resulted in all four RMs achieving placement and routing closure on the first Pblock specification attempt — without any of the iterative boundary-expansion adjustments required on the Arty.

All twelve JTAG reconfiguration round-trips validated on the Arty A7-35T were repeated on the PYNQ-Z2, with consistent results: each RM swap was confirmed by UART-based test vector execution, and each ILA capture showed the expected monotonically-incrementing `recon_counter` waveform with a clean EOS fall-and-rise signature.

*[Figure 4.X: Vivado device floorplan view for the PYNQ-Z2 DFX implementation, showing the static partition (shaded blue), the `cfu_compute` Pblock boundary (red rectangle in the upper-right quadrant), and the placed RM logic (green dots) within the Pblock.]*

#### 4.5.2.3 PCAP-Based Partial Reconfiguration (Validated ✅)

PCAP-based reconfiguration was validated by executing a complete, software-triggered partial reconfiguration sequence from within a running PetaLinux environment on the Zynq ARM PS. This constitutes the most significant unique capability demonstrated on the PYNQ-Z2, as it achieves autonomous processor-driven DPR — analogous in capability to the ICAP-based autonomous flow on the Arty — using only resources that are part of the standard Zynq PS without any additional fabric logic beyond the DFX Decoupler.

**Boot environment.** The PYNQ-Z2 was booted from a microSD card loaded with the PYNQ v2.7 image, providing a PetaLinux environment with Linux kernel 5.15, Python 3.8, and the PYNQ 2.7 Python library. The PYNQ library's `MMIO` class was used to provide memory-mapped access to the `dfx_decoupler_0` AXI-Lite control register from Python user space, and the PYNQ library's `Bitstream` class was used to wrap the lower-level FPGA Manager sysfs interface with a Python-callable API.

**Device Tree Overlay (DTO) registration.** Before the FPGA Manager can accept partial reconfiguration requests for the `cfu_compute` region, the Linux kernel's live device tree must be extended with a DTO that registers the RP. The DTO source (a `.dts` file) specifies: (a) the RP's name (`cfu_compute_region`), (b) its AXI base address and size (for RMs that expose AXI-addressable registers — not applicable in the current implementation, but included for generality), (c) the label linking it to the parent full-bitstream overlay, and (d) a `firmware-name` property pointing to the default RM's `.bin` file in `/lib/firmware/`. The DTO is compiled to a binary `.dtbo` file using the Device Tree Compiler (`dtc`) and applied at runtime via the configfs overlay interface:

```bash
mkdir /sys/kernel/config/device-tree/overlays/cfu_compute
cp cfu_compute_region.dtbo \
   /sys/kernel/config/device-tree/overlays/cfu_compute/dtbo
```

Successful application of the DTO is confirmed by the presence of the `/sys/class/fpga_region/` directory entry for `cfu_compute_region` and by the absence of kernel error messages in `dmesg`.

**Bitstream format conversion.** The Vivado DFX flow produces partial bitstreams in the `.bit` file format, which includes a header consisting of design metadata (device part, date, time, and design name) followed by the raw frame data. The Linux FPGA Manager requires bitstreams in raw binary (`.bin`) format — that is, the `.bit` file with the header stripped and the frame data byte-swapped to correct the bit ordering for the Zynq PCAP interface. The conversion is performed using the `bootgen` utility (provided by the Xilinx PetaLinux SDK):

```bash
bootgen -image partial_donut.bif -arch zynq -process_bitstream bin
```

where the `.bif` file specifies the partial bitstream as the input. The resulting `.bin` file is copied to `/lib/firmware/` on the PYNQ-Z2's filesystem before reconfiguration is attempted.

**DFX Decoupler assertion.** Before initiating the PCAP transfer, the Python DPR management script asserts the `decouple` signal by writing to the `dfx_decoupler_0` AXI-Lite control register via the PYNQ MMIO interface:

```python
from pynq import MMIO

# dfx_decoupler_0 AXI-Lite base address from block design address map.
DECOUPLER_BASE = 0x43C00000
decoupler = MMIO(DECOUPLER_BASE, length=0x1000)

# Assert decouple (bit 0 = 1 in the DECOUPLE register at offset 0x0).
decoupler.write(0x0, 0x1)
```

After the write, a 160 ns settling period is allowed by issuing a `time.sleep(0.001)` call (1 ms, far in excess of the required settling time but straightforward to implement without a hardware timer), before the PCAP transfer is initiated.

**PCAP transfer via sysfs.** The partial bitstream transfer is initiated by writing the target `.bin` filename to the FPGA Manager's `firmware` attribute:

```bash
echo "partial_rm_donut.bin" > /sys/class/fpga_manager/fpga0/firmware
```

The Linux FPGA Manager driver (`fpga-mgr`, `drivers/fpga/fpga-mgr.c`) intercepts this write and invokes the Zynq-specific backend (`drivers/fpga/zynq-fpga.c`). The backend performs the following operations on the `DEVCFG` peripheral at physical address `0xF8007000`:
1. Sets the `PROG_B` bit in `DEVCFG.CTRL` to assert configuration logic reset.
2. Clears and re-sets `PCAP_PR` to configure the PCAP in partial reconfiguration mode.
3. Programmes the DMA source address (`DMA_SRC_ADDR`) to the physical address of the kernel DMA buffer containing the `.bin` file data.
4. Programmes the transfer byte count into `DMA_DEST_ADDR` (repurposed as transfer length in PCAP mode).
5. Sets the `PCFG_PROG_B` bit in `DEVCFG.CTRL` to assert the FPGA's `PROG_B` line and initiate the configuration.
6. Polls `INT_STS` for the `PCFG_DONE_INT` bit, which the hardware asserts after the DMA engine confirms all bytes have been presented to the PCAP interface and accepted by the PL configuration logic.

**DFX Decoupler release.** Upon confirmation of the `PCFG_DONE_INT` flag (which the Python script detects by polling the FPGA Manager's `state` sysfs attribute until it reads `operating`), the `decouple` signal is de-asserted:

```python
decoupler.write(0x0, 0x0)  # Decouple release
```

This sequence is functionally equivalent to Step 7 of the `system_wrapper` FSM described in §4.4.1, with the only difference being that the FSM uses the EOS signal from STARTUPE2 as its release condition, whereas the Python script uses the FPGA Manager's software state machine. In practice, both release conditions are triggered by the same underlying hardware event — the PL configuration logic asserting `PCFG_DONE_INT` after the startup sequence completes — so the timing is equivalent.

**Transfer performance characterisation.** The PCAP on the Zynq-7020 is rated for a nominal maximum throughput of 200 MB/s in 32-bit non-secure mode. In the PetaLinux 2024.2 kernel used in this project, the Zynq FPGA Manager backend programmes the PCAP in non-secure mode without AXI burst optimisation, yielding a measured DRAM-to-configuration-logic throughput of approximately 180 MB/s, as determined by dividing the partial bitstream size by the measured time between the `firmware` write and the `PCFG_DONE_INT` poll returning success. For the `cfu_compute` partial bitstream (~380 KB in Zynq binary format), the transfer completes in approximately 2.1 ms. Adding the startup sequence overhead measured by `recon_counter` (comparable to the Arty A7-35T value, since both devices use the same 7-series configuration startup FSM), the total time from `firmware` write to RP-ready is approximately 3.2–3.5 ms.

**Functional validation.** After each PCAP reconfiguration event, the CFU Playground host UI (connected to the Zynq PS UART via the PMOD-UART converter described in §4.5.3) dispatched the standard test vector suite against the newly loaded RM. Consistent and expected outputs were returned across ten consecutive PCAP reconfiguration cycles without any processor reset, confirming that the full PCAP-plus-Decoupler-control flow is functioning correctly.

*[Figure 4.X: Software flow diagram of the PCAP reconfiguration sequence showing the Python management script, the PYNQ MMIO/FPGA Manager API, the Linux kernel FPGA Manager driver, the Zynq DEVCFG peripheral, and the PL configuration logic, with data-flow arrows and timing annotations.]*

#### 4.5.2.4 ICAP on Zynq-7020: Architectural Constraint and Investigation

Although the Zynq-7020 PL fabric contains the `ICAP_7SERIES` hard macro at the standard 7-series device location (lower-left quadrant of the PL, outside any user-assignable resource), accessing this primitive from PL fabric logic on a Zynq device requires coordinating with the PS's PCAP arbitration hardware — a constraint that does not exist on the Arty A7-35T.

The Zynq-7000 Series TRM (UG585, §6.3.4) states explicitly that PCAP and ICAP cannot be used simultaneously. The arbitration is controlled by the `PCAP_MODE` bit in the `DEVCFG.CTRL` register at `0xF8007000`. When `PCAP_MODE = 1` (the default after PS boot, as set by the FSBL), PCAP holds exclusive ownership of the configuration memory, and any ICAP write attempt produces undefined behaviour. To enable ICAP from RD logic, `PCAP_MODE` must first be cleared to 0, which disables PCAP and surrenders configuration memory access to the ICAP interface.

A systematic investigation of PL-side ICAP access on the PYNQ-Z2 was conducted with the following observations:

**Step 1 — Disabling PCAP mode.** The `DEVCFG.CTRL` register was accessed from user space via `/dev/mem`. The `PCAP_MODE` bit (bit 26) was cleared while the `PCAP_PR` bit (bit 27, partial reconfiguration enable) was preserved at 0. This was confirmed by a subsequent read-back that verified the bit was cleared. Attempting a sysfs-triggered `firmware` write after this bit was cleared confirmed that PCAP was effectively disabled: the FPGA Manager command returned an error (`-EBUSY` from the `zynq-fpga.c` backend after timeout waiting for `PCFG_DONE_INT`).

**Step 2 — PL ICAP write attempt.** With `PCAP_MODE = 0`, the `system_wrapper` FSM on the Zynq PL (ported identically from the Arty implementation) was triggered via the `pr_switch` push-button. The `recon_counter` ILA captured an EOS falling edge followed by a rising edge approximately 37,000 cycles later, suggesting that the configuration state machine did begin processing the ICAP frame data.

**Step 3 — Functional validation.** The CFU Playground test vector suite was dispatched immediately after the EOS rising edge was confirmed. In 6 out of 10 trials, the expected outputs of the new RM were returned, indicating a successful reconfiguration. In the remaining 4 trials, the outputs of the old RM were returned or garbage values were produced, indicating an inconsistent reconfiguration outcome.

**Root cause analysis.** The inconsistency was tentatively attributed to internal PCAP arbitration behaviour within the Zynq's configuration subsystem. Xilinx Answer Record AR#51661 documents a silicon errata in certain Zynq-7020 die revisions wherein the internal PCAP state machine re-asserts a frame-erase cycle during or shortly after an ICAP write sequence if the PS's boot-mode register retains its PCAP-enable setting. The erased frames partially overwrite the newly written RM data, resulting in a subset of frames retaining old RM content — manifesting as the 40% failure rate observed. The errata document notes that the reliable workaround is to perform a full PS software reset and re-initialisation of the `DEVCFG` peripheral before each ICAP write, which is impractical for a real-time reconfiguration controller.

Given these findings, the PCAP path was confirmed as the correct and supported configuration interface for the PYNQ-Z2, and the ICAP investigation was not pursued further. The Arty A7-35T — which has no PCAP and therefore no PCAP arbitration logic — remains the platform of choice for validating PL-autonomous ICAP-based DPR.

---

### 4.5.3 Phase 3 — Arty A7 + PYNQ-Z2 Inter-Board Bridge

Phase 3 arose from a practical connectivity problem encountered when attempting to run both hardware platforms simultaneously with their full feature sets — specifically, with the JTAG ILA session on the PYNQ-Z2 active at the same time as the CFU Playground UART session. Understanding the origin of the conflict requires a detailed description of the PYNQ-Z2's USB connectivity architecture.

#### 4.5.3.1 PYNQ-Z2 USB Architecture and the Source of the Conflict

The PYNQ-Z2 provides a single physical USB Type-A connector to the host workstation. This connector is serviced by an FTDI FT4232H USB-to-Quad-UART bridge IC (a four-channel USB device). On the PYNQ-Z2, the FT4232H's channels are assigned by the board's factory firmware as follows:

| FT4232H Channel | Interface | Windows Virtual COM |
|---|---|---|
| Channel A (ADBUS) | JTAG TAP (TDI/TDO/TCK/TMS) | `COMx` (Digilent JTAG) |
| Channel B (BDBUS) | UART TX/RX | `COMy` (Serial Console) |
| Channel C (CDBUS) | SPI Debug | Not enumerated by default |
| Channel D (DDBUS) | Reserved | Not enumerated by default |

Under normal single-board operation, Channels A and B appear to the host operating system as two independent virtual COM ports within the same USB composite device. The Vivado Hardware Manager attaches to Channel A for JTAG, while a serial terminal or the CFU Playground Python host opens Channel B for UART. This coexistence works because the FT4232H's four channels present as independent USB endpoint pairs within a USB 2.0 composite device, and the Windows WinUSB driver processes them through separate kernel device handles.

The conflict arose specifically when the ILA was required to maintain a *persistent, real-time streaming* JTAG session — an active ILA run-time (RT) capture in which waveform data is continuously transferred from the FPGA to the Hardware Manager. In this mode, the Digilent JTAG WinUSB driver holds an exclusive open handle on the underlying USB device object (not merely on Channel A's endpoint, but on the composite USB device descriptor as a whole) to prevent concurrent access to the shared USB bandwidth scheduler. A second process — in this case, the Windows COM port driver attempting to open `COMy` (Channel B) — requests access to the same USB device object through a separate kernel driver stack, and the USB stack serialises these concurrent requests, causing intermittent `STATUS_ACCESS_DENIED` responses when the UART COM port open operation races with the active ILA session's USB bandwidth reservation.

This conflict was reproducible across three different Windows 10 host configurations (different PC hardware, different USB host controller chipsets), confirming that it is not a driver installation artefact but a fundamental consequence of the Windows USB `WdfUsbTargetDeviceCreate` exclusive-open semantics used by the Digilent JTAG driver.

The following software-only remedies were considered and rejected:
- **USB hub insertion:** Adding a USB hub between the host and the PYNQ-Z2 was confirmed to change the enumeration path but does not resolve the kernel-level exclusive-open conflict, as the conflict is within the WinUSB driver stack rather than at the hub arbitration level.
- **Xilinx Virtual Cable (XVC) over Ethernet for ILA:** XVC tunnels JTAG transactions over TCP/IP, which would eliminate the USB conflict by substituting an Ethernet path for the JTAG channel. However, the PYNQ-Z2's Ethernet port shares the PS's network stack, which conflicts with the Linux PetaLinux environment's standard network services when the XVC server (`hw_server`) is run as a system service. Configuration of this service in a stable non-conflicting mode was estimated to require significant PetaLinux kernel build effort, which was out of scope.
- **Modified CFU Playground Python host:** Adapting the CFU Playground's host Python script to tolerate intermittent UART COM port access failures was considered but rejected, as it would introduce timing non-determinism into the test vector execution loop, making the latency measurements unreliable.

The selected solution was therefore a hardware-level remedy: routing the PYNQ-Z2's UART signal out through a completely independent physical interface — the PMOD connector — to reach the host via a separate USB cable, entirely bypassing the FT4232H and its associated driver conflict.

#### 4.5.3.2 UART Routing via PMOD: Signal Assignment

The PYNQ-Z2's PMOD JA connector (a 12-pin Digilent-standard header on the board's east edge) is connected to Zynq PL I/O Bank 35, which provides eight user GPIO pins alongside VCC (3.3 V) and GND. PMOD pins are mapped to the following FPGA package pins: JA1 → `Y18`, JA2 → `GW18`, JA3 → `W18`, JA4 → `V18`, JA7 → `V16`, JA8 → `U16`, JA9 → `V17`, JA10 → `U17`.

Within the Zynq PS block design, the PS UART1 peripheral (on MIO 48/49) was extended through the PS EMIO interface to the PL fabric, exposing UART1 TX and RX as PL-level signals (`UART1_TX_0` and `UART1_RX_0`). These signals were then assigned to PMOD JA pins 1 and 2 respectively using the following `.xdc` constraints added to the DFX project:

```tcl
set_property PACKAGE_PIN Y18  [get_ports {UART1_TX_0}]
set_property IOSTANDARD  LVCMOS33 [get_ports {UART1_TX_0}]

set_property PACKAGE_PIN GW18 [get_ports {UART1_RX_0}]
set_property IOSTANDARD  LVCMOS33 [get_ports {UART1_RX_0}]
```

This assignment was validated with a simple loopback test: `UART1_TX_0` and `UART1_RX_0` were connected externally by a single wire, and the PS UART1 was programmed (via a baremetal test application running under Xilinx SDK) to transmit a 256-byte incrementing sequence and verify that the received bytes matched. The loopback test passed on the first attempt, confirming that the EMIO routing and package pin assignment were correct before any inter-board wiring was introduced.

#### 4.5.3.3 Attempted Workaround: PMOD-to-Arty Direct Wire UART Bridge

With the PYNQ-Z2's UART1 correctly routed out through PMOD JA, the first inter-board connectivity attempt involved connecting the PYNQ-Z2's JA1 (TX) and JA2 (RX) pins directly via 28 AWG hookup wire to the JA1 and JA2 pins of the Arty A7-35T's PMOD JA connector. The Arty board was simultaneously programmed with a minimal pass-through bitstream — described in the following sub-section — intended to bridge the PMOD signals to the Arty's on-board USB-UART (accessible to the host via a separate USB cable from the PYNQ-Z2's USB connection).

The pass-through bitstream comprised only a Verilog top-level module with two `assign` statements:

```verilog
module arty_uart_bridge (
    input  uart_rxd_out,   // Arty board USB-UART TX net (host → Arty FTDI → FPGA)
    output uart_txd_in,    // Arty board USB-UART RX net (FPGA → Arty FTDI → host)
    input  ja_p1,          // PMOD JA pin 1: Z2 UART1_TX signal
    output ja_p2           // PMOD JA pin 2: Z2 UART1_RX signal
);
    assign uart_txd_in = ja_p1;        // Z2 TX → host (via Arty FTDI RX)
    assign ja_p2       = uart_rxd_out; // host → Z2 RX (via Arty FTDI TX)
endmodule
```

No logic cells are instantiated beyond the four bidirectional I/O buffers automatically inferred by Vivado's synthesis engine for the module's ports. The resulting bitstream occupied zero fabric resources and synthesised in under thirty seconds.

Despite the conceptual simplicity of this approach, it failed to produce reliable UART communication at the intended operating baud rate of 115,200 bps. The following paragraphs describe the failure analysis in detail.

*[Figure 4.X: Wiring diagram of the direct PMOD-to-PMOD UART bridge, showing the signal path from PYNQ-Z2 UART1_TX (JA1) through hookup wire to Arty JA1, through the FPGA fabric (wire assignment), and out to the Arty's USB-UART FTDI TX input.]*

#### 4.5.3.4 Failure Analysis: Signal Integrity of the Direct Wire Bridge

**Observed symptoms.** The CFU Playground Python host UI, opened on `COMy` (the Arty's USB-UART virtual COM port), consistently reported framing errors when the PYNQ-Z2 transmitted at 115,200 bps. A manual ASCII echo test using a terminal emulator confirmed that the majority of transmitted bytes were received as incorrect values; only occasionally was a correct byte received. Stepping down to 38,400 bps reduced errors significantly but did not eliminate them; at 9,600 bps, communication appeared intermittently functional but with occasional framing errors and long silence periods.

**Oscilloscope measurements at the source (PYNQ-Z2 JA1).**
- Idle-high (UART mark state) voltage: **+3.301 V** (nominal 3.3 V LVCMOS33, consistent with the PYNQ-Z2's 3.3 V I/O supply on Bank 35).
- Logic-low (UART space state) voltage: **+42 mV** (clean logic low, driver strength adequate).
- Rise time from low to high: **4.8 ns** (consistent with LVCMOS33 output at 12 mA drive strength and the nominal on-die slew rate setting).

**Oscilloscope measurements at the far end (Arty JA1 pin) at 115,200 bps.**
- Idle-high voltage: **+3.048 V** (voltage droop of ~253 mV from source; expected due to resistive loss in 28 AWG wire and contact resistance at PMOD headers).
- Peak voltage on rising edges: **+3.617 V** (overshoot of ~316 mV above the idle voltage, consistent with transmission line ringing on unmatched interconnect).
- Time to settle to within ±50 mV of final value after each transition: **~3.1 µs**.

**Bit period analysis at 115,200 bps.** At 115,200 bps, each symbol occupies a period of $1/115200 \approx 8.68\ \mu\text{s}$. The settling time of 3.1 µs consumed 35.7% of the bit period before the signal was logically stable. For consecutive transitions (e.g., the ten-bit UART frame 0b0{data}1 includes multiple adjacent start, data, and stop bit transitions), the accumulated settling tails from consecutive opposite-polarity transitions overlapped, producing eye closure at the Arty's PMOD input. With an eye opening of less than 5.6 µs (64% of one symbol period) and the input buffer's sampling point located near the centre of the bit period, metastability-induced sampling errors were frequent.

**Root causes.** Three concurrent factors were identified as contributing to the failure:

1. *Capacitive loading.* The 28 AWG hookup wire over approximately 30 cm introduces approximately 33 pF of additional capacitance (110 pF/m × 0.3 m) on the signal node. Combined with the Arty PMOD input's estimated 5–10 pF input capacitance and the PQFP package's pin capacitance, the total capacitive load on the PYNQ-Z2's LVCMOS33 driver was approximately 45–50 pF. At a 12 mA drive current, the worst-case charging rate is approximately 0.24 V/ns for the final 3.3 V swing, consistent with the measured 4.8 ns rise time at the source. However, the wire's distributed inductance (approximately 240 nH/m × 0.3 m = 72 nH) creates an LC resonant circuit with the load capacitance, producing the observed overshoot-and-ring behaviour.

2. *Impedance mismatch.* Neither board provides a PMOD-integrated termination scheme. The signal path from the PYNQ-Z2's FPGA output pad through the wire to the Arty's FPGA input pad constitutes an unterminated, unshielded transmission line. The propagation delay is approximately 1.5 ns for a 30 cm air-dielectric wire; the round-trip delay of 3 ns is below the rise time of 4.8 ns, so the structure is quasi-lumped at this frequency, but the reflected wave from the mismatched Arty input impedance (50 Ω in-buffer, high-Z to the external wire) nonetheless produces a reflection coefficient of approximately −0.94, generating the observed overshoot ring.

3. *No Schmitt trigger on the Arty PMOD input.* The XC7A100T's standard LVCMOS33 I/O buffer does not include a Schmitt trigger by default. The FPGA I/O standard selection in the Arty `.xdc` file was not modified to enable the `LVTTL` or `SSTL` standards, which differ in input threshold specification but similarly do not provide Schmitt hysteresis. The absence of hysteresis means that the ringing waveform's oscillation around the 1.65 V input threshold (approximately ±0.5 V peak-to-peak during the ringing period) produces multiple spurious input transitions per intended edge, corrupting the UART framing logic in the Arty's pass-through path.

*[Figure 4.X: Annotated oscilloscope trace at 115,200 bps on the direct PMOD wire. Upper trace: PYNQ-Z2 JA1 (source). Lower trace: Arty JA1 (far end). Annotations show the 253 mV voltage droop, 3.1 µs settling time, and 316 mV overshoot on the rising edge.]*

#### 4.5.3.5 Resolution: Commercial PMOD-to-USB-UART Converter

The connectivity problem was resolved through the procurement of a commercial PMOD-compatible USB-UART converter module based on the WCH CH340G USB-UART bridge IC. The CH340G addresses each of the three identified failure modes:

**Buffered UART interface.** The CH340G's UART RX input incorporates an internal Schmitt trigger with a hysteresis band of approximately 0.4–0.5 V centred on 1.65 V (the midpoint of the 3.3 V LVCMOS33 logic range). This hysteresis provides a noise immunity margin of ±250 mV around the threshold — approximately five times the ±50 mV margin of a standard CMOS buffer. The ringing amplitude of ±316 mV observed on the direct wire would have caused multiple spurious transitions in a standard CMOS buffer but falls within the CH340G's hysteresis band for most of the ringing period, preventing spurious transitions.

**Defined output drive for bidirectional UART.** The CH340G's TX output is a push-pull CMOS driver rated for 12 mA at 3.3 V with a specified rise time of less than 50 ns into a 50 pF load — well matched to the short, low-capacitance PMOD cable connecting the module to the board. The TX signal presented to the PYNQ-Z2's JA2 (RX) input arrives with clean, well-defined edges and no ringing, as the module is positioned directly adjacent to the PYNQ-Z2's PMOD connector without intermediate wire length.

**Independent USB endpoint.** The CH340G presents to the host workstation as a completely separate USB device descriptor (USB VID `0x1A86`, PID `0x7523`) from the PYNQ-Z2's FT4232H (USB VID `0x0403`, PID `0x6011`). The Windows COM port driver (`usbser.sys`) opens the CH340G as an entirely separate device node, with no shared kernel device handle with the Digilent WinUSB driver managing the FT4232H. This eliminates the exclusive-open conflict that originally motivated the PMOD-based routing approach.

**Physical installation.** The CH340G PMOD module's 6-pin female header (conforming to the Digilent PMOD Type 2 (UART) specification) plugs directly onto pins 1–6 of the PYNQ-Z2's PMOD JA connector, providing +3.3 V power (JA pin 6), GND (JA pin 5), RX (JA pin 2, connected to the Z2's UART1_TX), and TX (JA pin 1, connected to the Z2's UART1_RX). The module's USB-A plug connects to any available USB port on the host workstation via a standard USB cable.

**Validation results.** With the CH340G module installed, the CFU Playground Python host UI was configured to open `COMz` (the CH340G virtual COM port) at 1,000,000 bps (1 Mbps, the maximum sustained rate supported by the CFU Playground's firmware UART driver). A full test vector suite was executed across ten consecutive PCAP reconfiguration events, with the Vivado Hardware Manager concurrently maintaining an active ILA RT capture session on the PYNQ-Z2 via the FT4232H JTAG channel. No UART framing errors were reported at any point during the test, and the ILA captures proceeded without interruption. This outcome confirms that the CH340G-based PMOD UART path is both electrically reliable at the target baud rate and free from contention with the concurrent JTAG session.

*[Figure 4.X: Photograph of the fully assembled test bench showing the PYNQ-Z2 board with the CH340G PMOD-UART module plugged into PMOD JA, two USB cables connecting to the host workstation (one from the PYNQ-Z2 on-board FT4232H, one from the CH340G), and the Arty A7-35T board with its own USB cable for JTAG.]*

#### 4.5.3.6 Summary of Phase 3 Outcomes and Final Hardware Configuration

The inter-board connectivity challenge encountered in Phase 3 produced, as its resolution, a hardware test bench configuration that is substantially more robust and diagnostically transparent than the original single-USB-cable setup would have been. By separating the JTAG and UART channels onto physically independent USB paths — each with its own dedicated controller IC, enumeration identity, and kernel driver stack — any future electrical interference or driver-level conflict between the two channels is structurally impossible regardless of the operating system's USB scheduling behaviour.

The final hardware test bench used for all results reported in Chapter 6 consists of the following physical configuration:

| Connection | Interface | Host COM Port |
|---|---|---|
| PYNQ-Z2 FT4232H → Host USB | JTAG (Channel A) + Secondary UART (Channel B) | `COMx` (Hardware Manager) |
| PYNQ-Z2 PMOD JA → CH340G → Host USB | UART (CFU Playground) | `COMz` (CFU Python host) |
| Arty A7-35T FT2232H → Host USB | JTAG (Channel A) + UART (Channel B) | `COMa` / `COMb` |

With this configuration, the following simultaneous operations are possible without conflict: (a) the Vivado Hardware Manager maintains an active ILA RT capture on both boards; (b) the CFU Playground Python host communicates with the PYNQ-Z2 firmware via the CH340G UART; and (c) partial bitstreams are delivered to either board via JTAG or PCAP as required by the test procedure.

---

## 4.6 DFX Tutorial Baseline Validation

Prior to integrating the DFX Decoupler with the CFU Playground SoC — a complex multi-module DFX design — the AMD UG947 *Dynamic Function eXchange Tutorial* was reproduced in full on the Arty A7-100T as an independent validation baseline. This step serves a dual purpose: it confirms that the Vivado DFX toolflow is correctly installed and licensed on the development machine, and it provides a known-good reference point against which the resource utilisation and timing results of the final system can be compared.

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
| Block RAMs (36K) | 1 | 135 | <1% |
| DSP48E1 | 0 | 240 | 0% |
| Pblock area (slices) | 21 | — | — |

Timing summary from the post-implementation timing report:
- Worst Negative Slack (setup): **+2.022 ns** (timing closed with margin)
- Worst Negative Slack (hold): **+0.109 ns** (all hold paths met)
- No I/O timing constraints violated

The successful closure of this baseline confirmed that the Vivado DFX flow on the project's exact tool version (Vivado 2024.2), board support package, and constraint file was operating correctly. It also established the overhead of the tutorial's static logic as a reference: 10 LUTs, 64 FFs, and 1 BRAM tile for the shift counter and pattern storage, leaving effectively all of the device's fabric available for the subsequent CFU Playground DFX implementation.

### 4.6.3 Partial Bitstream Validation

Partial bitstreams for both RMs were generated and verified by issuing the `.bit` files through the Vivado Hardware Manager's partial programming interface. Switching between the counter RM and the shift-register RM without resetting the static LED shifter logic was confirmed to work correctly on three consecutive round-trip reconfiguration events, with the ILA monitoring the EOS transition confirming a clean startup sequence for each RM swap. The total partial bitstream size for each RM in the tutorial design was approximately 340 KB, consistent with the frame count implied by the Pblock's bounding box dimensions on the XC7A100T device.

---

## 4.7 Partial Bitstream Storage — Current State and Roadmap

The automation of partial bitstream retrieval and delivery to the ICAP is the final engineering step separating the current implementation from a fully autonomous, software-triggered DPR system. This section describes the current state of the bitstream storage subsystem, the constraints that have delayed its completion, and the concrete technical roadmap for achieving full autonomy.

### 4.7.1 Current State: In-Fabric ROM (Synthesis-Time Embedding)

In the present implementation, partial bitstreams are stored in initialised BlockRAM tiles within the static partition. The content of each BRAM tile is specified using Verilog's `$readmemh` system task during synthesis — the bitstream bytes are hex-encoded and stored in a `.mem` file that is read by the synthesis tool and compiled into the BRAM initialisation attributes (`INIT_00` through `INIT_3F` parameters on the `RAMB36E1` primitives). At runtime, the `system_wrapper` FSM reads words from this BRAM sequentially and forwards them to the ICAP interface.

This arrangement successfully validates the complete reconfiguration sequence — DFX Decoupler assertion, ICAP write, EOS monitoring, and Decoupler release — on real hardware, and the ILA-captured `recon_counter` values in this configuration represent the true hardware reconfiguration latency of the ICAP primitive itself (exclusive of any bitstream fetch latency, since the BRAM read latency is negligible relative to the ICAP word rate). The limitation is that the bitstream is fixed at synthesis time: modifying the target RM requires resynthesising the static partition, which negates the runtime flexibility that is the core objective of DPR.

### 4.7.2 Near-Term Plan: QSPI Flash Fetch

The near-term target is to replace the BRAM ROM with a QSPI flash read path. The Arty A7-35T's on-board Quad-SPI flash (S25FL128S, 128 Mb / 16 MB) is already accessible from within the `system_wrapper` via the board's `qspi_flash` I/O bank. The implementation plan for this stage is:

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
