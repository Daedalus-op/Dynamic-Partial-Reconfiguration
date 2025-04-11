//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Fri Apr 11 23:02:02 2025
//Host        : xubundadu-Lenovo running 64-bit Ubuntu 24.04.2 LTS
//Command     : generate_target system_dfx_wrapper.bd
//Design      : system_dfx_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_dfx_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    ICAP_0_csib,
    ICAP_0_i,
    ICAP_0_o,
    ICAP_0_rdwrb,
    btn,
    clk_100MHz,
    op_allu_mul,
    read_data_0,
    reset,
    rx_0,
    stored_data_0,
    tx_0,
    write_data_0);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output ICAP_0_csib;
  output [31:0]ICAP_0_i;
  input [31:0]ICAP_0_o;
  output ICAP_0_rdwrb;
  input btn;
  input clk_100MHz;
  input [1:0]op_allu_mul;
  output [7:0]read_data_0;
  input reset;
  input rx_0;
  output [7:0]stored_data_0;
  output tx_0;
  input [7:0]write_data_0;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire ICAP_0_csib;
  wire [31:0]ICAP_0_i;
  wire [31:0]ICAP_0_o;
  wire ICAP_0_rdwrb;
  wire btn;
  wire clk_100MHz;
  wire [1:0]op_allu_mul;
  wire [7:0]read_data_0;
  wire reset;
  wire rx_0;
  wire [7:0]stored_data_0;
  wire tx_0;
  wire [7:0]write_data_0;

  system_dfx system_dfx_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .ICAP_0_csib(ICAP_0_csib),
        .ICAP_0_i(ICAP_0_i),
        .ICAP_0_o(ICAP_0_o),
        .ICAP_0_rdwrb(ICAP_0_rdwrb),
        .btn(btn),
        .clk_100MHz(clk_100MHz),
        .op_allu_mul(op_allu_mul),
        .read_data_0(read_data_0),
        .reset(reset),
        .rx_0(rx_0),
        .stored_data_0(stored_data_0),
        .tx_0(tx_0),
        .write_data_0(write_data_0));
endmodule
