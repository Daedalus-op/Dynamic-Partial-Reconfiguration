# Conference Paper — Master Planner

> **Status:** First Iteration — Awaiting User Answers to Open Questions  
> **Source Material:** `Report/` directory (Chapters 1–7)  
> **Target Format:** TBD (conference/journal not yet selected)  
> **Output Format:** Separate markdown chapter files → LaTeX conversion at the end

---

## 1. Paper Scope & Focus

This paper presents a **novel architectural proposal for runtime dynamic switching of RISC-V co-processors** using AMD Dynamic Function eXchange (DFX) integrated with the CFU Playground framework.

### Core Thesis
A runtime-reconfigurable Custom Function Unit (CFU) attached to a VexRiscv RISC-V soft-core processor can be dynamically swapped via partial reconfiguration — using the ICAP primitive and DFX Decoupler — without halting the processor, enabling hardware time-multiplexing of functionally diverse accelerators on resource-constrained FPGAs.

### What Makes This Paper-Worthy (Novelty Claims)
1. **First reported integration of DFX with the CFU Playground framework** — prior works (AMPER-X, RV-CAP) targeted custom RISC-V setups; this uses Google's standardised CFU interface.
2. **Cross-platform DPR validation** — same architectural pattern validated on both pure-PL (Arty A7-35T, Artix-7) and PS-assisted (PYNQ-Z2, Zynq-7020) platforms.
3. **Quantitative reconfiguration latency comparison** across JTAG, PCAP, and ICAP (projected) interfaces on 7-series devices.
4. **DFX Decoupler isolation validation** — experimental confirmation that mismatched function_id dispatches to an incompatible RM produce safe zero-output behaviour.

---

## 2. Proposed Paper Structure (First Iteration)

The paper will be composed of separate markdown files, mirroring the report's chapter-file structure. Each section below maps to one markdown file.

| # | Section | Markdown File | Source Chapters | Est. Length |
|---|---------|--------------|-----------------|-------------|
| 1 | Abstract | `00_Abstract.md` | All | ~250 words |
| 2 | Introduction | `01_Introduction.md` | Ch1 (Preamble) | 1–1.5 pages |
| 3 | Related Work | `02_Related_Work.md` | Ch2 (Lit Review) — heavily condensed | 1.5–2 pages |
| 4 | Background | `03_Background.md` | Ch3 (Background) — condensed | 1–1.5 pages |
| 5 | System Architecture & Design | `04_Architecture_Design.md` | Ch3 §3.4 + Ch4 §4.1–4.4 | 2–2.5 pages |
| 6 | Implementation | `05_Implementation.md` | Ch4 §4.5 + Ch5 (selected RTL) | 1.5–2 pages |
| 7 | Results & Analysis | `06_Results_Analysis.md` | Ch6 | 1.5–2 pages |
| 8 | Discussion & Future Work | `07_Discussion_Future.md` | Ch6 §6.7–6.8 + Ch7 | 0.5–1 page |
| 9 | Conclusion | `08_Conclusion.md` | Ch7 §7.1 | 0.5 page |
| 10 | References | `09_References.md` | All | 1–2 pages |

**Total estimated length:** 10–14 pages (adjustable once conference format is known)

---

## 3. Content Mapping — Report → Paper

### 3.1 What Gets Included (Distilled)

| Report Content | Paper Treatment |
|----------------|----------------|
| Ch1 Preamble — Motivation, problem statement, objectives | → §1 Introduction (condensed, sharper focus) |
| Ch2 Lit Review — RapidStream, HPR, ZyPR/ZyCAP, AMPER-X, RV-CAP, DORA, DML, ACNNE | → §2 Related Work (1–2 sentences per work, focus on positioning) |
| Ch3 §3.1 — FPGA PR fundamentals (frames, ICAP, DFX Decoupler) | → §3 Background (brief primer) |
| Ch3 §3.2 — CFU Playground, VexRiscv, CFU interface | → §3 Background (brief primer) |
| Ch3 §3.3 — ICAP/STARTUPE2 primitives, bitstream structure | → §4 Architecture (integrated into design description) |
| Ch3 §3.4 — System architecture overview, module decomposition | → §4 Architecture (core of paper) |
| Ch4 §4.1–4.3 — Design goals, static/RP partition design | → §4 Architecture |
| Ch4 §4.4 — Reconfiguration control flow (7-step sequence) | → §4 Architecture (key contribution) |
| Ch4 §4.5.1 — Arty A7-35T implementation (JTAG validated, ICAP WIP) | → §5 Implementation |
| Ch4 §4.5.2 — PYNQ-Z2 implementation (JTAG + PCAP validated) | → §5 Implementation |
| Ch4 §4.5.3 — Inter-board bridge (PMOD-UART debugging) | → **OMIT** (too much engineering detail for paper) |
| Ch4 §4.6 — DFX Tutorial baseline | → §5 Implementation (1 paragraph) |
| Ch4 §4.7 — Bitstream storage roadmap | → §7 Discussion/Future Work |
| Ch5 — Software/firmware/RTL source walkthrough | → §5 Implementation (selected code: `cfu.v`, `recon_counter.v` only) |
| Ch6 — Results (resource, timing, latency, functional verification) | → §6 Results |
| Ch7 — Conclusion + Future Work | → §7 + §8 |

### 3.2 What Gets Omitted/Abbreviated

- **Phase 3 inter-board UART bridge debugging** — too much hardware-debugging narrative; not relevant to the paper's contribution.
- **Full software/firmware walkthrough** (Ch5 §5.5–5.6) — paper only needs the architectural RTL (`cfu.v`, `recon_counter.v`); firmware test menus and donut benchmark are report-level detail.
- **DFX Tutorial baseline** — reduce to 1 paragraph in implementation as a validation step.
- **Detailed Vivado DFX project setup** (§4.5.1.1) — condense into implementation methodology.
- **Detailed oscilloscope measurements** (§4.5.3.4) — omit entirely.

---

## 4. Figures and Tables (Planned)

| Figure/Table | Description | Source |
|-------------|-------------|--------|
| Fig. 1 | System architecture block diagram (top.v → system_wrapper + digilent_arty → cfu.v → DFX Decoupler → cfu_compute RP) | Ch3 §3.4 ASCII diagram → redraw |
| Fig. 2 | Signal flow: VexRiscv Execute → CFU port → DFX Decoupler → cfu_compute → response | Ch3 §3.4.2 |
| Fig. 3 | Reconfiguration control flow state diagram (7-step FSM) | Ch4 §4.4 |
| Fig. 4 | ILA waveform capture showing recon_counter during reconfiguration | Ch4/Ch6 (user to provide) |
| Fig. 5 | Vivado floorplan showing static partition + cfu_compute Pblock | Ch4 (user to provide) |
| Table 1 | CFU port interface signals | Ch3 §3.2.2 |
| Table 2 | Resource utilisation comparison (DFX tutorial vs. full system) | Ch6 Tables 6.1, 6.3 |
| Table 3 | Reconfiguration latency summary (JTAG/PCAP/ICAP) | Ch6 Table 6.7 |
| Table 4 | Comparison with prior works (AMPER-X, RV-CAP, DORA, ACNNE) | New — synthesised from Ch2 |

---

## 5. Key Differences: Report vs. Paper

| Dimension | Report | Paper |
|-----------|--------|-------|
| Audience | Academic evaluator (capstone) | Peer reviewers (conference/journal) |
| Tone | Comprehensive walkthrough | Concise contribution-focused |
| Lit review depth | 30+ pages, full treatment | 1.5–2 pages, positioning only |
| Implementation detail | Every Vivado setting, every wire | Architecture + key RTL only |
| Results | All raw measurements + caveats | Distilled tables + comparison |
| Code | Full source listings | Only `cfu.v` and `recon_counter.v` snippets |
| Future work | 7 detailed subsections | 1 paragraph |

---

## 6. Execution Plan

### Phase 1 — First Draft (Current)
- [ ] Resolve open questions (see §7 below)
- [ ] Write `00_Abstract.md`
- [ ] Write `01_Introduction.md`
- [ ] Write `02_Related_Work.md`
- [ ] Write `03_Background.md`
- [ ] Write `04_Architecture_Design.md`
- [ ] Write `05_Implementation.md`
- [ ] Write `06_Results_Analysis.md`
- [ ] Write `07_Discussion_Future.md`
- [ ] Write `08_Conclusion.md`
- [ ] Compile `09_References.md`

### Phase 2 — Revision (After Conference Selection)
- [ ] Apply conference/journal formatting requirements (page limit, column format, template)
- [ ] Adjust section lengths to fit page budget
- [ ] Add/remove figures per format requirements
- [ ] Ensure citation style matches target venue (IEEE, ACM, etc.)

### Phase 3 — LaTeX Conversion
- [ ] Convert all markdown files to LaTeX sections
- [ ] Integrate into conference LaTeX template
- [ ] Generate final PDF

---

## 7. Open Questions for User

> **These must be answered before I begin writing the paper sections.**

### Critical Questions

1. **Paper title** — Do you have a working title in mind, or should I propose one? (e.g., "Runtime Reconfiguration of RISC-V Custom Function Units via Dynamic Function eXchange on 7-Series FPGAs")
Ans: Runtime Reconfiguration of RISC-V Custom Function Units via Dynamic Function eXchange on FPGAs

2. **Author list** — How many authors? Names and affiliations? (This affects the author contribution framing.)
Ans: 3 Authors. Arun Murrugappan, Pranav Varkey, Shrikrishna Pandit. Affiliations: Centre for Heterogeneous and Intelligent Processing Systems, PES University, Bangalore, India.

3. **What is the primary novelty claim you want the paper to centre on?**
   - (a) The architectural integration (DFX + CFU Playground = novel combination)?
   - (b) The cross-platform validation (Artix-7 vs. Zynq-7020)?
   - (c) The reconfiguration latency characterisation (JTAG vs. PCAP vs. projected ICAP)?
   - (d) All of the above equally?
   - (e) Something else?
Ans: Focus on (a), with (b) and (c) as supporting results.

4. **Has the ICAP autonomous path been completed since the report was written?**
   - If yes: we can include ICAP throughput measurements as a key result.
   - If no: the paper will present JTAG + PCAP results with ICAP as projected/future work.
Ans: No, continue with JTAG + PCAP results and ICAP as projected/future work.

5. **Do you have any new experimental results beyond what's in Chapter 6?**
   - Additional ILA captures?
   - Donut benchmark FPS numbers (CFU-accelerated vs. software-only)?
   - Resource utilisation for all four RMs individually?

6. **Do you have the actual figures referenced as `[Figure 4.X]` placeholders in the report?**
   - Vivado floorplan screenshots
   - ILA waveform captures
   - Block design screenshots
   - If not, I can create diagrams programmatically, but ILA captures and Vivado screenshots must come from you.

### Important but Non-Blocking

7. **Target page count / length preference?** — Without a conference format, should I aim for:
   - Short paper (~6 pages)?
   - Full paper (~10–14 pages)?
   - Or keep it flexible until the venue is chosen?
Ans: Short paper (~6 pages)

8. **Should the paper include the Zynq ICAP investigation findings (§4.5.2.4)?** — The 60% success / 40% failure finding with the PCAP arbitration errata is interesting but might be seen as incomplete work. Include as a brief note, or omit?

9. **Do you want to include any of the firmware-level detail (proj_menu.cc, donut.c) in the paper, or keep it purely at the hardware architecture level?**
Ans: You can include these examples as a part of the Appendix

10. **Reference style preference?** — IEEE numbered `[1]` style? Or keep flexible until venue is known?
Ans: IEEE numbered `[1]` style

---

## 8. References (Preliminary — from Report)

The following references from the report will carry over to the paper. Additional references may be added during writing.

```
[1]  Vipin & Fahmy — ACM DPR Survey
[2]  Fahmy — IEEE DPR Survey
[19] RapidStream — ASPLOS 2022
[20] RapidStream 2.0 — ACM FPGA 2023
[21] HPR — FCCM 2022
[24] ZyPR — ACM TRETS 2023
[25] ZyCAP
[28] DML — IEEE TCAD 2022
[29] AMPER-X — IEEE TCAS 2024
[30] RV-CAP — IEEE FPL 2021
[31] DORA — IEEE FPT 2024
[32] ACNNE — IEEE TCAS-II 2024
[33] CFU Playground — Google
[34] VexRiscv — SpinalHDL
```

---

*Last updated: 2026-04-19*