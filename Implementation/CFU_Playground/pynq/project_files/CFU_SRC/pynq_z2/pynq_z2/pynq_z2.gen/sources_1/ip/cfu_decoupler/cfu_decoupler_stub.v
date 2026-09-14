// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Nov  3 21:10:28 2025
// Host        : arix8 running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/arix8/Desktop/CFU_SRC/pynq_z2/pynq_z2/pynq_z2.gen/sources_1/ip/cfu_decoupler/cfu_decoupler_stub.v
// Design      : cfu_decoupler
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "cfu_decoupler,dfx_decoupler_cfu_decoupler,{}" *) (* core_generation_info = "cfu_decoupler,dfx_decoupler_cfu_decoupler,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dfx_decoupler,x_ipVersion=1.0,x_ipCoreRevision=11,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_XDEVICEFAMILY=zynq}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "dfx_decoupler_cfu_decoupler,Vivado 2024.2" *) 
module cfu_decoupler(s_cfu_inputs_cmd_valid, 
  rp_cfu_inputs_cmd_valid, s_cfu_inputs_cmd_payload_function_id, 
  rp_cfu_inputs_cmd_payload_function_id, s_cfu_inputs_cmd_payload_inputs_0, 
  rp_cfu_inputs_cmd_payload_inputs_0, s_cfu_inputs_cmd_payload_inputs_1, 
  rp_cfu_inputs_cmd_payload_inputs_1, s_cfu_inputs_rsp_ready, rp_cfu_inputs_rsp_ready, 
  s_cfu_inputs_reset, rp_cfu_inputs_reset, s_cfu_inputs_clk, rp_cfu_inputs_clk, 
  s_cfu_output_cmd_ready, rp_cfu_output_cmd_ready, s_cfu_output_rsp_valid, 
  rp_cfu_output_rsp_valid, s_cfu_output_rsp_payload_outputs_0, 
  rp_cfu_output_rsp_payload_outputs_0, s_cfu_output_cfu_id, rp_cfu_output_cfu_id, 
  decouple, decouple_status)
/* synthesis syn_black_box black_box_pad_pin="s_cfu_inputs_cmd_valid[0:0],rp_cfu_inputs_cmd_valid[0:0],s_cfu_inputs_cmd_payload_function_id[0:0],rp_cfu_inputs_cmd_payload_function_id[0:0],s_cfu_inputs_cmd_payload_inputs_0[9:0],rp_cfu_inputs_cmd_payload_inputs_0[9:0],s_cfu_inputs_cmd_payload_inputs_1[31:0],rp_cfu_inputs_cmd_payload_inputs_1[31:0],s_cfu_inputs_rsp_ready[31:0],rp_cfu_inputs_rsp_ready[31:0],s_cfu_inputs_reset[0:0],rp_cfu_inputs_reset[0:0],s_cfu_inputs_clk[0:0],rp_cfu_inputs_clk[0:0],s_cfu_output_cmd_ready[0:0],rp_cfu_output_cmd_ready[0:0],s_cfu_output_rsp_valid[0:0],rp_cfu_output_rsp_valid[0:0],s_cfu_output_rsp_payload_outputs_0[31:0],rp_cfu_output_rsp_payload_outputs_0[31:0],s_cfu_output_cfu_id[2:0],rp_cfu_output_cfu_id[2:0],decouple,decouple_status" */;
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
  output [0:0]s_cfu_output_cmd_ready;
  input [0:0]rp_cfu_output_cmd_ready;
  output [0:0]s_cfu_output_rsp_valid;
  input [0:0]rp_cfu_output_rsp_valid;
  output [31:0]s_cfu_output_rsp_payload_outputs_0;
  input [31:0]rp_cfu_output_rsp_payload_outputs_0;
  output [2:0]s_cfu_output_cfu_id;
  input [2:0]rp_cfu_output_cfu_id;
  input decouple;
  output decouple_status;
endmodule
