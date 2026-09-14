// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module cfu_decoupler (
  s_cfu_inputs_cmd_valid,
  rp_cfu_inputs_cmd_valid,
  s_cfu_inputs_cmd_payload_function_id,
  rp_cfu_inputs_cmd_payload_function_id,
  s_cfu_inputs_cmd_payload_inputs_0,
  rp_cfu_inputs_cmd_payload_inputs_0,
  s_cfu_inputs_cmd_payload_inputs_1,
  rp_cfu_inputs_cmd_payload_inputs_1,
  s_cfu_inputs_rsp_ready,
  rp_cfu_inputs_rsp_ready,
  s_cfu_inputs_reset,
  rp_cfu_inputs_reset,
  s_cfu_inputs_clk,
  rp_cfu_inputs_clk,
  s_cfu_output_cmd_ready,
  rp_cfu_output_cmd_ready,
  s_cfu_output_rsp_valid,
  rp_cfu_output_rsp_valid,
  s_cfu_output_rsp_payload_outputs_0,
  rp_cfu_output_rsp_payload_outputs_0,
  s_cfu_output_cfu_id,
  rp_cfu_output_cfu_id,
  decouple,
  decouple_status
);

  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]s_cfu_inputs_cmd_valid;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]rp_cfu_inputs_cmd_valid;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]s_cfu_inputs_cmd_payload_function_id;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]rp_cfu_inputs_cmd_payload_function_id;
  (* X_INTERFACE_IGNORE = "true" *)
  input [9:0]s_cfu_inputs_cmd_payload_inputs_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [9:0]rp_cfu_inputs_cmd_payload_inputs_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]s_cfu_inputs_cmd_payload_inputs_1;
  (* X_INTERFACE_IGNORE = "true" *)
  output [31:0]rp_cfu_inputs_cmd_payload_inputs_1;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]s_cfu_inputs_rsp_ready;
  (* X_INTERFACE_IGNORE = "true" *)
  output [31:0]rp_cfu_inputs_rsp_ready;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]s_cfu_inputs_reset;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]rp_cfu_inputs_reset;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]s_cfu_inputs_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]rp_cfu_inputs_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]s_cfu_output_cmd_ready;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]rp_cfu_output_cmd_ready;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]s_cfu_output_rsp_valid;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]rp_cfu_output_rsp_valid;
  (* X_INTERFACE_IGNORE = "true" *)
  output [31:0]s_cfu_output_rsp_payload_outputs_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]rp_cfu_output_rsp_payload_outputs_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]s_cfu_output_cfu_id;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]rp_cfu_output_cfu_id;
  (* X_INTERFACE_IGNORE = "true" *)
  input decouple;
  (* X_INTERFACE_IGNORE = "true" *)
  output decouple_status;

  // stub module has no contents

endmodule
