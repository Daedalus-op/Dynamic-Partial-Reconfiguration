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



module Cfu (
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

cfu_compute comp (
  .clk(clk),
  .reset(reset),

  .cmd_payload_function_id(cmd_payload_function_id),
  .cmd_payload_inputs_0(cmd_payload_inputs_0),
  .cmd_payload_inputs_1(cmd_payload_inputs_1),

  .rsp_payload_outputs_0(rsp_payload_outputs_0),

  .cmd_valid(cmd_valid),
  .cmd_ready(cmd_ready),
  .rsp_valid(rsp_valid),
  .rsp_ready(rsp_ready)
);

//wire eos;

//profiler prof_unit(
//  .clk(clk),
//  .eos(eos)
//);

endmodule

module profiler (
  input clk,
  output eos
);

(* KEEP = "true" *)
wire preq;

STARTUPE2 STARTUPE2_inst (
   // .CFGCLK(CFGCLK),       // 1-bit output: Configuration main clock output
   // .CFGMCLK(CFGMCLK),     // 1-bit output: Configuration internal oscillator clock output
   .EOS(eos),             // 1-bit output: Active high output signal indicating the End Of Startup.
   .PREQ(preq),           // 1-bit output: PROGRAM request to fabric output
   .CLK(clk)              // 1-bit input: User start-up clock input
   // .GSR(GSR),             // 1-bit input: Global Set/Reset input (GSR cannot be used for the port name)
   // .GTS(GTS),             // 1-bit input: Global 3-state input (GTS cannot be used for the port name)
   // .KEYCLEARB(KEYCLEARB), // 1-bit input: Clear AES Decrypter Key input from Battery-Backed RAM (BBRAM)
   // .PACK(PACK),           // 1-bit input: PROGRAM acknowledge input
   // .USRCCLKO(USRCCLKO),   // 1-bit input: User CCLK input
   //                        // For Zynq-7000 devices, this input must be tied to GND
   // .USRCCLKTS(USRCCLKTS), // 1-bit input: User CCLK 3-state enable input
   //                        // For Zynq-7000 devices, this input must be tied to VCC
   // .USRDONEO(USRDONEO),   // 1-bit input: User DONE pin output control
   // .USRDONETS(USRDONETS)  // 1-bit input: User DONE 3-state enable output
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
