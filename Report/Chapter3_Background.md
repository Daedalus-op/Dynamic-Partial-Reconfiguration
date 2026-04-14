# Chapter 3: Background and Case Study

---

## 3.1 FPGA Partial Reconfiguration Fundamentals

The design and implementation decisions described in Chapter 4 are grounded in a set of hardware primitives, configuration protocols, and floorplanning constraints that are specific to AMD Xilinx 7-series FPGAs. This section reviews those fundamentals at the level of detail required to understand the system architecture.

### 3.1.1 Configuration Frames and the Frame Address Register

The entire configuration state of an Xilinx 7-series FPGA — the logic function of every LUT, the routing state of every switchbox multiplexer, and the initial contents of every BRAM — is encoded in a sequence of *frames*. Each frame is a fixed-width column of configuration bits that extends the full height of one clock region (50 CLB rows, for the Artix-7 family). Frames are identified by a three-field *Frame Address Register* (FAR) value comprising a block type field (indicating whether the frame addresses CLB, BRAM content, or BRAM interconnect resources), a major address (the column index within the block type), and a minor address (the position within the column). Both devices used in this project — the XC7A100T on the Arty A7-100T and the XC7A35T on the Arty A7-35T — share this frame-addressed configuration model, differing only in the total number of configuration frames.

Partial Reconfiguration is made possible by the frame-addressed nature of this configuration space. A *Reconfigurable Partition* (RP) is defined by a rectangular bounding box on the device's floorplan — specified as a Pblock constraint within the Vivado DFX flow — that encloses complete columns of each resource type (CLBs, BRAMs, DSPs) present within its area. The set of FAR values corresponding to the frames within this bounding box is fixed at design time and embedded in the partial bitstream header. When a partial bitstream is subsequently written to the device's configuration memory, only the frames whose FAR values fall within this set are overwritten; frames outside this set — representing the static partition — are guaranteed to remain unmodified at the hardware level, because the configuration access port terminates its write sequence precisely at the last frame in the partial bitstream's address range.

It is this hardware guarantee — that an active write to the configuration memory of one address range cannot affect the contents of any other range — that makes non-disruptive partial reconfiguration possible. The static partition's logic, including the processor subsystem, interconnect, and reconfiguration controller, continues to operate normally while the write to the RP frames is in progress.

### 3.1.2 The DFX Decoupler IP

Although the frame-addressed configuration model ensures that the static logic remains electrically undisturbed during partial reconfiguration at the configuration memory level, there remains a functional hazard at the logic level: the interface signals connecting the static partition to the RP may carry undefined or toggling values during the window in which the RP's logic cells are being overwritten. This arises because a frame write propagates through the RP's CLBs in a non-deterministic order — some cells may have already been updated to the new configuration while others retain the old — and the resulting glitch activity on the RP's output ports can corrupt the static partition's internal state.

The AMD DFX Decoupler IP core addresses this hazard by interposing a set of programmable isolation registers between the static and reconfigurable sides of the partition interface. When a register named `decouple` is asserted high through an AXI-Lite control write (or, in the present system, through a direct wire connection), the Decoupler drives all signals from the RP side to the static side to pre-configured default values — typically zero or the idle state of the relevant handshake signal — while simultaneously holding the signals from the static side to the RP side at their own defaults. The RP's outputs are thereby electrically clamped and the static partition's inputs receive well-defined constant values for the duration of the reconfiguration window, preventing any glitch activity from propagating.

When `decouple` is de-asserted, the Decoupler becomes transparent, passing all signals bidirectionally with negligible and fixed latency. The transition from clamped to transparent must occur only after EOS (End-of-Startup) has been re-asserted by the STARTUPE2 primitive, signalling that the configuration memory write has completed and the newly loaded logic has been fully initialised. The correct sequencing of `decouple` assertion, bitstream transfer, EOS polling, and `decouple` release constitutes the core of the reconfiguration control protocol implemented in the `system_wrapper` module.

### 3.1.3 Static and Reconfigurable Partitions on the Arty A7-35T

The primary CFU Playground DFX system targets the Arty A7-35T, which is based on the Xilinx XC7A35T (xc7a35ticsg324-1L, industrial speed grade). The XC7A35T provides 20,800 six-input LUTs, 41,600 flip-flops, 50 BRAM tiles (each 36 Kb), 90 DSP48E1 slices, and a single ICAP primitive. Despite its smaller resource budget compared to the XC7A100T — which was used for the DFX tutorial baseline (§4.6) — the XC7A35T provides sufficient fabric to host the complete LiteX SoC alongside the reconfigurable CFU partition. The constrained resource budget of the Artix-7 family — particularly relative to the Zynq-7020 on the PYNQ-Z2, which additionally provides a hardened ARM dual-core PS with 512 KB on-chip memory — directly motivated the multi-platform implementation strategy described in §4.5.

For the DFX-enabled design targeting the XC7A35T, the static partition is defined to include the complete VexRiscv LiteX SoC (the `digilent_arty` wrapper, which accounts for the majority of the device's LUT and BRAM consumption), the `system_wrapper` reconfiguration controller, the `recon_counter` latency measurement module, and all board-level I/O logic including DDR3 SDRAM, QSPI flash, and UART interfaces. The Reconfigurable Partition, designated the `cfu_compute` slot, is constrained to a smaller Pblock that must provide sufficient CLBs and DSP slices to accommodate the largest anticipated CFU Reconfigurable Module (RM), while respecting the placement requirements of the static partition's surrounding logic.

The floorplanning requirement that the RP's Pblock must contain only complete resource columns — a consequence of the frame-addressed configuration model described in §3.1.1 — constrains the minimum and permissible sizes of the `cfu_compute` Pblock significantly. On Artix-7 devices, the column granularity for CLBs is one CLB wide and 50 rows tall per clock region. The selected Pblock for `cfu_compute` was iteratively refined in the Vivado DFX flow until all RMs (including `donut.v`, `example.v`, and `dse_template.v`) could be placed and routed within the designated area without overflowing into the static partition's reserved columns, and without generating timing violations on the critical path through the DFX Decoupler's isolation registers.

---

## 3.2 CFU Playground and VexRiscv

### 3.2.1 The CFU Playground Framework

The CFU Playground is an open-source hardware/software co-design framework developed by Google to facilitate the rapid design, integration, and benchmarking of Custom Function Units (CFUs) attached to a RISC-V soft-core processor [33]. Its primary purpose is to lower the entry barrier for hardware acceleration research by providing a complete, pre-validated RISC-V SoC baseline — ready to run on commodity FPGA development boards — that the designer can augment with custom hardware accelerators without modifying the processor pipeline or the SoC infrastructure.

The framework provides: (a) the LiteX SoC generator, which produces synthesisable Verilog for the processor, memory controllers, UART, and peripheral interconnect from a board-targeted Python script; (b) the VexRiscv soft core, pre-configured with Wishbone instruction/data buses and a CFU co-processor port; (c) a firmware library enabling RISC-V software to invoke CFU operations through custom instructions encoded in the CUSTOM0 opcode space; and (d) a suite of benchmark applications — including keyword spotting (KWS), matrix multiply, and convolutional inference primitives — that exercise the CFU interface and report throughput in operations per second. When a CFU is connected, the firmware calls are dispatched through the processor's CFU port to the hardware implementation and return the hardware-computed result to the software; when no CFU is present, the framework's software reference implementations are invoked instead, providing a direct baseline for measuring hardware acceleration speedup.

For the purposes of the present work, the CFU Playground's significance lies not in its benchmarking infrastructure but in the SoC structure it produces. The LiteX-generated `digilent_arty` Verilog wrapper for the Arty A7-35T provides a complete, timing-closed, synthesisable SoC that serves as the static partition in the DFX design. This substantially reduces the engineering effort required to construct a RISC-V co-processor environment suitable for DFX experimentation, since the DDR3 controller, QSPI flash driver, UART, and VexRiscv pipeline are all provided as a pre-validated unit rather than being designed from scratch.

### 3.2.2 VexRiscv: Architecture and CFU Port

VexRiscv [34] is an RV32I soft-core processor implemented in SpinalHDL and synthesised to Verilog as part of the CFU Playground build process. It implements a four-stage in-order pipeline — Fetch, Decode, Execute, Writeback — with Wishbone-compatible instruction and data memory interfaces. Within the CFU Playground configuration, VexRiscv is extended with a CFU co-processor port that exposes a set of streaming handshake signals directly from the Execute stage.

The CFU port interface is defined by the following signals:

| Signal | Direction (processor → CFU) | Width | Description |
|---|---|---|---|
| `cmd_valid` | Output | 1 | Asserted when the processor has a valid CFU command to dispatch |
| `cmd_ready` | Input | 1 | Asserted by the CFU when it can accept a new command |
| `cmd_payload_function_id` | Output | 10 | Selects the specific operation within the CFU implementation |
| `cmd_payload_inputs_0` | Output | 32 | First 32-bit operand (rs1 value from the register file) |
| `cmd_payload_inputs_1` | Output | 32 | Second 32-bit operand (rs2 value from the register file) |
| `rsp_valid` | Input | 1 | Asserted by the CFU when a response is ready |
| `rsp_ready` | Output | 1 | Asserted by the processor when it is ready to accept the response |
| `rsp_payload_outputs_0` | Input | 32 | The 32-bit result, written into the destination register (rd) |

The handshake protocol operates in the style of AXI4-Stream: a transaction is accepted when both `cmd_valid` and `cmd_ready` are simultaneously asserted, and a response is consumed when both `rsp_valid` and `rsp_ready` are simultaneously asserted. The processor pipeline stalls at the Execute stage from the moment a CUSTOM0 instruction is dispatched (i.e., `cmd_valid` is asserted) until `rsp_valid` is returned by the CFU, at which point the result is written into the destination architectural register and the pipeline is released. This stall behaviour ensures functional correctness for any CFU that is not pipelined relative to the processor, at the cost of throughput equal to one CFU operation per dispatch-to-response cycle count.

The `function_id` field encodes both the *funct3* field (bits [2:0]) and the immediate field of the CUSTOM0 instruction encoding (bits [9:3]), providing up to 1,024 distinct addressable operations per CFU module. In practice, each RM in the present system uses a small number of `function_id` values — for example, `example.v` responds to `function_id = 0` (byte sum), `function_id = 1` (byte swap), and `function_id = 2` (bit reverse) — with unused IDs returning a zero result.

### 3.2.3 The CFU–RP Interface in the DFX Context

In a standard CFU Playground deployment, the `Cfu` module is instantiated directly within the processor SoC and connected permanently to the VexRiscv CFU port. For DFX operation, this connection must be restructured: the `Cfu` module becomes a static wrapper, within which the DFX Decoupler and the RP instantiation reside. The VexRiscv CFU port connects to the *static side* of the Decoupler (the `s_*` ports), and the *reconfigurable-partition side* (the `rp_*` ports) connects to the `cfu_compute` module within the RP. This three-level hierarchy — processor port → Decoupler → `cfu_compute` — is the key structural adaptation that transforms a standard CFU Playground design into a DFX-capable one, and is described in full in §4.3.

---

## 3.3 The ICAP and STARTUPE2 Primitives

### 3.3.1 ICAP on 7-Series FPGAs

The Internal Configuration Access Port (ICAP) is a hard-macro primitive embedded in the fabric of all Xilinx 7-series FPGAs. It provides a synchronous 32-bit-wide write interface through which configuration frames can be written to the device's configuration memory from logic executing within the PL fabric itself, without requiring access to the external JTAG, SelectMAP, or SPI configuration interfaces. On all 7-series devices except the smallest family members, ICAP is available as the `ICAP_7SERIES` primitive and can be clocked at up to 100 MHz, yielding a theoretical maximum bitstream write throughput of 400 MB/s (32 bits × 100 MHz × 8 bits per byte).

The ICAP interface signals relevant to partial reconfiguration are:

| Signal | Direction | Width | Description |
|---|---|---|---|
| `CLK` | Input | 1 | Clock input; must be a non-inverted, stable clock |
| `CE` | Input | 1 | Chip enable (active low on 7-series, denoted `CSIB`) |
| `WRITE` | Input | 1 | Read/write select (active low write, denoted `RDWRB`) |
| `I` | Input | 32 | Configuration data word to write |
| `O` | Output | 32 | Configuration readback data |

A partial bitstream write sequence proceeds as follows: the ICAP controller drives `CSIB` low and `RDWRB` low to enable write mode, and then presents the 32-bit configuration words — beginning with the synchronisation word `0xAA995566` and continuing through the FAR, FDRI, and frame data sequences described in §3.1.1 — at the `I` input on consecutive rising clock edges. The ICAP accepts one word per clock cycle. At the conclusion of the sequence, a DESYNC command is issued (`0x0000000D` to the CMD register), `CSIB` is de-asserted, and `RDWRB` is returned high.

An important implementation detail specific to 7-series ICAP is the bit-reversal requirement: configuration words must be presented to the ICAP in bit-reversed byte order relative to the bit ordering used in the `.bit` file stored on the host or flash memory. Each 32-bit word must have its bytes individually bit-reversed (i.e., bit 7 of byte 0 becomes bit 0, bit 6 becomes bit 1, and so forth, independently for each of the four bytes). Failure to apply this reversal results in malformed frames being written to the configuration memory, producing either a configuration error or a silently incorrect fabric function. The `system_wrapper` module's ICAP controller accounts for this byte-level bit reversal in its data path.

### 3.3.2 The STARTUPE2 Primitive and the EOS Signal

The `STARTUPE2` (Startup) primitive is a hard-macro present in 7-series FPGAs that provides access to several configuration-phase signals not otherwise exposed to PL logic. Of these, the *End-of-Startup* (EOS) output signal is the one used in the present work.

EOS is asserted high by the device's configuration state machine at the conclusion of the device's startup sequence — the series of events that follows a successful full or partial bitstream load and that initialises PLLs, resets flip-flops, and propagates GSR (Global Set/Reset) to all registered elements in the newly configured region. Specifically, EOS transitions from high to low at the moment the ICAP begins accepting the partial bitstream write sequence, and returns to high once the startup sub-sequence for the reconfigured partition is complete and its logic is fully operational.

This behaviour makes EOS a precise hardware signal for delineating the reconfiguration window: the falling edge of EOS marks the start of reconfiguration and the rising edge marks the point at which the new RM's logic is safe to use. The `recon_counter` module exploits this property directly: it instantiates `STARTUPE2`, connects its `CLK` input to the system clock, and monitors the `EOS` output. A two-state FSM transitions from `IDLE` to `RECON` on the falling edge of `EOS`, increments a 32-bit counter on every clock cycle while in the `RECON` state, and returns to `IDLE` on the rising edge of `EOS`. The resulting counter value, expressed in clock cycles, yields the reconfiguration duration in physical time as `counter × (1 / f_clk)` — at 100 MHz, one counter tick corresponds to 10 ns. This counter value is monitored externally through an ILA (Integrated Logic Analyser) core connected to its output.

The `recon_counter.v` implementation is shown below for reference:

```verilog
module recon_counter (
  input clk,
  output eos
);

(* KEEP = "true" *)
wire preq;

STARTUPE2 STARTUPE2_inst (
   .EOS(eos),          // Active-high End-of-Startup output
   .CLK(clk),          // User start-up clock input
   .GSR(1'b0),
   .GTS(1'b0),
   .PACK(1'b0),
   .USRCCLKO(1'b0),
   .USRCCLKTS(1'b1),
   .KEYCLEARB(1'b1),
   .USRDONEO(1'b1),
   .USRDONETS(1'b0)
);

(* KEEP = "true" *)
reg [31:0] counter = 0, counter_next;

(* KEEP = "true" *)
localparam IDLE = 0, RECON = 1;

(* KEEP = "true" *)
reg state = 0, next_state;

always @(*) begin : counter_state
  case (state)
  IDLE: begin
    next_state   = (!eos) ? RECON : IDLE;
    counter_next = counter;
  end
  RECON: begin
    next_state   = (eos) ? IDLE : RECON;
    counter_next = counter + 1;
  end
  default: begin
    next_state   = IDLE;
    counter_next = counter;
  end
  endcase
end

always @(posedge clk) begin : counter_switch
  state <= next_state;
  if (preq)
    counter <= 32'd0;
  else
    counter <= counter_next;
end

ila_0 ila(.clk(clk), .probe0(counter));

endmodule
```

The `(* KEEP = "true" *)` attributes on the state registers and counter prevent Vivado's synthesis engine from optimising away these signals, which would otherwise be candidates for removal as they drive only the ILA probe — a signal that Vivado's dataflow analyser does not traverse in its dead-code elimination pass.

### 3.3.3 Partial Bitstream Structure

A well-formed partial bitstream for a 7-series Reconfigurable Partition consists of the following ordered fields [5]:

1. **Padding words** (0xFFFFFFFF): A series of dummy words that allow the configuration logic to synchronise its input shift register before processing begins.
2. **Synchronisation word** (0xAA995566): A fixed magic constant that the configuration state machine uses to identify the beginning of a valid configuration stream, distinguishing it from random device bus activity.
3. **Type-1 packet header: NOP** (0x20000000): A no-operation packet that advances the state machine without performing a register write.
4. **Type-1 packet: IDCODE write** — writes the device's identity code into the IDCODE register, which the state machine validates as a consistency check before proceeding with frame writes.
5. **Type-1 packet: FAR initialisation** — writes the starting Frame Address Register value corresponding to the first frame of the Reconfigurable Partition's address range.
6. **Type-1 packet: FDRI write command** — specifies that the next *N* words are configuration frame data to be written starting at the current FAR value.
7. **Frame data words** (N × 32-bit): The actual configuration frame contents for the RP, sequentially written starting at the FAR-specified address and incrementing the internal FAR counter with each frame.
8. **CRC word** — the running CRC over the preceding configuration data stream, checked by the state machine to detect transmission errors.
9. **RCRC packet** — resets the internal CRC register to a known state after the frame data.
10. **Shutdown / DGHIGH / GRESTORE sequence** — places the newly configured logic into the startup state, asserts GSR to initialise all flip-flops in the RP, and then releases GSR, triggering the startup sequence that culminates in the EOS rising edge.
11. **DESYNC word** (0x0000000D to CMD) — instructs the configuration state machine to exit configuration mode and return to normal operation.

The total partial bitstream size for the `cfu_compute` partition in the present design is determined by the area of the Pblock's bounding box: specifically, by the number of CLB, BRAM, and DSP columns within the box, multiplied by the minor frame count per column and the full device height per clock region. For the Pblock dimensions used in this project, the resulting partial bitstream sizes for the three RMs range from 352 KB to 420 KB, reflecting minor differences in the frame padding introduced by Vivado for different RM implementations targeting the same Pblock.

---

## 3.4 System Architecture Overview

### 3.4.1 Top-Level Module Decomposition

The complete DFX-enabled system is assembled in a top-level Verilog module (`top.v`) that instantiates two principal sub-modules at the same hierarchy level, connected by a single shared wire — the `decouple` signal:

```
top (top.v)
 ├── system_wrapper     — Reconfiguration controller (static partition)
 │    ├── ICAP port signals (CSIB, I, O, RDWRB)
 │    ├── QSPI flash interface
 │    ├── pr_switch input (board button)
 │    └── decouple output wire
 │
 └── digilent_arty      — VexRiscv LiteX SoC (static partition)
      ├── clk100, cpu_reset
      ├── serial_tx / serial_rx (UART to host)
      ├── user_led[3:0]
      ├── DDR3 SDRAM interface
      └── decouple input → cfu.v → DFX Decoupler → cfu_compute (RP)
```

The `ICAP_7SERIES` primitive is instantiated at the board level (via Vivado block-design constraints) with its control and data ports exposed as top-level I/O signals (`ICAP_csib`, `ICAP_i`, `ICAP_o`, `ICAP_rdwrb`), which are in turn connected to `system_wrapper`. Although the ICAP is a hard macro within the device fabric and is not an external I/O in the traditional sense, treating its signals as top-level ports in the Vivado project structure simplifies the DFX flow's constraint management and keeps the ICAP instantiation within the static partition's scope.

The `decouple` wire is the sole inter-module signal connecting `system_wrapper` to `digilent_arty`. This deliberate minimisation of the static-to-static coupling at the top level reflects the architectural principle that the reconfiguration controller and the processor SoC are logically independent subsystems: the SoC does not need to be aware of the controller's internal state beyond knowing whether its CFU partition is currently isolated.

### 3.4.2 Signal Flow from Processor to Reconfigurable Partition

The complete signal path from a RISC-V custom instruction to the reconfigurable CFU logic traverses the following hierarchy:

1. **VexRiscv Execute stage** dispatches a CUSTOM0 instruction. The `cmd_valid` signal and the associated `function_id`, `inputs_0`, and `inputs_1` signals are asserted on the CFU port at the boundary of the `digilent_arty` wrapper.

2. **`cfu.v` (the `Cfu` module)** receives these signals on its static-side port. It passes them to the *static side* of the `dfx_decoupler_0` instantiation. When `decouple = 0`, the Decoupler forwards the signals transparently to the RP side. When `decouple = 1`, the Decoupler holds the processor-side signals at their default idle values (specifically, `cmd_ready = 0`, preventing any new instruction from being accepted) while simultaneously clamping the RP-side outputs to zero.

3. **`cfu_compute` (the RP module)** receives the forwarded signals from the Decoupler's RP side. It evaluates the function identified by `function_id`, computes the result using whichever logic is currently instantiated in the RP (the active RM), asserts `rsp_valid`, and places the 32-bit result on `rsp_payload_outputs_0`.

4. The response propagates back through the Decoupler to `cfu.v`'s static-side output port, and thence to the VexRiscv pipeline's `rsp_valid` and `rsp_payload_outputs_0` inputs, releasing the pipeline stall and writing the result into the destination register.

The `cfu.v` source that implements this hierarchy is reproduced below:

```verilog
module Cfu (
  input               cmd_valid,
  output              cmd_ready,
  input      [9:0]    cmd_payload_function_id,
  input      [31:0]   cmd_payload_inputs_0,
  input      [31:0]   cmd_payload_inputs_1,
  output              rsp_valid,
  input               rsp_ready,
  output     [31:0]   rsp_payload_outputs_0,
  input               decouple,
  input               reset,
  input               clk
);

  wire rp_cmd_valid, rp_cmd_ready, rp_rsp_valid, rp_rsp_ready;
  wire [9:0]  rp_cmd_payload_function_id;
  wire [31:0] rp_cmd_payload_inputs_0;
  wire [31:0] rp_cmd_payload_inputs_1;
  wire [31:0] rp_rsp_payload_outputs_0;
  wire rp_reset, rp_clk;

  cfu_compute comp (
    .clk(rp_clk), .reset(rp_reset),
    .cmd_payload_function_id(rp_cmd_payload_function_id),
    .cmd_payload_inputs_0(rp_cmd_payload_inputs_0),
    .cmd_payload_inputs_1(rp_cmd_payload_inputs_1),
    .rsp_payload_outputs_0(rp_rsp_payload_outputs_0),
    .cmd_valid(rp_cmd_valid), .cmd_ready(rp_cmd_ready),
    .rsp_valid(rp_rsp_valid), .rsp_ready(rp_rsp_ready)
  );

  dfx_decoupler_0 decoupler (
    .s_function_id_DATA(cmd_payload_function_id),
    .rp_function_id_DATA(rp_cmd_payload_function_id),
    .s_rsp_payload_DATA(rsp_payload_outputs_0),
    .rp_rsp_payload_DATA(rp_rsp_payload_outputs_0),
    .s_cmd_payload_cmd_payload_0(cmd_payload_inputs_0),
    .rp_cmd_payload_cmd_payload_0(rp_cmd_payload_inputs_0),
    .s_cmd_payload_cmd_payload_1(cmd_payload_inputs_1),
    .rp_cmd_payload_cmd_payload_1(rp_cmd_payload_inputs_1),
    .s_controls_clk(clk),         .rp_controls_clk(rp_clk),
    .s_controls_cmd_valid(cmd_valid), .rp_controls_cmd_valid(rp_cmd_valid),
    .s_controls_cmd_ready(cmd_ready), .rp_controls_cmd_ready(rp_cmd_ready),
    .s_controls_rsp_ready(rsp_ready), .rp_controls_rsp_ready(rp_rsp_ready),
    .s_controls_rsp_valid(rsp_valid), .rp_controls_rsp_valid(rp_rsp_valid),
    .s_controls_reset(reset),     .rp_controls_reset(rp_reset),
    .decouple(decouple),
    .decouple_status()
  );

endmodule
```

A point of note is that the DFX Decoupler is located *within* `cfu.v` — which is itself part of the static partition — rather than at the RP boundary itself. This placement ensures that the Decoupler's isolation registers are always present and always have a valid power supply regardless of the RP's reconfiguration state. Instantiating the Decoupler within the RP would create a paradox: the isolation logic would itself be temporarily undefined during the reconfiguration of the partition it is supposed to protect.

### 3.4.3 Reconfiguration Controller Hierarchy

The `system_wrapper` sub-module forms the reconfiguration controller subsystem within the static partition. Its responsibilities are:

- **Generating the `decouple` signal** in response to the `pr_switch` input (a board push-button on the Arty A7-35T), asserting isolation before any bitstream write begins and releasing it after EOS is confirmed.
- **Driving the ICAP interface** (via `ICAP_csib`, `ICAP_i`, `ICAP_rdwrb`) with the appropriate configuration word sequence for the target partial bitstream.
- **Managing QSPI flash access** (via the six QSPI I/O signals) for systems where partial bitstreams are stored on-board in the 128 Mb (16 MB) Quad-SPI flash memory present on the Arty A7-35T.

The `recon_counter` module is instantiated within or alongside `system_wrapper`, connected to the same 100 MHz system clock and with its `eos` output monitored by the embedded ILA core.

The architectural relationship between the subsystems is depicted below:

```
                 ┌──────────────────────────────────────────────┐
                 │              STATIC PARTITION                │
                 │                                              │
  pr_switch ───►│  system_wrapper                              │
                 │  ├── decouple ──────────────────────────────►│──► dfx_decoupler_0 (in cfu.v)
                 │  ├── ICAP_csib/i/rdwrb ──► ICAP_7SERIES    │
                 │  └── QSPI flash control                      │
                 │                                              │
  clk100 ──────►│  recon_counter                               │
                 │  ├── STARTUPE2 → EOS                         │
                 │  ├── 32-bit counter                          │
                 │  └── ila_0 probe                             │
                 │                                              │
  serial_rx ───►│  digilent_arty (VexRiscv LiteX SoC)         │
  serial_tx ◄──│  └── Cfu (cfu.v)                             │
  DDR3 ◄───────►│       ├── dfx_decoupler_0                    │
                 │       │   ├── static side ↔ VexRiscv port   │
                 │       │   └── RP side ↔ cfu_compute          │
                 │       └── [decouple from system_wrapper]     │
                 └──────────────────────────────────────────────┘
                           │ RP boundary │
                 ┌─────────▼────────────────┐
                 │  RECONFIGURABLE PARTITION │
                 │      cfu_compute (RM)     │
                 │  (donut.v / example.v /   │
                 │   dse_template.v / kws)   │
                 └──────────────────────────┘
```

This architecture reflects the three design principles introduced in Chapter 1: (1) the static partition encapsulates all persistent compute and control infrastructure; (2) the DFX Decoupler provides a clean, hardware-enforced isolation boundary that prevents glitch propagation; and (3) the ICAP and STARTUPE2 primitives, both hard macros, are accessed exclusively from within the static partition to ensure that the reconfiguration control path itself is never affected by the act of reconfiguration.

---
