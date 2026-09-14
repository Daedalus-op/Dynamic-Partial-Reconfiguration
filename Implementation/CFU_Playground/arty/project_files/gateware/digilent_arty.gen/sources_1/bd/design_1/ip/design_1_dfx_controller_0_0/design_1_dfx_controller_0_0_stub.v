// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Fri Nov 28 18:43:53 2025
// Host        : jsp-H370M-D3H running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/jsp/Storage/CFU-Playground/soc/build/digilent_arty.example_cfu/gateware/digilent_arty.gen/sources_1/bd/design_1/ip/design_1_dfx_controller_0_0/design_1_dfx_controller_0_0_stub.v
// Design      : design_1_dfx_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dfx_controller_design_1_dfx_controller_0_0,Vivado 2024.1" *)
module design_1_dfx_controller_0_0(m_axi_mem_araddr, m_axi_mem_arlen, 
  m_axi_mem_arsize, m_axi_mem_arburst, m_axi_mem_arprot, m_axi_mem_arcache, 
  m_axi_mem_aruser, m_axi_mem_arvalid, m_axi_mem_arready, m_axi_mem_rdata, m_axi_mem_rresp, 
  m_axi_mem_rlast, m_axi_mem_rvalid, m_axi_mem_rready, clk, reset, icap_clk, icap_reset, 
  icap_csib, icap_rdwrb, icap_i, icap_o, vsm_vs_compute_hw_triggers, 
  vsm_vs_compute_rm_shutdown_req, vsm_vs_compute_rm_shutdown_ack, 
  vsm_vs_compute_rm_decouple, vsm_vs_compute_rm_reset, vsm_vs_compute_event_error, 
  cap_req, cap_gnt, cap_rel)
/* synthesis syn_black_box black_box_pad_pin="m_axi_mem_araddr[31:0],m_axi_mem_arlen[7:0],m_axi_mem_arsize[2:0],m_axi_mem_arburst[1:0],m_axi_mem_arprot[2:0],m_axi_mem_arcache[3:0],m_axi_mem_aruser[3:0],m_axi_mem_arvalid,m_axi_mem_arready,m_axi_mem_rdata[31:0],m_axi_mem_rresp[1:0],m_axi_mem_rlast,m_axi_mem_rvalid,m_axi_mem_rready,reset,icap_reset,icap_csib,icap_rdwrb,icap_i[31:0],icap_o[31:0],vsm_vs_compute_hw_triggers[2:0],vsm_vs_compute_rm_shutdown_req,vsm_vs_compute_rm_shutdown_ack,vsm_vs_compute_rm_decouple,vsm_vs_compute_rm_reset,vsm_vs_compute_event_error,cap_req,cap_gnt,cap_rel" */
/* synthesis syn_force_seq_prim="clk" */
/* synthesis syn_force_seq_prim="icap_clk" */;
  output [31:0]m_axi_mem_araddr;
  output [7:0]m_axi_mem_arlen;
  output [2:0]m_axi_mem_arsize;
  output [1:0]m_axi_mem_arburst;
  output [2:0]m_axi_mem_arprot;
  output [3:0]m_axi_mem_arcache;
  output [3:0]m_axi_mem_aruser;
  output m_axi_mem_arvalid;
  input m_axi_mem_arready;
  input [31:0]m_axi_mem_rdata;
  input [1:0]m_axi_mem_rresp;
  input m_axi_mem_rlast;
  input m_axi_mem_rvalid;
  output m_axi_mem_rready;
  input clk /* synthesis syn_isclock = 1 */;
  input reset;
  input icap_clk /* synthesis syn_isclock = 1 */;
  input icap_reset;
  output icap_csib;
  output icap_rdwrb;
  input [31:0]icap_i;
  output [31:0]icap_o;
  input [2:0]vsm_vs_compute_hw_triggers;
  output vsm_vs_compute_rm_shutdown_req;
  input vsm_vs_compute_rm_shutdown_ack;
  output vsm_vs_compute_rm_decouple;
  output vsm_vs_compute_rm_reset;
  output vsm_vs_compute_event_error;
  output cap_req;
  input cap_gnt;
  input cap_rel;
endmodule
