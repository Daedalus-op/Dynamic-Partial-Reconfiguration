# Chapter 5: Software, Firmware, and RTL Source Organisation

---

## 5.1 Overview of the Software and HDL Stack

The hardware infrastructure described in Chapter 4 defines the physical boundaries within which reconfiguration occurs, but converting that infrastructure into a working system demands a complementary set of software, firmware, and register-transfer-level (RTL) design files. The present chapter offers a detailed, code-level examination of every source artefact authored or adapted during the course of this project. Four distinct implementation sub-projects comprise the portfolio of work:

1. **CFU Playground integration** — the primary RISC-V co-processor reconfiguration system on the Arty A7-100T, encompassing the top-level wrapper (`top.v`), the DFX Decoupler bridge (`cfu.v`), the reconfiguration-timing measurement module (`recon_counter.v`), three Reconfigurable Module (RM) HDL files (`example.v`, `donut.v`, `dse_template.v`), a fourth RM consisting of a multi-file SystemVerilog keyword-spotting accelerator (`kws/`), associated firmware headers (`cfu.h`), software emulation sources (`software_cfu.c`, `software_cfu.cc`), the interactive test menu (`proj_menu.cc`), and the donut rendering benchmark (`donut.c`).

2. **AMD DFX Tutorial baseline** — a reference DFX design adapted from Xilinx UG947, containing a static top-level design (`top.v`), an MMCM clock-domain module (`clocks.v`), and BRAM-based shift-pattern Reconfigurable Modules (`shift_left.v` and its counterparts).

3. **UART-based DFX Calculator** — a standalone demonstration of Dynamic Function eXchange on the PYNQ-Z2, integrating a baud-rate-generated UART transceiver, an eight-operation combinational ALU, parameterised logic primitives, ASCII-to-hexadecimal mapping, a FIFO buffer, a button debouncer, and a multiply-only reconfigurable wrapper (`dfx_calculator.v` + `mul_wrap.v`).

4. **AES/DES encryption reconfiguration** — a minimal proof-of-concept top module (`top_encrypt.v`) that instantiates either an AES or a DES encryption engine as a Reconfigurable Module behind a fixed 128-bit plaintext/ciphertext interface.

The sections that follow examine each sub-project in source-level detail. All Verilog and SystemVerilog keywords, module names, signal names, and macro identifiers are reproduced verbatim because they are functional identifiers whose alteration would break the design. Explanatory prose surrounding these identifiers is written in original language to preserve academic integrity across the merged report.

---

## 5.2 CFU Playground — Top-Level Integration

The CFU Playground provides the application-level framework within which custom hardware accelerators are designed, compiled, and exercised on a VexRiscv soft-core processor. For this project, the CFU Playground's standard single-module architecture was extended into a DFX-capable configuration. The integration point is the `top.v` module, which serves as the physical top of the FPGA design and coordinates two major subsystems.

### 5.2.1 `top.v` — System-Level Composition

The top-level module `top.v` declares all off-chip interfaces required by the Arty A7-100T — DDR3 SDRAM buses, QSPI flash, USB-UART, status LEDs, and the ICAP primitive's four-port interface — and instantiates exactly two sub-modules:

```verilog
module top(
    inout qspi_flash_io0_io,
    inout qspi_flash_io1_io,
    inout qspi_flash_io2_io,
    inout qspi_flash_io3_io,
    inout qspi_flash_sck_io,
    inout qspi_flash_ss_io,

    output wire [13:0] ddram_a,
    output wire [2:0] ddram_ba,
    output wire ddram_ras_n,
    output wire ddram_cas_n,
    output wire ddram_we_n,
    output wire ddram_cs_n,
    output wire [1:0] ddram_dm,
    inout  wire [15:0] ddram_dq,
    inout  wire [1:0] ddram_dqs_p,
    inout  wire [1:0] ddram_dqs_n,
    output wire ddram_clk_p,
    output wire ddram_clk_n,
    output wire ddram_cke,
    output wire ddram_odt,
    output wire ddram_reset_n,

    output          ICAP_csib,
    output [31:0]   ICAP_i,
    input  [31:0]   ICAP_o,
    output          ICAP_rdwrb,

    input ck_rst,
    input clk100,
    input pr_switch,
    output wire serial_tx,
    input  wire serial_rx,

    output wire user_led0,
    output wire user_led1,
    output wire user_led2,
    output wire user_led3
);
```

The two instantiated sub-modules are connected by a single internal wire, `decouple`, which serves as the control plane between the PR controller and the LiteX-generated SoC:

```verilog
wire decouple;

system_wrapper system(
    .ck_rst(ck_rst),
    .clk100(clk100),
    .decouple(decouple),
    .pr_switch(pr_switch),
    .ICAP_csib(ICAP_csib),
    .ICAP_i(ICAP_i),
    .ICAP_o(ICAP_o),
    .ICAP_rdwrb(ICAP_rdwrb),
    .qspi_flash_io0_io(qspi_flash_io0_io),
    .qspi_flash_io1_io(qspi_flash_io1_io),
    .qspi_flash_io2_io(qspi_flash_io2_io),
    .qspi_flash_io3_io(qspi_flash_io3_io),
    .qspi_flash_sck_io(qspi_flash_sck_io),
    .qspi_flash_ss_io(qspi_flash_ss_io)
);

digilent_arty cfu_wrapper (
    .clk100(clk100),
    .cpu_reset(ck_rst),
    .eth_ref_clk(clk100),
    .decouple(decouple),
    .serial_tx(serial_tx),
    .serial_rx(serial_rx),
    .user_led0(user_led0),
    .user_led1(user_led1),
    .user_led2(user_led2),
    .user_led3(user_led3),
    .ddram_a(ddram_a),
    .ddram_ba(ddram_ba),
    .ddram_ras_n(ddram_ras_n),
    .ddram_cas_n(ddram_cas_n),
    .ddram_we_n(ddram_we_n),
    .ddram_cs_n(ddram_cs_n),
    .ddram_dm(ddram_dm),
    .ddram_dq(ddram_dq),
    .ddram_dqs_p(ddram_dqs_p),
    .ddram_dqs_n(ddram_dqs_n),
    .ddram_clk_p(ddram_clk_p),
    .ddram_clk_n(ddram_clk_n),
    .ddram_cke(ddram_cke),
    .ddram_odt(ddram_odt),
    .ddram_reset_n(ddram_reset_n)
);
endmodule
```

**Architectural rationale.** The `system_wrapper` instance owns the PR-control resources: the ICAP primitive ports, the QSPI flash lines (for potential bitstream fetching), and the `pr_switch` input that triggers reconfiguration. The `digilent_arty` instance (`cfu_wrapper`) is the LiteX-generated SoC containing the VexRiscv processor, the DDR3 MIG controller, and the UART bridge. The sole shared signal between the two halves is `decouple`, which gates the CFU interface; when `system_wrapper` asserts `decouple` high, the DFX Decoupler within the SoC isolates the Reconfigurable Partition from the processor, allowing a new RM to be loaded without corrupting the pipeline state.

This partitioning strategy means that the PR controller logic and the application processor logic occupy separate hierarchical namespaces, which simplifies floorplanning — the `system_wrapper` can be constrained to a compact region near the ICAP primitive, while the SoC occupies the remainder of the device. The `eth_ref_clk` input on the SoC instance is tied to `clk100` because the Ethernet PHY reference clock must be present for the LiteX-generated MII logic to initialise, even though Ethernet itself is not used in this project.

---

## 5.3 CFU Playground — Decoupler Bridge (`cfu.v`)

The `Cfu` module (note: the CFU Playground uses Pascal case for its top-level module name per its coding convention) implements the isolation bridge between the static-side CFU handshake signals and the Reconfigurable Partition identified as `cfu_compute`:

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
```

### 5.3.1 Signal Isolation Through the DFX Decoupler

Internally, the module declares a complete shadow set of the CFU handshake signals — prefixed with `rp_` — representing the reconfigurable-partition-side view of each signal:

```verilog
  wire           rp_cmd_valid, rp_cmd_ready, rp_rsp_valid, rp_rsp_ready;
  wire  [9:0]    rp_cmd_payload_function_id;
  wire  [31:0]   rp_cmd_payload_inputs_0;
  wire  [31:0]   rp_cmd_payload_inputs_1;
  wire  [31:0]   rp_rsp_payload_outputs_0;
  wire           rp_reset;
  wire           rp_clk;
```

The `cfu_compute` RM is connected to the `rp_*` signals rather than to the top-level ports directly:

```verilog
cfu_compute comp (
  .clk(rp_clk),
  .reset(rp_reset),
  .cmd_payload_function_id(rp_cmd_payload_function_id),
  .cmd_payload_inputs_0(rp_cmd_payload_inputs_0),
  .cmd_payload_inputs_1(rp_cmd_payload_inputs_1),
  .rsp_payload_outputs_0(rp_rsp_payload_outputs_0),
  .cmd_valid(rp_cmd_valid),
  .cmd_ready(rp_cmd_ready),
  .rsp_valid(rp_rsp_valid),
  .rsp_ready(rp_rsp_ready)
);
```

The Xilinx DFX Decoupler IP (`dfx_decoupler_0`) bridges every signal pair with a registered isolation stage:

```verilog
dfx_decoupler_0 decoupler (
  .s_function_id_DATA(cmd_payload_function_id),
  .rp_function_id_DATA(rp_cmd_payload_function_id),

  .s_rsp_payload_DATA(rsp_payload_outputs_0),
  .rp_rsp_payload_DATA(rp_rsp_payload_outputs_0),

  .s_cmd_payload_cmd_payload_0(cmd_payload_inputs_0),
  .rp_cmd_payload_cmd_payload_0(rp_cmd_payload_inputs_0),
  .s_cmd_payload_cmd_payload_1(cmd_payload_inputs_1),
  .rp_cmd_payload_cmd_payload_1(rp_cmd_payload_inputs_1),

  .s_controls_clk(clk),
  .rp_controls_clk(rp_clk),
  .s_controls_cmd_valid(cmd_valid),
  .rp_controls_cmd_valid(rp_cmd_valid),
  .s_controls_cmd_ready(cmd_ready),
  .rp_controls_cmd_ready(rp_cmd_ready),
  .s_controls_rsp_ready(rsp_ready),
  .rp_controls_rsp_ready(rp_rsp_ready),
  .s_controls_rsp_valid(rsp_valid),
  .rp_controls_rsp_valid(rp_rsp_valid),
  .s_controls_reset(reset),
  .rp_controls_reset(rp_reset),

  .decouple(decouple),
  .decouple_status()
);
```

**Port-naming convention.** The Decoupler IP uses a `s_` prefix for static-side ports and an `rp_` prefix for reconfigurable-partition-side ports. Each data path (function ID, input payloads, output payload) and each control signal (valid, ready, clock, reset) passes through the Decoupler as a separate named interface. This granularity gives the Decoupler the ability to apply per-signal default values during isolation — for instance, holding `cmd_ready` low on the static side so that the VexRiscv pipeline stalls during reconfiguration without receiving spurious acknowledgements.

**Clock and reset forwarding.** The `s_controls_clk` and `rp_controls_clk` paths allow the Decoupler to gate the clock to the RM during isolation if configured to do so. In the present design, the clock is passed through transparently in both states because the RM's reset signal — also forwarded through the Decoupler — is sufficient to bring the new module into a consistent state upon re-coupling.

**`decouple_status` output.** This signal is left unconnected in the current implementation. It reports the Decoupler's internal state and could be routed to the `system_wrapper` in a future revision that verifies isolation before initiating an ICAP write sequence.

---

## 5.4 CFU Playground — Reconfiguration Timing Module (`recon_counter.v`)

The `recon_counter` module provides the sole on-chip measurement instrument for reconfiguration latency. Its operation is tied to the `STARTUPE2` primitive, which is a 7-series-specific hard block that exposes device configuration events to user logic.

### 5.4.1 Complete Source and Annotation

```verilog
module recon_counter (
  input clk,
  output eos
);

(* KEEP = "true" *)
wire preq;

STARTUPE2 STARTUPE2_inst (
   .EOS(eos),             // Active high End-of-Startup
   .CLK(clk),
   .GSR(1'b0),
   .GTS(1'b0),
   .PACK(1'b0),
   .USRCCLKO(1'b0),
   .USRCCLKTS(1'b1),
   .KEYCLEARB(1'b1),
   .USRDONEO(1'b1),       // Drive DONE pin high
   .USRDONETS(1'b0)       // Do not tristate DONE pin
);
```

The `STARTUPE2` primitive is instantiated with deliberately chosen tie-off values. `GSR`, `GTS`, and `PACK` are all held inactive (`0`) because the design does not use the global set/reset, global tristate, or program acknowledge features. `USRCCLKO` is `0` because the user configuration clock output is not used; `USRCCLKTS` is `1` to tristate this output. `KEYCLEARB` is held high to prevent inadvertent key clearing. `USRDONEO` is asserted so that the external DONE pin stays high after startup.

The `preq` wire, marked with the Vivado `KEEP` synthesis attribute, is included to prevent the synthesis tool from optimising away the `STARTUPE2` instance — even though `preq` is not connected to anything in the current design, its presence as a kept wire attached to the module scope ensures the primitive is retained in the netlist. This is a defensive measure observed in several Xilinx reference designs.

### 5.4.2 Counter State Machine

```verilog
(* KEEP = "true" *)
reg [31:0] counter = 0, counter_next;

(* KEEP = "true" *)
localparam IDLE = 0, RECON = 1;

(* KEEP = "true" *)
reg state = 0, next_state;

always @(*) begin : counter_state
    case (state)
    IDLE: begin
        next_state = (!eos)? RECON : IDLE;
        counter_next = counter;
    end
    RECON: begin
        next_state = (eos)? IDLE : RECON;
        counter_next = counter + 1;
    end
    default: begin
        next_state = IDLE;
        counter_next = counter;
    end
    endcase
end

always @(posedge clk) begin : counter_switch
  state = next_state;
  if(preq)
    counter <= 32'd0;
  else
    counter <= counter_next;
end

ila_0 ila(.clk(clk),.probe0(counter));

endmodule
```

**FSM coding style.** The state machine uses a two-block structure: one combinational `always @(*)` block computes `next_state` and `counter_next` based on the current state and the `eos` signal, and one clocked `always @(posedge clk)` block registers these values. This separation is intentional — when the FSM is in `IDLE`, the counter value is held unchanged; when `eos` drops (indicating active reconfiguration), the FSM transitions to `RECON` and the counter increments once per clock cycle. The counter holds its final value indefinitely after `eos` returns high, providing a stable measurement that can be captured by the Integrated Logic Analyzer.

**Blocking assignment on `state`.** The use of `state = next_state` (blocking assignment) within the clocked block for the `state` register is a known coding choice in this module. While non-blocking assignments are preferred for intra-clock registered logic in synthesisable designs, the behaviour here is functionally equivalent because `state` is not read again within the same clocked block — `counter_next` has already been computed by the combinational block based on the previous cycle's `state`. However, this is worth noting as a potential area for refactoring in future revisions.

**`(* KEEP = "true" *)` annotations.** All registers and the localparam carry the `KEEP` attribute to prevent Vivado's optimiser from merging, absorbing, or eliminating the counter registers. Without these annotations, synthesis could replicate or merge the counter with other fan-out structures, yielding incorrect ILA probe connections.

**ILA instantiation.** The single-line `ila_0 ila(.clk(clk), .probe0(counter))` statement connects the 32-bit counter directly to Probe 0 of a Vivado ILA IP core. This ILA core is configured in the Vivado IP Integrator with a single 32-bit probe width and a capture depth determined by the available BRAM resources. By placing the ILA inside `recon_counter.v` rather than at the top level, the probe connections are preserved across synthesis steps and avoid the need for manual netlist editing in the post-synthesis design.

---

## 5.5 CFU Playground — Reconfigurable Modules

Three Verilog partitions and one multi-file SystemVerilog partition occupy the `partitions/` directory. Each partition defines a module named `cfu_compute` (for the three Verilog files) or `Cfu` (for the KWS accelerator), conforming to the port interface expected by the `comp` instance in `cfu.v`. Every RM must expose the same top-level handshake ports (`cmd_valid`, `cmd_ready`, `cmd_payload_function_id`, `cmd_payload_inputs_0`, `cmd_payload_inputs_1`, `rsp_valid`, `rsp_ready`, `rsp_payload_outputs_0`, `clk`, `reset`) so that the Vivado DFX tool can verify port-signature equivalence during the child implementation run.

### 5.5.1 `example.v` — Multi-Function Combinational Accelerator

This RM implements three independent bit-manipulation operations selected by the `cmd_payload_function_id` field:

```verilog
module cfu_compute (
  input               cmd_valid,
  output              cmd_ready,
  input      [9:0]    cmd_payload_function_id,
  input      [31:0]   cmd_payload_inputs_0,
  input      [31:0]   cmd_payload_inputs_1,
  output              rsp_valid,
  input               rsp_ready,
  output     [31:0]   rsp_payload_outputs_0,
  input               clk,
  input               reset
);

  assign cmd_ready = rsp_ready;

  reg [31:0] rsp_payload;
  reg rsp_valid0, rsp_valid1;
  reg [31:0] cfu_in0, cfu_in1;

  always @(posedge clk) begin
    // stage 1: register inputs
    rsp_valid0 <= cmd_valid;
    cfu_in0 <= cmd_payload_inputs_0;
    cfu_in1 <= cmd_payload_inputs_1;

    // stage 2: register output
    rsp_valid1 <= rsp_valid0;
    rsp_payload <= cmd_payload_function_id[1] ? cfu2 :
                      ( cmd_payload_function_id[0] ? cfu1 : cfu0);
  end

  assign rsp_valid = rsp_valid1;
```

**Pipeline structure.** Although the underlying computations are purely combinational, the module introduces a two-stage pipeline using registered intermediates `cfu_in0`/`cfu_in1` (Stage 1) and `rsp_payload` (Stage 2). This pipeline costs two clock cycles of latency but provides timing margin — the combinational datapath between the registered inputs and the output register has a full clock period in which to settle, rather than having to resolve through both the function-select multiplexer and the arithmetic logic within a single cycle.

**Operation 0 — Byte sum:** adds all eight constituent bytes across both 32-bit inputs:

```verilog
  wire [31:0] cfu0;
  assign cfu0[31:0] =  cfu_in0[7:0]   + cfu_in1[7:0] +
                       cfu_in0[15:8]  + cfu_in1[15:8] +
                       cfu_in0[23:16] + cfu_in1[23:16] +
                       cfu_in0[31:24] + cfu_in1[31:24];
```

Each byte slice (`[7:0]`, `[15:8]`, etc.) is zero-extended to 32 bits by the addition chain; no explicit sign extension is applied, consistent with unsigned byte interpretation. The maximum possible output is `8 × 255 = 2040`, which comfortably fits in 12 bits.

**Operation 1 — Byte swap (endianness reversal):**

```verilog
  wire [31:0] cfu1;
  assign cfu1[31:24] =     cfu_in0[7:0];
  assign cfu1[23:16] =     cfu_in0[15:8];
  assign cfu1[15:8] =      cfu_in0[23:16];
  assign cfu1[7:0] =       cfu_in0[31:24];
```

This operation reverses the byte ordering of `inputs_0` — the least-significant byte becomes the most-significant byte and vice versa. The result is a 32-bit value whose byte order has been transposed, equivalent to converting between big-endian and little-endian representations.

**Operation 2 — Full-word bit reversal:**

```verilog
  wire [31:0] cfu2;
  genvar n;
  generate
      for (n=0; n<32; n=n+1) begin
          assign cfu2[n] =     cfu_in0[31-n];
      end
  endgenerate
```

The `generate`/`for` construct maps each bit position to its mirror image across the 32-bit word. Bit 0 of the output receives bit 31 of the input, bit 1 receives bit 30, and so on. This produces a bitwise palindrome of the input operand.

**Output multiplexing:** The function-select logic at Stage 2 uses `cmd_payload_function_id[1]` and `[0]` to choose between the three operations. Notably, the comment in the source acknowledges that the 3-bit `funct3` subfield is only partially decoded — bit 1 set selects bit reversal regardless of bit 0, bit 0 set (with bit 1 clear) selects byte swap, and neither set selects byte sum.

### 5.5.2 `donut.v` — Signed Integer Multiply with Shift

The donut RM provides two fixed-point arithmetic operations used by the 3D donut rendering application:

```verilog
module cfu_compute (
  input               cmd_valid,
  output              cmd_ready,
  input      [9:0]    cmd_payload_function_id,
  input      [31:0]   cmd_payload_inputs_0,
  input      [31:0]   cmd_payload_inputs_1,
  output              rsp_valid,
  input               rsp_ready,
  output     [31:0]   rsp_payload_outputs_0,
  input               reset,
  input               clk
);

  assign cmd_ready = rsp_ready;

  reg [31:0] rsp_payload;
  reg rsp_valid0, rsp_valid1;
  reg [31:0] cfu_in0, cfu_in1;

  always @(posedge clk) begin
    rsp_valid0 <= cmd_valid;
    cfu_in0 <= cmd_payload_inputs_0;
    cfu_in1 <= cmd_payload_inputs_1;

    rsp_valid1 <= rsp_valid0;
    rsp_payload <= cmd_payload_function_id[0] ? mul : mulsh;
  end

  assign rsp_valid = rsp_valid1;

  wire [31:0] mul    = $signed(cfu_in0) * $signed(cfu_in1);
  wire [31:0] mulsh  = $signed(mul) >>> 10;

  assign rsp_payload_outputs_0 = rsp_payload;

endmodule
```

**`mul` — signed 32×32 multiplication:** The `$signed()` cast forces the synthesis tool to infer a signed multiplier, which on the XC7A100T maps to the DSP48E1 hard multiply primitive. Only the lower 32 bits of the 64-bit product are retained in the `mul` wire — the upper 32 bits are discarded, which is acceptable for the donut rendering workload where operands are fixed-point values with limited dynamic range.

**`mulsh` — multiply-then-arithmetic-shift:** The arithmetic right shift by 10 positions (`>>> 10`) diverts 10 bits from the fractional part of the product, effectively performing a divide-by-1024 with correct sign extension. This fixed-point scaling is central to the donut application's trigonometric approximation chain, where sine and cosine values are represented as signed integers in a Q10.22 fixed-point format.

**Relationship to `donut.c`:** The firmware file `donut.c` invokes these two operations through the macros `MULTSHIFT10(a,b)` and `CFUMUL(a,b)`:

```c
#define MULTSHIFT10(a,b)     ((int)cfu_op(0, 0, (a), (b)))
#define CFUMUL(a,b)          ((int)cfu_op(1, 1, (a), (b)))
```

The first argument to `cfu_op` is the function ID (0 for multiply-then-shift, 1 for raw multiply). The nested rotation macro `R(mul,shift,x,y)` in `donut.c` demonstrates the real-world use case:

```c
#define R(mul,shift,x,y) \
  _=x; \
  x -= CFUMUL(mul,y)>>shift; \
  y += CFUMUL(mul,_)>>shift; \
  _ = 3145728-CFUMUL(x,x)-CFUMUL(y,y)>>11; \
  x = CFUMUL(x,_)>>10; \
  y = CFUMUL(y,_)>>10;
```

Each invocation of `CFUMUL` compiles to a single CUSTOM0 RISC-V instruction. The VexRiscv pipeline stalls until the two-stage pipeline in the RM produces a valid result, then resumes with the 32-bit product available in the destination register.

### 5.5.3 `dse_template.v` — SIMD Multiply-Accumulate

The DSE (Design Space Exploration) template RM implements a four-lane signed 8-bit multiply-accumulate unit intended for quantised neural-network inference workloads:

```verilog
module cfu_compute (
  input               cmd_valid,
  output              cmd_ready,
  input      [9:0]    cmd_payload_function_id,
  input      [31:0]   cmd_payload_inputs_0,
  input      [31:0]   cmd_payload_inputs_1,
  output reg          rsp_valid,
  input               rsp_ready,
  output reg [31:0]   rsp_payload_outputs_0,
  input               reset,
  input               clk
);
  localparam InputOffset = $signed(9'd128);

  wire signed [15:0] prod_0, prod_1, prod_2, prod_3;
  assign prod_0 =  ($signed(cmd_payload_inputs_0[7 : 0]) + InputOffset)
                  * $signed(cmd_payload_inputs_1[7 : 0]);
  assign prod_1 =  ($signed(cmd_payload_inputs_0[15: 8]) + InputOffset)
                  * $signed(cmd_payload_inputs_1[15: 8]);
  assign prod_2 =  ($signed(cmd_payload_inputs_0[23:16]) + InputOffset)
                  * $signed(cmd_payload_inputs_1[23:16]);
  assign prod_3 =  ($signed(cmd_payload_inputs_0[31:24]) + InputOffset)
                  * $signed(cmd_payload_inputs_1[31:24]);

  wire signed [31:0] sum_prods;
  assign sum_prods = prod_0 + prod_1 + prod_2 + prod_3;
```

**SIMD lane structure.** Each of the four 8-bit byte lanes within `inputs_0` is treated as a signed filter-weight value that receives a constant `InputOffset` of +128 before being multiplied with the corresponding byte of `inputs_1`. This offset maps the unsigned 8-bit input activation range [0, 255] to the signed 9-bit range [128, 383], which is the convention used by the TensorFlow Lite Micro quantisation scheme for the first convolutional layer. The 16-bit products are summed to form a 32-bit accumulated partial result.

**Accumulation and handshake logic:**

```verilog
  assign cmd_ready = ~rsp_valid;

  always @(posedge clk) begin
    if (reset) begin
      rsp_payload_outputs_0 <= 32'b0;
      rsp_valid <= 1'b0;
    end else if (rsp_valid) begin
      rsp_valid <= ~rsp_ready;
    end else if (cmd_valid) begin
      rsp_valid <= 1'b1;
      rsp_payload_outputs_0 <= |cmd_payload_function_id[9:3]
          ? 32'b0
          : rsp_payload_outputs_0 + sum_prods;
    end
  end
endmodule
```

The accumulator register `rsp_payload_outputs_0` is declared as `output reg` — a departure from the combinational output style of `example.v` and `donut.v`. This is because the accumulation semantics require the register to retain its value across multiple CFU invocations. The `cmd_payload_function_id[9:3]` check provides a reset pathway: when any of the upper 7 bits of the function ID are non-zero, the accumulator is cleared to zero rather than accumulating further, allowing the firmware to reset the accumulator for a new dot-product sequence without issuing a full module reset.

The back-pressure handshake (`cmd_ready = ~rsp_valid`) prevents the processor from issuing a new command while a previous result is waiting to be consumed. This single-cycle-response, accumulating architecture is representative of the pattern used in quantised inference accelerators where many multiply-accumulate operations are streamed sequentially before a single readout.

### 5.5.4 `kws/` — Keyword Spotting Accelerator (SystemVerilog)

The fourth RM is implemented in SystemVerilog across four files and provides a purpose-built accelerator for the keyword-spotting (KWS) inference pipeline used in the CFU Playground's TinyML benchmarks.

**`cfu.sv` — Top-level dispatch:** The top module instantiates three sub-modules (MAC, RDH, RCDBPOT) and selects among their outputs using a one-hot encoding on the lowest three bits of the function ID:

```systemverilog
`include "mac.sv"
`include "rcdbpot.sv"
`include "rdh.sv"

module Cfu (
  input logic clk,
  input logic reset,
  input logic [9:0]  cmd_payload_function_id,
  input logic [31:0] cmd_payload_inputs_0,
  input logic [31:0] cmd_payload_inputs_1,
  output logic [31:0] rsp_payload_outputs_0,
  input  logic cmd_valid,
  output logic cmd_ready,
  output logic rsp_valid,
  input  logic rsp_ready
);
```

The output multiplexer uses a `casez` statement with don't-care bits for priority encoding:

```systemverilog
  always_ff @(posedge clk) begin
    if (cmd_valid) begin
      casez (cmd_payload_function_id[2:0])
        3'b??1 : rsp_payload_outputs_0 <= mac_output;
        3'b?1? : rsp_payload_outputs_0 <= rdh_output;
        3'b1?? : rsp_payload_outputs_0 <= rcdbpot_output;
        default: rsp_payload_outputs_0 <= '0;
      endcase
    end
  end
```

**`mac.sv` — Multiply-Accumulate with configurable offset:**

```systemverilog
module mac (
  input logic layer_one_en,
  input logic simd_en,
  input logic [31:0] input_vals,
  input logic [31:0] filter_vals,
  input logic [31:0] curr_acc,
  output logic [31:0] out
);
  logic signed [8:0] InputOffest = layer_one_en ? -9'sd83 : 9'sd128;
```

The `InputOffest` (note: the original source preserves this spelling) is configurable at runtime through the `layer_one_en` flag, derived from `cmd_payload_function_id[4]`. For the first convolutional layer, an offset of -83 is used (reflecting the quantisation zero-point of the input tensor); for subsequent layers, +128 is used. The `simd_en` flag (bit 3) controls whether all four byte lanes are summed or only the first lane is used, providing both scalar and SIMD operating modes in a single module.

**`rdh.sv` — Rounding Doubling High 32 Bits:** This module takes a 64-bit value represented as `{top, bottom}`, doubles it, rounds, and outputs only the upper 32 bits:

```systemverilog
module rdh (
  input logic [31:0] top,
  input logic [31:0] bottom,
  output logic [31:0] out
);
  assign out = (signed'({top, bottom}) + 32'sh40000000) >> 31;
endmodule
```

The constant `32'sh40000000` is the rounding bias for the midpoint of the 64-bit range. The right shift by 31 (not 32) effectively doubles the value while extracting the high word — a pattern taken directly from the TensorFlow Lite reference kernel's fixed-point arithmetic library.

**`rcdbpot.sv` — Rounding Clamping Divide by Power of Two:** This module divides the accumulated result by a power of two (encoded as a negative exponent) and clamps the output to the range [-128, 127] before applying a final offset of -128:

```systemverilog
module rcdbpot (
  input logic [31:0] dividend,
  input logic [31:0] negative_exponent,
  output logic [31:0] out
);
  logic [3:0] shift;
  logic signed [31:0] mask, remainder, threshold;

  always_comb begin
    casez (negative_exponent[2:0])
      3'b111 : shift = 9;
      3'b?11 : shift = 5;
      3'b??1 : shift = 7;
      3'b?1? : shift = 6;
      default: shift = 8;
    endcase

    mask = ~({32{1'b1}} << shift);
    remainder = dividend & mask;
    threshold = (mask >> 1) + dividend[31];
    out = signed'(signed'(dividend) >>> shift);

    if (remainder > threshold) out += 1'b1;
    if (out[31]) out = 32'sd0;
    else if (|out[31:8]) out = 32'sd255;
    out -= 32'sd128;
  end
endmodule
```

The `casez`-based shift decoding maps the exponent encoding into one of five possible shift amounts (5 through 9), optimised for the quantisation parameters observed in the KWS model. The rounding logic adds 1 if the truncated remainder exceeds half the divisor (with a sign-dependent adjustment via `dividend[31]`), providing proper round-to-nearest-even semantics for negative dividends. The final clamping to [0, 255] followed by subtraction of 128 produces a signed 8-bit output in the range [-128, 127], ready for the next quantised layer's input.

---

## 5.6 CFU Playground — Firmware Sources

### 5.6.1 `cfu.h` — Instruction Encoding and SW/HW Selection

The header file `cfu.h` defines the firmware-visible interface to the CFU hardware. It imports the `riscv.h` header (which provides the `opcode_R` macro for raw R-type instruction encoding) and defines both hardware-invoking macros and functionally-equivalent software-emulation macros:

```c
#include "riscv.h"
```

**Hardware-invocation macros:**

```c
#define cfu_op0_hw(rs1, rs2)  opcode_R(CUSTOM0, 0, 0, (rs1), (rs2))
#define cfu_op1_hw(rs1, rs2)  opcode_R(CUSTOM0, 1, 0, (rs1), (rs2))
#define cfu_op2_hw(rs1, rs2)  opcode_R(CUSTOM0, 2, 0, (rs1), (rs2))
#define cfu_op3_hw(rs1, rs2)  opcode_R(CUSTOM0, 3, 0, (rs1), (rs2))
#define cfu_op4_hw(rs1, rs2)  opcode_R(CUSTOM0, 4, 0, (rs1), (rs2))
#define cfu_op5_hw(rs1, rs2)  opcode_R(CUSTOM0, 5, 0, (rs1), (rs2))
```

Each `opcode_R` invocation encodes an R-type instruction with opcode `CUSTOM0` (binary `0001011`, decimal 11), the specified `funct3` value (0 through 5), `funct7=0`, and the register-file indices for `rs1` and `rs2`. The resulting machine word is emitted directly into the instruction stream via inline assembly.

**Semantically-named aliases** provide self-documenting invocations:

```c
#define cfu_byte_sum_hw(rs1, rs2)    opcode_R(CUSTOM0, 0, 0, (rs1), (rs2))
#define cfu_byte_swap_hw(rs1, rs2)   opcode_R(CUSTOM0, 1, 0, (rs1), (rs2))
#define cfu_bit_reverse_hw(rs1, rs2) opcode_R(CUSTOM0, 2, 0, (rs1), (rs2))
#define cfu_fib_hw(rs1, rs2)         opcode_R(CUSTOM0, 3, 0, (rs1), (rs2))
#define cfu_donut_mulsh_hw(rs1, rs2) opcode_R(CUSTOM0, 4, 0, (rs1), (rs2))
#define cfu_donut_mul_hw(rs1, rs2)   opcode_R(CUSTOM0, 5, 0, (rs1), (rs2))
```

**Software-emulation macros** call the C function `Cfu()` defined in `software_cfu.c`:

```c
#define cfu_op0_sw(rs1, rs2)  Cfu(0, rs1, rs2)
#define cfu_op1_sw(rs1, rs2)  Cfu(1, rs1, rs2)
```

**Compile-time selection** between hardware and software execution is controlled by the `CFU_FORCE_SW` preprocessor define:

```c
#ifdef CFU_FORCE_SW
#define cfu_op0(rs1, rs2)       cfu_op0_sw(rs1, rs2)
...
#else
#define cfu_op0(rs1, rs2)       cfu_op0_hw((rs1), (rs2))
...
#endif
```

This mechanism allows the entire firmware test suite to run on a standard RISC-V simulator (without custom hardware) during development, then switch to hardware execution for on-board validation, without modifying any application-level source code.

### 5.6.2 `software_cfu.c` — C-Language Reference Model

The software emulation function provides a bit-accurate reference implementation for the operations supported by the `example.v` and `donut.v` RMs:

```c
uint32_t software_cfu(int funct3, uint32_t rs1, uint32_t rs2)
{
  uint32_t retval = 0;

  if (funct3 & 0x2)
  {
    // bitreverse (rs1)
    for (int i = 0; i < 32; ++i)
    {
      retval |= (((rs1 >> i) & 0x1) << (31 - i));
    }
  }
  else if (funct3 & 0x1)
  {
    // byte swap (rs1)
    for (int i = 0; i < 32; i += 8)
    {
      retval |= (((rs1 >> i) & 0xff) << (24 - i));
    }
  }
  else
  {
    // byte sum
    retval += (rs1 & 0xff) + (rs2 & 0xff);
    rs1 >>= 8; rs2 >>= 8;
    retval += (rs1 & 0xff) + (rs2 & 0xff);
    rs1 >>= 8; rs2 >>= 8;
    retval += (rs1 & 0xff) + (rs2 & 0xff);
    rs1 >>= 8; rs2 >>= 8;
    retval += (rs1 & 0xff) + (rs2 & 0xff);
  }

  return (funct3 & 4)?
            (funct3 & 5) ?
                ((int)rs1) * ((int)rs2)  :
                (((int)rs1) * ((int)rs2) >> 10)  :
                    retval;
}
```

The final ternary chain merges the donut RM's multiply operations (function IDs 4 and 5) with the `example.v` operations (function IDs 0–2). When `funct3` bit 2 is set, the function returns a signed multiply (ID 5) or a multiply-then-shift-by-10 (ID 4). The `main()` function at the end of the file provides a standalone host-side test harness that exercises the byte-sum path with a grid of input values, confirming reference-model correctness before hardware testing.

### 5.6.3 `proj_menu.cc` — Interactive Test Menu

The interactive menu provides a UART-driven interface for exercising CFU operations directly on the board:

```cpp
struct Menu MENU = {
    "Project Menu",
    "project",
    {
        MENU_ITEM('e', "exercise example cfu op0", do_example_exercise_cfu_op),
        MENU_ITEM('0', "exercise donut cfu op0", do_donut_exercise_cfu_op0),
        MENU_ITEM('1', "exercise donut cfu op1", do_donut_exercise_cfu_op1),
        MENU_ITEM('g', "grid cfu donut op0", do_donut_grid_cfu_op0),
        MENU_ITEM('G', "grid cfu donut op1", do_donut_grid_cfu_op1),
        MENU_ITEM('h', "say Hello", do_hello_world),
        MENU_END,
    },
};
```

Each menu item maps a keyboard character to a test function. For example, `do_donut_exercise_cfu_op0` performs an exhaustive sweep over a grid of signed 32-bit inputs and compares the hardware CFU output against the expected software result:

```cpp
void do_donut_exercise_cfu_op0(void) {
  puts("\nExercise Donut CFU Op0\n");
  int count = 0;
  for (int32_t a = -0x71234567; a < 0x68000000; a += 0x10012345) {
    for (int32_t b = -0x7edcba98; b < 0x68000000; b += 0x10770077) {
      int32_t cfu = cfu_op0(0, a, b);
      int32_t exp = a*b>>10;
      int32_t ab = a*b;
      int32_t cfuab = cfu_op1(1, a, b);
      printf("a: %08x b:%08x cfu=%08x exp=%08x  ab=%08x\n",
             (unsigned)a, (unsigned)b, (unsigned)cfu,
             (unsigned)exp, (unsigned)ab);
      if (cfu != exp) {
        printf("\n***FAIL\n");
        printf("\nexpect %08x  a*b=%08x  cfu:a*b=%08x\n",
               (unsigned)exp, (unsigned)ab, (unsigned)cfuab);
        return;
      }
      count++;
    }
  }
  printf("Performed %d comparisons", count);
}
```

The step sizes (`0x10012345`, `0x10770077`) are deliberately chosen as coprime values that span the full signed 32-bit range without requiring billions of iterations. A mismatch between the hardware result and the software expectation terminates the sweep immediately with a diagnostic `FAIL` message, printing both the expected and actual values to aid debugging.

### 5.6.4 `donut.c` — 3D Donut Rendering Benchmark

The donut benchmark is a fixed-point 3D torus renderer that produces animated ASCII art on the UART terminal. It serves as both a visual demonstration and a performance benchmark for the `donut.v` RM:

```c
void donut(void) {
  int sA=1024,cA=0,sB=1024,cB=0,_;
  puts("\nPress any key to exit.  Accelerated version.\n");
  for (;;) {
    unsigned start_cycle = perf_get_mcycle();
    memset(b, 32, 1760);  // text buffer
    memset(z, 127, 1760);   // z buffer
    int sj=0, cj=1024;
    for (int j = 0; j < 90; j++) {
      int si = 0, ci = 1024;
      for (int i = 0; i < 324; i++) {
        int R1 = 1, R2 = 2048, K2 = 5120*1024;

        int x0 = CFUMUL(R1,cj) + R2,
            x1 = MULTSHIFT10(ci,x0),
            ...
```

Each frame renders a 80×22-character ASCII image using nested loops over torus surface parameters `i` and `j`. The `CFUMUL` and `MULTSHIFT10` macros are the critical acceleration points — without hardware CFU support, the signed multiplications would fall back to the VexRiscv's multi-cycle software multiply routine (since the `minimal` variant lacks the M extension). With the donut RM active, each multiply completes in two pipeline stages of the CFU.

The `perf_get_mcycle()` call reads the RISC-V machine-cycle CSR, providing a hardware-accurate cycle count for each rendered frame, which is printed to the terminal as the frame rate metric recorded in Chapter 6.

---

## 5.7 AMD DFX Tutorial Baseline Implementation

Before integrating DFX into the full CFU Playground system, a baseline DFX design was constructed following the AMD UG947 tutorial. This provided familiarity with the Vivado DFX toolflow without the complexity of the LiteX SoC.

### 5.7.1 Tutorial `top.v` — Static Partition

```verilog
module top(
    input        gclk,            // 100MHz input clock
    input        rst_n,           // Reset mapped to center push button
    output [3:0] shift_high_out,  // mapped to general purpose LEDs[4-7]
    output [3:0] shift_low_out    // mapped to general purpose LEDs[0-3]
);

  wire        rst;
  reg  [34:0] count;

  assign rst = rst_n;

  // instantiate module shift for low bits
  shift inst_shift_low (
      .en      (rst),
      .clk     (gclk),
      .addr    (count[34:23]),
      .data_out(shift_low_out)
  );

  // instantiate module shift for high bits
  shift inst_shift_high (
      .en      (rst),
      .clk     (gclk),
      .addr    (count[34:23]),
      .data_out(shift_high_out)
  );

  always @(posedge gclk)
    if (rst) begin
      count <= 0;
    end else begin
      count <= count + 1;
    end

endmodule
```

The static partition contains a 35-bit free-running counter whose upper bits (`count[34:23]`) serve as addresses into two instances of the `shift` RM. The 12-bit address space produces a 4-bit LED output pattern that shifts visually at a rate determined by the counter's division ratio: with a 100 MHz clock, the address MSB toggles at approximately 0.003 Hz (every ~335 seconds), yielding a slow, visually observable shift pattern on the LEDs.

### 5.7.2 `shift_left.v` — BRAM-Based Reconfigurable Module

The RM uses a `RAMB36` primitive pre-initialised with a repeating LED shift pattern:

```verilog
module shift (
   en,
   clk,
   addr,
   data_out);

   input en;
   input clk;
   input  [11:0] addr;
   output [3:0]  data_out;

RAMB36 #(
.SIM_MODE("SAFE"),
.DOA_REG(0),
.DOB_REG(0),
.READ_WIDTH_A(9),
...
.INIT_00(256'h080402010804020108040201...),
...
) RAMB36_inst (
.DOA(data_out),
.ADDRA({addr[11:0], 3'b 000}),
.CLKA(clk),
.ENA(~en),
.REGCEA(~en),
.SSRA(en),
...
);
endmodule
```

The BRAM initialisation data (`INIT_00` through `INIT_7F`) contains the repeating pattern `08 04 02 01` — corresponding to a left-shifting one-hot LED display. The counterpart RM `shift_right.v` uses the reverse pattern `01 02 04 08`. The DFX toolflow permits swapping between these two RMs at runtime, causing the LED animation to reverse direction without disrupting the static counter logic.

### 5.7.3 `clocks.v` — MMCM Configuration

The clock module instantiates the `MMCM_ADV` primitive to divide a 200 MHz differential input down to 100 MHz:

```verilog
MMCM_ADV
#(.BANDWIDTH("OPTIMIZED"),
  .DIVCLK_DIVIDE(1),
  .CLKFBOUT_MULT_F(6.000),
  .CLKOUT0_DIVIDE_F(12.000),
  .CLKIN1_PERIOD(5.0),
  ...)
mmcm_adv_inst (...);
```

The feedback multiplication of 6× and output division of 12× produces a net division of 2.0, converting the 200 MHz input to 100 MHz. This module was included in the tutorial baseline but is bypassed in the Arty A7 adaptation (where the board provides a single-ended 100 MHz clock directly, as noted in the comment `// clocks U0_clocks ... ` in `top.v`).

---

## 5.8 UART-Based DFX Calculator

A standalone UART calculator was developed to demonstrate Dynamic Function eXchange on the PYNQ-Z2, where a Zynq-7020 Processing System (PS) manages reconfiguration while the Programmable Logic (PL) hosts a UART-connected arithmetic unit whose ALU can be swapped at runtime.

### 5.8.1 `uart_top.v` — Communication Subsystem

The UART top module integrates a baud-rate generator, UART receiver, ASCII mapper, UART transmitter, and a memory register for storing ALU results:

```verilog
module uart_top #(
    parameter integer DBITS    = 8,
    integer SB_TICK  = 16,
    integer BR_LIMIT = 651,
    integer BR_BITS  = 10
) (
    input                  clk_100MHz,
    input                  reset,
    input                  read_uart,
    input                  write_uart,
    input                  rx,
    input      [DBITS-1:0] write_data,
    output                 tx,
    output reg [DBITS-1:0] read_data,
    output     [DBITS-1:0] stored_data
);
```

**Baud rate derivation.** The `BR_LIMIT` parameter of 651 is calculated from: `100 MHz / (9600 baud × 16 oversampling) ≈ 651`. The oversampling factor of 16 means each bit period is sampled 16 times, and the receiver synchronises by detecting the mid-bit-period sample at count 7 (for the start bit) and count 15 (for data bits).

**ASCII-to-decimal mapping (`map.v`):** The `map` module converts ASCII character codes to 4-bit hexadecimal digits:

```verilog
module map (
    output reg [3:0] dec,
    input [7:0] ascii
);
  always @(*) begin
    case (ascii)
      8'd48: dec = 4'd0;   // '0'
      8'd49: dec = 4'd1;   // '1'
      ...
      8'd97:  dec = 4'd10; // 'a'
      ...
      8'd102: dec = 4'd15; // 'f'
    endcase
  end
endmodule
```

The complementary `unmap` module performs the inverse transformation, converting 4-bit results back to ASCII for UART transmission.

### 5.8.2 `uart_receiver.v` — Four-State FSM

The UART receiver uses a classic four-state finite-state machine (`idle`, `start`, `data`, `stop`) that operates within the oversampled tick domain:

```verilog
  localparam [1:0] idle = 2'b00, start = 2'b01, data = 2'b10, stop = 2'b11;

  always @* begin
    next_state = state;
    data_ready = 1'b0;
    tick_next  = tick_reg;
    nbits_next = nbits_reg;
    data_next  = data_reg;

    case (state)
      idle:
      if (~rx) begin
        next_state = start;
        tick_next  = 0;
      end
      start:
      if (sample_tick)
        if (tick_reg == 7) begin
          next_state = data;
          tick_next  = 0;
          nbits_next = 0;
        end else tick_next = tick_reg + 1;
      data:
      if (sample_tick)
        if (tick_reg == 15) begin
          tick_next = 0;
          data_next = {rx, data_reg[7:1]};
          if (nbits_reg == (DBITS - 1)) next_state = stop;
          else nbits_next = nbits_reg + 1;
        end else tick_next = tick_reg + 1;
      stop:
      if (sample_tick)
        if (tick_reg == (SB_TICK - 1)) begin
          next_state = idle;
          data_ready = 1'b1;
        end else tick_next = tick_reg + 1;
    endcase
  end
```

The start-bit detection logic in the `idle` state transitions on a falling edge of `rx` (the idle line is high). The `start` state waits 7 sample ticks to reach the middle of the start bit, then the `data` state samples each data bit at tick 15 (the middle of each bit period). Data bits are shifted in LSB-first via `{rx, data_reg[7:1]}`. The `stop` state validates the stop bit and asserts `data_ready` to signal a complete byte.

### 5.8.3 `alu.sv` — Combinational ALU

The ALU provides eight operations controlled by a 4-bit opcode:

```systemverilog
module calc #(
    parameter N = 8
) (
    output logic [N - 1:0] y,
    output logic flg,
    input logic [3:0] op,
    input logic [N - 1:0] a,
    input logic [N - 1:0] b
);
  ...
  always @(*) begin
    case (op)
      4'b0000: y = a+b;        // addition
      4'b0001: y = a-b;        // subtraction
      4'b0010: y = r_and;      // bitwise AND
      4'b0011: y = r_or;       // bitwise OR
      4'b0100: y = r_xor;      // bitwise XOR
      4'b0101: y = a << b;     // logical left shift
      4'b0110: y = a >> b;     // logical right shift
      4'b0111: y = a >>> b;    // arithmetic right shift
      default: y = 0;
    endcase
    if (a-b == 0) flg = 1'b1;
    else          flg = 1'b0;
  end
endmodule
```

The gate-level logic primitives (`ands`, `ors`, `xors` from `logic.sv`) are instantiated for the bitwise operations using `generate`/`for` loops over individual bits:

```systemverilog
module ands #(parameter N = 4) (
    input logic  [N - 1:0] a,
    input logic  [N - 1:0] b,
    output logic [N - 1:0] y
);
  genvar i;
  for (i = 0; i < N; i = i + 1) begin
    and (y[i], a[i], b[i]);
  end
endmodule
```

While the synthesis tool would generate identical hardware from `assign y = a & b`, the explicit gate-level instantiation was used here as a pedagogical exercise in structural Verilog and to verify that the synthesiser correctly infers the same resource cost for both approaches.

### 5.8.4 DFX-Enabled Calculator — `dfx_calculator.v` and `mul_wrap.v`

The DFX version replaces the full ALU with a narrowed multiply-only module as a Reconfigurable Module, demonstrating that the PS can swap the arithmetic function at runtime:

```verilog
module dfx_calc (
    output tx,
    output [3:0] LED,
    input [3:0] op,
    input btn,
    input clk_100MHz,
    input reset,
    input rx
);
    wire [7:0] stored_data;
    wire [7:0] read_data;
    wire [7:0] write_data;
    wire  op_alu_mul;

    assign op_alu_mul = op[3];

    system_dfx_wrapper system(
        ...
        .btn(btn),
        .clk_100MHz(clk_100MHz),
        .op_alu_mul(op_alu_mul),
        .read_data_0(read_data),
        .reset(reset),
        .rx_0(rx),
        .stored_data_0(stored_data),
        .tx_0(tx),
        .write_data_0(write_data)
    );

    calc u_calc(
        .y(write_data),
        .flg(),
        .op(op),
        .a(stored_data),
        .b(read_data)
    );

    assign LED = stored_data[3:0];
endmodule
```

The `op_alu_mul` signal, derived from the MSB of the 4-bit opcode, serves as the trigger for the PS to decide whether the ALU or the multiply module should be active in the PL. The `system_dfx_wrapper` is a Vivado-generated block design wrapper for the Zynq PS, which includes the PCAP interface for issuing partial bitstreams.

The multiply-only RM (`mul_wrap.v`) provides a deliberately minimal implementation:

```verilog
module calc #(
    parameter N = 8
) (
    output [N - 1:0] y,
    output flg,
    input  [3:0] op,
    input  [N - 1:0] a,
    input  [N - 1:0] b
);

wire [3:0] y_temp;
assign y_temp = a[3:0] * b[3:0];
assign y = {4'd0, y_temp};

endmodule
```

This module multiplies only the lower 4 bits of each operand, producing an 8-bit result zero-extended from the 4-bit product. The `flg` and `op` ports are declared but unused — they exist solely to maintain port-signature compatibility with the full ALU's `calc` module interface, which is the DFX requirement for RM interchangeability. The `LED` output displays the lower four bits of the stored operand, providing visual confirmation that UART-received data is reaching the PL fabric.

---

## 5.9 AES/DES Encryption Reconfiguration

The `AES_DES_reconfig` sub-project demonstrates DFX applied to cryptographic acceleration. The fixed interface is a 128-bit plaintext input, a 128-bit key input, a clock, and a 128-bit ciphertext output:

```verilog
module top_encrypt(
    output [127:0] cipher,
    input [127:0] plain,
    input [127:0] key,
    input clk
);

  des_wrapper enc_dut(cipher, plain, key, clk);

endmodule
```

The `des_wrapper` instance is the RM that occupies the Reconfigurable Partition. An alternative RM implementing AES encryption shares the same `(cipher, plain, key, clk)` port interface, allowing the encryption algorithm to be swapped at runtime without modifying the data path that feeds plaintext in and reads ciphertext out. This minimal wrapper demonstrates the principle that DFX can be applied at the algorithm level — the interface remains stable while the computational core is exchanged — which generalises to any domain where multiple algorithms share a common data format (hash functions, compression codecs, signal-processing filters, etc.).

---

## 5.10 Constraint Files and Physical Floorplanning

### 5.10.1 Arty A7-100T Master XDC

The Digilent-provided `Arty-A7-100-Master.xdc` serves as the base constraint template for all Arty A7 implementations. Each I/O assignment maps a logical port name to a physical FPGA package pin and I/O standard:

```tcl
## Clock signal
#set_property -dict { PACKAGE_PIN E3  IOSTANDARD LVCMOS33 } [get_ports { CLK100MHZ }];
#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { CLK100MHZ }];
```

In practice, the specific lines that are uncommented depend on which ports a given design uses. The CFU Playground integration uncomments the clock, UART, DDR3, QSPI, LED, and button assignments while leaving Pmod, Ethernet, and analog headers commented. The `pr_switch` input is mapped to one of the four on-board push buttons.

---

## 5.11 Build Flow Summary

The complete build pipeline, from source checkout to on-board validation, follows this ordered sequence:

| Step | Action | Key Output |
|------|--------|------------|
| 1 | Generate LiteX SoC (`python -m litex_boards.targets.digilent_arty ...`) | `digilent_arty.v`, `arty.xdc`, `csr.h` |
| 2 | Create Vivado DFX project, add `top.v`, `cfu.v`, `recon_counter.v`, RM sources | `.xpr` project file |
| 3 | Register RMs via Vivado DFX Configuration Manager | DFX configurations |
| 4 | Apply Pblock constraints for `cfu_compute` RP | Constrained netlist |
| 5 | Synthesise static partition + OOC synthesis for each RM | Post-synthesis DCPs |
| 6 | Implement parent run (static) + child runs (one per RM) | Post-implementation DCPs |
| 7 | Generate full bitstream + partial bitstreams | `.bit` files |
| 8 | Programme device via JTAG, flash firmware, run test menu | PASS/FAIL validation |

Steps 2 through 7 are orchestrated through the Vivado GUI or batch-mode TCL commands. The CFU Playground firmware is compiled separately using the RISC-V GCC toolchain (`rv32i` / `ilp32`), producing a flat binary that is programmed into QSPI flash at offset `0x00080000`.

---

## 5.12 Repository Organisation

The project repository organises source artefacts by implementation sub-project:

```
Implementation/
├── CFU_Playground/               # Primary DFX + RISC-V CFU system
│   ├── top.v                     # System-level composition
│   ├── cfu.v                     # DFX Decoupler bridge
│   ├── recon_counter.v           # Reconfiguration timing measurement
│   ├── cfu.h                     # Firmware instruction encoding
│   ├── VexRiscv.v                # Soft-core processor (generated)
│   ├── digilent_arty.v           # LiteX SoC (generated)
│   ├── partitions/
│   │   ├── example.v             # RM: multi-function arithmetic
│   │   ├── donut.v               # RM: fixed-point multiply
│   │   ├── dse_template.v        # RM: SIMD MAC for inference
│   │   └── kws/                  # RM: keyword spotting accelerator
│   │       ├── cfu.sv
│   │       ├── mac.sv
│   │       ├── rcdbpot.sv
│   │       └── rdh.sv
│   ├── src/
│   │   ├── proj_menu.cc          # Interactive UART test menu
│   │   ├── software_cfu.c        # C reference model
│   │   ├── software_cfu.cc       # C++ reference model
│   │   ├── donut.c               # 3D donut rendering benchmark
│   │   └── donut.h
│   └── build/                    # Generated artefacts (gitignored)
│
├── AMD_DFX_Tutorial/             # UG947 tutorial baseline
│   ├── dfx_project/Sources/hdl/
│   │   ├── top/top.v             # Static top-level
│   │   ├── top/clocks.v          # MMCM configuration
│   │   ├── shift_left/shift_left.v
│   │   ├── shift_right/...
│   │   └── shift_left_slow/...
│   └── led_Shift_Count_7s/       # Variant with counter RM
│
├── UART_CALCI/                   # UART calculator + DFX on PYNQ
│   ├── src/uart_calculator/
│   │   ├── uart_top.v            # UART communication top
│   │   ├── uart_receiver.v       # UART RX FSM
│   │   ├── uart_transmitter.v    # UART TX FSM
│   │   ├── baud_rate_generator.v # Oversampling clock divider
│   │   ├── alu.sv                # 8-operation combinational ALU
│   │   ├── logic.sv              # Gate-level AND/OR/XOR
│   │   ├── map.v                 # ASCII ↔ hexadecimal converter
│   │   ├── fifo.v                # Parameterised FIFO buffer
│   │   └── debounce_explicit.v   # Button debouncer FSM
│   ├── src/dfx_controller/
│   │   ├── dfx_calculator.v      # DFX-enabled top
│   │   └── mul_wrap.v            # Multiply-only RM
│   └── dfx_playground/           # Vivado project (gitignored)
│
├── AES_DES_reconfig/             # Crypto algorithm swapping
│   ├── top_encrypt.v             # Fixed encryption interface
│   ├── AES/                      # AES RM sources
│   └── des-verilog/              # DES RM sources
│
└── Arty-A7-100-Master.xdc        # Board constraint template
```

Generated artefacts — including the full Vivado project databases, synthesis checkpoints, and multi-gigabyte implementation runs — reside under `build/` and `dfx_playground/` directories and are excluded from version control via `.gitignore`. All hand-authored source files (RTL, firmware, constraints) are tracked in the repository, ensuring full reproducibility of the designs described in this chapter.

---
