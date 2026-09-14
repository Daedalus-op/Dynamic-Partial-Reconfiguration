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
  input               decouple,
  input               reset,
  input               clk
);

  wire           rp_cmd_valid, rp_cmd_ready, rp_rsp_valid, rp_rsp_ready;
  wire  [9:0]    rp_cmd_payload_function_id;
  wire  [31:0]   rp_cmd_payload_inputs_0;
  wire  [31:0]   rp_cmd_payload_inputs_1;
  wire  [31:0]   rp_rsp_payload_outputs_0;
  wire           rp_reset;
  wire           rp_clk;


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

endmodule
