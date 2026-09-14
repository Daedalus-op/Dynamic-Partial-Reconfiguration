-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Fri Nov 28 23:48:10 2025
-- Host        : jsp-H370M-D3H running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/jsp/Storage/CFU-Playground/soc/build/digilent_arty.example_cfu/gateware/digilent_arty.gen/sources_1/bd/design_1/ip/design_1_system_ila_0_0/design_1_system_ila_0_0_stub.vhdl
-- Design      : design_1_system_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_system_ila_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_awvalid : in STD_LOGIC;
    SLOT_0_AXI_awready : in STD_LOGIC;
    SLOT_0_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_wvalid : in STD_LOGIC;
    SLOT_0_AXI_wready : in STD_LOGIC;
    SLOT_0_AXI_bvalid : in STD_LOGIC;
    SLOT_0_AXI_bready : in STD_LOGIC;
    SLOT_0_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_arvalid : in STD_LOGIC;
    SLOT_0_AXI_arready : in STD_LOGIC;
    SLOT_0_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_rvalid : in STD_LOGIC;
    SLOT_0_AXI_rready : in STD_LOGIC;
    SLOT_1_SPI_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_SPI_ss_o : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_SPI_ss_t : in STD_LOGIC;
    SLOT_1_SPI_sck_i : in STD_LOGIC;
    SLOT_1_SPI_sck_o : in STD_LOGIC;
    SLOT_1_SPI_sck_t : in STD_LOGIC;
    SLOT_1_SPI_io0_i : in STD_LOGIC;
    SLOT_1_SPI_io0_o : in STD_LOGIC;
    SLOT_1_SPI_io0_t : in STD_LOGIC;
    SLOT_1_SPI_io1_i : in STD_LOGIC;
    SLOT_1_SPI_io1_o : in STD_LOGIC;
    SLOT_1_SPI_io1_t : in STD_LOGIC;
    SLOT_1_SPI_io2_i : in STD_LOGIC;
    SLOT_1_SPI_io2_o : in STD_LOGIC;
    SLOT_1_SPI_io2_t : in STD_LOGIC;
    SLOT_1_SPI_io3_i : in STD_LOGIC;
    SLOT_1_SPI_io3_o : in STD_LOGIC;
    SLOT_1_SPI_io3_t : in STD_LOGIC;
    resetn : in STD_LOGIC
  );

end design_1_system_ila_0_0;

architecture stub of design_1_system_ila_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[2:0],SLOT_0_AXI_awaddr[31:0],SLOT_0_AXI_awvalid,SLOT_0_AXI_awready,SLOT_0_AXI_wdata[31:0],SLOT_0_AXI_wvalid,SLOT_0_AXI_wready,SLOT_0_AXI_bvalid,SLOT_0_AXI_bready,SLOT_0_AXI_araddr[31:0],SLOT_0_AXI_arvalid,SLOT_0_AXI_arready,SLOT_0_AXI_rdata[31:0],SLOT_0_AXI_rresp[1:0],SLOT_0_AXI_rvalid,SLOT_0_AXI_rready,SLOT_1_SPI_ss_i[0:0],SLOT_1_SPI_ss_o[0:0],SLOT_1_SPI_ss_t,SLOT_1_SPI_sck_i,SLOT_1_SPI_sck_o,SLOT_1_SPI_sck_t,SLOT_1_SPI_io0_i,SLOT_1_SPI_io0_o,SLOT_1_SPI_io0_t,SLOT_1_SPI_io1_i,SLOT_1_SPI_io1_o,SLOT_1_SPI_io1_t,SLOT_1_SPI_io2_i,SLOT_1_SPI_io2_o,SLOT_1_SPI_io2_t,SLOT_1_SPI_io3_i,SLOT_1_SPI_io3_o,SLOT_1_SPI_io3_t,resetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_f60c,Vivado 2024.1";
begin
end;
