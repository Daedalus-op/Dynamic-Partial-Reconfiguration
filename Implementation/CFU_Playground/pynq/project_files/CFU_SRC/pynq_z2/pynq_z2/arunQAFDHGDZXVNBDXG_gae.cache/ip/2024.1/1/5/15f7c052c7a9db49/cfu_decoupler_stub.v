// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Nov  5 06:49:02 2025
// Host        : jsp-H370M-D3H running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cfu_decoupler_stub.v
// Design      : cfu_decoupler
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dfx_decoupler_cfu_decoupler,Vivado 2024.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_cfu_inputs_cmd_valid, 
  rp_cfu_inputs_cmd_valid, s_cfu_inputs_cmd_payload_function_id, 
  rp_cfu_inputs_cmd_payload_function_id, s_cfu_inputs_cmd_payload_inputs_0, 
  rp_cfu_inputs_cmd_payload_inputs_0, s_cfu_inputs_cmd_payload_inputs_1, 
  rp_cfu_inputs_cmd_payload_inputs_1, s_cfu_inputs_rsp_ready, rp_cfu_inputs_rsp_ready, 
  s_cfu_inputs_reset, rp_cfu_inputs_reset, s_cfu_inputs_clk, rp_cfu_inputs_clk, 
  cfu_inputs_ref_clk, cfu_inputs_decouple_status, s_cfu_output_cmd_ready, 
  rp_cfu_output_cmd_ready, s_cfu_output_rsp_valid, rp_cfu_output_rsp_valid, 
  s_cfu_output_rsp_payload_outputs_0, rp_cfu_output_rsp_payload_outputs_0, 
  s_cfu_output_cfu_id, rp_cfu_output_cfu_id, cfu_output_ref_clk, 
  cfu_output_decouple_status, decouple, decouple_status, decouple_ref_clk)
/* synthesis syn_black_box black_box_pad_pin="s_cfu_inputs_cmd_valid[0:0],rp_cfu_inputs_cmd_valid[0:0],s_cfu_inputs_cmd_payload_function_id[0:0],rp_cfu_inputs_cmd_payload_function_id[0:0],s_cfu_inputs_cmd_payload_inputs_0[9:0],rp_cfu_inputs_cmd_payload_inputs_0[9:0],s_cfu_inputs_cmd_payload_inputs_1[31:0],rp_cfu_inputs_cmd_payload_inputs_1[31:0],s_cfu_inputs_rsp_ready[31:0],rp_cfu_inputs_rsp_ready[31:0],s_cfu_inputs_reset[0:0],rp_cfu_inputs_reset[0:0],s_cfu_inputs_clk[0:0],rp_cfu_inputs_clk[0:0],cfu_inputs_decouple_status,s_cfu_output_cmd_ready[0:0],rp_cfu_output_cmd_ready[0:0],s_cfu_output_rsp_valid[0:0],rp_cfu_output_rsp_valid[0:0],s_cfu_output_rsp_payload_outputs_0[31:0],rp_cfu_output_rsp_payload_outputs_0[31:0],s_cfu_output_cfu_id[2:0],rp_cfu_output_cfu_id[2:0],cfu_output_decouple_status,decouple,decouple_status" */
/* synthesis syn_force_seq_prim="cfu_inputs_ref_clk" */
/* synthesis syn_force_seq_prim="cfu_output_ref_clk" */
/* synthesis syn_force_seq_prim="decouple_ref_clk" */;
  input [0:0]s_cfu_inputs_cmd_valid;
  output [0:0]rp_cfu_inputs_cmd_valid;
  input [0:0]s_cfu_inputs_cmd_payload_function_id;
  output [0:0]rp_cfu_inputs_cmd_payload_function_id;
  input [9:0]s_cfu_inputs_cmd_payload_inputs_0;
  output [9:0]rp_cfu_inputs_cmd_payload_inputs_0;
  input [31:0]s_cfu_inputs_cmd_payload_inputs_1;
  output [31:0]rp_cfu_inputs_cmd_payload_inputs_1;
  input [31:0]s_cfu_inputs_rsp_ready;
  output [31:0]rp_cfu_inputs_rsp_ready;
  input [0:0]s_cfu_inputs_reset;
  output [0:0]rp_cfu_inputs_reset;
  input [0:0]s_cfu_inputs_clk;
  output [0:0]rp_cfu_inputs_clk;
  input cfu_inputs_ref_clk /* synthesis syn_isclock = 1 */;
  output cfu_inputs_decouple_status;
  output [0:0]s_cfu_output_cmd_ready;
  input [0:0]rp_cfu_output_cmd_ready;
  output [0:0]s_cfu_output_rsp_valid;
  input [0:0]rp_cfu_output_rsp_valid;
  output [31:0]s_cfu_output_rsp_payload_outputs_0;
  input [31:0]rp_cfu_output_rsp_payload_outputs_0;
  output [2:0]s_cfu_output_cfu_id;
  input [2:0]rp_cfu_output_cfu_id;
  input cfu_output_ref_clk /* synthesis syn_isclock = 1 */;
  output cfu_output_decouple_status;
  input decouple;
  output decouple_status;
  input decouple_ref_clk /* synthesis syn_isclock = 1 */;
endmodule
