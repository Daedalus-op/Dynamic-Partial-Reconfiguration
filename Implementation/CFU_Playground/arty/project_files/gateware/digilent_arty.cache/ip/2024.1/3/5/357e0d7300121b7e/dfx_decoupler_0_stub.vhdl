-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Mon Nov 24 14:44:59 2025
-- Host        : jsp-H370M-D3H running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dfx_decoupler_0_stub.vhdl
-- Design      : dfx_decoupler_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_cfu_inputs_cmd_valid : in STD_LOGIC_VECTOR ( 0 to 0 );
    rp_cfu_inputs_cmd_valid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_cfu_inputs_cmd_payload_function_id : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rp_cfu_inputs_cmd_payload_function_id : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_cfu_inputs_cmd_payload_inputs_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_cfu_inputs_cmd_payload_inputs_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_cfu_inputs_cmd_payload_inputs_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_cfu_inputs_cmd_payload_inputs_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_cfu_inputs_rsp_ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    rp_cfu_inputs_rsp_ready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_cfu_inputs_reset : in STD_LOGIC_VECTOR ( 0 to 0 );
    rp_cfu_inputs_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_cfu_inputs_clk : in STD_LOGIC_VECTOR ( 0 to 0 );
    rp_cfu_inputs_clk : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_cfu_outputs_cmd_ready : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_cfu_outputs_cmd_ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_cfu_outputs_rsp_valid : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_cfu_outputs_rsp_valid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_cfu_outputs_rsp_payload_outputs_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_cfu_outputs_rsp_payload_outputs_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    decouple : in STD_LOGIC;
    decouple_status : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_cfu_inputs_cmd_valid[0:0],rp_cfu_inputs_cmd_valid[0:0],s_cfu_inputs_cmd_payload_function_id[9:0],rp_cfu_inputs_cmd_payload_function_id[9:0],s_cfu_inputs_cmd_payload_inputs_0[31:0],rp_cfu_inputs_cmd_payload_inputs_0[31:0],s_cfu_inputs_cmd_payload_inputs_1[31:0],rp_cfu_inputs_cmd_payload_inputs_1[31:0],s_cfu_inputs_rsp_ready[0:0],rp_cfu_inputs_rsp_ready[0:0],s_cfu_inputs_reset[0:0],rp_cfu_inputs_reset[0:0],s_cfu_inputs_clk[0:0],rp_cfu_inputs_clk[0:0],s_cfu_outputs_cmd_ready[0:0],rp_cfu_outputs_cmd_ready[0:0],s_cfu_outputs_rsp_valid[0:0],rp_cfu_outputs_rsp_valid[0:0],s_cfu_outputs_rsp_payload_outputs_0[31:0],rp_cfu_outputs_rsp_payload_outputs_0[31:0],decouple,decouple_status";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dfx_decoupler_dfx_decoupler_0,Vivado 2024.1";
begin
end;
