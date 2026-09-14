`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2025 08:22:17 PM
// Design Name: 
// Module Name: Cfu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Cfu(
  input                 cmd_valid,
  output     reg        cmd_ready,
  input      [9:0]      cmd_payload_function_id,
  input      [31:0]     cmd_payload_inputs_0,
  input      [31:0]     cmd_payload_inputs_1,
  output     reg        rsp_valid,
  input                 rsp_ready,
  output     reg [31:0] rsp_payload_outputs_0,
  input                 reset,
  input                 clk,
  output reg            to_reconfig,
  output reg [2:0]      configure_to,
  input decouple,
  output wire decouple_status
  );

reg               zz_cmd_valid;
wire               zz_cmd_ready;
reg       [9:0]   zz_cmd_payload_function_id;
reg       [31:0]  zz_cmd_payload_inputs_0;
reg       [31:0]  zz_cmd_payload_inputs_1;
wire               zz_rsp_valid;
reg               zz_rsp_ready;
wire       [31:0]  zz_rsp_payload_outputs_0;

wire [2:0] cfu_id;
always@(*) begin
    if(cfu_id == cmd_payload_function_id[2:0])begin
        to_reconfig = 1'b0;
        configure_to = 3'b000;
        zz_cmd_valid = cmd_valid; 
        cmd_ready = zz_cmd_ready;
        zz_cmd_payload_function_id = cmd_payload_function_id;
        zz_cmd_payload_inputs_0 = cmd_payload_inputs_0;
        zz_cmd_payload_inputs_1 = cmd_payload_inputs_1;
        rsp_valid = zz_rsp_valid;
        zz_rsp_ready = rsp_ready;
        rsp_payload_outputs_0 = zz_rsp_payload_outputs_0;
    end else begin
        to_reconfig = 1'b1;
        configure_to = cmd_payload_function_id[2:0];
        zz_cmd_valid = 1'b0; 
        cmd_ready = 1'b0;
        zz_cmd_payload_function_id = 10'b0000000000;
        zz_cmd_payload_inputs_0 = 32'h00000000;
        zz_cmd_payload_inputs_1 = 32'h00000000;
        rsp_valid = 1'b0;
        zz_rsp_ready = 1'b0;
        rsp_payload_outputs_0 = 32'h00000000;
    end
end



cfu_compute cfu_inst(dec_zz_cmd_valid,dec_zz_cmd_ready,
                  dec_zz_cmd_payload_function_id,
                  dec_zz_cmd_payload_inputs_0,dec_zz_cmd_payload_inputs_1,
                  dec_zz_rsp_valid,dec_rsp_ready,dec_zz_rsp_payload_outputs_0,
                  dec_reset,dec_clk,dec_cfu_id);

cfu_decoupler cfu_decoupler_inst (
    .s_cfu_inputs_cmd_valid           (zz_cmd_valid),
    .s_cfu_inputs_cmd_payload_function_id (zz_cmd_payload_function_id),
    .s_cfu_inputs_cmd_payload_inputs_0 (zz_cmd_payload_inputs_0),
    .s_cfu_inputs_cmd_payload_inputs_1 (zz_cmd_payload_inputs_1),
    .s_cfu_inputs_rsp_ready           (zz_rsp_valid),
    .s_cfu_inputs_reset               (reset),
    .s_cfu_inputs_clk                 (clk),

    .s_cfu_output_cmd_ready             (zz_cmd_ready),
    .s_cfu_output_rsp_valid             (zz_rsp_valid),
    .s_cfu_output_rsp_payload_outputs_0 (zz_rsp_payload_outputs_0),
    .s_cfu_output_cfu_id(cfu_id),

    .decouple                        (decouple),
    .decouple_ref_clk(clk),
    .rp_cfu_inputs_cmd_valid          (dec_zz_cmd_valid),
    .rp_cfu_inputs_cmd_payload_function_id (dec_zz_cmd_payload_function_id),
    .rp_cfu_inputs_cmd_payload_inputs_0 (dec_zz_cmd_payload_inputs_0),
    .rp_cfu_inputs_cmd_payload_inputs_1 (dec_zz_cmd_payload_inputs_1),
    .rp_cfu_inputs_rsp_ready          (dec_rsp_ready),
    .rp_cfu_inputs_reset              (dec_reset),
    .rp_cfu_inputs_clk                (dec_clk),
    .cfu_output_ref_clk(clk),
    .cfu_inputs_ref_clk(clk),
    .rp_cfu_output_cmd_ready            (dec_zz_cmd_ready),
    .rp_cfu_output_rsp_valid            (dec_zz_rsp_valid),
    .rp_cfu_output_rsp_payload_outputs_0 (dec_zz_rsp_payload_outputs_0),
    .rp_cfu_output_cfu_id(dec_cfu_id),
    .decouple_status                 (decouple_status)
);

endmodule