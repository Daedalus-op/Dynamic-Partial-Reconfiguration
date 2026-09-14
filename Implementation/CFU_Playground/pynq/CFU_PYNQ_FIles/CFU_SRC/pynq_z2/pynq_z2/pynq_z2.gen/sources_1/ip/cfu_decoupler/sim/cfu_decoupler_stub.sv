// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


//------------------------------------------------------------------------------------
// Filename:    cfu_decoupler_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//
//------------------------------------------------------------------------------------
`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module cfu_decoupler (
  input bit [0 : 0] s_cfu_inputs_cmd_valid,
  output bit [0 : 0] rp_cfu_inputs_cmd_valid,
  input bit [0 : 0] s_cfu_inputs_cmd_payload_function_id,
  output bit [0 : 0] rp_cfu_inputs_cmd_payload_function_id,
  input bit [9 : 0] s_cfu_inputs_cmd_payload_inputs_0,
  output bit [9 : 0] rp_cfu_inputs_cmd_payload_inputs_0,
  input bit [31 : 0] s_cfu_inputs_cmd_payload_inputs_1,
  output bit [31 : 0] rp_cfu_inputs_cmd_payload_inputs_1,
  input bit [31 : 0] s_cfu_inputs_rsp_ready,
  output bit [31 : 0] rp_cfu_inputs_rsp_ready,
  input bit [0 : 0] s_cfu_inputs_reset,
  output bit [0 : 0] rp_cfu_inputs_reset,
  input bit [0 : 0] s_cfu_inputs_clk,
  output bit [0 : 0] rp_cfu_inputs_clk,
  output bit [0 : 0] s_cfu_output_cmd_ready,
  input bit [0 : 0] rp_cfu_output_cmd_ready,
  output bit [0 : 0] s_cfu_output_rsp_valid,
  input bit [0 : 0] rp_cfu_output_rsp_valid,
  output bit [31 : 0] s_cfu_output_rsp_payload_outputs_0,
  input bit [31 : 0] rp_cfu_output_rsp_payload_outputs_0,
  output bit [2 : 0] s_cfu_output_cfu_id,
  input bit [2 : 0] rp_cfu_output_cfu_id,
  input bit_as_bool decouple,
  output bit_as_bool decouple_status
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module cfu_decoupler (s_cfu_inputs_cmd_valid,rp_cfu_inputs_cmd_valid,s_cfu_inputs_cmd_payload_function_id,rp_cfu_inputs_cmd_payload_function_id,s_cfu_inputs_cmd_payload_inputs_0,rp_cfu_inputs_cmd_payload_inputs_0,s_cfu_inputs_cmd_payload_inputs_1,rp_cfu_inputs_cmd_payload_inputs_1,s_cfu_inputs_rsp_ready,rp_cfu_inputs_rsp_ready,s_cfu_inputs_reset,rp_cfu_inputs_reset,s_cfu_inputs_clk,rp_cfu_inputs_clk,s_cfu_output_cmd_ready,rp_cfu_output_cmd_ready,s_cfu_output_rsp_valid,rp_cfu_output_rsp_valid,s_cfu_output_rsp_payload_outputs_0,rp_cfu_output_rsp_payload_outputs_0,s_cfu_output_cfu_id,rp_cfu_output_cfu_id,decouple,decouple_status)
(* integer foreign = "SystemC";
*);
  input bit [0 : 0] s_cfu_inputs_cmd_valid;
  output wire [0 : 0] rp_cfu_inputs_cmd_valid;
  input bit [0 : 0] s_cfu_inputs_cmd_payload_function_id;
  output wire [0 : 0] rp_cfu_inputs_cmd_payload_function_id;
  input bit [9 : 0] s_cfu_inputs_cmd_payload_inputs_0;
  output wire [9 : 0] rp_cfu_inputs_cmd_payload_inputs_0;
  input bit [31 : 0] s_cfu_inputs_cmd_payload_inputs_1;
  output wire [31 : 0] rp_cfu_inputs_cmd_payload_inputs_1;
  input bit [31 : 0] s_cfu_inputs_rsp_ready;
  output wire [31 : 0] rp_cfu_inputs_rsp_ready;
  input bit [0 : 0] s_cfu_inputs_reset;
  output wire [0 : 0] rp_cfu_inputs_reset;
  input bit [0 : 0] s_cfu_inputs_clk;
  output wire [0 : 0] rp_cfu_inputs_clk;
  output wire [0 : 0] s_cfu_output_cmd_ready;
  input bit [0 : 0] rp_cfu_output_cmd_ready;
  output wire [0 : 0] s_cfu_output_rsp_valid;
  input bit [0 : 0] rp_cfu_output_rsp_valid;
  output wire [31 : 0] s_cfu_output_rsp_payload_outputs_0;
  input bit [31 : 0] rp_cfu_output_rsp_payload_outputs_0;
  output wire [2 : 0] s_cfu_output_cfu_id;
  input bit [2 : 0] rp_cfu_output_cfu_id;
  input bit decouple;
  output wire decouple_status;
endmodule
`endif
