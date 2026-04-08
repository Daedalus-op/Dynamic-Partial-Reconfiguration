# Report Plan: Runtime Reconfiguration of a RISC-V Co-Processor using CFU Playground

## Overview

Capstone report on Dynamic/Partial Reconfiguration on FPGAs, implemented on the Arty A7-100T
using AMD DFX, CFU Playground (VexRiscv soft core), and the ICAP primitive. The report follows
the G18_BB.pdf chapter template.

**Plagiarism constraint:** ≤15% — all content must be paraphrased/original, written in
passive/third-person academic prose. No direct quotes from papers.

---

## Content Distribution Map

| Topic | Chapter | Target % | Pages (est. ~50 total) |
|---|---|---|---|
| HPR (Hierarchical PR) | Ch. 2 Literature Review | 25% | ~12 pages |
| ZyPR + ZyCAP | Ch. 2 Literature Review | 15% | ~7 pages |
| RapidStream (1.0 + 2.0) | Ch. 2 Literature Review | 10% | ~5 pages |
| Other surveys (Vipin, Fahmy, DML, AMPER-X, etc.) | Ch. 2 Literature Review | 10% | ~5 pages |
| Proposed CFU Controller Architecture | Ch. 3 Background + Ch. 4 Design | 20% | ~10 pages |
| Results + Conclusion + Future Scope | Ch. 6 Results + Ch. 7 Conclusion | 10% | ~5 pages |
| Preamble + Front Matter + References | Ch. 1 + Back Matter | ~10% | ~6 pages |

---

## Chapter Structure

### Front Matter
- Title Page (title TBD, team names TBD, guide TBD)
- Abstract (~200 words): DPR on FPGAs, CFU Playground integration, VexRiscv, runtime
  reconfiguration via ICAP, results
- Acknowledgement, TOC, List of Figures

---

### Chapter 1: Preamble (~3 pages)

**1.1 Introduction**
- FPGAs as reconfigurable compute platforms
- Motivation: monolithic compilation is slow; DPR allows runtime adaptation
- Rising interest in DPR for edge, cloud, and SoC domains

**1.2 Problem Statement / Objectives**
- Study state-of-the-art toolflows for DPR (HPR, ZyPR, RapidStream)
- Understand hardware controller requirements (ICAP, DFX Decoupler)
- Propose and implement runtime reconfiguration of a RISC-V co-processor using CFU Playground
- Validate using the Arty A7-100T board

---

### Chapter 2: Literature Review (~29 pages total — the core of the report)

> **Note:** This is 60% of the report by word count. All writing must be paraphrased.

#### 2.1 Foundational Survey: DPR Architectures, Methods and Applications (~3 pages)
- Based on: Vipin & Fahmy ACM survey + Fahmy IEEE survey
- Cover: FPGA architecture evolution supporting PR (XC6200 → Virtex-II → UltraScale),
  the ICAP primitive, frame-based configuration, floorplanning constraints, academic
  toolchains (GoAhead, OpenPR, CoPR)
- Segue into compile time problem

#### 2.2 Compile Time Problem & Parallel Compilation Motivation (~2 pages)
- Vendor tools: monolithic, slow, single-threaded
- Motivates all three toolflow papers
- Brief mention of RapidWright as underlying infrastructure

#### 2.3 RapidStream: Parallel Dataflow FPGA Compilation (~5 pages) [10%]
- Based on: `RapidStream.pdf` + `RapidStream_2.0.pdf`
  (`Papers/Sources/State_Of_the_Art/Toolflows/compile_time/`)
- RapidStream 1.0: splits design into pipeline-latency-insensitive floorplan islands;
  compiles each in parallel; uses RapidWright for stitching; ASPLOS 2022
- RapidStream 2.0: extends to HBM-based boards; inter-SLR routing; FPGA 2023
- Key result: order-of-magnitude compile time reduction vs monolithic Vitis

#### 2.4 Hierarchical Partial Reconfiguration (HPR) (~12 pages) [25%]
- Based on: `Papers/Findings/HPR notes.md` + HPR paper (FCCM 2022)
- **Core concept:** recombinable PR pages (Single/Double/Quad) connected via NoC
  (Hoplite BF variant)
- **Workflow:**
  1. Operators defined in C/C++ → HLS synthesis (parallel per-operator)
  2. Utilisation report parsed → greedy assignment to smallest fitting page
  3. Each page PnR'd in parallel → partial bitstream generated
  4. NoC configured at runtime to connect operators
- **vs. fixed-size approaches:** no manual decomposition, adaptive to operator size
- **vs. RapidStream:** HPR focuses on runtime reconfiguration of operators, not just
  compile time
- Comparison diagram: PR with NoC (fixed) vs RapidStream (fixed islands) vs HPR
  (hierarchical/adaptive)
- Results: synthesis time reduction, reduced manual effort

#### 2.5 ZyPR: End-to-End Build and Runtime Manager (~7 pages) [15%]
- Based on: `Papers/Findings/Toolflows using PR.md` + ZyPR paper
- **ZyCAP:** PR controller on Zynq SoC — AXI-Lite GP port for control, AXI4 HP port for
  bitstream DMA to ICAP; 400 MB/s throughput; LRU caching of partial bitstreams in DRAM;
  non-blocking; interrupt on DMA completion
- **ZyPR toolflow:**
  - O0: soft core execution
  - O1: operators mapped to fixed PR pages, Hoplite BF interconnect, independent
    parallel compilation and runtime swap
  - O3: full Vitis monolithic for best QoR
- Build flow: Pyverilog → Edalize → TCL injection for RP/RM → petalinux DTBO drivers →
  runtime manager
- Comparison with standard FPGA Manager (PCAP bottleneck, blocks processor)
- Relevance: ZyCAP is the closest existing IP to our ICAP controller on non-Zynq fabric

#### 2.6 Other Related Works (~5 pages) [10%]
- **DML** (Scalable Task Scheduling): multi-application DPR with task graph scheduling
- **AMPER-X**: adaptive mixed-precision RISC-V with PR — closely related to our angle
- **RV-CAP**: RISC-V based PR controller — direct predecessor to our architecture
- **DORA**: low-latency PR controller — hardware-side motivation for our ICAP controller
- **ACNNE**: CNN acceleration with DPR — application domain reference
- One paragraph each, tying back to our project

---

### Chapter 3: Background & Case Study (~5 pages) [part of 20%]

**3.1 FPGA Partial Reconfiguration Fundamentals**
- Configuration frames, ICAP primitive, DFX Decoupler IP
- Static vs reconfigurable partitions; floorplanning constraints on Arty A7-100T

**3.2 CFU Playground and VexRiscv**
- CFU Playground: Google's framework for custom function units attached to a RISC-V soft core
- VexRiscv: RV32I in-order soft core running in LiteX SoC
- CFU interface: cmd_valid/cmd_ready/rsp_valid handshake; function_id; inputs_0/inputs_1

**3.3 The ICAP and STARTUPE2 Primitives**
- How ICAP works on 7-series: 32-bit write interface to configuration memory
- STARTUPE2: access to EOS (End-of-Startup) signal, used in `recon_counter.v` for timing
- Partial bitstream structure (header, sync word 0xAA995566, instruction sequence)

**3.4 System Architecture Overview**
- Block diagram: VexRiscv → CFU interface → DFX Decoupler → cfu_compute (PRR) |
  ICAP controller (static) → ICAP primitive
- Two subsystems in `top.v`: `system_wrapper` (PR controller) + `digilent_arty` (cfu_wrapper)

---

### Chapter 4: Design and Implementation (~5 pages) [part of 20%]

**4.1 Design Goals**
- Runtime swap of `cfu_compute` without halting VexRiscv
- Measure reconfiguration time using `recon_counter` (STARTUPE2 EOS + ILA)

**4.2 Static Partition**
- `system_wrapper`: handles ICAP arbitration, PR switch input, decouple signal generation
- Arty A7: 100 MHz clock, QSPI flash for bitstream storage, DDR for runtime use

**4.3 Reconfigurable Partition (cfu_compute)**
- `cfu.v`: DFX Decoupler sits between static CFU interface and the PRR
- decouple=1: decoupler holds static side steady with default values, isolates PRR
- decouple=0: PRR is live and connected
- Partition implementations: `donut.v`, `dse_template.v`, `example.v`, `kws`

**4.4 Reconfiguration Flow**
1. CPU asserts `pr_switch`
2. `system_wrapper` raises decouple signal → DFX Decoupler isolates PRR
3. ICAP receives partial bitstream (**currently loaded manually** — see §4.7)
4. STARTUPE2 EOS goes low during reconfiguration → `recon_counter` increments
5. EOS returns high → decouple released → new `cfu_compute` active

> **Note:** The intended flow is fully autonomous — partial bitstreams stored in on-board
> DDR, fetched at runtime. This is blocked pending resolution of the DDR issue (see §4.7).

---

**4.5 Hardware Implementation Phases**

Three distinct implementation phases were pursued across different hardware platforms.

---

**Phase 1 — Arty A7-100T (Standalone)**

The Arty A7-100T served as the primary development platform. Both JTAG-based and ICAP-based
reconfiguration were implemented and validated.

- **JTAG reconfiguration:** Bitstreams delivered over the Digilent USB-JTAG cable via Vivado
  Hardware Manager. ✅
- **ICAP reconfiguration:** Partial bitstreams written to the ICAP primitive directly from
  static PL fabric logic. ✅
- Reconfiguration latency measured using the **ILA** connected to `recon_counter`, monitoring
  the STARTUPE2 EOS signal toggle.

**Status: Both JTAG and ICAP reconfiguration achieved.**

---

**Phase 2 — PYNQ-Z2 (Zynq-7020, Standalone)**

The PYNQ-Z2 was evaluated as an alternative platform with a larger PL fabric and integrated
ARM Cortex-A9 PS.

- **JTAG reconfiguration:** Validated via Vivado Hardware Manager. ✅
- **PCAP reconfiguration:** Zynq PS exposes PCAP as its primary programmatic configuration
  interface; exercised through the PS. ✅
- **ICAP on Zynq-7020:** Physically present in the PL but requires coordination with PS to
  avoid PCAP conflicts. Noted as a constraint for future PL-autonomous flows.

**Status: JTAG and PCAP reconfiguration achieved.**

---

**Phase 3 — Arty A7 + PYNQ-Z2 Bridge ("Jugaad" Approach)**

The PYNQ-Z2 exposes only a **single USB port** shared between JTAG and USB-UART. Since the
JTAG connection was occupied by the ILA (for `recon_counter` latency measurement), no
independent UART path was available to connect the host's CFU Playground UI to the Z2.

**Attempted workaround:**
The Z2's PMOD connector was used as a UART port, wired directly to a PMOD header on the
Arty A7. The Arty was programmed with a minimal bitstream consisting of **two wires** —
a direct TX/RX passthrough bridging the Z2 to the host via the Arty's USB-UART.

- `PMOD_RX → USB_UART_TX` and `USB_UART_RX → PMOD_TX`
- Did not function as expected (likely voltage mismatch / signal integrity issue without a
  level-shifting transceiver between boards)

**Resolution:** A dedicated **PMOD-to-UART converter** was purchased, resolving connectivity.

**Status: Resolved via PMOD UART converter. ✅**

---

**4.6 DFX Tutorial Baseline**
- AMD UG947 tutorial: basic shift/count counter pair as functional sanity check
- Resource utilisation: 21 slices, 10 LUTs, 64 FFs, 1 BRAM
- Timing: 2.022 ns WNS (setup), 0.109 ns WNS (hold)

---

**4.7 Partial Bitstream Storage — Current State & Next Steps**

**Current state:** Partial bitstreams are loaded **manually** (JTAG or direct host-driven
ICAP write). CFU unit swap is manually triggered — not fully autonomous.

**Planned next steps (in order):**

1. **SPI Flash → DFX Controller fetch**
   Enable the DFX controller to read partial bitstreams directly from on-board SPI/QSPI
   flash. This is the nearer-term target as flash is already present on both boards and
   does not require DDR integration.

2. **DDR storage for partial bitstreams**
   Once flash fetch is working, investigate storing pBitstreams in DDR for faster random
   access at runtime. Two approaches under consideration:
   - Copy from flash to DDR at startup (boot-time migration)
   - Transfer directly from host to DDR (e.g., via UART/AXI DMA at runtime)

**Report framing guidance:**
- **Ch. 4:** Describe intended autonomous flow; note manual loading as current state; outline
  the two-step roadmap above
- **Ch. 6 Results:** State clearly that all measurements reflect manual bitstream loading
- **Ch. 7 Future Work:** SPI-fetch is near-term; DDR-backed autonomous fetch (ZyCAP-style
  DMA) is the longer-term target

---

### Chapter 5: Project Codes / Design Files (~2 pages)
- Brief prose intro for each file before showing it
- Files: `top.v`, `cfu.v`, `recon_counter.v`, `cfu_compute` partitions (`donut.v`,
  `example.v`)
- TCL scripts (from AMD_DFX_Tutorial)

---

### Chapter 6: Results & Discussion (~3 pages)

> **User to provide:** synthesis reports, ILA captures, reconfiguration time measurements.

- DFX Tutorial baseline utilisation table (already in `Implementation.md`)
- CFU Playground: LUT/FF/BRAM utilisation for static + PRR
- Reconfiguration time: clock cycles from `recon_counter` → time in ms
- Comparison: static implementation vs DPR overhead
- **Note:** All measurements reflect manual bitstream loading (see §4.7)

---

### Chapter 7: Conclusion and Future Work (~2 pages) [10%]

**7.1 Conclusion**
- Successfully demonstrated runtime reconfiguration of RISC-V CFU on Arty A7 and PYNQ-Z2
- DFX Decoupler enables zero-disruption swap of compute function
- ICAP-based controller validates non-Zynq (pure FPGA) DPR approach
- PCAP-based reconfiguration demonstrated on Zynq platform

**7.2 Future Work**
- Resolve DDR partial bitstream storage → enable fully autonomous runtime swap
- ZyCAP-style DMA controller for higher throughput bitstream loading
- HPR-style hierarchical pages for multiple simultaneous CFU slots
- Graph partitioning for intelligent CFU selection at runtime
- Extend to RV32IMC core with more complex accelerators
- Benchmark PCAP vs ICAP throughput on Zynq

---

## Plagiarism Strategy

- All paper notes paraphrased from understanding, not copied
- Passive voice academic style throughout
- Vary sentence structure; avoid starting consecutive sentences with the same word
- Citations in [numbered] IEEE-style at end
- No verbatim phrases from any paper — describe concepts in own words
- Self-referential sections (our implementation chapters) are 100% original

---

## What Is Still Needed from the User

| Item | Chapter | Priority |
|---|---|---|
| Exact project title | Front Matter | High |
| Team names + guide name + college + year | Front Matter | High |
| Synthesis/implementation reports for CFU Playground | Ch. 6 Results | High |
| ILA captures / recon_counter measurements | Ch. 6 Results | High |
| Any block diagrams drawn | Ch. 3/4 | Medium |
| Confirmation if DDR issue has been resolved | Ch. 4.7 / Ch. 7 | High |
| RapidStream-specific results numbers to cite | Ch. 2.3 | Low (available in paper) |
