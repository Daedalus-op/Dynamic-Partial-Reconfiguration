-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Mon Nov  3 21:10:29 2025
-- Host        : arix8 running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/arix8/Desktop/CFU_SRC/pynq_z2/pynq_z2/pynq_z2.gen/sources_1/ip/cfu_decoupler/cfu_decoupler_stub.vhdl
-- Design      : cfu_decoupler
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cfu_decoupler is
  Port ( 
    s_cfu_inputs_cmd_valid : in STD_LOGIC_VECTOR ( 0 to 0 );
    rp_cfu_inputs_cmd_valid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_cfu_inputs_cmd_payload_function_id : in STD_LOGIC_VECTOR ( 0 to 0 );
    rp_cfu_inputs_cmd_payload_function_id : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_cfu_inputs_cmd_payload_inputs_0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rp_cfu_inputs_cmd_payload_inputs_0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_cfu_inputs_cmd_payload_inputs_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_cfu_inputs_cmd_payload_inputs_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_cfu_inputs_rsp_ready : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_cfu_inputs_rsp_ready : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_cfu_inputs_reset : in STD_LOGIC_VECTOR ( 0 to 0 );
    rp_cfu_inputs_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_cfu_inputs_clk : in STD_LOGIC_VECTOR ( 0 to 0 );
    rp_cfu_inputs_clk : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_cfu_output_cmd_ready : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_cfu_output_cmd_ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_cfu_output_rsp_valid : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_cfu_output_rsp_valid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_cfu_output_rsp_payload_outputs_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_cfu_output_rsp_payload_outputs_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_cfu_output_cfu_id : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_cfu_output_cfu_id : in STD_LOGIC_VECTOR ( 2 downto 0 );
    decouple : in STD_LOGIC;
    decouple_status : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cfu_decoupler : entity is "cfu_decoupler,dfx_decoupler_cfu_decoupler,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of cfu_decoupler : entity is "cfu_decoupler,dfx_decoupler_cfu_decoupler,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dfx_decoupler,x_ipVersion=1.0,x_ipCoreRevision=11,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_XDEVICEFAMILY=zynq}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of cfu_decoupler : entity is "yes";
end cfu_decoupler;

architecture stub of cfu_decoupler is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "s_cfu_inputs_cmd_valid[0:0],rp_cfu_inputs_cmd_valid[0:0],s_cfu_inputs_cmd_payload_function_id[0:0],rp_cfu_inputs_cmd_payload_function_id[0:0],s_cfu_inputs_cmd_payload_inputs_0[9:0],rp_cfu_inputs_cmd_payload_inputs_0[9:0],s_cfu_inputs_cmd_payload_inputs_1[31:0],rp_cfu_inputs_cmd_payload_inputs_1[31:0],s_cfu_inputs_rsp_ready[31:0],rp_cfu_inputs_rsp_ready[31:0],s_cfu_inputs_reset[0:0],rp_cfu_inputs_reset[0:0],s_cfu_inputs_clk[0:0],rp_cfu_inputs_clk[0:0],s_cfu_output_cmd_ready[0:0],rp_cfu_output_cmd_ready[0:0],s_cfu_output_rsp_valid[0:0],rp_cfu_output_rsp_valid[0:0],s_cfu_output_rsp_payload_outputs_0[31:0],rp_cfu_output_rsp_payload_outputs_0[31:0],s_cfu_output_cfu_id[2:0],rp_cfu_output_cfu_id[2:0],decouple,decouple_status";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "dfx_decoupler_cfu_decoupler,Vivado 2024.2";
begin
end;
