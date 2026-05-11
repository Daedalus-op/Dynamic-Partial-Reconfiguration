# Pivot paper_draft.md to Architectural Proposal Paper

## Goal

Rewrite `paper_draft.md` from a performance-measurement paper to an **architectural proposal** paper. The focus shifts from "here are our latency numbers" to "here is the architecture for pairing partial reconfiguration with custom RISC-V co-processors, and here is why it works."

## Rationale

The PCAP throughput numbers (183.2 MB/s) exceed the documented PCAP port limit (~145 MB/s), indicating the EOS-gated counter does not cleanly measure port throughput for all paths. Rather than defending questionable throughput figures, the paper should lead with the **architectural contribution** — the first DFX + CFU Playground integration — and present latency data as supporting validation, not as the primary contribution.

## What Changes

### Tone & Framing
- **Before**: "We measured X ms via JTAG and Y ms via PCAP — a 57× improvement"
- **After**: "We designed an architecture that enables runtime accelerator swap on a RISC-V soft-core. We validated it on two platforms and observed reconfiguration in the millisecond range."

### Section-by-Section Changes

---

### Abstract
- Lead with the architectural integration (DFX + CFU Playground = new capability)
- Mention the two-platform validation as proof the architecture works
- Present latency numbers as observations, not as the headline result
- Remove the specific throughput figures (MB/s) — these are the problematic numbers
- Keep the DFX Decoupler isolation claim (this is solid)

### I. Introduction
- Reframe around the "gap" in the literature: nobody has paired DFX with CFU Playground's standardised interface
- Emphasise the architectural proposition more than the measurement methodology
- Reorder contributions: architecture first, measurement second
- Remove contribution #2 (EOS measurement subsystem) as a standalone contribution — fold it into the validation methodology instead
- Keep contribution about DFX Decoupler isolation

### II. Background and Related Work
- Mostly unchanged — this section already positions the gap well
- Slightly expand the "unlike these works" paragraph to emphasise the architectural gap rather than the measurement gap

### III. System Architecture
- This is now the **core of the paper** — expand and sharpen
- Keep all subsections (Overview, CFU Interface, RMs, Latency Measurement, Control Flow)
- Add a new subsection: "Design Decisions and Trade-offs" covering:
  - Why the Decoupler goes in the static partition (not the RP)
  - Why a single PRR (not multi-slot) for the initial design
  - Why the one-cycle output register was needed
- Move the EOS measurement description into a "Validation Methodology" framing rather than "Measurement Subsystem" framing

### IV. Implementation
- Keep both platforms (Arty A7, PYNQ-Z2) and the DFX tutorial baseline
- Remove specific throughput claims
- Frame PCAP as "a second delivery path that validates the architecture is path-independent"

### V. Experimental Results → V. Validation

> [!IMPORTANT]
> **This is the biggest structural change.** Rename from "Experimental Results" to "Validation" to signal that the paper's contribution is the architecture, not the numbers.

- **Resource Utilisation**: Keep as-is (these numbers are solid)
- **Reconfiguration Latency**: 
  - Keep the latency values (63.2 ms JTAG, 1.1 ms PCAP hardware time) — these are from the EOS counter and are valid
  - **Remove the throughput column entirely** from Table II — this is where the problematic 183.2 MB/s lives
  - Reframe: "JTAG reconfiguration completes in ~63 ms; PCAP hardware reconfiguration completes in ~1.1 ms" — state latency, don't derive throughput
  - Keep the software overhead discussion (68.55 ms end-to-end) — this is valid and interesting
  - Keep the ICAP projection as future work
- **Functional Verification**: Keep as-is (solid)
- **Decoupler Isolation**: Keep as-is (solid)

### VI. Discussion and Future Work
- Reframe "Latency and Application Scheduling" around what the architecture enables, not what the numbers prove
- Keep the autonomous reconfiguration roadmap
- Keep multi-slot CFU extension
- Remove "PCAP vs. ICAP Throughput Benchmarking" subsection (this was about characterising throughput — no longer the focus)
- Keep graph-based CFU scheduling

### VII. Conclusion
- Lead with "we have proposed and validated an architecture"
- State latency values as observations, not headline results
- Remove throughput claims
- Keep the "gap to autonomy is well-defined" closing

### References
- No changes needed

---

## Open Questions

> [!IMPORTANT]
> **Before I proceed, please clarify these:**

1. **The title** — the current title ("Runtime Reconfiguration of RISC-V Custom Function Units via Dynamic Function eXchange on FPGAs") still works well for an architectural proposal paper. Do you want to keep it, or would you prefer something like "An Architecture for Runtime-Reconfigurable RISC-V Co-Processors using Dynamic Function eXchange"?

2. **Latency numbers** — I'll keep the raw latency values (63.2 ms, 1.1 ms) since these come directly from the EOS counter and are valid measurements of *something* (even if what exactly they capture for PCAP is debatable). I'll just remove the derived throughput (MB/s) column. Is that acceptable?

3. **Figures** — the current draft has 8 figures. For a ~6-page short paper pivoted to architecture, should I keep all of them? I'd recommend keeping: Fig. 0 (PR concept), Fig. 1 (system block diagram), Fig. 3 (CFU interface), Fig. 5 (EOS timing), and one of the reconfiguration architecture diagrams (JTAG or PCAP). That's 5 figures, which is tight but reasonable.

4. **The PCAP software overhead table** (lines 168-177) — this is interesting data showing 67.44 ms of OS overhead. Should I keep this in the architectural paper, or is it too performance-focused? I'd recommend keeping it because it motivates the ICAP autonomous path.

## Verification Plan

### Manual Review
- Read through the final draft to confirm no throughput claims remain
- Verify all stated facts come from the report or existing data (no hallucination)
- Confirm the architectural framing is consistent throughout

### Structural Check
- Confirm the paper reads as "here is an architecture + here is proof it works" rather than "here are our benchmark numbers"
