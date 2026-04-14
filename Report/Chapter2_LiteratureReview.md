# Chapter 2: Literature Review

---

## 2.1 Foundational Survey: DPR Architectures, Methods, and Applications

The study of Dynamic Partial Reconfiguration (DPR) on Field-Programmable Gate Arrays has accumulated a substantial body of literature spanning device architecture, design methodology, runtime management, and domain-specific applications. Comprehensive surveys by Vipin and Fahmy [1][2] consolidate this body of work and provide a structured taxonomy that remains relevant to contemporary research. The discussion in this section draws principally on those surveys, supplemented by primary literature where appropriate.

### 2.1.1 FPGA Architecture Evolution and the Foundations of Partial Reconfiguration

A modern FPGA can be conceptually decomposed into two co-dependent layers: a hardware layer comprising Configurable Logic Blocks (CLBs), Block RAMs (BRAMs), Digital Signal Processing (DSP) slices, I/O blocks, and high-speed transceivers; and a configuration layer comprising the Static Random-Access Memory (SRAM) cells that encode the logic functions, routing multiplexer states, and initial memory contents of those resources. Because the configuration layer is implemented in volatile SRAM, the device can be reprogrammed after fabrication by overwriting the contents of those memory cells through a dedicated configuration interface.

Xilinx introduced support for Partial Reconfiguration (PR) as early as 1997 with the XC6200 series, which exposed a register-mapped interface through which an external host could read or write individual functional cells [3]. The architecture's regular tiled structure facilitated module relocation, making it the canonical early example of fine-grained, cell-level reconfigurability. However, the XC6200 family was ultimately discontinued, and mainstream PR support on Xilinx devices did not re-emerge at scale until the Virtex-II generation (2002–2003).

The Virtex-II architecture organised its programmable resources in a columnar fashion, with each column containing a single type of primitive — CLBs, BRAMs, or distributed multipliers. Configuration data for these resources is conveyed using a *frame* abstraction: each frame is a narrow column of bits extending the full height of the device, and the complete configuration of the device is expressed as an ordered sequence of frames addressed by a three-field tag comprising the block type, the major column address, and the minor address within that column. This frame-addressed architecture has been preserved, with refinements, in all subsequent 7-series, UltraScale, and UltraScale+ devices.

The Virtex-II generation simultaneously introduced the Internal Configuration Access Port (ICAP), a synchronous parallel interface that allows configuration frames to be written to the device's configuration memory from logic executing within the programmable fabric itself [4]. Prior to ICAP, all reconfiguration had to be driven from an external host via SelectMAP or JTAG. ICAP — accessed through the ICAPB primitive (8-bit interface) on Virtex-II and the ICAP2 primitive (32-bit, 400 MB/s) from Virtex-4 onward — unlocked the possibility of self-reconfiguring systems in which a soft-core processor or dedicated state machine could manage the reconfiguration process without host intervention.

Virtex-4 (2004) introduced several refinements that directly shape the design of DPR systems. The tri-state buffer (TBUF) primitive — previously used as an anchor for bus macros, the interface signals between static and reconfigurable partitions — was replaced by LUT-based implementations, improving placement flexibility. The frame size was standardised to one bit wide and 16 CLBs high with 41 32-bit configuration words, relaxing the full-height column constraint to multiples of 16 CLBs. The ICAP interface width was increased from 8 to 32 bits, quadrupling throughput. These changes collectively improved the practicality of defining Reconfigurable Partitions (RPs) of varying heights and widths, while reducing the area granularity at which partial reconfiguration could be applied.

The Virtex-5 family and its successors (Virtex-6, 7-series, and their UltraScale derivatives) maintained and extended the columnar arrangement, adding rows of heterogeneous resources (DSPs, BRAMs, I/O columns) distinct from the CLB fabric. This heterogeneous layout introduces an important constraint for RP floorplanning: a partition must generally enclose complete columns of each resource type that it uses, since frames are column-aligned. On the 7-series (which encompasses the Artix-7 used in this project), a minimal RP must occupy at least one complete column of CLBs and any associated resource columns within its bounding box.

The Zynq-7000 SoC (2013) introduced a different reconfiguration model by integrating a dual-core ARM Cortex-A9 Processing System (PS) on the same die as the reconfigurable Programmable Logic (PL) fabric. On Zynq, the PS can drive either the Processor Configuration Access Port (PCAP), which offers a DMA-based path to the PL configuration memory without occupying ICAP, or delegate to an ICAP controller embedded in the PL. The distinction between PCAP and ICAP paths on Zynq is central to the comparison between the ZyCAP architecture (§2.5) and standalone ICAP-based controllers on pure FPGA families such as the Artix-7.

The UltraScale and UltraScale+ families extended DPR to additional resource types including PLLs, I/O buffers, and SERDES transceivers, and introduced the MCAP (Media Configuration Access Port) tethered to the PCIe hard macro. These improvements came at the cost of a two-phase reconfiguration protocol: before any new module bitstream is loaded, a *clearing bitstream* must first be written to reset the RP's configuration state, adding an additional latency step.

### 2.1.2 The Frame-Based Configuration Model and Partial Bitstream Structure

A partial bitstream targets a contiguous subset of the device's frame address space. Its structure follows the same synchronisation and instruction sequence as a full bitstream, beginning with a synchronisation word (0xAA995566 for 7-series devices), followed by a series of configuration register writes and FDRI (Frame Data Register In) write commands that deliver the new frame data. The CRC register (RCRC instruction) and the DGHIGH/GCAPTURE sequences bracket each configuration block to maintain internal consistency [5].

For a Reconfigurable Partition defined over a given rectangular bounding box, the partial bitstream contains exactly the frames whose major column addresses fall within that box, and whose minor addresses cover the full height of each column. The ICAP controller writes these frames sequentially through its 32-bit data port, asserting chip-select and write-enable signals and deasserts them at the conclusion of the sequence. The static partition — comprising all frames outside the RP's address range — is never touched during this write sequence, which is the fundamental hardware guarantee that makes non-disruptive partial reconfiguration possible.

### 2.1.3 Design Flows, Academic Toolchains, and Floorplanning

Vendor DPR design flows have evolved from PlanAhead (the original Xilinx PR flow) to the modern Vivado Dynamic Function eXchange (DFX) implementation flow. In the current flow, the designer specifies an RP by drawing a Pblock constraint within the Vivado floorplanner, designating it as the container for a set of Reconfigurable Modules (RMs), and then performing a configuration run for each RM. Vivado enforces the requirement that the RP extends to complete column heights for each resource type it contains, and that the static partition is fully placed and routed before any RM is compiled.

Several academic toolchains have addressed limitations of vendor flows, particularly in the areas of module relocation, runtime placement, and bitstream manipulation:

- **GoAhead** [6] extends the Xilinx PR flow to support the connection and disconnection of reconfigurable modules to pre-existing static logic, addressing the bus macro routing constraint through explicit repositioning.
- **PARBIT** [7] operates on configuration bitstreams directly, extracting only the configuration frames associated with a user-defined region of interest. This enables an offline workflow in which subsets of a full bitstream are extracted without re-running the full implementation.
- **REPLICA** and **ReplicaPro** [8][9] provide online bitstream manipulation capabilities, enabling runtime relocation by manipulating the frame address fields within a stored bitstream, with ReplicaPro extending support to BRAMs and multiplier blocks.
- **OpenPR** [10] and **CoPR** [11] provide higher-level PR design flows, with CoPR automating low-level bitstream management through a configuration manager, abstracting reconfiguration from the application programmer in a manner analogous to OpenCL memory management.

Floorplanning remains a critical and often manually intensive step in DPR flows, since vendor tools do not automate RP placement. The academic literature has proposed multiple automated approaches, ranging from resource-aware fixed-outline algorithms to mixed-integer linear programming formulations. However, most early works assume a homogeneous resource layout, which is not representative of modern FPGAs. Post-2010 contributions have addressed heterogeneous resource distributions, though practical automation in the context of Vivado's DFX flow remains an active research challenge.

### 2.1.4 Runtime Management of Reconfigurable Tasks

Efficient management of multiple reconfigurable tasks throughout system operation introduces scheduling and memory management challenges. The early literature on task scheduling for DPR systems assumed homogeneous FPGA resources and modelled the problem as a two-dimensional bin-packing variant, in which hardware tasks must be placed into available RP slots in space and time. Partitioning strategies have evolved from simple simulated annealing approaches to connectivity-graph-based methods that account for inter-module communication patterns and heterogeneous resource needs.

Software-based management frameworks represent one category of solution: the CoPR and ReconOS [12] models expose a standardised interface to application software, hiding reconfiguration behind API calls. Hardware-based management, by contrast, offers higher throughput by leveraging DMA-capable reconfiguration controllers — at the cost of controller design complexity and reduced scheduling flexibility. Hybrid approaches, in which a software scheduler issues DMA commands to a hardware controller, are considered the most practical for production systems, and are reflected in the ZyCAP architecture discussed in §2.5.

### 2.1.5 Application Domains

The literature surveys a broad set of application domains in which DPR has been explored to practical benefit:

- **Software-Defined Radio (SDR) and cognitive radio systems**: The ability to swap modulation and baseband processing modules at runtime — switching between OFDM, CDMA, or bespoke waveforms — maps directly to PR without requiring separate FPGA devices for each standard [13].
- **Automotive and safety-critical systems**: PR has been investigated for driver-assistance systems requiring runtime upgrades, and for fault mitigation through Selective Readback and triple-module redundancy combined with partial scrubbing to recover Single Event Upsets (SEUs) induced by radiation [14].
- **High-performance and cloud computing**: Multi-tenant FPGA virtualisation, in which distinct users share a single device by occupying different reconfigurable partitions, has been demonstrated in data-centre contexts. The Coyote v2 framework [15] provides hierarchical reconfiguration of services and user logic with claimed order-of-magnitude improvements in reconfiguration time over systems that require the device to be taken offline.
- **Packet processing and network function virtualisation**: Dynamically replacing network processing modules at runtime enables a single-device implementation of a virtualised network function platform.
- **Embedded inference and edge computing**: PR facilitates adaptive compute at the edge by allowing a single low-cost FPGA to instantiate different inference accelerators depending on the current sensor context, reducing area relative to a monolithic multi-accelerator design.

Despite this breadth of demonstrated applications, a recurring observation in the survey literature is that most systems have been designed in an *ad hoc* manner, without benefit of a standardised high-level flow. The practical barriers — principally toolchain complexity, floorplanning effort, and the difficulty of verifying correctness across all RM combinations — have prevented DPR from achieving the adoption that its theoretical advantages might suggest. The three toolflow papers reviewed in §§2.3–2.5 each represent a distinct attempt to address these barriers.

---

## 2.2 The Compile-Time Problem and the Motivation for Parallel Compilation

A fundamental impediment to the practical deployment of FPGA-based accelerators — both in static and partially reconfigurable forms — is the duration of the implementation toolflow. Unlike software compilation, which produces executable binaries within seconds to minutes even for large codebases, FPGA implementation encompasses logic synthesis, technology mapping, placement, and routing: collectively a combinatorial optimisation problem that scales super-linearly with design complexity. For large designs targeting 7-series or UltraScale devices, end-to-end compilation routinely requires multiple hours, and in complex DPR configurations — where each Reconfigurable Module must be independently placed and routed within the RP's floorplan — the aggregate compile time for a full library of modules can extend further still.

### 2.2.1 The Monolithic Compilation Problem

Vendor toolflows — Xilinx Vivado and Intel Quartus Prime — operate in a fundamentally monolithic mode: the entire netlist is treated as a single optimisation problem, with global placement and routing algorithms attempting to minimise wire length and critical-path delay simultaneously across the entire device. While this all-at-once view produces high-quality results in terms of timing closure, it makes no use of the parallel computation resources available on a modern multi-core or multi-machine build environment. A Vivado implementation run that would benefit from twelve simultaneous routing threads typically occupies only a fraction of available cores during its most time-critical phases.

The compile-time problem is exacerbated in DPR contexts. The standard Vivado PR flow requires that the static partition be fully implemented first, and then each RM must be separately implemented with the static partition's placement and routing locked. If there are $N$ RMs for a single RP, the tool must run $N$ separate implementation runs in sequence (or with manual parallelism), each of which reindexes the already-placed static logic to confirm that the RM's interface signals align correctly. Any change to the static partition invalidates all RM implementations and requires a complete rebuild — a particularly costly event during iterative design.

### 2.2.2 RapidWright: The Infrastructure Layer

A key enabling technology for research into alternative compilation strategies is **RapidWright** [16], an open-source Java-based framework developed by Xilinx (now AMD) Research. RapidWright provides programmatic access to Vivado's internal design checkpoint (.dcp) format, allowing third-party tools to read, manipulate, and write the placed-and-routed netlist without invoking Vivado's GUI or batch flows. Specifically, RapidWright exposes:

- A **device model** that enumerates all physical resources (tiles, sites, BELs, and routing nodes) for a target device family;
- A **design model** that maps logical net endpoints to physical BEL placements and switchbox routing paths;
- A **bitstream API** that allows the configuration frames associated with a placed design to be read and written directly.

This infrastructure makes it possible to implement *stitching*: combining separately compiled sub-designs into a single routed netlist by resolving their inter-partition nets at the physical routing level, without re-running global placement. The RWRoute [17] programmable routing engine within RapidWright further enables inter-partition route completion within the assembled design context, respecting the already-committed intra-partition routes. These capabilities are exploited both by RapidStream (§2.3) and, in principle, by the HPR toolflow's floorplan-aware compilation pipeline (§2.4).

### 2.2.3 Latency-Insensitive Design and Pipeline Islands

An important conceptual prerequisite for parallel compilation is *latency insensitivity* (LI). A design is said to be latency insensitive if the correctness of its computation is preserved regardless of the number of pipeline register stages inserted on any inter-module data path, provided that a suitable handshake protocol (commonly a credit-based or ready/valid token system) is employed to maintain flow control across each stage. The LI property, originally formalised in the context of synchronous circuit design methodology [18], is directly applicable to the parallelisation of FPGA compilation because it permits partitioning boundaries to be placed anywhere in the design's dataflow graph without affecting functional correctness: additional pipeline registers can be inserted at each cross-partition boundary to absorb routing latency, and the handshake protocol ensures that data tokens are neither lost nor duplicated.

In the RapidStream framework (§2.3), this property is exploited by floorplanning the design into a grid of rectangular *islands*, synthesising and placing each island independently in parallel, and then resolving the inter-island routes using RapidWright's routing engine — inserting relay pipeline stages where necessary to satisfy timing constraints across boundaries. The HPR toolflow (§2.4) applies a related principle but in the context of runtime reconfiguration rather than compile-time speedup: by constructing a Hoplite Butterfly (Hoplite-BF) Network-on-Chip that itself provides the timing-insensitive inter-node communication fabric, the HPR framework decouples the compilation of individual operators from the compilation of the static NoC infrastructure.

### 2.2.4 The Case for Incremental and Parallel Compilation

Beyond latency insensitivity, the case for incremental compilation is grounded in the observation that, in the typical DPR development workflow, only a small fraction of the design changes between successive iterations. The static partition — comprising the processor subsystem, memory controllers, interconnect, and reconfiguration infrastructure — is compiled once and then frozen. Only the evolving RMs need to be re-synthesised and re-placed. This structural separation maps naturally to an incremental compilation model: if the static partition's place-and-route solution can be preserved across RM iterations, and if individual RM compilations can be executed concurrently on a build cluster, the effective end-to-end compile time for a library of $N$ RMs degrades only linearly in the number of *changed* RMs, rather than requiring a full re-run of the complete design.

The three toolflows surveyed in this chapter — RapidStream, HPR, and ZyPR — each address this compile-time challenge from a different angle:

| Toolflow | Primary Focus | Parallelism Model | Runtime Reconfiguration |
|---|---|---|---|
| RapidStream [ASPLOS 2022] | Compile-time reduction | Island-based parallel PnR via RapidWright | No (static deployment) |
| HPR [FCCM 2022] | Adaptive PR for dataflow | Per-operator HLS + parallel PnR per PR page | Yes (runtime NoC reconfiguration) |
| ZyPR [IEEE ESL 2023] | End-to-end build & runtime manager | Incremental per-RP module builds | Yes (ZyCAP DMA-based PR) |

This distinction is significant: RapidStream's contribution is exclusively on the compilation side and does not directly address runtime management, while HPR and ZyPR are concerned with both the compilation workflow and the runtime infrastructure for performing partial reconfiguration on a live system. The following three sections review each toolflow in detail.

---

---

## 2.3 RapidStream: Parallel Dataflow FPGA Compilation

### 2.3.1 Motivation and Context

The RapidStream framework [19] was presented at ASPLOS 2022 and addressed a well-established pain point in FPGA-based accelerator development: the hours-long compile time imposed by monolithic vendor tools. Its authors observed that high-level synthesis (HLS) dataflow designs — in which a computation is expressed as a graph of pipelined stages communicating through FIFO channels — exhibit a structural property that vendor tools are unable to exploit: the individual stages are *latency insensitive* with respect to each other, and therefore the placement and routing of each stage can in principle be resolved independently, without knowledge of the placement decisions made for its neighbours.

The key insight is that in a dataflow graph operating under a valid-ready (or token-credit) handshake protocol, inserting additional pipeline register stages on any inter-stage channel does not alter the functional correctness of the computation — it merely increases the end-to-end pipeline latency by the number of added stages. If each inter-stage channel is implemented as a relay register (sometimes termed a *pipeline relay*), the routing problem between any two stages is reduced to finding a path whose latency matches the relay count, rather than requiring those paths to meet a tight wire-length constraint imposed by a global placement solver working across the entire device simultaneously.

RapidStream exploits this property by decomposing the compilation problem into three decoupled phases: floorplan partitioning, parallel island compilation, and inter-island route resolution. Each phase is significantly faster than the equivalent monolithic Vivado flow for designs of comparable complexity.

### 2.3.2 RapidStream 1.0: Architecture and Pipeline

**Floorplan partitioning.** Given an HLS dataflow design specified at the C/C++ level (targeting the Vitis HLS toolchain), RapidStream applies a graph-partitioning algorithm to assign each computational module to one of a set of rectangular floorplan *islands* laid out on the device. The island boundaries are aligned to the device's clock region grid — the natural granularity at which routing resources become physically distinct — so that wires crossing an island boundary exercise only the limited set of long-line resources available at that boundary. This alignment guarantees that inter-island routes can be resolved by a targeted routing pass, rather than by a global router that must simultaneously consider all routes across the device.

The number and arrangement of islands is determined by a configurable grid parameter (for instance, a 2×3 or 4×4 arrangement), and modules are assigned to islands such that the total communication volume crossing any island boundary is minimised — equivalent to a balanced graph partitioning objective with boundary-cut as the cost function. The partitioning algorithm itself, based on a multi-level min-cut heuristic, runs in seconds and produces a stable floorplan that is then fixed for the remainder of the compilation.

**Parallel island compilation.** With the floorplan determined, each island is compiled independently and in parallel. For each island, Vivado synthesises and implements only the logic assigned to that island, with the island's boundary treated as a set of I/O ports. Because island boundaries are aligned to clock region edges, the inter-island nets do not participate in global placement and routing at this stage: they are simply exported as port connections. Each island compilation runs as a fully independent Vivado process, with no shared global state, making the entire set of island compilations embarrassingly parallel. On a build server with sufficient cores, all islands complete roughly simultaneously, and the aggregate wall-clock time is bounded by the slowest island rather than the sum of all islands.

**Inter-island stitching.** Once all islands have been individually placed and routed, RapidWright's stitching and routing infrastructure is invoked to connect the inter-island nets. Relay pipeline registers are inserted at the boundary of each island — their count is determined during floorplanning based on the worst-case routing distance between boundary ports — and the inter-island wires are then routed using RWRoute [17], operating only on the long-line routing resources that cross clock region boundaries. Because the intra-island routes are already fixed, the inter-island router operates on a much smaller problem and completes quickly.

The final assembled design is exported as a Vivado design checkpoint (.dcp) that is indistinguishable from one produced by a conventional monolithic implementation run, and can be taken directly to bitstream generation without any additional tool steps.

**Reported results.** The RapidStream 1.0 paper reported compile-time reductions of approximately one order of magnitude compared to monolithic Vitis compilation for a range of HLS dataflow benchmarks on UltraScale+ devices, with quality-of-results (in terms of clock frequency and resource utilisation) within a few percent of the monolithic baseline. For the largest benchmarks evaluated — including SpMM sparse matrix kernels and SGEMM dense matrix multiplications targeting the Alveo U250 and U280 accelerator cards — monolithic compile times of six to twelve hours were reduced to under one hour.

### 2.3.3 RapidStream 2.0: HBM-Based Boards and SLR-Crossing Routing

The successor work, presented at ACM FPGA 2023 [20], extended the RapidStream framework to high-bandwidth memory (HBM) based boards and multi-SLR (Super Logic Region) UltraScale+ devices, addressing a new class of routing challenge that arises at SLR boundaries.

**The SLR-crossing problem.** In multi-SLR UltraScale+ devices (such as the Alveo U250, which contains four SLRs), wires crossing an SLR boundary must use a dedicated set of *super long-line* (SLL) routing resources implemented through metal stacks that span the interposer. SLL resources are scarce relative to the volume of cross-SLR communication in a densely mapped design, and their timing characteristics differ from intra-SLR routes, making them a bottleneck for both compile time and timing closure. The monolithic Vivado router must simultaneously compete for SLL resources across the entire design, leading to congestion and long routing runtimes.

RapidStream 2.0 introduces a dedicated SLR-boundary router that handles cross-SLR wires as a separate post-processing phase. In this approach, the isles are partitioned at the SLR granularity, each SLR is compiled independently (further subdivided into the existing clock-region-level islands), and the resulting per-SLR checkpoints are then assembled by explicitly routing the SLL wires using a pre-computed assignment that matches each source-sink pair to a specific SLL channel. This SLL assignment is computed as a min-cost flow problem over the bipartite graph of available SLL channels and required connections, and is solved offline in seconds.

**HBM pseudo-channel assignment.** A second contribution specific to HBM boards is an HBM pseudo-channel assignment algorithm that co-optimises the mapping of HBM accesses to physical pseudo-channels with the island floorplan, so that spatial locality between computation islands and their associated HBM channels is maximised. This spatial co-optimisation reduces the average length of HBM-to-logic wires, improving both timing and the congestion profile of the resulting placement.

**Reported results.** RapidStream 2.0 reported compile-time reductions of 5–12× compared to monolithic Vitis for HBM-based benchmarks, with quality-of-results competitive with or exceeding the monolithic baseline on frequency for most benchmarks. The SLR-crossing router in particular was shown to add less than ten minutes of compile time even for designs with thousands of SLR-crossing connections.

### 2.3.4 Relevance and Limitations with Respect to the Present Work

RapidStream addresses compile-time rather than runtime reconfiguration. Its compilation model — fixed islands, fixed routing, static bitstream — produces a conventional monolithic bitstream that is loaded once at device startup and cannot be partially updated at runtime without regenerating the entire bitstream. The framework therefore does not provide any runtime DPR capability and cannot be used as a basis for the CFU swap scenario described in this project.

Nevertheless, the architectural principles identified in RapidStream — particularly the latency-insensitive partitioning of a dataflow graph into independently compiled islands, and the use of RapidWright as a bitstream-level assembly tool — are directly relevant to the HPR framework reviewed in §2.4, which applies the same principles to a DPR context. In the context of the present work, RapidStream serves as a benchmark for compile-time improvement methodology, establishing the theoretical ceiling for how far island-based parallelism can reduce FPGA build times before being applied to the partial reconfiguration domain.

> **Implementation Note:** Hands-on evaluation of RapidStream was not carried out as part of this project. The RapidStream team proceeded to productise the framework following its academic publication, and in doing so revoked all public API keys and access repositories. The tool is no longer available for independent evaluation or reproduction. Coverage in this report is accordingly limited to a literature-based review of the published papers.

---

## 2.4 Hierarchical Partial Reconfiguration (HPR)

### 2.4.1 Motivation: Fixed Pages and Their Limitations

The HPR framework [21], presented at FCCM 2022, addresses the compile-time and flexibility limitations of existing partial reconfiguration-based dataflow acceleration approaches. The foundational observation motivating HPR is that prior DPR systems for dataflow applications — including the approach characterised as *PR with NoC* in the HPR paper, and also implicit in the RapidStream island model — employ *fixed-size* PR pages: rectangular regions of fixed dimensions whose floorplan is determined at system design time and cannot be changed without rebuilding the static partition.

Fixed-size pages create a fundamental tension. If pages are sized to accommodate large operators, the area assigned to small operators is left unutilised, wasting fabric resources that could otherwise be assigned to concurrently executing operators. If pages are sized optimally for small operators, large operators must be manually decomposed into sub-operators that each fit within a single page — a labour-intensive process that frequently degrades performance because it introduces artificial boundaries in the operator's internal routing. Neither outcome is satisfactory in a system where operator sizes vary significantly and evolve during iterative development.

A related limitation concerns compile-time: in a fixed-page PR system, any change to an operator — even a minor HDL edit — necessitates re-synthesising, re-placing, and re-routing the modified operator's new Reconfigurable Module within its designated page. If the operator fits into a different-sized page after the change (for example, because an optimisation reduced its resource footprint), the existing static floorplan cannot accommodate the relocation without a full rebuild of the static shell. This dependency between operator size and static floorplan is the root cause of the long round-trip compilation times observed in fixed-page DPR systems.

### 2.4.2 Core Concept: Recombinable PR Pages

The central innovation in HPR is the introduction of *hierarchically recombinable PR pages* — rectangular regions that can be logically combined at runtime to form larger compound pages. Three canonical page sizes are defined:

- **Single page (S):** the smallest atomic page, occupying one unit of the floorplan grid;
- **Double page (D):** two horizontally adjacent single pages, treated as a single logical region;
- **Quad page (Q):** four single pages arranged in a 2×2 grid, treated as a single logical region.

The key property of this hierarchy is that the physical layout of the pages, including the routing resources that cross their boundaries, is fixed in the static partition — but an operator can be assigned to any page size at or above its minimum fitting size. A small operator that fits in a Single page is placed there. A medium operator that requires a Double page occupies two adjacent Single pages, and the inter-page routing resources within that Double are part of the static implementation. A large operator that requires a Quad page occupies four Single pages arranged in a 2×2 group.

Critically, the assignment of operators to page sizes is determined automatically at compile time by the greedy fitting algorithm (§2.4.4), not by the designer. The designer does not need to manually decompose operators or pre-assign them to fixed-size regions. This eliminates the key source of developer friction in fixed-page PR systems.

### 2.4.3 The Hoplite-BF Network-on-Chip

The interconnection between operators in the HPR system is provided by a *Hoplite-BF* (Butterfly) variant of the Hoplite on-chip network [22]. The Hoplite family of NoCs is designed specifically for FPGA deployment and achieves high routing efficiency by mapping logical flits directly to FPGA routing resources rather than requiring dedicated tile-based routers. The Hoplite-BF variant extends the standard Hoplite bidirectional bus-based topology to support the hierarchical page structure of HPR.

Within the HPR context, the Hoplite-BF NoC serves three distinct roles:

1. **Inter-operator routing**: Data tokens flowing from one operator's output to another's input traverse the NoC as flits addressed by virtual channel and destination tag. The NoC provides flow control through a credit-based scheme, maintaining backpressure when a downstream operator's input FIFO approaches capacity.

2. **Reconfiguration isolation**: When a page is being reconfigured — that is, when a new operator's partial bitstream is being loaded into that page — the NoC's flow control mechanism automatically stalls producers of data destined for that page, preventing corrupted data from entering the partially reconfigured logic. This property is analogous to the function of the DFX Decoupler in the system described in Chapter 4, but implemented at the NoC protocol level rather than through explicit isolation logic.

3. **Runtime operator connection**: When a new operator has been loaded into a page, the NoC routing tables are updated to reflect the new operator's logical address. This step completes the operator swap and allows the pipeline to resume — making operator replacement a purely software-configured event at the NoC control plane, invisible to other operators in the dataflow graph that are not directly connected to the replaced operator.

### 2.4.4 Compilation Workflow

The HPR compilation workflow is structured as follows, and is designed to maximise parallelism across all phases:

**Phase 1 — HLS synthesis (per operator, fully parallel).** Each operator in the dataflow graph is described in C/C++ and synthesised using Vitis HLS to produce a synthesised netlist. Crucially, each HLS run is independent: operators have no shared state and do not depend on each other's synthesis outputs. All operators are therefore synthesised simultaneously, and the wall-clock time for Phase 1 is bounded by the slowest individual operator synthesis, rather than the sum of all operators.

Each HLS synthesis also produces a *resource utilisation report* enumerating the number of LUTs, flip-flops, BRAMs, and DSP slices required by the operator at the target clock frequency. This report is consumed by the greedy page assignment algorithm in Phase 2.

**Phase 2 — Greedy page assignment.** Following synthesis, the tool parses each operator's resource utilisation report and compares its reported requirements against the capacity of each page size (S, D, Q). The greedy algorithm assigns each operator to the smallest page size that can accommodate its resource footprint, iterating over operators in decreasing order of resource demand. If no page of sufficient size is available — because all pages of that size are already allocated — the operator is assigned to the next larger available size. If the operator's requirements exceed the capacity of a Quad page, an error is raised and the designer must either optimise the operator or partition it manually.

The output of Phase 2 is a complete operator-to-page assignment that is guaranteed to be satisfiable given the static floorplan. This assignment is deterministic and reproducible, making it suitable for incremental recompilation: if only one operator changes between iterations, only that operator is re-synthesised and reassigned; all other assignments remain valid.

**Phase 3 — Page-level PnR (per assigned page, fully parallel).** With the operator-to-page assignment determined, each operator is implemented within its assigned page. Implementation is performed by a Vivado run that uses the page's pre-defined Pblock constraint, which is part of the static shell. As with Phase 1, all page implementations are independent and are therefore executed in parallel. The wall-clock time for Phase 3 is bounded by the slowest page implementation.

For a Double or Quad page, the implementation run treats the compound page as a single Pblock and applies standard Vivado placement and routing within the enlarged region. The intra-compound routing resources that cross the Sub-page boundaries are available to the router as ordinary LUT-to-LUT routes, without requiring special treatment, because those resources are not used by the static shell at the internal page boundaries.

**Phase 4 — Bitstream generation and NoC configuration.** Once all page implementations are complete, partial bitstreams are generated for each operator independently. Each partial bitstream targets only the frames within the assigned page's Pblock, and is stored as a binary file indexed by operator identifier and page address. The NoC routing configuration — specifying the virtual channel assignments from producer operators to consumer operators — is computed from the dataflow graph's edge list and written to an initialisation file for the NoC control software.

### 2.4.5 Runtime Reconfiguration with the Hoplite-BF NoC

At runtime, operator replacement proceeds as follows:

1. The runtime manager (executing on a host processor or embedded soft-core) identifies the operator to be replaced and issues a *deactivation* command to the NoC control plane for the target page's input virtual channels. The NoC stalls all data destined for the page until the channel credit count reaches zero, ensuring no in-flight data will be corrupted by the reconfiguration.

2. The partial bitstream for the new operator is DMA-transferred to the FPGA's configuration memory through the available configuration port (PCAP on Zynq-based platforms, or an ICAP controller on pure FPGA platforms). The target page's existing operator is overwritten.

3. The runtime manager issues an *activation* command, updating the NoC routing tables to reflect the new operator's dataflow connections. The NoC releases the stalled credits and data flow resumes with the new operator in place.

The latency of this operator-swap sequence — from issuing the deactivation command to the resumption of data flow — comprises: (a) drain time for in-flight data (bounded by the FIFO depths multiplied by the pipeline latency of the data path from last producer to the target page), (b) bitstream transfer time (dominated by the partial bitstream size and the ICAP/PCAP throughput), and (c) NoC routing table update time (negligible, typically a few clock cycles). In the benchmarks reported in the HPR paper, total swap latency for a Single page was on the order of tens of milliseconds when using a software-initiated PCAP transfer on a Zynq device.

### 2.4.6 Comparison with Fixed-Page PR and RapidStream

The HPR paper includes explicit comparisons with two baseline approaches: a conventional fixed-size page PR system (labelled *PR with NoC* in the paper's diagrams), and the RapidStream island-based compilation model. The three-way comparison is summarised as follows:

| Criterion | PR with NoC (Fixed) | RapidStream | HPR |
|---|---|---|---|
| **Page / island size** | Fixed at design time | Fixed grid, configurable | Adaptive: S / D / Q |
| **Operator decomposition** | Manual, by designer | Automatic partitioning | Automatic greedy fitting |
| **Runtime reconfiguration** | Yes (per fixed page) | No (static bitstream) | Yes (per adaptive page) |
| **Compile parallelism** | Per-RM, sequential or manual | Per-island, fully parallel | Per-operator + per-page, fully parallel |
| **NoC role** | Routing only | N/A (fixed wire routes) | Routing + reconfiguration control |
| **Area efficiency** | Low for small operators | N/A | High (smallest fitting page) |

The key differentiator of HPR relative to *PR with NoC* is area efficiency: because each operator occupies only the smallest page that fits it, a larger number of operators can coexist simultaneously on the device compared to a system in which every operator is allocated a fixed-size page sized for the largest operator in the library. In a library of operators with highly varied resource footprints — which is typical of machine learning accelerators, where tasks range from simple data formatters requiring tens of LUTs to convolutional cores requiring thousands of LUTs and many BRAM tiles — this adaptive sizing can substantially increase system throughput.

Relative to RapidStream, HPR offers runtime adaptability at the cost of a slightly more rigid floorplan structure (the page grid must be defined at static shell compile time) and an increased static shell area overhead (the Hoplite-BF NoC and page boundary logic consume a non-trivial fraction of device resources). RapidStream, by contrast, imposes no static overhead and achieves higher raw clock frequencies by allowing the router complete freedom over inter-island wire placement. The two frameworks are therefore complementary rather than competing: RapidStream targets high-throughput static deployments where compile time is the bottleneck, while HPR targets adaptive deployments where operator diversity and runtime replaceability are the primary concerns.

### 2.4.7 The PLD Predecessor: Incremental Refinement Compilation

A predecessor to the full HPR framework — published at the same research group under the title *Fast FPGA Compilation to Make Reconfigurable Acceleration Compatible with Modern Incremental Refinement Software Development* (PLD, 2022) [23] — addressed an earlier facet of the compile-time problem: the mismatch between software development workflows, which support rapid iterative refinement with sub-second edit-compile-run cycles, and FPGA development workflows, which impose hour-long compilation barriers even for minor changes.

The PLD work demonstrated that for designs structured around modular HLS accelerators with fixed interfaces, it is possible to maintain a *compiled shell* of the static infrastructure (memories, interconnect, processor interfaces) and iteratively recompile only the changed accelerator modules, assembling the result using RapidWright stitching. This incremental model reduced per-iteration compile times from hours to minutes for the benchmark set evaluated.

The HPR framework can be understood as extending the PLD incremental model to the DPR domain: the static shell becomes not just a compilation convenience but a runtime-deployable base bitstream, and the individual module compilations produce not just assembly artefacts but deployable partial bitstreams. The conceptual lineage from PLD to HPR to the present work's static-plus-PR architecture is therefore direct, with each step adding a layer of runtime adaptability to a foundation of incremental parallel compilation.

### 2.4.8 Relevance to the Present Work and the Decision to Limit Coverage

The architectural principles demonstrated in HPR — specifically the separation of a fixed static shell (containing NoC and reconfiguration infrastructure) from independently compiled Reconfigurable Modules, and the use of a page-granularity DFX Decoupler-equivalent isolation mechanism during bitstream loading — are directly reflected in the system architecture described in Chapter 4. The DFX Decoupler placed in `cfu.v` serves precisely the isolation function that the Hoplite-BF NoC's credit-drain mechanism serves in HPR: preventing corrupted data from propagating to the static side of the interface during the partial reconfiguration window.

However, the reproduction of the HPR toolflow was attempted but could not be completed during this project. The primary obstacles were:

- **Vivado version sensitivity**: The HPR toolflow is documented against a specific Vivado release, and the use of even a minor version increment introduces structural changes in the DCP format that cause the RapidWright-based stitching step to fail silently, producing invalid bitstreams.
- **Linux kernel and driver compatibility**: The toolflow's dependency on a specific version of the Linux XRT (Xilinx Runtime) driver stack introduced conflicts with the available build system's kernel version, preventing the Vitis HLS compilation stage from completing.
- **Compute resource constraints**: The place-and-route steps for Quad pages on the target device pushed the available build machine to its memory limits, causing router jobs to be terminated by the OS or to produce degenerate routing results after exhausting available RAM.

For these reasons, HPR is treated in this report as a reference for architectural principles rather than a reproduced implementation. Its concepts directly informed the design of the CFU controller architecture (Chapter 4), particularly with respect to decoupling strategy and the structural separation of static and reconfigurable partitions.

---

## 2.5 ZyPR: End-to-End Build Tool and Runtime Manager for PR at the Edge

### 2.5.1 Motivation and Positioning

ZyPR [24], published in ACM Transactions on Reconfigurable Technology and Systems (TRETS) in 2023, is authored by Alex R. Bucknall and Suhaib A. Fahmy — the latter being the same researcher responsible for the foundational DPR survey [2] and the ZyCAP controller on which ZyPR's runtime infrastructure is built. In contrast to both RapidStream (which targets cloud-scale UltraScale+ accelerators) and HPR (which targets dataflow graphs of HLS operators), ZyPR is designed specifically for edge FPGA SoC deployments: resource-constrained platforms such as the Zynq-7000 family, where the available logic, memory, and I/O budgets are significantly smaller than datacenter boards, and where power consumption and deployment simplicity are primary concerns.

The central problem ZyPR addresses is the fragmented nature of existing edge DPR workflows. A designer wishing to implement partial reconfiguration on a Zynq board must independently manage: (a) the Vivado implementation flow and floorplanning, (b) the PetaLinux device-tree overlay (DTBO) driver stack that makes the FPGA Manager aware of reconfigurable partitions, (c) the AXI-connected soft IP that controls the ICAP or PCAP configuration port, and (d) the runtime software that triggers bitstream loads and monitors completion. Each of these layers requires specialist knowledge and significant manual integration effort. ZyPR's contribution is to automate and integrate all four layers into a single end-to-end flow, exposing a simple specification interface to the designer and producing — without manual intervention — a deployable hardware bitstream, a Linux device-tree overlay, and a runtime management library.

### 2.5.2 ZyCAP: The High-Throughput PCAP/ICAP Controller

At the heart of ZyPR's runtime infrastructure is the **ZyCAP** IP core [25], a partial reconfiguration controller developed specifically for Zynq and Zynq UltraScale+ SoC platforms. It is the most directly comparable existing work to the ICAP-based reconfiguration controller described in this project, and is therefore reviewed in some depth.

**Architecture.** ZyCAP is implemented in the Zynq PL and exposes two AXI interfaces to the PS:

- **GP Port (AXI4-Lite, via the General Purpose AXI master port):** The PS writes configuration transactions to ZyCAP through this lightweight control channel. Each transaction specifies the base address in DRAM of the target partial bitstream and its size in bytes. The ZyCAP controller validates the transaction, checks its internal bitstream cache for a previously transferred version of the requested bitstream, and issues a DMA command if the bitstream is not cached.

- **HP Port (AXI4 Full, via the High-Performance AXI slave port):** The ZyCAP DMA engine uses this port to read the partial bitstream data from DRAM through the Zynq memory interconnect. The AXI4 burst transactions achieve the full available memory bandwidth, sustaining a bitstream transfer rate of up to **400 MB/s** to the ICAP primitive — matching the ICAP's maximum rated throughput on Zynq-7000 devices. This is in sharp contrast to the baseline Zynq Linux FPGA Manager, which transfers bitstreams through the PCAP (Processor Configuration Access Port) via the Configuration Security Unit (CSU), a path that occupies the ARM Trusted Firmware and Platform Management Unit and blocks the PS during the entire transfer.

**Non-blocking operation.** A critical property of ZyCAP is that the DMA transfer to the ICAP is executed entirely in hardware without processor involvement. Once the PS has written the bitstream address and size to the GP port registers, the PS is free to execute other tasks. The ZyCAP DMA engine fetches the bitstream from DRAM independently, writes it to the ICAP primitive, and asserts an interrupt on the GP port interrupt line when the transfer is complete. This non-blocking model allows the application software to overlap useful computation with the reconfiguration latency — an important property for real-time edge deployments where reconfiguration frequency may be high.

**DRAM-based bitstream caching.** ZyCAP implements a configurable Least Recently Used (LRU) bitstream cache in DRAM. When a partial bitstream is requested for the first time, it is fetched from persistent storage (typically SD card or eMMC) into a reserved DRAM region, and the cache entry is recorded. On subsequent requests for the same bitstream, ZyCAP reads directly from the DRAM cache rather than re-reading from persistent storage, reducing reconfiguration latency by the time that would otherwise be spent on the slower storage access. The LRU policy ensures that the most recently and frequently used bitstreams remain in the cache while infrequently used ones are evicted when the cache fills.

**Comparison with the Zynq FPGA Manager.** The standard Linux FPGA Manager interface on Zynq uses the PCAP port, which requires the PS ARM cores to coordinate with the ARM Trusted Firmware (ATF) and the Platform Management Unit (PMU) via a sequence of register reads and writes to the Configuration Security Unit (CSU) registers. This coordination: (a) occupies the PS during the entire reconfiguration window, blocking application execution; (b) achieves substantially lower effective bitstream transfer rates than the ZyCAP DMA path (approximately 10–100 MB/s in practice, compared to ZyCAP's rated 400 MB/s); and (c) requires a clean teardown and re-initialisation of the Linux device driver for each RM load, adding latency overhead. ZyCAP eliminates all three limitations through its DMA-based architecture.

### 2.5.3 ZyPR Toolflow: Optimisation Levels and Build Pipeline

ZyPR exposes a tiered optimisation model with three main levels, balancing compile time and quality-of-results:

**O0 — Soft-core execution:** At this optimisation level, operators are not mapped to hardware accelerators at all. The dataflow graph is executed entirely on the on-chip soft-core processor (or ARM PS). No DPR infrastructure is synthesised. This level is used during early-stage functional verification, where the overhead of hardware synthesis and implementation would impede rapid iteration.

**O1 — Fixed PR pages with Hoplite-BF interconnect:** At O1, each operator in the dataflow graph is mapped to a fixed-size Reconfigurable Partition page, interconnected by the Hoplite-BF NoC (the same interconnection fabric used in HPR and described in §2.4.3). Each page is independently synthesised and implemented, enabling parallel compilation. Operators can be swapped at runtime via ZyCAP without halting operators in other pages — the NoC credit-drain protocol handles safe isolation before each bitstream load. O1 provides a good balance between compile time and runtime reconfigurability, and is the primary target for iterative edge development.

**O3 — Monolithic Vitis compilation:** At O3, the full design is compiled as a single monolithic Vivado implementation run, treating all operators as statically instantiated components rather than reconfigurable modules. No partial bitstreams are generated. This level produces the highest achievable clock frequency and resource efficiency — equivalent to a conventional non-DPR FPGA design — at the cost of full compile time and loss of runtime reconfigurability. O3 is intended as the final production compilation step once the design has been validated at O1.

**Build pipeline.** The ZyPR build pipeline automates the following sequence, driven by a single user-provided `spec.json` configuration file that lists operator sources, target device, clock constraint, and optimisation level:

1. **Verilog parsing (Pyverilog):** The operator's top-level Verilog or SystemVerilog interface is parsed using Pyverilog [26] to extract port declarations. This step identifies the required handshake signals, data widths, and clock/reset connections that must be preserved when the operator is placed into a PR slot.

2. **EDA backend invocation (Edalize):** The open-source Edalize Python library [27] drives Vivado in batch mode, invoking synthesis and implementation runs for each operator. Edalize generates the tool-specific project files and invocation scripts, abstracting the designer from Vivado's internal TCL project structure.

3. **TCL injection for RP/RM definition:** ZyPR injects custom TCL scripts into the Vivado implementation run to define the Reconfigurable Partition bounding box (the Pblock) and associate the operator's synthesised netlist with the RM role. This step automates what a designer would otherwise perform manually in the Vivado GUI — the most error-prone and time-consuming manual step in a conventional DPR workflow.

4. **PetaLinux DTBO and driver generation:** For the runtime deployment on a Zynq running Linux, ZyPR generates the device-tree overlay (`.dtbo`) file that describes the PR regions to the Linux FPGA Manager, and a set of kernel module driver files that expose each PR slot as a character device accessible through the standard `/dev/fpga*` interface. The designer does not need to write or modify any device-tree source.

5. **Runtime manager integration:** ZyPR generates a Python runtime library that provides a high-level API for operator swap operations. A call such as `manager.load_rm("conv_1x1", slot=0)` triggers the full ZyCAP-managed reconfiguration sequence, abstracts the underlying DTBO driver calls, and blocks (or returns a future handle, in non-blocking mode) until confirmation of successful reconfiguration.

**Chained region support.** A distinguishing feature of ZyPR relative to simpler single-RP flows is its support for *chained PR regions*: multiple reconfigurable partitions whose interface signals form a directed pipeline. In a chained configuration, operator A in slot 0 feeds its output directly into operator B in slot 1, without routing the signal through the NoC. ZyPR's TCL injection handles the interface constraints at the inter-slot boundary, ensuring that the routing of the chain connection is preserved irrespective of which operator is currently loaded in each slot.

### 2.5.4 Performance Benchmarks and Comparison

The ZyPR paper reports experimental results on a Zynq-7000 SoC running Linux. Key findings include:

- **ZyCAP reconfiguration throughput**: Measured at approximately 350–390 MB/s sustained throughput for typical partial bitstream sizes (4–48 MB), approaching the rated 400 MB/s ceiling. The Linux FPGA Manager baseline achieved 8–12 MB/s on the same device, confirming the order-of-magnitude throughput advantage of the DMA-based ZyCAP path.
- **Reconfiguration time**: For a representative partial bitstream of 12 MB (typical of a medium-complexity convolution accelerator on a Zynq-7020), ZyCAP's measured reconfiguration time was approximately 31 ms, compared to approximately 280 ms for the Linux FPGA Manager — a 9× improvement.
- **Non-blocking benefit**: By overlapping DRAM-to-ICAP DMA with PS-side computation, the effective reconfiguration overhead (as visible to the application) was reduced further, approaching the memory bandwidth limit rather than the compute limit.

### 2.5.5 Relevance to the Present Work and Implementation Note

ZyCAP is the most architecturally proximate existing work to the ICAP controller infrastructure described in Chapter 4. The design principles — DMA-based bitstream transfer, interrupt-signalled completion, DRAM-based bitstream staging, and decoupler-based isolation — map directly to the intended autonomous reconfiguration flow for the Arty A7-35T described in §4.7. Specifically:

- The ZyCAP GP-port control interface corresponds to the intended role of the `system_wrapper` module in the present work: receiving a reconfiguration trigger (in ZyCAP from the PS, in the present work potentially from the VexRiscv soft-core) and orchestrating the ICAP write sequence.
- The ZyCAP HP-port DMA corresponds to the intended DDR-to-ICAP path described as the "next step" in §4.7: reading partial bitstreams from DDR memory and streaming them to the ICAP primitive.
- The ZyCAP LRU DRAM cache corresponds conceptually to the DDR partial bitstream storage pool that is the target of the second stage roadmap item in §4.7.

The key distinction between ZyCAP's deployment context and the present system is platform: ZyCAP is designed for Zynq SoCs (where the ARM PS, PCAP, DDR controller, and ICAP all exist on a single chip and are connected by high-bandwidth AXI switched interconnect), whereas the Arty A7-35T is a pure FPGA platform with no embedded ARM core and with ICAP as the only available configuration port. The Zynq PS and PCap are replaced by the VexRiscv soft-core and the `system_wrapper` ICAP controller — a fundamentally equivalent architectural role implemented in PL logic rather than in hard IP.

> **Implementation Note:** Hands-on use of ZyPR was not achieved during this project. The ZyPR toolflow is dependent on a single proprietary tool for which an educational licence was required; the application for that licence was unsuccessful. A manual workaround — running the underlying Pyverilog and Edalize scripts by hand and treating their intermediate outputs as correct — was explored, but the absence of the full ZyPR integration prevented reliable generation of the DTBO and driver artefacts, rendering the resulting outputs unverifiable. The approach was therefore discontinued. ZyPR and ZyCAP are covered in this report through literature analysis of the published paper [24][25].

---

## 2.6 Other Related Works

The five works reviewed in this section are each independently relevant to the system presented in this report. Unlike the toolflow papers of §§2.3–2.5, which collectively address the *how* of building DPR systems, these works address the *why* and *what* — the application motivations and architectural precedents that directly informed the design choices documented in Chapters 3 and 4.

### 2.6.1 DML: Dynamic Partial Reconfiguration with Scalable Task Scheduling for Multi-Application FPGAs

The DML framework [28] (published in IEEE Transactions on Computer-Aided Design, 2022) addresses the multi-application scheduling problem that arises when a single physical FPGA must serve as a shared resource for multiple concurrent software applications, each of which submits hardware acceleration requests and expects results within bounded latency.

DML models each application as a *task graph*: a directed acyclic graph (DAG) in which nodes represent hardware functions to be executed and edges represent data dependencies. Tasks are mapped to a pool of identically sized Reconfigurable Partitions, and the DML runtime scheduler — implemented in software — determines the order of RM loads based on a priority function that accounts for task deadline, data dependency resolution, and RP availability. When no RP is free for a high-priority task, the scheduler employs a *preemption* mechanism: it evicts the RM currently occupying the target RP (saving its output state if necessary), loads the higher-priority task's RM, and re-queues the preempted task.

The scalability claimed in DML's title refers to the property that the scheduling algorithm's computational complexity grows linearly with the number of tasks and RPs, rather than exponentially (as would be the case for an optimal schedule-search formulation). This linear scalability is achieved by decomposing the scheduling problem into independent per-RP queues managed by per-RP arbiters, with a global priority sorter mediating between arbiters when multiple queues compete for the same RM.

**Relevance:** DML describes the scheduling layer directly above the controller layer implemented in this project. The `system_wrapper` ICAP controller described in Chapter 4 corresponds to the RP-level bitstream loader that DML's arbiter would invoke. A future extension of the present work — specifically the CFU library management problem of selecting which CFU RM to load based on the current instruction mix in the RISC-V pipeline — maps naturally to a single-RP instance of the DML scheduling framework.

### 2.6.2 AMPER-X: Adaptive Mixed-Precision RISC-V Core for Embedded Applications

AMPER-X [29] (IEEE Transactions on Circuits and Systems, 2024) is the most closely related prior work to the system described in this report in terms of its primary thesis. The paper demonstrates an adaptive mixed-precision RISC-V core in which the arithmetic unit — specifically, the multiply-accumulate engine — is designated as a Reconfigurable Partition. At runtime, the active precision format for arithmetic operations (8-bit integer, 16-bit floating-point bfloat16, or 32-bit single-precision float) is selected by loading one of three pre-compiled Reconfigurable Modules into the RP via partial reconfiguration.

This precision-switching architecture is motivated by embedded inference workloads in which different layers of a neural network benefit from different numerical precisions: early convolutional layers can often operate in 8-bit integer arithmetic without loss of accuracy, while later fully-connected layers may require 16- or 32-bit precision to preserve activation dynamic range. By associating each layer's inference pass with the appropriate RM load, AMPER-X achieves a balance between inference throughput (higher for lower precision) and accuracy (higher for higher precision) that cannot be achieved by a monolithic fixed-precision implementation.

The AMPER-X implementation uses a standard Xilinx DFX Decoupler at the boundary between the static RISC-V core and the precision-switchable arithmetic RP, and manages reconfiguration through PCAP-based bitstream loading on a Zynq-based test platform. The measured reconfiguration overhead for a precision switch was reported as approximately 45 ms for the smallest RM (8-bit integer mode), which the authors characterised as acceptable for the inter-layer granularity of neural network inference.

**Relevance:** AMPER-X provides direct architectural precedent for the CFU partitioning strategy described in Chapter 4. The AMPER-X system's separation of a fixed static RISC-V core from a dynamically swappable arithmetic RM is structurally equivalent to the present work's separation of the fixed VexRiscv SoC (in `digilent_arty`) from the dynamically swappable `cfu_compute` RM. The key distinction is that AMPER-X operates on a single operator (the arithmetic unit) with a small, fixed set of precision configurations, while the present work targets a more general CFU library with functionally distinct accelerator modules (byte manipulation, fixed-point multiply-accumulate, and custom DSP templates) rather than precision variants of the same function. Both systems use a DFX Decoupler for isolation, confirming that this is the canonical solution for RISC-V–RP interface isolation.

### 2.6.3 RV-CAP: Enabling Dynamic Partial Reconfiguration for FPGA-Based RISC-V SoC

RV-CAP [30] (published at IEEE FPL 2021) is a direct architectural predecessor to the present work. It demonstrated the integration of ICAP-based partial reconfiguration management into a VexRiscv soft-core SoC, enabling the CPU itself to initiate and monitor RM loads without host intervention. The contribution of RV-CAP is specifically the *control-plane integration*: defining a memory-mapped register interface through which the VexRiscv (or any RISC-V soft-core with access to the memory map) can write bitstream addresses to the ICAP controller, trigger the DMA transfer, and poll a status register for completion.

The RV-CAP system was implemented on a Xilinx Artix-7-based board (closely matching the Arty A7-35T used in this project) and validated with a set of synthetic RM benchmarks. Reconfiguration latency was measured at approximately 28 ms for a 4 MB partial bitstream, using an SRAM-backed bitstream buffer local to the PL fabric. The authors noted that the principal bottleneck in their system was the SRAM access bandwidth (limited to approximately 140 MB/s for the on-chip BRAM-based buffer used), rather than the ICAP's rated 400 MB/s — motivating the use of off-chip DDR memory with DMA as the path to maximum throughput.

**Relevance:** RV-CAP is the most direct hardware-architecture precedent for the `system_wrapper` ICAP controller described in Chapter 4. The register interface design, the decouple-trigger-monitor control flow, and the STARTUPE2 EOS monitoring strategy described in the present work draw on the design patterns established in RV-CAP. The present work extends RV-CAP's architecture by integrating it within the CFU Playground framework, adding the `recon_counter` EOS-based latency measurement, and targeting the CFU interface partition specifically — rather than the generalised RM slot used in RV-CAP.

### 2.6.4 DORA: A Low-Latency Partial Reconfiguration Controller

DORA [31] (IEEE FPT 2024) presents a hardware-only partial reconfiguration controller — implemented entirely in FPGA PL without any embedded processor — that achieves sub-millisecond reconfiguration latency for small partial bitstreams stored in on-chip BRAM. Its design motivation is latency-sensitive applications (such as real-time control systems and high-frequency trading accelerators) in which the multi-millisecond reconfiguration times typical of DMA-based controllers are unacceptable.

DORA achieves low latency by preloading partial bitstreams into on-chip BRAM at system startup and streaming them to the ICAP primitive through a purpose-built FSM controller that operates at the maximum ICAP clock rate (typically 100 MHz for 7-series devices). For partial bitstreams small enough to fit in on-chip BRAM (under approximately 4 MB for a small RP), DORA achieves reconfiguration times of 0.5–2 ms — roughly an order of magnitude faster than the SRAM-based approach in RV-CAP and two orders of magnitude faster than the Linux FPGA Manager baseline.

The primary limitation of DORA is capacity: on-chip BRAM is a scarce resource, and preloading a large library of partial bitstreams would quickly exhaust the available BRAM budget. DORA's authors acknowledge this and position the controller as appropriate for systems with a small RM library (fewer than four or five modules) and stringent latency requirements, as opposed to large-library systems that must tolerate higher reconfiguration latency in exchange for off-chip storage capacity.

**Relevance:** DORA establishes the hardware lower bound on reconfiguration latency for 7-series FPGAs — approximately 0.5 ms for small bitstreams from on-chip BRAM, versus 28–45 ms for DMA-based off-chip approaches. This bound informs the latency expectations for the `recon_counter` measurement described in Chapter 4. The present work does not implement a DORA-class controller (the primary reconfiguration path is JTAG-based or planned to be DDR-DMA-based), but the DORA results provide a reference point for evaluating the headroom available for autonomous full-throughput reconfiguration in future iterations.

### 2.6.5 ACNNE: Adaptive Convolution Engine for CNN Acceleration with DPR

ACNNE [32] (IEEE TCAS-II, 2024) targets a domain-specific application of DPR: accelerating convolutional neural network inference on FPGA by adaptively selecting the hardware configuration of the convolution engine based on the kernel size and feature map dimensions required by each layer. The system defines a family of convolution engine RMs — each optimised for a different kernel size (1×1, 3×3, 5×5) — and loads the appropriate RM at the beginning of each layer's inference pass.

The ACNNE architecture is implemented on a Zynq-7000 series board (ZedBoard, XC7Z020) and uses PCAP-based reconfiguration managed by a bare-metal ARM PS application. Resource utilisation measurements report that the DPR-based ACNNE design uses approximately 40% fewer LUTs and DSP slices compared to a monolithic implementation that instantiates all three convolution engine variants simultaneously — a direct demonstration of the hardware time-multiplexing benefit claimed in §1.1 of this report.

Reconfiguration overhead in ACNNE is reported at approximately 36 ms per RM swap, comparable to the ZyCAP baseline measurements in §2.5. The authors note that for convolutional networks with moderate layer counts (ResNet-style architectures with 16–50 convolutional layers), the reconfiguration overhead constitutes less than 5% of total inference time — confirming that DPR-based hardware multiplexing is practically viable for this application class.

**Relevance:** ACNNE provides empirical validation for the resource-reduction argument that motivates the use of CFU swapping in the present work. The 40% area reduction reported for a three-variant convolution engine library has a direct analogue in the CFU domain: a CFU library containing byte-manipulation, multiply-accumulate, and DSP template modules requires significantly less area when implemented as a single reconfigurable partition than when all three are instantiated simultaneously in the static fabric. ACNNE also serves as a benchmark for expected reconfiguration latency numbers when evaluated against the `recon_counter` measurements described in Chapter 6.

---

## 2.7 Summary and Synthesis

The literature reviewed in this chapter covers a forty-year arc of DPR research and practice, from the XC6200's register-mapped partial cell access in 1997 to the sub-millisecond BRAM-backed controllers and automated edge toolflows of 2024. The following observations synthesise the key findings with respect to the system described in this report.

**On compile-time:** RapidStream and HPR independently confirm that island-based parallel compilation — enabled by the latency-insensitive property of dataflow designs and by RapidWright's bitstream-level stitching infrastructure — can reduce FPGA compile times by one to two orders of magnitude relative to monolithic Vivado flows. Neither approach has been directly applied in this project due to toolflow inaccessibility (RapidStream) and platform incompatibility (HPR), but both provide the theoretical framework for extending the present implementation toward production-grade compilation automation.

**On runtime management:** ZyCAP/ZyPR and DML collectively characterise the state of the art in runtime reconfiguration management. ZyCAP's 400 MB/s DMA-based reconfiguration path represents the practical performance ceiling on Zynq SoC platforms, while DML's multi-application scheduler represents the software-side framework that would be needed to manage a diverse CFU library across concurrent workloads. Both set design targets for the autonomous reconfiguration roadmap outlined in §4.7.

**On RISC-V integration:** AMPER-X and RV-CAP directly precede this work in the specific domain of RISC-V core DPR integration. AMPER-X establishes the DFX Decoupler as the correct isolation primitive at the processor-RP interface, and RV-CAP establishes ICAP-based reconfiguration as viable on Artix-7 class devices from a VexRiscv control plane. The present work occupies the intersection of both precedents, integrating them within the structured CFU Playground framework and extending them to the CFU-specific interface constraints.

**On application validation:** ACNNE confirms that DPR-based hardware time-multiplexing achieves the predicted 30–45% area reduction for small accelerator libraries on Zynq-class devices, and that reconfiguration overhead of 30–45 ms per swap is compatible with workloads whose computation time per region significantly exceeds this figure. These benchmarks provide a credible baseline against which the reconfiguration latency measurements reported in Chapter 6 can be compared.

---
