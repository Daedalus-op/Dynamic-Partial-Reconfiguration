# An Architecture for Runtime-Reconfigurable RISC-V Co-Processors using Dynamic Partial Reconfiguration

**Arun Murrugappan I, Pranav Varkey, Shrikrishna Pandit**
Centre for Heterogeneous and Intelligent Processing Systems, PES University, Bangalore, India

**Vinay Reddy**
Assistant Professor, Centre for Heterogeneous and Intelligent Processing Systems, PES University, Bangalore, India

---

## Abstract

This paper presents an architecture that enables the runtime swapping of hardware accelerators attached to a RISC-V soft-core processor without resetting the device. The proposed architecture utilizes Dynamic Partial Reconfiguration (DPR)—implemented through AMD's Dynamic Function eXchange (DFX) toolflow—integrated with Google's CFU Playground framework. The Custom Function Unit (CFU), the hardware block that executes RISC-V `custom-0` instructions, was placed inside a Reconfigurable Partition and isolated using a DFX Decoupler IP in the static region. Because signals must cross the Pblock boundary and traverse the DFX Decoupler, pipeline registers were added at both the input and output of the CFU inside the partition to maintain timing closure at 100 MHz; this design choice introduced a two-cycle latency penalty on every CFU instruction. The architecture was validated on two 7-series FPGA platforms: the Digilent Arty A7-100T (Artix-7, pure programmable logic) and the PYNQ-Z2 (Zynq-7020, with an ARM Processing System). Furthermore, three reconfiguration paths—JTAG, PCAP, and ICAP—were analyzed in terms of their required hardware and achieved latency. JTAG-driven reconfiguration completed in approximately 63 ms on both platforms. PCAP, available only on the Zynq device, reduced this latency to 1.1 ms at the hardware level, although Linux driver overhead added approximately 67 ms to the end-to-end time, motivating the fully autonomous ICAP path. Across all tested reconfiguration events, the DFX Decoupler maintained complete isolation of the static partition with zero processor exceptions. The static partition uses approximately 19.6% of LUTs and 7.8% of flip-flops, leaving substantial headroom for multi-partition extensions.

**Keywords:** Dynamic Partial Reconfiguration, Custom Function Unit, RISC-V, VexRiscv, LiteX, DFX Decoupler, ICAP, PCAP, 7-series FPGA

---

## I. Introduction

General-purpose processors are flexible but inefficient for compute-heavy tasks. ASICs are efficient but cannot be changed after fabrication. FPGAs sit between these two extremes: they offer hardware-level parallelism and can be reconfigured after deployment. Dynamic Partial Reconfiguration (DPR) takes this a step further by allowing a specific region of the FPGA fabric to be updated at runtime while the rest of the device continues operating. AMD implements this capability through its Dynamic Function eXchange (DFX) toolflow [1], which provides the necessary design infrastructure—Reconfigurable Partitions, Pblock constraints, and the DFX Decoupler IP—used in this work.

Separately, the open instruction set architecture of RISC-V allows designers to incorporate custom hardware instructions. Specifically, the CFU Playground framework [2], developed by Google Research, provides a standardized interface—the Custom Function Unit (CFU)—for connecting domain-specific accelerators to a VexRiscv soft-core processor on an FPGA. However, in standard deployments, a single CFU implementation is fixed during synthesis and cannot be modified without reprogramming the entire device.

To overcome this limitation, this paper presents a design for an architecture that integrates DPR with the customizable RISC-V instruction set. By placing the CFU inside a DFX Reconfigurable Partition, the processor's hardware accelerator is rendered dynamically swappable at runtime. Consequently, the core processor continues executing instructions while the accelerator is replaced, effectively hot-patching the RISC-V instruction set without requiring a system reset. In this work, this architecture is demonstrated and its associated implementation and latency overhead are quantified.

Prior studies have addressed related challenges. For instance, Herpel et al. [3] developed **RV-CAP**, demonstrating ICAP-controlled partial reconfiguration orchestrated from a VexRiscv core to establish that a soft-core processor can manage its own reconfiguration without relying on a hard ARM core. Additionally, Owaida et al. [4] utilized DFX in **AMPER-X** on a Zynq platform to dynamically swap arithmetic precision in accelerators attached to a RISC-V pipeline, achieving up to a 34% reduction in energy consumption. However, neither of these approaches targets the standardized CFU Playground interface, and neither resolves the specific challenge of crossing a DFX Decoupler boundary with the deterministic CFU handshake signals.

The specific contributions of this work are as follows:

1. This paper presents a design for an architecture that integrates AMD's DFX toolflow with Google's CFU Playground framework, enabling runtime accelerator swapping without processor resets.
2. This paper provides a comparative analysis of three reconfiguration paths (JTAG, PCAP, and ICAP) regarding their hardware overhead, host dependencies, and observed latency.
3. This paper validates the architecture cross-platform on both a pure programmable logic device (Artix-7) and a processor-assisted device (Zynq-7020), demonstrating architectural portability across 7-series variants.
4. This paper experimentally confirms that the DFX Decoupler ensures deterministic isolation during reconfiguration, successfully preventing processor exceptions or undefined behavior across all tested reconfiguration events.

---

## II. Background and Related Work

### A. DFX on Xilinx 7-Series

The DFX toolflow structures FPGA designs around a parent-and-child implementation hierarchy. The parent implementation run produces a locked static design checkpoint (DCP), whereas each child run independently places and routes a single Reconfigurable Module (RM) within a predefined Pblock boundary [1]. To ensure physical compatibility, all RMs targeting a specific Reconfigurable Partition (RP) must share an identical port list; this invariance guarantees that static-side routing remains unchanged when an RM is swapped at runtime.

Configuration memory in Xilinx 7-series devices is organized into 101-word frames addressed by the Frame Address Register (FAR). A partial bitstream contains only the configuration frames associated with the target Pblock, prefaced by a synchronization word (`0xAA995566`) and concluded with cyclic redundancy check (CRC) and desynchronization (`DESYNC`) commands. The Internal Configuration Access Port (ICAP) primitive accepts 32-bit words at clock frequencies up to 100 MHz, yielding a theoretical peak configuration throughput of 400 MB/s [9]. To maintain system stability during partial reconfiguration, the DFX Decoupler IP clamps all signals crossing the RP boundary to configurable safe logic levels when asserted, successfully preventing the propagation of undefined states into the static region [1].

### B. CFU Playground and VexRiscv

The CFU Playground framework [2] provides a reference LiteX system-on-chip (SoC) built around a customized VexRiscv RV32IM soft-core processor. The core communicates with the custom accelerator via a standardized CFU handshake interface comprising `cmd_valid`, `cmd_ready`, a 10-bit `function_id`, two 32-bit operand inputs, `rsp_valid`, `rsp_ready`, and a 32-bit result output. When the processor pipeline encounters a custom instruction encoded within the `CUSTOM0` opcode space, it dispatches the operands and function identifier to the CFU, which subsequently computes and returns the result within a deterministic number of clock cycles.

### C. Related Work

Several research efforts have explored partial reconfiguration and custom instruction set extensions. Herpel et al. [3] developed **RV-CAP**, implementing ICAP-controlled partial reconfiguration driven by a VexRiscv core on an Artix-7 FPGA; however, their design required explicit firmware management of the ICAP data stream and omitted a hardware decoupler. Owaida et al. [4] introduced **AMPER-X**, utilizing DFX on a Zynq platform to dynamically adjust floating-point precision within RISC-V-attached execution units. In the domain of physical design acceleration, Guo et al. [5] presented **RapidStream**, achieving significant compilation speedups through island-based parallel place-and-route techniques. For configuration management, Koch et al. [6] designed **ZyCAP**, providing an automated framework for Zynq SoCs that leverages direct memory access (DMA) to stream bitstreams to the ICAP at high throughput. Furthermore, Clark et al. [7] proposed **HPR**, a hierarchical page-based partial reconfiguration architecture utilizing a Network-on-Chip to support multi-tenant FPGA virtualization. More recently, Ferreira et al. [10] developed **DORA**, reducing decoupler isolation latency overhead through a signal-based acknowledgment scheme.

In contrast to these prior studies, this paper specifically targets the standardized interface of the CFU Playground ecosystem. Furthermore, the integrated architecture was validated across both pure programmable logic and processor-assisted 7-series platforms, emphasizing complete architectural integration and cross-platform portability rather than optimizing a single configuration delivery path.

---

## III. System Architecture

![System block diagram — DFX-integrated CFU Playground architecture showing the static partition, DFX Decoupler boundary, and reconfigurable cfu_compute partition.](../Report/assets/CFUxDFx.png)

### A. Overview

The proposed architecture comprises three cooperating subsystems (Fig. 1):

1. **Static Partition**: Contains the VexRiscv RV32I core (generated via LiteX), DDR3 memory controller, UART peripheral, DFX Decoupler, ICAP controller (`system_wrapper`), reconfiguration counter (`recon_counter`), and ILA debug core. All static logic operates at a 100 MHz clock frequency driven by an onboard MMCM.

2. **Reconfigurable Partition (`cfu_compute`)**: Instantiates a single Pblock that hosts one CFU implementation at a time. The physical Pblock boundary is enforced by the `CONTAIN_ROUTING` DFX constraint, guaranteeing that all configuration frames within the partial bitstream map strictly inside the Pblock's physical footprint.

3. **DFX Toolflow Infrastructure**: Leverages Vivado's parent-and-child implementation run hierarchy to independently synthesize and place each RM within the locked static design checkpoint.

### B. CFU Interface and DFX Decoupler Placement

![CFU Playground interface architecture — the standardized handshake between VexRiscv and the Custom Function Unit.](../Report/assets/CFU_Architecture.png)

The `cfu.v` wrapper bridges the CFU port of the VexRiscv core to the RP and instantiates the DFX Decoupler module. The Decoupler was placed within the static partition rather than inside the RP. This placement represents a deliberate architectural decision: if the Decoupler resided inside the RP, the configuration engine would overwrite it during partial bitstream loading, rendering it incapable of providing signal isolation when it is needed most. By keeping the Decoupler in the static region, it is ensured to remain fully functional even when the configuration memory of the RP enters an undefined state.

During active reconfiguration, the Decoupler holds `cmd_valid` and `rsp_valid` low on the RP-facing interface. This behavior prevents the processor core from dispatching CFU instructions to an incomplete RM and guarantees that any instruction issued during this transfer window returns a deterministic zero rather than undefined data.

### C. Reconfigurable Modules

Four RMs were developed for the `cfu_compute` partition. To satisfy strict DFX routing requirements, all modules share an identical port interface:

<!-- Label: Reconfigurable function units , Style: wrap_text-->
| RM | Operations | Compute Latency | Total Latency (with boundary registers) |
|---|---|---|---|
| `example.v` | Byte-sum, byte-swap, bit-reverse (`function_id` 0–2) | Combinational | 3 cycles |
| `donut.v` | Signed fixed-point multiply, multiply-shift-right | Combinational | 3 cycles |

**Pblock boundary pipelining.** Signals crossing the Pblock boundary must travel through the DFX Decoupler and across the physical routing gap between the static and reconfigurable regions. At a 100 MHz clock frequency (10 ns period), the combined propagation delay through the Decoupler and across the boundary exceeded the available timing margin, causing setup violations. To resolve this timing bottleneck, a register stage was added at both the input and output boundaries of the CFU inside the Pblock. Specifically, the input register captures incoming command signals (`cmd_valid`, `function_id`, `inputs_0`, `inputs_1`) one cycle after they arrive from the static region. Conversely, the output register captures the computed result of the CFU one cycle before transmitting it back to the processor. Consequently, these two registers added a two-cycle latency penalty to every CFU instruction. For a CFU implementation that is natively combinational (such as `example.v`), the total response latency becomes three cycles: one cycle for the input register, one cycle for combinational computation, and one cycle for the output register. During these cycles, the VexRiscv pipeline stalls while waiting for the assertion of `rsp_valid`. This latency penalty was accepted as a necessary trade-off for crossing a DFX partition boundary; without these boundary registers, the design failed to achieve timing closure at the target frequency.

### D. Design Decisions and Trade-offs

**Single partition vs. multi-partition.** A single RP was implemented in the current architecture. This configuration simplifies the DFX constraint setup and avoids the complexities of multi-region clock distribution, although it limits the processor to utilizing one active accelerator at a time. Because the static partition requires low resource utilization (approximately 19.6% of available LUTs), the device retains substantial physical headroom to support additional independent Pblocks in future revisions.

**Pipeline stall trade-off.** Because the boundary registers introduced a two-cycle latency penalty (§III-C), the VexRiscv pipeline stalls for two additional cycles during every `custom-0` instruction. For compute-intensive workloads where a single CFU invocation replaces dozens or hundreds of baseline scalar instructions, this overhead remains negligible. Conversely, within tight execution loops issuing back-to-back CFU commands, the stall cycles become more pronounced. This overhead represents an inherent architectural cost of crossing a DFX partition boundary at high clock frequencies; future designs could mitigate this latency by reducing the system clock frequency or by physically constraining the Pblock adjacent to the processor core on the FPGA die.

**Static-side measurement infrastructure.** Both the reconfiguration latency counter (`recon_counter`) and the Integrated Logic Analyzer (ILA) debug core were placed within the static partition. This placement ensures that the measurement logic remains unaffected during partial reconfiguration, allowing continuous external observation. The counter utilizes the End-of-Startup (EOS) signal from the `STARTUPE2` primitive as its hardware gating input: the EOS signal transitions low when the configuration engine begins processing a partial bitstream and returns high upon the completion of the startup sequence for the newly loaded RM. Operating at 100 MHz, this timer achieves a measurement resolution of 10 ns.

**Port interface invariance.** To comply with strict DFX design rules, all RMs expose an identical port list. This invariance ensures that static-side routing resources terminating at the partition boundary remain perfectly static across RM swaps. Consequently, RMs implementing simpler functionality safely ignore unused `function_id` values and return zero for unrecognized instruction codes.

### E. Reconfiguration Control Flow

Regardless of the delivery path utilized for the bitstream data, the internal FPGA reconfiguration sequence proceeds through six deterministic stages:

1. **Trigger**: The system asserts a reconfiguration request via a physical push-button (`pr_switch`), a PYNQ application programming interface (API) invocation, or a dedicated firmware signal.
2. **Isolate**: The controller drives the `decouple` control signal high. In response, the DFX Decoupler clamps all boundary signals interfacing with the RP to predefined safe logic levels.
3. **Stream**: The host or active controller writes partial bitstream frames into the configuration memory via the selected interface (JTAG, PCAP, or ICAP).
4. **Configure**: The internal configuration engine processes the incoming frames. Throughout this interval, the `STARTUPE2` EOS signal remains low, enabling the `recon_counter` module to increment continuously.
5. **Complete**: The EOS signal transitions high, signifying that the new RM successfully completed its startup sequence. Subsequently, the counter latches its final elapsed cycle count.
6. **Release**: The controller de-asserts the `decouple` signal. The Decoupler returns to a transparent state, rendering the newly configured RM fully operational on the processor's CFU interface.

---

## IV. Reconfiguration Paths

The proposed architecture supports three distinct reconfiguration paths, each offering a unique set of trade-offs among implementation complexity, host dependencies, and achievable latency. In this section, the operational mechanics of each path are described and their respective hardware overhead is evaluated.

### A. JTAG-Based Reconfiguration

<!--Image: size: 70% -->
![JTAG-based reconfiguration architecture — the host PC streams partial bitstream data to the FPGA through the USB-JTAG bridge.](../Report/assets/JTAG_reconfig_arch.png)

JTAG serves as the most straightforward reconfiguration interface. A host PC connects to the FPGA via an integrated USB-to-JTAG bridge and utilizes the Vivado Hardware Manager software to stream partial bitstream frames. Internally, the target FPGA's Test Access Port (TAP) controller receives these incoming data frames and writes them directly into the configuration memory assigned to the specific Pblock. Consequently, implementing additional register-transfer level (RTL) logic within the FPGA fabric was avoided, as the TAP primitive natively orchestrates configuration memory writes.

**Hardware overhead:** This configuration introduces zero resource overhead beyond standard device structures. Because the JTAG TAP controller exists as dedicated hard silicon on the FPGA die, it consumes no programmable logic resources. Thus, JTAG provides an efficient, zero-cost mechanism for initial functional validation of Dynamic Function eXchange designs.

**Limitations:** The primary limitation of JTAG is its absolute dependence on an external host PC and the severe bandwidth constraints of standard USB connections. Specifically, the USB-to-JTAG bridge circuits on both the Digilent Arty A7 and PYNQ-Z2 development boards sustain an effective data transfer rate of only 2 to 3 MB/s, rendering JTAG the slowest reconfiguration path evaluated in this study.

### B. PCAP-Based Reconfiguration

<!--Image: size: 70% -->
![PCAP-based reconfiguration architecture — the Zynq PS writes partial bitstream data to the PL configuration engine through the on-chip PCAP port.](../Report/assets/PCAP_reconfig_arch.png)

The Processor Configuration Access Port (PCAP) interface operates exclusively on Zynq heterogeneous architectures, which integrate a hard ARM Processing System (PS) alongside the Programmable Logic (PL) fabric. On the PYNQ-Z2 platform, the ARM cores execute a Linux operating system optimized for the PYNQ Python framework. The partial bitstream binaries are stored within the primary filesystem on an SD card. Software applications trigger partial reconfiguration by writing the target firmware filename directly to the Linux FPGA Manager sysfs interface (`/sys/class/fpga_manager/fpga0/firmware`). Subsequently, the kernel-space driver retrieves the bitstream file and streams it through the dedicated PCAP interface into the hardware configuration engine of the PL.

**Hardware overhead:** Similar to JTAG, the underlying PCAP interface is instantiated as dedicated hard silicon inside the Zynq PS block, consuming zero programmable logic resources. Nevertheless, routing data through the PS necessitates booting and maintaining a fully operational Linux environment, substantially increasing system-level software complexity. Within the PL fabric, a dedicated PS-to-PL AXI-Lite memory-mapped interface was instantiated to permit Python-level control over the DFX Decoupler registers.

**Limitations:** PCAP remains fundamentally unavailable on pure programmable logic devices such as the Artix-7. Furthermore, relying on the Linux FPGA Manager introduces substantial software execution latency. Although hardware-level measurements confirmed that the physical PCAP bitstream write completed in just 1.109 ms, the total end-to-end reconfiguration time observed at the PYNQ Python API layer averaged 68.55 ms. This discrepancy reveals an extensive software overhead of 67.44 ms introduced by file input/output operations, the sysfs interface traversal, kernel-level bitstream header validation, and AXI bridge synchronization.

<!-- Label: PCAP-based reconfiguration time metrics , Style: wrap_text-->
| Metric | Value |
|--------|-------|
| Avg. hardware reconfiguration time (ILA) | 1.109 ms |
| Avg. software reconfiguration time (PYNQ API) | 68.55 ms |
| Avg. software overhead | 67.44 ms |

These timing results reveal a critical performance divergence: while the physical PCAP interface achieves highly efficient sub-millisecond hardware reconfiguration, standard Linux driver execution stacks inject over 60 ms of execution overhead, degrading user-experienced latency back to parity with standard JTAG streaming. Consequently, high-performance embedded systems requiring rapid partial reconfiguration on Zynq platforms must bypass standard operating system frameworks in favor of bare-metal drivers or custom direct memory access (DMA) engines (such as ZyCAP [6]) to fully capitalize on the underlying speed of the PCAP interface.

### C. ICAP-Based Reconfiguration (Autonomous Path)

<!--Image: size: 60% -->
![ICAP-based reconfiguration architecture — the target autonomous path where bitstream storage, retrieval, and delivery occur entirely within the FPGA fabric.](../Report/assets/ICAP_reconfig_arch.png)

The Internal Configuration Access Port (ICAP) provides a fully autonomous, self-hosted reconfiguration mechanism. Implementing this datapath ensures that bitstream storage, retrieval, and programming occur entirely within the boundaries of the FPGA fabric, completely eliminating runtime dependencies on external host computers or hard processor cores. Within the static partition, a dedicated DFX Controller finite state machine (FSM) was designed coupled to a memory read interface accessing external storage (such as non-volatile SPI flash or volatile DDR memory). Upon receiving a hardware reconfiguration trigger, the DFX Controller streams partial bitstream data directly from memory into the ICAP primitive word by word.

**Hardware overhead:** Autonomy requires significant programmable logic resources. To support independent ICAP operation, the static partition must implement:
- A customized ICAP controller FSM responsible for parsing synchronization headers, streaming payload frames, and issuing CRC and desynchronization commands.
- A high-throughput memory read pipeline interfacing with external storage controllers.
- Dedicated data alignment and clock-crossing buffers to satisfy strict ICAP setup timing and byte-swapping constraints.
- An instantiation of the hard `ICAPE2` component primitive.

Despite these resource costs, the ICAP datapath provides uncompromised architectural independence, allowing the embedded soft-core processor to dynamically adapt its own execution hardware in response to real-time application triggers.

**Current implementation status:** The foundational ICAP controller FSM alongside the `STARTUPE2` hardware counter were successfully instantiated and verified within the static region. However, the high-speed data retrieval pipeline interfacing with the external SPI flash memory has not yet been finalized. Completing this read datapath—specifically fetching partial bitstream payloads directly from the onboard Quad-SPI flash memory (Micron N25Q128) and driving them into the ICAP interface—remains the primary focus for future development. Given the verified sequential read bandwidth of the external flash memory (approximately 50 MB/s), autonomous ICAP reconfiguration is projected to complete in 3 to 4 ms for the target bitstream payloads.

### D. Path Comparison

<!--Label: Comparison of reconfiguration paths , Style: full_width_table-->
| Property | JTAG | PCAP | ICAP |
|----------|------|------|------|
| Host required? | Yes (PC + USB) | Yes (Zynq PS + Linux) | No (autonomous) |
| PL resource cost | None | Minimal (AXI-Lite bridge) | Moderate (FSM + memory controller) |
| Available on Arty A7? | Yes | No | Yes |
| Available on PYNQ-Z2? | Yes | Yes | Yes |
| Observed latency | ~63 ms | ~1.1 ms (hardware) | Not yet measured |
| Implementation complexity | Trivial | Low (Linux driver handles it) | High (custom RTL required) |

Ultimately, these three paths present a fundamental engineering trade-off: JTAG requires zero FPGA-side logic development but operates slowly under external host control; PCAP achieves rapid physical reconfiguration but depends on heterogeneous silicon and suffers from severe software overhead; ICAP guarantees complete system autonomy and high throughput but demands the most extensive RTL design effort.

---

## V. Implementation

### A. Primary Platform: Arty A7-100T

The Digilent Arty A7-100T (XC7A100T) was selected as the primary implementation platform, configured to operate at a system clock frequency of 100 MHz derived from an integrated mixed-mode clock manager (MMCM) driven by the onboard physical oscillator. The Vivado 2024.2 DFX project was structured to execute one parent implementation run (synthesizing the static partition while treating the RP as an unresolved black box), four parallel out-of-context synthesis runs (compiling each individual RM independently), and four subsequent child implementation runs. Each child run imports the locked static design checkpoint and routes a specific RM within the defined physical Pblock.

The target Pblock was iteratively sized to accommodate the most resource-intensive module (a keyword spotting feature extraction stub) while ensuring positive worst negative slack (WNS) across all static-to-reconfigurable boundary timing paths. Furthermore, the onboard Quad-SPI flash memory (Micron N25Q128) was allocated to the static partition to handle initial full-device configuration; this same non-volatile storage array will retain the partial bitstream binaries upon the completion of the ICAP direct memory read pipeline.

During initial hardware verification, JTAG-based reconfiguration was utilized to validate system functionality. Specifically, the Vivado Hardware Manager streamed the partial bitstream files directly to the internal configuration engine under host orchestration. Following each reconfiguration event, functional correctness was verified by executing custom CFU instructions from the VexRiscv software runtime and observing the deterministic correctness of the serial console output.

### B. Secondary Platform: PYNQ-Z2 (XC7Z020)

To demonstrate architectural portability, the design was ported to the PYNQ-Z2 development board (XC7Z020). For this target, the external crystal oscillator source was replaced with the `FCLK_CLK0` clock signal generated directly by the Zynq PS phase-locked loop (PLL) running at 100 MHz. The Xilinx `bootgen` utility was utilized to convert standard partial bitstreams into unformatted raw binary files, subsequently loading them via the Linux FPGA Manager driver interface. Before exercising the high-speed PCAP path, JTAG reconfiguration was first validated on this platform to confirm that the custom DFX Decoupler logic and physical Pblock boundaries mapped successfully onto the Zynq PL resource grid.

### C. DFX Tutorial Validation

Prior to integrating the complex CFU Playground ecosystem, the baseline AMD UG947 reference design (comprising a simple counter and shift-register RM pair targeting a minimal Pblock footprint) was implemented to serve as an initial compilation sanity check. Successfully swapping these simple modules confirmed that the underlying CAD toolflow and environment variables were configured correctly for Dynamic Function eXchange synthesis and routing.

---

## VI. Validation

### A. Resource Utilisation

**Table I: Implementation Results (Arty A7-100T, XC7A100T, `donut.v` RM active)**

<!--Label: Implementation Results -->
| Resource | Static | PRR (donut.v) | Total | Available | Utilisation |
|---|---|---|---|---|---|
| LUTs | ~12,400 | 48 | ~12,448 | 63,400 | ~19.6% |
| FFs | ~9,800 | 32 | ~9,832 | 126,800 | ~7.8% |
| BRAMs | 16 | 0 | 16 | 135 | 11.9% |
| DSPs | 4 | 0 | 4 | 240 | 1.7% |

The resource consumption of the static region is primarily driven by the underlying LiteX system interconnect and the caching structures of the VexRiscv core. Conversely, the resource utilization within the Reconfigurable Partition Region (PRR) remains intentionally minimal; these boundaries were designed to ensure that all four planned RMs route successfully without requiring physical constraint relaxation. Because approximately 80% of the device lookup tables and 90% of the flip-flops remain unallocated, the base silicon fabric preserves extensive headroom to accommodate multiple supplementary reconfigurable partitions.

### B. Reconfiguration Latency

**Table II: Observed Reconfiguration Latency**

<!--Label: Observed Reconfiguration Latency -->
| Platform | Interface | Bitstream Size | Latency |
|---|---|---|---|
| Arty A7-100T | JTAG | 164,534 B (160.7 KB) | **63.2 ms** |
| PYNQ-Z2 | JTAG | 203,308 B (198.5 KB) | **62.8 ms** |
| PYNQ-Z2 | PCAP | 203,308 B (198.5 KB) | **1.1 ms** |

All empirical latency values were measured using the custom `recon_counter` hardware timer clocked at 100 MHz and gated directly by the `STARTUPE2` EOS signal. Specifically, the counter records the precise hardware interval during which the internal configuration engine processes incoming bitstream frames, starting when EOS transitions low and terminating when EOS returns high. Consequently, this hardware-level metric isolates core programming time from any external transmission or software execution overhead.

**JTAG bottleneck analysis.** Despite evaluating distinct physical bitstream sizes across two different development boards, both JTAG reconfiguration trials completed in approximately 63 ms. This consistency confirms that the external USB-to-JTAG bridge link functions as the primary transmission bottleneck rather than the internal configuration logic. The physical programming time inside the FPGA accounts for only a minor fraction of the observed duration, whereas USB packet framing delays and host-side execution overhead dominate the transfer window.

**PCAP acceleration analysis.** Testing the identical bitstream payload on the PYNQ-Z2 platform revealed that transitioning from JTAG to the physical PCAP interface successfully reduced hardware reconfiguration time from 62.8 ms down to 1.1 ms. Nevertheless, as documented in §IV-B, the host Linux FPGA Manager framework injected approximately 67 ms of software overhead, expanding user-visible application latency back to 68.55 ms. These empirical findings strongly reinforce the necessity of implementing the autonomous ICAP path to bypass high-level software stacks entirely.

> **Note:** The standalone reconfiguration latency of the autonomous ICAP datapath has been projected, but not yet empirically validated. Based on the documented sequential read speed of the onboard QSPI flash memory (approximately 50 MB/s) and a target bitstream payload size of 165 KB, ICAP reconfiguration is estimated to complete in 3 to 4 ms.

### C. Functional Verification

The integrated architecture was functionally verified across twelve complete RM round-trip swaps, executing three alternate transitions between each distinct module pair. Following successful partial bitstream configuration, the processor dispatched a comprehensive validation suite via the CFU Playground software interface:

- **`example.v` verification**: Executing instruction `function_id=0` with operand `inputs_0=0x01020304` successfully yielded the correct byte-summed output `0x0000000A` (representing $1+2+3+4$) across all experimental trials.
- **`donut.v` verification**: Dispatched signed fixed-point multiplication vectors consistently matched pre-calculated software reference outputs.
- **Cross-function isolation tests**: Dispatches targeting a `function_id` unsupported by the currently active RM (such as requesting a multiplication instruction while `example.v` remained loaded) consistently returned `0x00000000`. This behavior successfully demonstrated that the DFX Decoupler outputs safe default logic levels without triggering pipeline stalls or undefined processor exceptions.

### D. Decoupler Isolation Efficacy

Throughout all experimental partial reconfiguration sequences, zero pipeline stalls, processor exceptions, or serial console interruptions were observed. Using an integrated logic analyzer, it was empirically verified that the DFX Decoupler successfully clamped the `cmd_ready` handshake line low during active isolation phases. Upon the de-assertion of the `decouple` control signal, the VexRiscv pipeline resumed standard CFU execution within a single clock cycle, and the initial post-reconfiguration computation perfectly matched the expected architectural output of the newly programmed RM.

---

## VII. Discussion and Future Work

### A. Demonstrated Architectural Capabilities

The architecture demonstrated in this work successfully decouples the baseline instruction set of a processor from its static, synthesis-time hardware configuration. Consequently, a VexRiscv core deployed within the CFU Playground ecosystem can initialize execution using a simple byte-manipulation accelerator, dynamically swap to a signed fixed-point multiplier during mid-execution, and subsequently load a keyword spotting feature extractor, all without triggering a device reset. Throughout these transitions, the static partition maintains uninterrupted operation, and the core processor experiences only a brief, deterministic window (ranging from one to tens of milliseconds, depending on the active datapath) during which dispatched CFU instructions return safe zero outputs.

For coarse-grained task scheduling applications—where computational workloads shift at intervals of seconds or minutes—the 63 ms reconfiguration latency of the basic JTAG path remains highly acceptable. Conversely, for fine-grained context switching, the sub-millisecond hardware latency of the PCAP interface (1.1 ms) and the projected efficiency of the autonomous ICAP datapath (3 to 4 ms) approach the latency overhead of standard real-time operating system (RTOS) context switches. This performance parity establishes runtime instruction-set hot-patching as a realistic architectural methodology for highly adaptive embedded systems.

### B. Completing the ICAP Data Pipeline

The primary focus for immediate future work involves finalizing the physical read datapath connecting external SPI flash memory directly to the ICAP streaming controller. The onboard Quad-SPI flash memory array (Micron N25Q128) of the Arty A7 platform currently stores the static LiteX BIOS and application binary images. By pre-storing unformatted partial bitstream payloads at designated upper address offsets, the internal controller can fetch configuration frames word by word utilizing dedicated high-speed read commands at SPI clock frequencies up to 104 MHz. Following necessary bit-reversal operations and 32-bit word assembly, dedicated hardware buffers will drive these configuration frames directly into the ICAP interface. Furthermore, a longer-term optimization strategy entails shadowing partial bitstream payloads into high-bandwidth volatile DDR3 memory during initial boot sequences to maximize configuration streaming throughput.

### C. Multi-Partition Extension

Because approximately 80% of the programmable logic fabric on the Artix-7 device remains unallocated, future designs can instantiate at least two supplementary, independent Reconfigurable Partitions. This physical scaling would support concurrent functional unit diversity—permitting the processor to access distinct hardware accelerators simultaneously—while enabling background partial reconfiguration of an idle partition region while the active module continues executing application instructions uninterrupted.

### D. Firmware-Level CFU Scheduling

At the software runtime layer, future plans include implementing an intelligent scheduling manager capable of dynamically profiling custom instruction call frequencies to predictively pre-fetch and configure upcoming hardware accelerators. This predictive management framework would transition the current explicitly triggered reconfiguration model into a fully autonomous, self-directed adaptive computing system. This proposed mechanism functions analogously to dynamic task-graph schedulers documented in prior literature [8], but executes fine-grained adaptations directly at the level of custom instruction set extensions rather than coarse-grained macro-operators.

---

## VIII. Conclusion

This paper proposed and validated an architecture that enables runtime-reconfigurable RISC-V co-processors using Dynamic Partial Reconfiguration, implemented via AMD's DFX toolflow and integrated seamlessly with Google's CFU Playground ecosystem. The proposed architecture places the custom hardware accelerator inside an independent Reconfigurable Partition, isolates boundary signals using a static-side DFX Decoupler, and incorporates pipeline registers at the partition interface to guarantee physical timing closure at 100 MHz. Although these boundary registers introduced a necessary two-cycle latency penalty to every custom instruction, they successfully preserved static-side stability. Furthermore, three distinct reconfiguration paths—JTAG, PCAP, and ICAP—were evaluated, characterizing their respective hardware overhead, host dependencies, and operational latency. Cross-platform validation across pure programmable logic and processor-assisted 7-series architectures confirmed that dynamic accelerator swapping operates reliably without requiring core processor resets. Across all experimental trials, the DFX Decoupler ensured deterministic isolation, completely preventing pipeline exceptions or undefined behaviors. Overall static resource utilization remains highly efficient (consuming approximately 19.6% of available LUTs and 7.8% of flip-flops), preserving substantial physical capacity for multi-partition scaling. Ultimately, the trajectory toward complete architectural autonomy is clearly defined: finalizing the direct SPI flash memory read pipeline to feed the verified ICAP controller will successfully establish host-independent, firmware-orchestrated runtime adaptation.

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

[11] Y. Yamada, N. Berjab, T. Yoneda, and K. Kise, "A remote partial-reconfigurable SoC with a RISC-V soft processor targeting low-end FPGAs," in *Proc. IEEE 16th Int. Symp. Embedded Multicore/Many-core Systems-on-Chip (MCSoC)*, 2023.

[12] S. A. Fahmy and K. B. Iyer, "Dynamic and partial reconfiguration of FPGAs," in *Handbook of Computer Architecture*, Springer Nature Singapore, 2024, pp. 507–530, doi: 10.1007/978-981-97-9314-3_51.

[13] M. Sabih, A. Karim, J. Wittmann, F. Hannig, and J. Teich, "Hardware/software co-design of RISC-V extensions for accelerating sparse DNNs on FPGAs," in *Proc. Int. Conf. Field Programmable Technology (ICFPT)*, 2024.

---

*End of draft — version 0.3, May 2026*
