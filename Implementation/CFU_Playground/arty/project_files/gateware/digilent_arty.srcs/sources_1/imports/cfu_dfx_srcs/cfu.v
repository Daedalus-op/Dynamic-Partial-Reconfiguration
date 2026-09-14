// Copyright 2021 The CFU-Playground Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

`define decoupled

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
  input               clk,
  output reg [6:0] hw_trigger
);

localparam
    EXAMPLE_MODE    = 3'b010,
    DONUT_MODE      = 3'b001;

wire                dec_zz_cmd_valid;
wire                dec_zz_cmd_ready;
wire      [9:0]     dec_zz_cmd_payload_function_id; 
wire      [2:0]     cfu_id;
wire      [31:0]    dec_zz_cmd_payload_inputs_0;
wire      [31:0]    dec_zz_cmd_payload_inputs_1;
wire                dec_zz_rsp_valid;
wire                dec_zz_rsp_ready;
wire       [31:0]   dec_zz_rsp_payload_outputs_0;

wire [2:0] dec_cfu_id, cfu_id_req;

// Decoder logic
assign cfu_id_req = cmd_payload_function_id[2:0];

always@(posedge clk)begin
    if((cfu_id == cfu_id_req) | decouple | ~(cmd_valid))begin
        hw_trigger <= 7'h0;
    end
    else begin
        hw_trigger <= 7'h1 << cfu_id_req;
    end
end

`ifndef decoupled

cfu_compute compute(
  .clk(clk),
  .reset(reset),

  .cmd_payload_function_id(cmd_payload_function_id),
  .cmd_payload_inputs_0(cmd_payload_inputs_0),
  .cmd_payload_inputs_1(cmd_payload_inputs_1),

  .rsp_payload_outputs_0(rsp_payload_outputs_0),

  .cmd_valid(cmd_valid),
  .cmd_ready(cmd_ready),
  .rsp_valid(rsp_valid),
  .rsp_ready(rsp_ready),
  .cfu_id(dec_cfu_id)
);

`else

cfu_compute compute(
  .clk                      (clk),
  .reset                    (dec_reset),

  .cmd_payload_function_id  (dec_zz_cmd_payload_function_id),
  .cmd_payload_inputs_0     (dec_zz_cmd_payload_inputs_0),
  .cmd_payload_inputs_1     (dec_zz_cmd_payload_inputs_1),

  .rsp_payload_outputs_0    (dec_zz_rsp_payload_outputs_0),

  .cmd_valid                (dec_zz_cmd_valid),
  .cmd_ready                (dec_zz_cmd_ready),
  .rsp_valid                (dec_zz_rsp_valid),
  .rsp_ready                (dec_rsp_ready),
  .cfu_id                   (dec_cfu_id)
);


dfx_decoupler_0 cfu_decoupler_inst (
    .s_cfu_inputs_cmd_valid                 (cmd_valid),
    .s_cfu_inputs_cmd_payload_function_id   (cmd_payload_function_id),
    .s_cfu_inputs_cmd_payload_inputs_0      (cmd_payload_inputs_0),
    .s_cfu_inputs_cmd_payload_inputs_1      (cmd_payload_inputs_1),
    .s_cfu_inputs_rsp_ready                 (rsp_ready),
    .s_cfu_inputs_reset                     (reset),

    .s_cfu_outputs_cmd_ready                 (),//cmd_ready),
    .s_cfu_outputs_rsp_valid                 (rsp_valid),
    .s_cfu_outputs_rsp_payload_outputs_0     (rsp_payload_outputs_0),
    .s_cfu_outputs_cfu_id                    (cfu_id),

    .decouple                               (decouple),
    .rp_cfu_inputs_cmd_valid                (dec_zz_cmd_valid),
    .rp_cfu_inputs_cmd_payload_function_id  (dec_zz_cmd_payload_function_id),
    .rp_cfu_inputs_cmd_payload_inputs_0     (dec_zz_cmd_payload_inputs_0),
    .rp_cfu_inputs_cmd_payload_inputs_1     (dec_zz_cmd_payload_inputs_1),
    .rp_cfu_inputs_rsp_ready                (dec_rsp_ready),
    .rp_cfu_inputs_reset                    (dec_reset),
    .rp_cfu_outputs_cmd_ready                (dec_zz_cmd_ready),
    .rp_cfu_outputs_rsp_valid                (dec_zz_rsp_valid),
    .rp_cfu_outputs_rsp_payload_outputs_0    (dec_zz_rsp_payload_outputs_0),
    .rp_cfu_outputs_cfu_id                   (dec_cfu_id),
    .decouple_status                        (),
    .decouple_ref_clk                       (clk),
    .cfu_inputs_ref_clk                     (clk)
);

`endif

assign cmd_ready = cmd_valid & (~decouple) ;

ila_1 ila(.clk(clk), 
    .probe0(cmd_ready),
    .probe1(rsp_valid),
    .probe2(rsp_payload_outputs_0),
    .probe3(dec_zz_rsp_payload_outputs_0),
    .probe4(cmd_payload_inputs_0),
    .probe5(cmd_payload_function_id),
    .probe6(dec_zz_cmd_payload_inputs_0),
    .probe7(dec_zz_rsp_valid),
    .probe8(decouple)
    );

endmodule

module perf_counter (
  input clk,
  input reset,
  input trigger,
  output eos,
  output reg [31:0] counter
);

STARTUPE2 STARTUPE2_inst (
   // .CFGCLK(CFGCLK),       // 1-bit output: Configuration main clock output
   // .CFGMCLK(CFGMCLK),     // 1-bit output: Configuration internal oscillator clock output
   .EOS(eos),             // 1-bit output: Active high output signal indicating the End Of Startup.
   .CLK(clk),              // 1-bit input: User start-up clock input
   .GSR(1'b0),
   .GTS(1'b0),
   .PACK(1'b0),
   .USRCCLKO(1'b0),
   .USRCCLKTS(1'b1),
   .KEYCLEARB(1'b1),
   .USRDONEO(1'b1),   // 1-bit input: User DONE pin output control
   .USRDONETS(1'b0)  // 1-bit input: User DONE 3-state enable output
);

reg [31:0] counter_next;

localparam IDLE = 0, RECON = 1;

reg state = 0, next_state;

always @(*) begin : counter_state
	case (state)
	IDLE: begin
		next_state = (!eos | trigger)? RECON : IDLE;
		counter_next = counter;
	end
	RECON: begin
		next_state = (eos & ~trigger)? IDLE : RECON;
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
  if(reset)
    counter <= 32'd0;
  else
    counter <= counter_next;
end

endmodule
