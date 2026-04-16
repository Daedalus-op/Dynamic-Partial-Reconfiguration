# Report Audit: Runtime Reconfiguration of a RISC-V Co-Processor

> **Scope:** Chapters 1–7 (excluding `G18_BB.pdf` and `template`)  
> **Reference:** `implementation_plan_complete.md` used as structural guide  
> **Date:** 2026-04-16  

---

## Table of Contents

1. [Executive Summary](#1-executive-summary)
2. [Chapter-by-Chapter Validity Audit](#2-chapter-by-chapter-validity-audit)
3. [Source Code Cross-Verification](#3-source-code-cross-verification)
4. [Flow & Structural Alignment](#4-flow--structural-alignment)
5. [Plagiarism Risk Assessment](#5-plagiarism-risk-assessment)
6. [Missing Content & Placeholders](#6-missing-content--placeholders)
7. [Consolidated Issue Table](#7-consolidated-issue-table)
8. [Recommendations](#8-recommendations)

---

## 1. Executive Summary

### Overall Assessment

| Dimension | Rating | Notes |
|-----------|--------|-------|
| **Technical Accuracy** | ⬛⬛⬛⬜⬜ Good | 5 factual errors found; most claims verified correct |
| **Code-Report Consistency** | ⬛⬛⬛⬛⬜ Very Good | Source code matches report in all verified files |
| **Plan Alignment** | ⬛⬛⬛⬛⬜ Very Good | All planned chapters present; minor scope adjustments |
| **Plagiarism Risk** | ⬛⬛⬛⬜⬜ Good | Estimated 10–14% — within target but needs monitoring |
| **Completeness** | ⬛⬛⬛⬜⬜ Good | 8 figure placeholders; no front matter; minor data gaps |

### Key Findings

> [!IMPORTANT]
> **5 factual errors** were identified, 2 of which are **high severity** (wrong conference venue, wrong device target claim). These should be corrected before submission.

> [!TIP]
> The report's **original prose quality is strong** — heavy paraphrasing, passive academic voice, and varied sentence structure significantly reduce plagiarism risk. The self-authored implementation chapters (3–5) are essentially 0% plagiarism risk.

---

## 2. Chapter-by-Chapter Validity Audit

### Chapter 1: Preamble (13,219 bytes, 45 lines)

#### ✅ Verified Claims
- FPGAs as reconfigurable compute platforms — **correct**
- XC6200 as early PR platform — **correct** (circa 1997–1999)
- DFX terminology as rename of DPR — **correct** (AMD rebranded in ~2020)
- VexRiscv as RV32I in-order core in SpinalHDL within LiteX SoC — **correct**
- CFU Playground as Google's framework for custom function units — **correct**
- CFU interface signals (`cmd_valid`, `cmd_ready`, `rsp_valid`, `rsp_ready`, 10-bit `function_id`, dual 32-bit operands) — **correct, verified against source code**
- CUSTOM0 opcode space — **correct** (opcode `0001011` per RISC-V spec)
- Arty A7-35T as XC7A35T — **correct**
- PYNQ-Z2 as Zynq-7020 — **correct**

#### ⚠️ Issues Found

| # | Severity | Issue | Location | Details |
|---|----------|-------|----------|---------|
| 1 | 🟡 Medium | **Inconsistent board target** | §1.1, line 21 | States "targeting the Digilent Arty A7-**35T** development board (Xilinx Artix-7, XC7A35T) as the primary implementation platform, with baseline toolflow validation performed on the Arty A7-**100T**" — but later in §4.6 the DFX tutorial is described as running on the A7-100T, and in §1.2 the validation list says "Arty A7-35T." The relationship between 35T and 100T should be clearly established in Ch1 to avoid confusion. |
| 2 | 🟢 Low | **Zynq-7020 PS memory claim** | §3.1.3 | States "512 KB on-chip memory" for the Zynq PS — the Zynq-7020 has **256 KB** of on-chip SRAM (OCM). 512 MB is the DDR on the PYNQ-Z2 board, not on-chip. |

#### Flow vs Plan
- **Plan §Ch.1** calls for Introduction + Problem Statement/Objectives → **Both present and well-developed** ✅
- The plan estimated ~3 pages; actual content is substantive and well-proportioned ✅

---

### Chapter 2: Literature Review (74,791 bytes, 396 lines)

#### ✅ Verified Claims (Major)
- Vipin & Fahmy ACM/IEEE surveys as foundational — **correct** (well-known survey papers)
- XC6200 register-mapped interface — **correct**
- Virtex-II frame-based configuration model — **correct**
- ICAP introduction on Virtex-II — **correct** (2001–2002)
- ICAP 32-bit, 400 MB/s on 7-series — **verified correct** via Xilinx docs
- RapidWright as open-source Java framework by Xilinx Research — **correct**
- ZyPR published in ACM TRETS 2023 by Bucknall & Fahmy — **verified correct**
- ZyCAP 400 MB/s throughput claim — **consistent with paper claims**
- RV-CAP at IEEE FPL 2021 — **verified correct**
- AMPER-X in IEEE TCAS — **verified correct**

#### ❌ Errors Found

| # | Severity | Issue | Location | Details |
|---|----------|-------|----------|---------|
| 3 | 🔴 **High** | **Wrong conference venue for RapidStream 1.0** | §2.3.1 & §2.3.2, multiple locations | Report states "RapidStream framework [19] was presented at **ASPLOS 2022**". Web search confirms it was presented at **ACM/SIGDA FPGA 2022** (and won Best Paper there). This error also appears in the comparison table at line 100 where it says "[ASPLOS 2022]". Must be corrected to "FPGA 2022". |
| 4 | 🟡 Medium | **ACNNE venue mismatch** | §2.6.5 | Report states "ACNNE [32] (IEEE TCAS-II, 2024)". Web search indicates the primary ACNNE paper was presented at **IEEE ISCAS 2024**, not TCAS-II. The IEEE TCAS-II is a journal; verify whether a journal version exists or correct to ISCAS. |
| 5 | 🟡 Medium | **DORA venue** | §2.6.4 | Report states "DORA [31] (IEEE FPT 2024)". The DORA paper appears to exist but the venue "FPT 2024" should be double-checked against the actual publication — web results mention ResearchGate but don't confirm "FPT" specifically. |
| 6 | 🟢 Low | **"Forty-year arc" claim** | §2.7 | States "a forty-year arc of DPR research and practice, from the XC6200's register-mapped partial cell access in 1997 to ... 2024." 1997→2024 is 27 years, not forty. The forty-year claim would only be valid dating from the earliest FPGA concepts (~1985). |

#### Plagiarism-Relevant Observations
- §2.1–2.2: Heavy paraphrasing of Vipin/Fahmy surveys — language is clearly reworked into original prose. Low risk.
- §2.3: RapidStream section uses original analytical language, not verbatim from paper. Low risk.
- §2.4: HPR section is the longest and most detailed — extensively paraphrased with original comparison tables. Low risk.
- §2.5: ZyCAP/ZyPR section contains detailed technical descriptions that mirror paper content closely but use distinct sentence structures. **Medium-low risk** — recommend running this specific section through a plagiarism checker.
- §2.6: Related works — short paragraphs per work, clearly original synthesis. Low risk.

---

### Chapter 3: Background and Case Study (31,247 bytes, 326 lines)

#### ✅ Verified Claims
- Frame Address Register (FAR) three-field structure — **correct** per UG470
- DFX Decoupler behavior with `decouple` signal — **correct** per PG375
- XC7A35T: 20,800 LUTs, 41,600 FFs, 50 BRAM tiles, 90 DSPs — **correct** per DS180
- ICAP_7SERIES 32-bit interface, 100 MHz max — **correct**
- Sync word 0xAA995566 — **correct** per UG470
- STARTUPE2 EOS behavior — **correct** per UG470
- `recon_counter.v` code in report matches actual source file — **verified identical** ✅
- `cfu.v` code in report matches actual source file — **verified identical** ✅
- CFU port interface table (cmd_valid, cmd_ready, etc.) — **correct, matches cfu.v**
- System architecture diagram hierarchy — **matches actual top.v** ✅

#### ⚠️ Issues Found

| # | Severity | Issue | Location | Details |
|---|----------|-------|----------|---------|
| 7 | 🟡 Medium | **EOS behavior description may be imprecise** | §3.3.2 | States "EOS transitions from high to low at the moment the ICAP begins accepting the partial bitstream write sequence." In reality, EOS goes low during the startup/shutdown sequence of the reconfiguration, not necessarily at the exact moment ICAP begins accepting data. The `recon_counter` FSM actually measures the period when EOS is low, which corresponds to the configuration startup sequence — this is correct in the code but the prose description could be more precise. |
| 8 | 🟢 Low | **Partial bitstream sizes** | §3.3.3 | States "352 KB to 420 KB" for partial bitstreams, but Ch6 Table 6.6 reports 164,534 bytes (~161 KB) for Arty. These are inconsistent. Ch6 values appear to be the actual measured values. |

#### Plagiarism Assessment
- This chapter is entirely **original technical writing** describing the project's own architecture. The embedded Verilog code is the project's own source. **Essentially 0% plagiarism risk.** The background material in §3.1 and §3.3 paraphrases vendor documentation (Xilinx UG470, UG585) but uses original sentence structures.

---

### Chapter 4: Design and Implementation (83,716 bytes, 561 lines)

#### ✅ Verified Claims
- JTAG reconfiguration validated on both boards — **consistent with Ch6 data**
- DFX Decoupler placed within `cfu.v` inside static partition — **verified in source code** ✅
- Seven-state FSM for ICAP reconfiguration — **described consistently**
- BRAM ROM approach for bitstream storage — **consistent with implementation description**
- PYNQ-Z2 PCAP reconfiguration via sysfs/FPGA Manager — **correct Linux kernel mechanics**
- Phase 3 PMOD-to-UART bridge and CH340G solution — **plausible, well-documented**
- UG947 DFX tutorial results (10 LUTs, 64 FFs, 1 BRAM, WNS +2.022 ns) — **consistent between Ch4 and Ch6**

#### ⚠️ Issues Found

| # | Severity | Issue | Location | Details |
|---|----------|-------|----------|---------|
| 9 | 🔴 **High** | **Board target inconsistency** | §4.5.1, line 126 | States "The Digilent Arty A7-35T served as the primary development platform" and describes XC7A35T specs. But the implementation plan §4.6 shows the DFX tutorial on A7-**100T**, and in §4.5.1.2 (line 152), the TCL command uses `xc7a35t_0`. The report needs to be **unambiguous** about which board is used where: 35T for CFU Playground, 100T for tutorial baseline. Currently this is mostly clear but a few sentences blur the distinction. |
| 10 | 🟡 Medium | **JTAG Decoupler assertion method** | §4.5.1.2 | States "Manual DFX Decoupler assertion... was accomplished using two TCL AXI transactions." But the `system_wrapper` also has a `decouple` wire driven by `pr_switch`. The relationship between these two control paths (JTAG-AXI manual vs. FSM-driven) should be clarified — are both available? Is `pr_switch` used for ICAP path only? |
| 11 | 🟡 Medium | **PYNQ-Z2 PMOD pin name** | §4.5.3.2 | Lists JA2 pin as `GW18` — this doesn't look like a valid Zynq-7020 package pin name (Zynq-7020 CLG400 uses pins like Y18, W18, etc. but not "GW18"). This might be a typo. |
| 12 | 🟢 Low | **`recon_counter` word count** | §4.5.1.4 | States "89,472 words (349 KB / 4 bytes per word)" but Ch6 reports 164,534 bytes ≈ 41,134 words. The numbers are inconsistent between chapters. |
| 13 | 🟢 Low | **Twelve reconfiguration events** | §4.5.1.2 | Claims "twelve JTAG reconfiguration events — three complete round-trips between each pair of the four RMs." Four RMs have C(4,2)=6 pairs × 2 directions = 12 round-trips. But "three complete round-trips between each pair" × 6 pairs = 18 events. The math doesn't quite add up — clarify whether it's 12 total events or 3 per pair. |

#### Plagiarism Assessment
- This chapter is **100% original project documentation**. All Verilog code, architecture descriptions, engineering challenges, and failure analyses are project-specific. The only potentially flaggable content would be Linux kernel mechanics descriptions in §4.5.2.3, which paraphrase well-known kernel documentation — **very low risk**.

---

### Chapter 5: Software, Firmware, and RTL Source Organisation (45,199 bytes, 987 lines)

#### ✅ Verified Claims
- All source code listings verified against actual repository files:
  - `top.v` — **exact match** ✅
  - `cfu.v` — **exact match** ✅
  - `recon_counter.v` — **exact match** ✅
  - `example.v` — **exact match** ✅
  - `donut.v` — **exact match** ✅
  - `cfu.h` — **matches** ✅
- Repository structure diagram matches actual `Implementation/` directory layout ✅
- Build flow description (LiteX → Vivado DFX → bitstream) — **plausible and consistent**

#### ⚠️ Issues Found

| # | Severity | Issue | Location | Details |
|---|----------|-------|----------|---------|
| 14 | 🟡 Medium | **`cfu.h` macro redefinition bug** | §5.6.1, actual file line 76-77 | In the actual `cfu.h` file, lines 76-77 redefine `cfu_donut_mulsh_hw` and `cfu_donut_mul_hw` as **software** calls (`Cfu(4, ...)` and `Cfu(5, ...)`), but they use the `_hw` suffix. This is a **real bug** in the source code (naming collision). The report doesn't mention this issue. |
| 15 | 🟡 Medium | **Blocking assignment in `recon_counter.v`** | §5.4.2 | Report correctly notes `state = next_state` uses blocking assignment in a clocked block. Good that this is flagged, but the report calls it "functionally equivalent" — while true in this specific case, it's still a synthesis warning risk and should be flagged more strongly as a known deviation from best practice. |
| 16 | 🟢 Low | **`dse_template.v` description** | §4.3.2 vs §5.5.3 | Ch4 describes `dse_template.v` as "a 16×16-bit unsigned multiply with 32-bit accumulate, returning the accumulated result after a fixed two-cycle latency." But Ch5 shows the actual code implements SIMD 8-bit multiply-accumulate with `InputOffset`. The Ch4 description is the older/simplified version. |

#### Plagiarism Assessment
- Chapter 5 is entirely **code listings with original explanatory prose**. The code itself is the project's own work (with Apache 2.0 license headers from CFU Playground where appropriate). **0% plagiarism risk.**

---

### Chapter 6: Results and Analysis (25,960 bytes, 247 lines)

#### ✅ Verified Claims
- DFX tutorial results (10 LUTs, 64 FFs, 1 BRAM) — **consistent with Ch4** ✅
- CFU system: 4,311 LUTs (20.73%), 6,608 FFs, 5.5 BRAM — **plausible for LiteX SoC**
- ICAPE2 WNS −3.622 ns against 5 ns constraint — **correctly explained** as constraint mismatch
- JTAG throughput: 2.603 MB/s (Arty), 3.235 MB/s (PYNQ) — **plausible for USB-JTAG**
- PCAP throughput: 183.2 MB/s — **plausible** (rated 200 MB/s nominal, measured ~183 MB/s)
- Counter reading: 6,318,898 cycles at 100 MHz = 63.19 ms — **math checks out** ✅
- 164,534 / 2.603×10⁶ ≈ 0.0632 — **math checks out** ✅
- 203,308 / 3.235×10⁶ ≈ 0.0628 — **math checks out** ✅
- 203,308 / 183.2×10⁶ ≈ 0.00111 — **math checks out** ✅
- Total on-chip power 0.134 W — **plausible for XC7A35T at 20% utilisation**

#### ⚠️ Issues Found

| # | Severity | Issue | Location | Details |
|---|----------|-------|----------|---------|
| 17 | 🟡 Medium | **Clock constraint confusion** | §6.4.1 | States "200 MHz clock constraint" as "carried over from the board XDC pin assignment" but then says "The actual system operating frequency is 100 MHz." The XDC for the Arty A7-35T defines a 100 MHz clock with 10 ns period, not 200 MHz. The 200 MHz / 5 ns constraint appears to come from the A7-**100T** board's differential clock. This needs clarification — was the wrong XDC used? |
| 18 | 🟢 Low | **Child run naming** | §6.3 | Mentions "child_0_impl_2 (the child run, in which the partition is populated with the `count_up` CFU variant)." Calling it `count_up` is confusing — this seems like tutorial terminology mixed into the CFU system section. |

#### Plagiarism Assessment
- Results chapter is **entirely original data presentation**. All tables, measurements, and analysis are project-specific. **0% plagiarism risk.**

---

### Chapter 7: Conclusion and Future Work (14,596 bytes, 72 lines)

#### ✅ Verified Claims
- All conclusions are consistent with data presented in Ch4 and Ch6 ✅
- Future work items align with §4.7 roadmap ✅
- ICAP theoretical 400 MB/s ceiling — **correct**
- "Under 0.5 ms" for DDR-backed ICAP transfer of 164 KB — **correct** (164K / 400 MB/s ≈ 0.41 ms)

#### ⚠️ Issues Found
- No factual errors found in this chapter. The conclusions are appropriately scoped and hedged.

#### Plagiarism Assessment
- **0% risk** — entirely original synthesis of project findings.

---

## 3. Source Code Cross-Verification

All source files mentioned in the report were verified against the actual files in `Implementation/CFU_Playground/`:

| File | Report Location | Match Status | Notes |
|------|----------------|-------------|-------|
| `top.v` | Ch3 §3.4.1, Ch5 §5.2.1 | ✅ Exact match | Port list and instantiation verified |
| `cfu.v` | Ch3 §3.4.2, Ch5 §5.3 | ✅ Exact match | DFX Decoupler wiring verified |
| `recon_counter.v` | Ch3 §3.3.2, Ch5 §5.4 | ✅ Exact match | FSM and ILA instantiation verified |
| `example.v` | Ch5 §5.5.1 | ✅ Exact match | All 3 operations verified |
| `donut.v` | Ch5 §5.5.2 | ✅ Exact match | Signed multiply verified |
| `dse_template.v` | Ch5 §5.5.3 | ✅ Present | Code listing matches |
| `cfu.h` | Ch5 §5.6.1 | ⚠️ Match with bug | Macro redefinition issue (see #14) |
| `kws/` directory | Ch5 §5.5.4 | ✅ Present | 4 SV files confirmed |
| `src/` directory | Ch5 §5.6 | ✅ Present | All firmware files confirmed |

---

## 4. Flow & Structural Alignment

### Report vs Template Structure

| Template Chapter | Report Chapter | Status |
|-----------------|---------------|--------|
| Front Matter (Abstract, Acknowledgement, TOC, List of Figures) | **Not present** | ❌ Missing |
| Chapter 1: Preamble (Intro + Problem Statement) | Chapter 1 | ✅ Complete |
| Chapter 2: Literature Review | Chapter 2 | ✅ Complete (29+ pages equivalent) |
| Chapter 3: Background | Chapter 3 | ✅ Complete |
| Chapter 4: Design and Implementation | Chapter 4 | ✅ Complete (most detailed chapter) |
| Chapter 5: Coding/Algorithm | Chapter 5 | ✅ Complete |
| Chapter 6: Results and Discussion | Chapter 6 | ✅ Complete |
| Chapter 7: Conclusion and Future Work | Chapter 7 | ✅ Complete |
| Back Matter (Plagiarism Report, References) | **Not present** | ❌ Missing |

### Report vs Implementation Plan Content Map

| Plan Target | Plan % | Actual Coverage | Assessment |
|-------------|--------|-----------------|------------|
| HPR | 25% | ~12 pages equivalent in §2.4 (8 subsections) | ✅ Met |
| ZyPR + ZyCAP | 15% | ~7 pages equivalent in §2.5 (5 subsections) | ✅ Met |
| RapidStream | 10% | ~5 pages equivalent in §2.3 (4 subsections) | ✅ Met |
| Other surveys | 10% | ~5 pages equivalent in §2.6 (5 works) | ✅ Met |
| Proposed architecture | 20% | Ch3 + Ch4 combined ~15 pages equivalent | ✅ Met |
| Results + Conclusion | 10% | Ch6 + Ch7 combined ~7 pages equivalent | ✅ Met |
| Preamble + Front/Back Matter | ~10% | Ch1 present; Front/Back matter missing | ⚠️ Partial |

---

## 5. Plagiarism Risk Assessment

### Methodology
Plagiarism risk was assessed by analyzing:
1. **Sentence structure originality** — checking for passive academic voice, varied sentence construction
2. **Proximity to source material** — comparing report descriptions against known paper abstracts/content
3. **Technical term density** — high density of unique technical terms reduces plagiarism scores
4. **Code listings** — own code is not counted as plagiarism
5. **Formulaic phrases** — checking for academic boilerplate that might trigger detectors

### Per-Chapter Risk Estimate

| Chapter | Content Type | Est. Similarity Risk | Rationale |
|---------|-------------|---------------------|-----------|
| Ch1 | Original intro + problem statement | 5–8% | Standard academic phrasing for DPR motivation; some formulaic phrases |
| Ch2 §2.1 | Survey paraphrase | 12–18% | Heaviest paraphrase section; Vipin/Fahmy survey concepts must match source |
| Ch2 §2.2 | Compile-time problem | 8–12% | Original framing with some standard terminology |
| Ch2 §2.3 | RapidStream review | 10–15% | Technical description of paper concepts; well-paraphrased |
| Ch2 §2.4 | HPR review | 10–15% | Longest section; extensive paraphrasing with original analysis |
| Ch2 §2.5 | ZyPR/ZyCAP review | 12–18% | **Highest risk section** — detailed technical descriptions mirror paper closely |
| Ch2 §2.6 | Related works | 8–12% | Short per-work summaries; clearly original synthesis |
| Ch3 | Background (own architecture) | 3–5% | Mostly original; vendor doc paraphrasing for primitives |
| Ch4 | Design & Implementation | 2–4% | **Entirely original** project documentation |
| Ch5 | Source code + prose | 1–3% | Own code with original annotations |
| Ch6 | Results | 1–2% | Original data and analysis |
| Ch7 | Conclusion | 3–5% | Original synthesis |

### Combined Estimate

> [!IMPORTANT]
> **Estimated combined plagiarism score: 10–14%**
> 
> This is **within the ≤15% target** but sits near the upper bound. The primary risk zones are:
> - Ch2 §2.1 (survey paraphrase)
> - Ch2 §2.5 (ZyCAP technical descriptions)
> 
> The large volume of original content in Chapters 3–7 dilutes the overall percentage significantly.

### Specific High-Risk Phrases to Watch
1. "frame-addressed configuration model" — standard terminology, acceptable
2. "latency-insensitive partitioning" — standard concept name, acceptable
3. "credit-based flow control" — generic technical term, acceptable
4. ZyCAP architectural descriptions (GP port, HP port, DMA engine) — these closely follow the ZyCAP paper's own terminology. Consider adding more original framing.

---

## 6. Missing Content & Placeholders

### Figure Placeholders (8 total)

| Location | Placeholder | Required Asset |
|----------|-------------|---------------|
| Ch4 §4.5.1.1 | `[Figure 4.X: Vivado Project Manager screenshot...]` | DFX run hierarchy screenshot |
| Ch4 §4.5.1.2 | `[Figure 4.X: Hardware Manager partial programming...]` | JTAG + ILA screenshot |
| Ch4 §4.5.1.4 | `[Figure 4.X: Vivado behavioural simulation waveform...]` | FSM simulation waveform |
| Ch4 §4.5.2.2 | `[Figure 4.X: Vivado device floorplan view...]` | PYNQ-Z2 floorplan |
| Ch4 §4.5.2.3 | `[Figure 4.X: Software flow diagram...]` | PCAP sequence diagram |
| Ch4 §4.5.3.3 | `[Figure 4.X: Wiring diagram...]` | PMOD bridge wiring |
| Ch4 §4.5.3.4 | `[Figure 4.X: Annotated oscilloscope trace...]` | Signal integrity measurements |
| Ch4 §4.5.3.5 | `[Figure 4.X: Photograph of test bench...]` | Lab setup photo |

### Available Assets (in `Report/assets/`)

| File | Likely Use |
|------|-----------|
| `CFU_Architecture.png` (38 KB) | Ch3/Ch4 architecture diagram |
| `CFUxDFx.png` (259 KB) | Ch3/Ch4 DFX integration diagram |
| `Partial_Reconfiguration.png` (156 KB) | Ch2/Ch3 PR concept diagram |

> [!WARNING]
> Only 3 image assets exist but 8 figure placeholders need filling. **5 additional images/screenshots are needed** before the report is complete.

### Missing Sections
- **Front Matter**: Abstract, Acknowledgement, TOC, List of Figures — required by template
- **References**: No reference list at the end of any chapter (numbered citations [1]–[32] used inline but never enumerated)
- **Back Matter**: Plagiarism report page — required by template

---

## 7. Consolidated Issue Table

| # | Severity | Chapter | Issue | Action Required |
|---|----------|---------|-------|----------------|
| 3 | 🔴 High | Ch2 | RapidStream venue: "ASPLOS 2022" → should be "**FPGA 2022**" | Fix in §2.3.1, §2.3.2, and comparison table (line 100) |
| 9 | 🔴 High | Ch4 | Board target clarity: 35T vs 100T usage needs consistent framing | Add a clear statement early in Ch4 distinguishing the two |
| 1 | 🟡 Medium | Ch1 | Board target intro could be clearer about 35T vs 100T roles | Minor rewording |
| 2 | 🟡 Medium | Ch3 | Zynq PS "512 KB on-chip memory" → should be "256 KB OCM" | Fix number |
| 4 | 🟡 Medium | Ch2 | ACNNE venue: "TCAS-II" → likely "**ISCAS 2024**" | Verify and fix |
| 5 | 🟡 Medium | Ch2 | DORA venue: "FPT 2024" — verify against actual publication | Verify |
| 7 | 🟡 Medium | Ch3 | EOS timing description slightly imprecise | Refine prose |
| 8 | 🟡 Medium | Ch3/Ch6 | Partial bitstream size inconsistency (352–420 KB vs 161 KB) | Reconcile |
| 10 | 🟡 Medium | Ch4 | JTAG Decoupler control path vs FSM path ambiguity | Clarify |
| 11 | 🟡 Medium | Ch4 | PMOD pin "GW18" — likely invalid package pin | Verify and fix |
| 12 | 🟡 Medium | Ch4/Ch6 | Word count inconsistency (89,472 vs 41,134) | Reconcile with Ch6 data |
| 13 | 🟡 Medium | Ch4 | "Twelve events" vs "three round-trips per pair" math | Clarify wording |
| 14 | 🟡 Medium | Ch5 | `cfu.h` macro redefinition bug (lines 76-77) | Fix source code or document bug |
| 16 | 🟡 Medium | Ch4/Ch5 | `dse_template.v` description mismatch between chapters | Align Ch4 with Ch5's code |
| 17 | 🟡 Medium | Ch6 | 200 MHz clock constraint source explanation | Clarify which XDC |
| 6 | 🟢 Low | Ch2 | "Forty-year arc" — actually 27 years | Fix to "nearly three-decade arc" |
| 15 | 🟢 Low | Ch5 | Blocking assignment flagging could be stronger | Consider rewording |
| 18 | 🟢 Low | Ch6 | `count_up` CFU variant naming confusion | Fix terminology |

---

## 8. Recommendations

### Immediate Fixes (Before Submission)

1. **Fix RapidStream venue** — Change all instances of "ASPLOS 2022" to "FPGA 2022" in Chapter 2
2. **Reconcile bitstream sizes** — Ch3 says 352–420 KB, Ch4 says 349 KB (89,472 words), Ch6 says 161 KB. Use Ch6's measured values as authoritative and update the others
3. **Fix Zynq OCM** — Change "512 KB" to "256 KB" in §3.1.3
4. **Verify ACNNE and DORA venues** — Check original papers and correct
5. **Fix "forty-year" claim** — Change to "nearly three-decade" or similar
6. **Fix PMOD pin GW18** — Verify against Zynq-7020 CLG400 package pinout

### Content Completion

7. **Add References section** — All 32+ numbered citations need a proper bibliography
8. **Add Front Matter** — Abstract, Acknowledgement, TOC, List of Figures
9. **Fill figure placeholders** — 5 additional screenshots/diagrams needed beyond the 3 existing assets
10. **Add the 3 existing assets** at appropriate locations in the document

### Plagiarism Mitigation

11. **Run formal plagiarism check** on Ch2 §2.1 and §2.5 specifically
12. **Rephrase any flagged segments** — Focus on ZyCAP architectural descriptions
13. **Add more original comparative analysis** in §2.5 to dilute close-paraphrase density

### Technical Improvements

14. **Fix `cfu.h` macro bug** — Lines 76-77 redefine `_hw` macros as software calls
15. **Align `dse_template.v` description** between Ch4 §4.3.2 and Ch5 §5.5.3
16. **Clarify clock constraint** in Ch6 — explain the 200 MHz vs 100 MHz relationship clearly
