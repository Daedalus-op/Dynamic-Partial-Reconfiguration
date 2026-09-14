//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_f60c_wrapper.bd
//Design : bd_f60c_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_f60c_wrapper
   (SLOT_0_AXI_araddr,
    SLOT_0_AXI_arready,
    SLOT_0_AXI_arvalid,
    SLOT_0_AXI_awaddr,
    SLOT_0_AXI_awready,
    SLOT_0_AXI_awvalid,
    SLOT_0_AXI_bready,
    SLOT_0_AXI_bvalid,
    SLOT_0_AXI_rdata,
    SLOT_0_AXI_rready,
    SLOT_0_AXI_rresp,
    SLOT_0_AXI_rvalid,
    SLOT_0_AXI_wdata,
    SLOT_0_AXI_wready,
    SLOT_0_AXI_wvalid,
    SLOT_1_SPI_io0_i,
    SLOT_1_SPI_io0_o,
    SLOT_1_SPI_io0_t,
    SLOT_1_SPI_io1_i,
    SLOT_1_SPI_io1_o,
    SLOT_1_SPI_io1_t,
    SLOT_1_SPI_io2_i,
    SLOT_1_SPI_io2_o,
    SLOT_1_SPI_io2_t,
    SLOT_1_SPI_io3_i,
    SLOT_1_SPI_io3_o,
    SLOT_1_SPI_io3_t,
    SLOT_1_SPI_sck_i,
    SLOT_1_SPI_sck_o,
    SLOT_1_SPI_sck_t,
    SLOT_1_SPI_ss_i,
    SLOT_1_SPI_ss_o,
    SLOT_1_SPI_ss_t,
    clk,
    probe0,
    resetn);
  input [31:0]SLOT_0_AXI_araddr;
  input SLOT_0_AXI_arready;
  input SLOT_0_AXI_arvalid;
  input [31:0]SLOT_0_AXI_awaddr;
  input SLOT_0_AXI_awready;
  input SLOT_0_AXI_awvalid;
  input SLOT_0_AXI_bready;
  input SLOT_0_AXI_bvalid;
  input [31:0]SLOT_0_AXI_rdata;
  input SLOT_0_AXI_rready;
  input [1:0]SLOT_0_AXI_rresp;
  input SLOT_0_AXI_rvalid;
  input [31:0]SLOT_0_AXI_wdata;
  input SLOT_0_AXI_wready;
  input SLOT_0_AXI_wvalid;
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
  input SLOT_1_SPI_sck_i;
  input SLOT_1_SPI_sck_o;
  input SLOT_1_SPI_sck_t;
  input [0:0]SLOT_1_SPI_ss_i;
  input [0:0]SLOT_1_SPI_ss_o;
  input SLOT_1_SPI_ss_t;
  input clk;
  input [2:0]probe0;
  input resetn;

  wire [31:0]SLOT_0_AXI_araddr;
  wire SLOT_0_AXI_arready;
  wire SLOT_0_AXI_arvalid;
  wire [31:0]SLOT_0_AXI_awaddr;
  wire SLOT_0_AXI_awready;
  wire SLOT_0_AXI_awvalid;
  wire SLOT_0_AXI_bready;
  wire SLOT_0_AXI_bvalid;
  wire [31:0]SLOT_0_AXI_rdata;
  wire SLOT_0_AXI_rready;
  wire [1:0]SLOT_0_AXI_rresp;
  wire SLOT_0_AXI_rvalid;
  wire [31:0]SLOT_0_AXI_wdata;
  wire SLOT_0_AXI_wready;
  wire SLOT_0_AXI_wvalid;
  wire SLOT_1_SPI_io0_i;
  wire SLOT_1_SPI_io0_o;
  wire SLOT_1_SPI_io0_t;
  wire SLOT_1_SPI_io1_i;
  wire SLOT_1_SPI_io1_o;
  wire SLOT_1_SPI_io1_t;
  wire SLOT_1_SPI_io2_i;
  wire SLOT_1_SPI_io2_o;
  wire SLOT_1_SPI_io2_t;
  wire SLOT_1_SPI_io3_i;
  wire SLOT_1_SPI_io3_o;
  wire SLOT_1_SPI_io3_t;
  wire SLOT_1_SPI_sck_i;
  wire SLOT_1_SPI_sck_o;
  wire SLOT_1_SPI_sck_t;
  wire [0:0]SLOT_1_SPI_ss_i;
  wire [0:0]SLOT_1_SPI_ss_o;
  wire SLOT_1_SPI_ss_t;
  wire clk;
  wire [2:0]probe0;
  wire resetn;

  bd_f60c bd_f60c_i
       (.SLOT_0_AXI_araddr(SLOT_0_AXI_araddr),
        .SLOT_0_AXI_arready(SLOT_0_AXI_arready),
        .SLOT_0_AXI_arvalid(SLOT_0_AXI_arvalid),
        .SLOT_0_AXI_awaddr(SLOT_0_AXI_awaddr),
        .SLOT_0_AXI_awready(SLOT_0_AXI_awready),
        .SLOT_0_AXI_awvalid(SLOT_0_AXI_awvalid),
        .SLOT_0_AXI_bready(SLOT_0_AXI_bready),
        .SLOT_0_AXI_bvalid(SLOT_0_AXI_bvalid),
        .SLOT_0_AXI_rdata(SLOT_0_AXI_rdata),
        .SLOT_0_AXI_rready(SLOT_0_AXI_rready),
        .SLOT_0_AXI_rresp(SLOT_0_AXI_rresp),
        .SLOT_0_AXI_rvalid(SLOT_0_AXI_rvalid),
        .SLOT_0_AXI_wdata(SLOT_0_AXI_wdata),
        .SLOT_0_AXI_wready(SLOT_0_AXI_wready),
        .SLOT_0_AXI_wvalid(SLOT_0_AXI_wvalid),
        .SLOT_1_SPI_io0_i(SLOT_1_SPI_io0_i),
        .SLOT_1_SPI_io0_o(SLOT_1_SPI_io0_o),
        .SLOT_1_SPI_io0_t(SLOT_1_SPI_io0_t),
        .SLOT_1_SPI_io1_i(SLOT_1_SPI_io1_i),
        .SLOT_1_SPI_io1_o(SLOT_1_SPI_io1_o),
        .SLOT_1_SPI_io1_t(SLOT_1_SPI_io1_t),
        .SLOT_1_SPI_io2_i(SLOT_1_SPI_io2_i),
        .SLOT_1_SPI_io2_o(SLOT_1_SPI_io2_o),
        .SLOT_1_SPI_io2_t(SLOT_1_SPI_io2_t),
        .SLOT_1_SPI_io3_i(SLOT_1_SPI_io3_i),
        .SLOT_1_SPI_io3_o(SLOT_1_SPI_io3_o),
        .SLOT_1_SPI_io3_t(SLOT_1_SPI_io3_t),
        .SLOT_1_SPI_sck_i(SLOT_1_SPI_sck_i),
        .SLOT_1_SPI_sck_o(SLOT_1_SPI_sck_o),
        .SLOT_1_SPI_sck_t(SLOT_1_SPI_sck_t),
        .SLOT_1_SPI_ss_i(SLOT_1_SPI_ss_i),
        .SLOT_1_SPI_ss_o(SLOT_1_SPI_ss_o),
        .SLOT_1_SPI_ss_t(SLOT_1_SPI_ss_t),
        .clk(clk),
        .probe0(probe0),
        .resetn(resetn));
endmodule
