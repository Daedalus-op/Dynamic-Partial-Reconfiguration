// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Fri Nov 28 23:48:08 2025
// Host        : jsp-H370M-D3H running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_system_ila_0_0_stub.v
// Design      : design_1_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_f60c,Vivado 2024.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe0, SLOT_0_AXI_awaddr, 
  SLOT_0_AXI_awvalid, SLOT_0_AXI_awready, SLOT_0_AXI_wdata, SLOT_0_AXI_wvalid, 
  SLOT_0_AXI_wready, SLOT_0_AXI_bvalid, SLOT_0_AXI_bready, SLOT_0_AXI_araddr, 
  SLOT_0_AXI_arvalid, SLOT_0_AXI_arready, SLOT_0_AXI_rdata, SLOT_0_AXI_rresp, 
  SLOT_0_AXI_rvalid, SLOT_0_AXI_rready, SLOT_1_SPI_ss_i, SLOT_1_SPI_ss_o, SLOT_1_SPI_ss_t, 
  SLOT_1_SPI_sck_i, SLOT_1_SPI_sck_o, SLOT_1_SPI_sck_t, SLOT_1_SPI_io0_i, SLOT_1_SPI_io0_o, 
  SLOT_1_SPI_io0_t, SLOT_1_SPI_io1_i, SLOT_1_SPI_io1_o, SLOT_1_SPI_io1_t, SLOT_1_SPI_io2_i, 
  SLOT_1_SPI_io2_o, SLOT_1_SPI_io2_t, SLOT_1_SPI_io3_i, SLOT_1_SPI_io3_o, SLOT_1_SPI_io3_t, 
  resetn)
/* synthesis syn_black_box black_box_pad_pin="probe0[2:0],SLOT_0_AXI_awaddr[31:0],SLOT_0_AXI_awvalid,SLOT_0_AXI_awready,SLOT_0_AXI_wdata[31:0],SLOT_0_AXI_wvalid,SLOT_0_AXI_wready,SLOT_0_AXI_bvalid,SLOT_0_AXI_bready,SLOT_0_AXI_araddr[31:0],SLOT_0_AXI_arvalid,SLOT_0_AXI_arready,SLOT_0_AXI_rdata[31:0],SLOT_0_AXI_rresp[1:0],SLOT_0_AXI_rvalid,SLOT_0_AXI_rready,SLOT_1_SPI_ss_i[0:0],SLOT_1_SPI_ss_o[0:0],SLOT_1_SPI_ss_t,SLOT_1_SPI_sck_i,SLOT_1_SPI_sck_o,SLOT_1_SPI_sck_t,SLOT_1_SPI_io0_i,SLOT_1_SPI_io0_o,SLOT_1_SPI_io0_t,SLOT_1_SPI_io1_i,SLOT_1_SPI_io1_o,SLOT_1_SPI_io1_t,SLOT_1_SPI_io2_i,SLOT_1_SPI_io2_o,SLOT_1_SPI_io2_t,SLOT_1_SPI_io3_i,SLOT_1_SPI_io3_o,SLOT_1_SPI_io3_t,resetn" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [2:0]probe0;
  input [31:0]SLOT_0_AXI_awaddr;
  input SLOT_0_AXI_awvalid;
  input SLOT_0_AXI_awready;
  input [31:0]SLOT_0_AXI_wdata;
  input SLOT_0_AXI_wvalid;
  input SLOT_0_AXI_wready;
  input SLOT_0_AXI_bvalid;
  input SLOT_0_AXI_bready;
  input [31:0]SLOT_0_AXI_araddr;
  input SLOT_0_AXI_arvalid;
  input SLOT_0_AXI_arready;
  input [31:0]SLOT_0_AXI_rdata;
  input [1:0]SLOT_0_AXI_rresp;
  input SLOT_0_AXI_rvalid;
  input SLOT_0_AXI_rready;
  input [0:0]SLOT_1_SPI_ss_i;
  input [0:0]SLOT_1_SPI_ss_o;
  input SLOT_1_SPI_ss_t;
  input SLOT_1_SPI_sck_i;
  input SLOT_1_SPI_sck_o;
  input SLOT_1_SPI_sck_t;
  input SLOT_1_SPI_io0_i;
  input SLOT_1_SPI_io0_o;
  input SLOT_1_SPI_io0_t;
  input SLOT_1_SPI_io1_i;
  input SLOT_1_SPI_io1_o;
  input SLOT_1_SPI_io1_t;
  input SLOT_1_SPI_io2_i;
  input SLOT_1_SPI_io2_o;
  input SLOT_1_SPI_io2_t;
  input SLOT_1_SPI_io3_i;
  input SLOT_1_SPI_io3_o;
  input SLOT_1_SPI_io3_t;
  input resetn;
endmodule
