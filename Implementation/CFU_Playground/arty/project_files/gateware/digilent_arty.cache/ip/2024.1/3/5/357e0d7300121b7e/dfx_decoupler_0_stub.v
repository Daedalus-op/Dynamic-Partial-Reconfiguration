// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Mon Nov 24 14:44:59 2025
// Host        : jsp-H370M-D3H running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dfx_decoupler_0_stub.v
// Design      : dfx_decoupler_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dfx_decoupler_dfx_decoupler_0,Vivado 2024.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_cfu_inputs_cmd_valid, 
  rp_cfu_inputs_cmd_valid, s_cfu_inputs_cmd_payload_function_id, 
  rp_cfu_inputs_cmd_payload_function_id, s_cfu_inputs_cmd_payload_inputs_0, 
  rp_cfu_inputs_cmd_payload_inputs_0, s_cfu_inputs_cmd_payload_inputs_1, 
  rp_cfu_inputs_cmd_payload_inputs_1, s_cfu_inputs_rsp_ready, rp_cfu_inputs_rsp_ready, 
  s_cfu_inputs_reset, rp_cfu_inputs_reset, s_cfu_inputs_clk, rp_cfu_inputs_clk, 
  s_cfu_outputs_cmd_ready, rp_cfu_outputs_cmd_ready, s_cfu_outputs_rsp_valid, 
  rp_cfu_outputs_rsp_valid, s_cfu_outputs_rsp_payload_outputs_0, 
  rp_cfu_outputs_rsp_payload_outputs_0, decouple, decouple_status)
/* synthesis syn_black_box black_box_pad_pin="s_cfu_inputs_cmd_valid[0:0],rp_cfu_inputs_cmd_valid[0:0],s_cfu_inputs_cmd_payload_function_id[9:0],rp_cfu_inputs_cmd_payload_function_id[9:0],s_cfu_inputs_cmd_payload_inputs_0[31:0],rp_cfu_inputs_cmd_payload_inputs_0[31:0],s_cfu_inputs_cmd_payload_inputs_1[31:0],rp_cfu_inputs_cmd_payload_inputs_1[31:0],s_cfu_inputs_rsp_ready[0:0],rp_cfu_inputs_rsp_ready[0:0],s_cfu_inputs_reset[0:0],rp_cfu_inputs_reset[0:0],s_cfu_inputs_clk[0:0],rp_cfu_inputs_clk[0:0],s_cfu_outputs_cmd_ready[0:0],rp_cfu_outputs_cmd_ready[0:0],s_cfu_outputs_rsp_valid[0:0],rp_cfu_outputs_rsp_valid[0:0],s_cfu_outputs_rsp_payload_outputs_0[31:0],rp_cfu_outputs_rsp_payload_outputs_0[31:0],decouple,decouple_status" */;
  input [0:0]s_cfu_inputs_cmd_valid;
  output [0:0]rp_cfu_inputs_cmd_valid;
  input [9:0]s_cfu_inputs_cmd_payload_function_id;
  output [9:0]rp_cfu_inputs_cmd_payload_function_id;
  input [31:0]s_cfu_inputs_cmd_payload_inputs_0;
  output [31:0]rp_cfu_inputs_cmd_payload_inputs_0;
  input [31:0]s_cfu_inputs_cmd_payload_inputs_1;
  output [31:0]rp_cfu_inputs_cmd_payload_inputs_1;
  input [0:0]s_cfu_inputs_rsp_ready;
  output [0:0]rp_cfu_inputs_rsp_ready;
  input [0:0]s_cfu_inputs_reset;
  output [0:0]rp_cfu_inputs_reset;
  input [0:0]s_cfu_inputs_clk;
  output [0:0]rp_cfu_inputs_clk;
  output [0:0]s_cfu_outputs_cmd_ready;
  input [0:0]rp_cfu_outputs_cmd_ready;
  output [0:0]s_cfu_outputs_rsp_valid;
  input [0:0]rp_cfu_outputs_rsp_valid;
  output [31:0]s_cfu_outputs_rsp_payload_outputs_0;
  input [31:0]rp_cfu_outputs_rsp_payload_outputs_0;
  input decouple;
  output decouple_status;
endmodule
