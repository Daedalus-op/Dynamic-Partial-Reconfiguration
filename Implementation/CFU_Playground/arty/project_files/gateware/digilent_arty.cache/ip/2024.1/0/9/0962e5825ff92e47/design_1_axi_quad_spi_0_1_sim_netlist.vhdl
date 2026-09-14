-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Wed Nov 26 19:48:24 2025
-- Host        : jsp-H370M-D3H running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_quad_spi_0_1_sim_netlist.vhdl
-- Design      : design_1_axi_quad_spi_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized0\ is
  port (
    ce_expnd_i_31 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized0\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized0\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(4),
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(0),
      O => ce_expnd_i_31
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized1\ is
  port (
    ce_expnd_i_30 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized1\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized1\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(4),
      I3 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(1),
      O => ce_expnd_i_30
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized10\ is
  port (
    ce_expnd_i_21 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized10\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized10\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized10\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(4),
      I3 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(3),
      O => ce_expnd_i_21
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized11\ is
  port (
    ce_expnd_i_20 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized11\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized11\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized11\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(4),
      O => ce_expnd_i_20
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized12\ is
  port (
    ce_expnd_i_19 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized12\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized12\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized12\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\(4),
      I3 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\(3),
      O => ce_expnd_i_19
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized13\ is
  port (
    ce_expnd_i_18 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized13\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized13\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized13\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\(4),
      I2 => \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\(2),
      O => ce_expnd_i_18
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized14\ is
  port (
    ce_expnd_i_17 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized14\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized14\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized14\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\(4),
      I3 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\(2),
      O => ce_expnd_i_17
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized19\ is
  port (
    ce_expnd_i_13 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized19\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized19\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized19\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(4),
      O => ce_expnd_i_13
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized19_17\ is
  port (
    ce_expnd_i_5 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized19_17\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized19_17\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized19_17\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\(4),
      I4 => \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\(3),
      O => ce_expnd_i_5
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized2\ is
  port (
    ce_expnd_i_29 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized2\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized2\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(4),
      I3 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(0),
      O => ce_expnd_i_29
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized23\ is
  port (
    ce_expnd_i_9 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized23\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized23\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized23\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\(4),
      I4 => \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\(1),
      O => ce_expnd_i_9
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized23_18\ is
  port (
    ce_expnd_i_1 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized23_18\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized23_18\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized23_18\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\(4),
      I3 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\(1),
      O => ce_expnd_i_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized3\ is
  port (
    ce_expnd_i_28 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized3\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized3\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\(2),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\(4),
      O => ce_expnd_i_28
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized4\ is
  port (
    ce_expnd_i_27 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized4\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized4\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(4),
      I3 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(1),
      O => ce_expnd_i_27
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized5\ is
  port (
    ce_expnd_i_26 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized5\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized5\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(1),
      I4 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(4),
      O => ce_expnd_i_26
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized6\ is
  port (
    ce_expnd_i_25 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized6\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized6\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(2),
      I3 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(4),
      O => ce_expnd_i_25
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized7\ is
  port (
    ce_expnd_i_24 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized7\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized7\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(4),
      I4 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(2),
      O => ce_expnd_i_24
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized8\ is
  port (
    ce_expnd_i_23 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized8\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized8\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized8\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(4),
      I1 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(1),
      I4 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(0),
      O => ce_expnd_i_23
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized9\ is
  port (
    ce_expnd_i_22 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized9\ : entity is "axi_lite_ipif_v3_0_4_pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized9\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized9\ is
begin
CS: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(4),
      I2 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(1),
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(3),
      O => ce_expnd_i_22
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync is
  port (
    Rx_FIFO_Full_Fifo : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    almost_full : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync is
  signal Q : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
\FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => almost_full,
      I1 => \^scndry_out\,
      O => Rx_FIFO_Full_Fifo
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => prmry_in,
      Q => Q,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q,
      Q => \^scndry_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0 is
  port (
    Rx_FIFO_Full_Fifo_d1_synced_i : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    empty : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0 : entity is "cdc_sync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0 is
  signal Q : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => prmry_in,
      Q => Q,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q,
      Q => \^scndry_out\,
      R => '0'
    );
rc_FIFO_Full_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => empty,
      O => Rx_FIFO_Full_Fifo_d1_synced_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_f is
  port (
    \icount_out_reg[0]_0\ : out STD_LOGIC;
    tx_occ_msb_1 : out STD_LOGIC;
    \FIFO_EXISTS.Tx_FIFO_Empty_intr\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ : in STD_LOGIC;
    \FIFO_EXISTS.spiXfer_done_to_axi_1\ : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    \icount_out_reg[1]_0\ : in STD_LOGIC;
    \icount_out_reg[1]_1\ : in STD_LOGIC;
    spiXfer_done_d2 : in STD_LOGIC;
    spiXfer_done_d3 : in STD_LOGIC;
    tx_FIFO_Empty_d1_reg : in STD_LOGIC;
    \icount_out_reg[1]_2\ : in STD_LOGIC;
    \icount_out_reg[3]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \icount_out_reg[0]_1\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_f;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_f is
  signal \icount_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \icount_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \icount_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \icount_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \^icount_out_reg[0]_0\ : STD_LOGIC;
  signal \icount_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \icount_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \^tx_occ_msb_1\ : STD_LOGIC;
begin
  \icount_out_reg[0]_0\ <= \^icount_out_reg[0]_0\;
  tx_occ_msb_1 <= \^tx_occ_msb_1\;
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => tx_FIFO_Empty_d1_reg,
      I1 => \^tx_occ_msb_1\,
      I2 => \icount_out_reg_n_0_[2]\,
      I3 => \FIFO_EXISTS.spiXfer_done_to_axi_1\,
      I4 => \^icount_out_reg[0]_0\,
      I5 => \icount_out_reg_n_0_[1]\,
      O => \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\
    );
\icount_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFFFEFFFFFE"
    )
        port map (
      I0 => bus2ip_reset_ipif_inverted,
      I1 => \icount_out_reg[1]_0\,
      I2 => \icount_out_reg[1]_1\,
      I3 => \^icount_out_reg[0]_0\,
      I4 => \icount_out_reg_n_0_[1]\,
      I5 => \icount_out_reg[1]_2\,
      O => \icount_out[1]_i_1_n_0\
    );
\icount_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEEEEEEBBEEEBEEE"
    )
        port map (
      I0 => rst,
      I1 => \icount_out_reg_n_0_[2]\,
      I2 => \icount_out_reg_n_0_[1]\,
      I3 => \^icount_out_reg[0]_0\,
      I4 => \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\,
      I5 => \FIFO_EXISTS.spiXfer_done_to_axi_1\,
      O => \icount_out[2]_i_1_n_0\
    );
\icount_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFFFEFFFFFE"
    )
        port map (
      I0 => bus2ip_reset_ipif_inverted,
      I1 => \icount_out_reg[1]_0\,
      I2 => \icount_out_reg[1]_1\,
      I3 => \icount_out[3]_i_3_n_0\,
      I4 => \^tx_occ_msb_1\,
      I5 => \icount_out_reg_n_0_[2]\,
      O => \icount_out[3]_i_2_n_0\
    );
\icount_out[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A2A2A2AABAB2A"
    )
        port map (
      I0 => \icount_out_reg_n_0_[2]\,
      I1 => \^icount_out_reg[0]_0\,
      I2 => \icount_out_reg_n_0_[1]\,
      I3 => spiXfer_done_d2,
      I4 => spiXfer_done_d3,
      I5 => \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\,
      O => \icount_out[3]_i_3_n_0\
    );
\icount_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \icount_out_reg[3]_0\,
      D => \icount_out_reg[0]_1\,
      Q => \^icount_out_reg[0]_0\,
      R => '0'
    );
\icount_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \icount_out_reg[3]_0\,
      D => \icount_out[1]_i_1_n_0\,
      Q => \icount_out_reg_n_0_[1]\,
      R => '0'
    );
\icount_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \icount_out_reg[3]_0\,
      D => \icount_out[2]_i_1_n_0\,
      Q => \icount_out_reg_n_0_[2]\,
      R => '0'
    );
\icount_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \icount_out_reg[3]_0\,
      D => \icount_out[3]_i_2_n_0\,
      Q => \^tx_occ_msb_1\,
      R => '0'
    );
tx_FIFO_Empty_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \icount_out_reg_n_0_[1]\,
      I1 => \^icount_out_reg[0]_0\,
      I2 => \FIFO_EXISTS.spiXfer_done_to_axi_1\,
      I3 => \icount_out_reg_n_0_[2]\,
      I4 => \^tx_occ_msb_1\,
      I5 => tx_FIFO_Empty_d1_reg,
      O => \FIFO_EXISTS.Tx_FIFO_Empty_intr\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cross_clk_sync_fifo_1 is
  port (
    SPISR_0_CMD_Error_to_axi_clk : out STD_LOGIC;
    spisel_d1_reg_to_axi_clk : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2_0\ : out STD_LOGIC;
    spiXfer_done_d2 : out STD_LOGIC;
    spiXfer_done_d3 : out STD_LOGIC;
    spicr_3_cpol_to_spi_clk : out STD_LOGIC;
    spicr_4_cpha_to_spi_clk : out STD_LOGIC;
    spicr_5_txfifo_to_spi_clk : out STD_LOGIC;
    spicr_8_tr_inhibit_to_spi_clk : out STD_LOGIC;
    spicr_bits_7_8_to_spi_clk : out STD_LOGIC_VECTOR ( 0 to 1 );
    register_Data_slvsel_int : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2_0\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_0\ : out STD_LOGIC;
    rst_reg : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2_0\ : out STD_LOGIC;
    \FIFO_EXISTS.spiXfer_done_to_axi_1\ : out STD_LOGIC;
    tx_occ_msb : out STD_LOGIC;
    \s_axi_wdata[7]\ : out STD_LOGIC;
    \s_axi_wdata[5]\ : out STD_LOGIC;
    R : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2_0\ : out STD_LOGIC;
    D : out STD_LOGIC;
    \master_tri_state_en_control1__0\ : out STD_LOGIC;
    rst : out STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    SPISR_0_CMD_Error_int : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    empty : in STD_LOGIC;
    Rst_to_spi : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    spicr_1_spe_frm_axi_clk : in STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : in STD_LOGIC;
    spicr_3_cpol_frm_axi_clk : in STD_LOGIC;
    spicr_4_cpha_frm_axi_clk : in STD_LOGIC;
    \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC_0\ : in STD_LOGIC;
    spicr_8_tr_inhibit_frm_axi_clk : in STD_LOGIC;
    spicr_bits_7_8_frm_axi_clk : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SPISSR_frm_axi_clk : in STD_LOGIC;
    stop_clock : in STD_LOGIC;
    transfer_start_reg : in STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : in STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_reg\ : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    \icount_out_reg[3]\ : in STD_LOGIC;
    \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \icount_out_reg[1]\ : in STD_LOGIC;
    p_5_in : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    tx_occ_msb_4 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\ : in STD_LOGIC;
    p_1_in16_in : in STD_LOGIC;
    p_1_in22_in : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    drr_Overrun_int : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    transfer_start_d2 : in STD_LOGIC;
    \IO2_T_control__3\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cross_clk_sync_fifo_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cross_clk_sync_fifo_1 is
  signal D0 : STD_LOGIC;
  signal D01_out : STD_LOGIC;
  signal \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1_n_0\ : STD_LOGIC;
  signal \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0\ : STD_LOGIC;
  signal \^logic_generation_fdr.tx_empt_4_spisr_s2ax_2_0\ : STD_LOGIC;
  signal \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg_n_0\ : STD_LOGIC;
  signal \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_n_0\ : STD_LOGIC;
  signal SPICR_1_SPE_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_2_MST_N_SLV_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_2_MST_N_SLV_to_spi_clk : STD_LOGIC;
  signal SPICR_3_CPOL_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_4_CPHA_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_5_TXFIFO_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_8_TR_INHIBIT_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_bits_7_8_cdc_from_axi_d1_0 : STD_LOGIC;
  signal SPICR_bits_7_8_cdc_from_axi_d1_1 : STD_LOGIC;
  signal SPISR_0_CMD_Error_cdc_from_spi_d1 : STD_LOGIC;
  signal SPISSR_cdc_from_axi_d1 : STD_LOGIC;
  signal Tx_FIFO_Empty_SPISR_cdc_from_spi_d1 : STD_LOGIC;
  signal drr_Overrun_int_cdc_from_spi_d1 : STD_LOGIC;
  signal drr_Overrun_int_cdc_from_spi_d2 : STD_LOGIC;
  signal drr_Overrun_int_cdc_from_spi_d3 : STD_LOGIC;
  signal reset_RcFIFO_ptr_cdc_from_axi_d1 : STD_LOGIC;
  signal reset_RcFIFO_ptr_cdc_from_axi_d2 : STD_LOGIC;
  signal spiXfer_done_d1 : STD_LOGIC;
  signal \^spixfer_done_d2\ : STD_LOGIC;
  signal \^spixfer_done_d3\ : STD_LOGIC;
  signal spicr_1_spe_to_spi_clk : STD_LOGIC;
  signal \^spicr_3_cpol_to_spi_clk\ : STD_LOGIC;
  signal \^spicr_4_cpha_to_spi_clk\ : STD_LOGIC;
  signal \^spicr_8_tr_inhibit_to_spi_clk\ : STD_LOGIC;
  signal \^spicr_bits_7_8_to_spi_clk\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal spisel_d1_reg_cdc_from_spi_d1 : STD_LOGIC;
  signal spisel_pulse_cdc_from_spi_d1 : STD_LOGIC;
  signal spisel_pulse_cdc_from_spi_d2 : STD_LOGIC;
  signal spisel_pulse_cdc_from_spi_d3 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.CMD_ERR_S2AX_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.CMD_ERR_S2AX_1_CDC\ : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of \LOGIC_GENERATION_FDR.CMD_ERR_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.CMD_ERR_S2AX_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.CMD_ERR_S2AX_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.CMD_ERR_S2AX_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_3\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_3\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2\ : label is "PRIMITIVE";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_1_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_1_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_3\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_3\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_AX2S_1_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_SYNC_AXI_2_SPI_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_SYNC_AXI_2_SPI_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_SYNC_AXI_2_SPI_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of QSPI_IO1_T_i_2 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_1\ : label is "soft_lutpair48";
begin
  \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2_0\ <= \^logic_generation_fdr.tx_empt_4_spisr_s2ax_2_0\;
  spiXfer_done_d2 <= \^spixfer_done_d2\;
  spiXfer_done_d3 <= \^spixfer_done_d3\;
  spicr_3_cpol_to_spi_clk <= \^spicr_3_cpol_to_spi_clk\;
  spicr_4_cpha_to_spi_clk <= \^spicr_4_cpha_to_spi_clk\;
  spicr_8_tr_inhibit_to_spi_clk <= \^spicr_8_tr_inhibit_to_spi_clk\;
  spicr_bits_7_8_to_spi_clk(0 to 1) <= \^spicr_bits_7_8_to_spi_clk\(0 to 1);
\FIFO_EXISTS.RX_FIFO_II_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => reset_RcFIFO_ptr_cdc_from_axi_d1,
      I1 => reset_RcFIFO_ptr_cdc_from_axi_d2,
      I2 => Rst_to_spi,
      O => rst
    );
\FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF90"
    )
        port map (
      I0 => \^spixfer_done_d3\,
      I1 => \^spixfer_done_d2\,
      I2 => \FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_reg\,
      I3 => bus2ip_reset_ipif_inverted,
      I4 => \icount_out_reg[3]\,
      I5 => spicr_6_rxfifo_rst_frm_axi_clk,
      O => \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_0\
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FFFF78"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\,
      I2 => p_1_in22_in,
      I3 => drr_Overrun_int_cdc_from_spi_d3,
      I4 => drr_Overrun_int_cdc_from_spi_d2,
      O => \s_axi_wdata[5]\
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FFFF78"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\,
      I2 => p_1_in16_in,
      I3 => spisel_pulse_cdc_from_spi_d3,
      I4 => spisel_pulse_cdc_from_spi_d2,
      O => \s_axi_wdata[7]\
    );
\LOGIC_GENERATION_FDR.CMD_ERR_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => SPISR_0_CMD_Error_int,
      Q => SPISR_0_CMD_Error_cdc_from_spi_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.CMD_ERR_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => SPISR_0_CMD_Error_cdc_from_spi_d1,
      Q => SPISR_0_CMD_Error_to_axi_clk,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg_n_0\,
      Q => drr_Overrun_int_cdc_from_spi_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => drr_Overrun_int_cdc_from_spi_d1,
      Q => drr_Overrun_int_cdc_from_spi_d2,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => drr_Overrun_int_cdc_from_spi_d2,
      Q => drr_Overrun_int_cdc_from_spi_d3,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0\,
      Q => reset_RcFIFO_ptr_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => reset_RcFIFO_ptr_cdc_from_axi_d1,
      Q => reset_RcFIFO_ptr_cdc_from_axi_d2,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_1_spe_frm_axi_clk,
      Q => SPICR_1_SPE_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_1_SPE_cdc_from_axi_d1,
      Q => spicr_1_spe_to_spi_clk,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_2_mst_n_slv_frm_axi_clk,
      Q => SPICR_2_MST_N_SLV_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_2_MST_N_SLV_cdc_from_axi_d1,
      Q => SPICR_2_MST_N_SLV_to_spi_clk,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_3_cpol_frm_axi_clk,
      Q => SPICR_3_CPOL_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_3_CPOL_cdc_from_axi_d1,
      Q => \^spicr_3_cpol_to_spi_clk\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_4_cpha_frm_axi_clk,
      Q => SPICR_4_CPHA_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_4_CPHA_cdc_from_axi_d1,
      Q => \^spicr_4_cpha_to_spi_clk\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC_0\,
      Q => SPICR_5_TXFIFO_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_5_TXFIFO_cdc_from_axi_d1,
      Q => spicr_5_txfifo_to_spi_clk,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_8_tr_inhibit_frm_axi_clk,
      Q => SPICR_8_TR_INHIBIT_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_8_TR_INHIBIT_cdc_from_axi_d1,
      Q => \^spicr_8_tr_inhibit_to_spi_clk\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_bits_7_8_frm_axi_clk(0),
      Q => SPICR_bits_7_8_cdc_from_axi_d1_0,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_bits_7_8_cdc_from_axi_d1_0,
      Q => \^spicr_bits_7_8_to_spi_clk\(1),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_bits_7_8_frm_axi_clk(1),
      Q => SPICR_bits_7_8_cdc_from_axi_d1_1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_bits_7_8_cdc_from_axi_d1_1,
      Q => \^spicr_bits_7_8_to_spi_clk\(0),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0\,
      I1 => spicr_6_rxfifo_rst_frm_axi_clk,
      O => \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1_n_0\
    );
\LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1_n_0\,
      Q => \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0\,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '1',
      Q => spisel_d1_reg_cdc_from_spi_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => spisel_d1_reg_cdc_from_spi_d1,
      Q => spisel_d1_reg_to_axi_clk,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => spisel_pulse_cdc_from_spi_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => spisel_pulse_cdc_from_spi_d1,
      Q => spisel_pulse_cdc_from_spi_d2,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => spisel_pulse_cdc_from_spi_d2,
      Q => spisel_pulse_cdc_from_spi_d3,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPISSR_frm_axi_clk,
      Q => SPISSR_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_SYNC_AXI_2_SPI_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPISSR_cdc_from_axi_d1,
      Q => register_Data_slvsel_int,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_n_0\,
      Q => spiXfer_done_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => spiXfer_done_d1,
      Q => \^spixfer_done_d2\,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^spixfer_done_d2\,
      Q => \^spixfer_done_d3\,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => empty,
      Q => Tx_FIFO_Empty_SPISR_cdc_from_spi_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Tx_FIFO_Empty_SPISR_cdc_from_spi_d1,
      Q => \^logic_generation_fdr.tx_empt_4_spisr_s2ax_2_0\,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg_n_0\,
      I1 => drr_Overrun_int,
      O => D0
    );
\LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => D0,
      Q => \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg_n_0\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_n_0\,
      I1 => wr_en,
      O => D01_out
    );
\LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => D01_out,
      Q => \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_n_0\,
      R => Rst_to_spi
    );
QSPI_IO1_T_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^spicr_bits_7_8_to_spi_clk\(1),
      I1 => \^spicr_bits_7_8_to_spi_clk\(0),
      O => \master_tri_state_en_control1__0\
    );
\QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^spicr_bits_7_8_to_spi_clk\(0),
      I1 => \^spicr_bits_7_8_to_spi_clk\(1),
      I2 => \IO2_T_control__3\,
      O => \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2_0\
    );
QSPI_SS_T_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^spicr_bits_7_8_to_spi_clk\(0),
      I1 => \^spicr_bits_7_8_to_spi_clk\(1),
      O => D
    );
\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SPICR_2_MST_N_SLV_to_spi_clk,
      O => R
    );
\RATIO_OF_2_GENERATE.Count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F07"
    )
        port map (
      I0 => \^spicr_3_cpol_to_spi_clk\,
      I1 => \^spicr_4_cpha_to_spi_clk\,
      I2 => Q(0),
      I3 => transfer_start_d2,
      O => E(0)
    );
\icount_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666660666666"
    )
        port map (
      I0 => \^spixfer_done_d2\,
      I1 => \^spixfer_done_d3\,
      I2 => Bus_RNW_reg,
      I3 => \icount_out_reg[1]\,
      I4 => p_5_in,
      I5 => almost_full,
      O => \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2_0\
    );
\icount_out[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^spixfer_done_d3\,
      I1 => \^spixfer_done_d2\,
      O => \FIFO_EXISTS.spiXfer_done_to_axi_1\
    );
\icount_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFFFEFFFFFE"
    )
        port map (
      I0 => bus2ip_reset_ipif_inverted,
      I1 => \icount_out_reg[3]\,
      I2 => \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC_0\,
      I3 => \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\,
      I4 => \^spixfer_done_d3\,
      I5 => \^spixfer_done_d2\,
      O => rst_reg
    );
transfer_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => stop_clock,
      I1 => transfer_start_reg,
      I2 => \^spicr_8_tr_inhibit_to_spi_clk\,
      I3 => Rst_to_spi,
      I4 => spicr_1_spe_to_spi_clk,
      O => \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2_0\
    );
tx_FIFO_Occpncy_MSB_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tx_occ_msb_4,
      I1 => \^logic_generation_fdr.tx_empt_4_spisr_s2ax_2_0\,
      O => tx_occ_msb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interrupt_control is
  port (
    irpt_wrack_d1 : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC;
    p_1_in34_in : out STD_LOGIC;
    p_1_in31_in : out STD_LOGIC;
    p_1_in28_in : out STD_LOGIC;
    p_1_in25_in : out STD_LOGIC;
    p_1_in22_in : out STD_LOGIC;
    p_1_in19_in : out STD_LOGIC;
    p_1_in16_in : out STD_LOGIC;
    p_1_in13_in : out STD_LOGIC;
    p_1_in10_in : out STD_LOGIC;
    p_1_in7_in : out STD_LOGIC;
    p_1_in4_in : out STD_LOGIC;
    p_1_in1_in : out STD_LOGIC;
    p_1_in_0 : out STD_LOGIC;
    irpt_rdack_d1 : out STD_LOGIC;
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    IP2Bus_WrAck_1 : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    IP2Bus_RdAck_1 : out STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    irpt_wrack : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]_0\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg_reg[9]_0\ : in STD_LOGIC;
    interrupt_wrce_strb : in STD_LOGIC;
    irpt_rdack : in STD_LOGIC;
    intr2bus_rdack0 : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg_0 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]_0\ : in STD_LOGIC;
    tx_FIFO_Empty_d1 : in STD_LOGIC;
    empty : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    rc_FIFO_Full_d1 : in STD_LOGIC;
    tx_occ_msb_4 : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]_0\ : in STD_LOGIC;
    tx_FIFO_Occpncy_MSB_d1 : in STD_LOGIC;
    \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1\ : in STD_LOGIC;
    SPISR_0_CMD_Error_to_axi_clk : in STD_LOGIC;
    \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1\ : in STD_LOGIC;
    SPISR_1_LOOP_Back_Error_int : in STD_LOGIC;
    \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1\ : in STD_LOGIC;
    SPISR_2_MSB_Error_int : in STD_LOGIC;
    \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1\ : in STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : in STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\ : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole : in STD_LOGIC;
    wrack : in STD_LOGIC;
    ip2Bus_WrAck_core_reg : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole : in STD_LOGIC;
    ip2Bus_RdAck_core_reg : in STD_LOGIC;
    bus2ip_wrce_int : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interrupt_control;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interrupt_control is
  signal \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal intr_ip2bus_rdack : STD_LOGIC;
  signal intr_ip2bus_wrack : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_1_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_2_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_3_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_4_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_5_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_6_n_0 : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^p_1_in10_in\ : STD_LOGIC;
  signal \^p_1_in13_in\ : STD_LOGIC;
  signal \^p_1_in16_in\ : STD_LOGIC;
  signal \^p_1_in19_in\ : STD_LOGIC;
  signal \^p_1_in1_in\ : STD_LOGIC;
  signal \^p_1_in22_in\ : STD_LOGIC;
  signal \^p_1_in25_in\ : STD_LOGIC;
  signal \^p_1_in28_in\ : STD_LOGIC;
  signal \^p_1_in31_in\ : STD_LOGIC;
  signal \^p_1_in34_in\ : STD_LOGIC;
  signal \^p_1_in4_in\ : STD_LOGIC;
  signal \^p_1_in7_in\ : STD_LOGIC;
  signal \^p_1_in_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\ : label is "soft_lutpair74";
begin
  \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ <= \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\;
  Q(13 downto 0) <= \^q\(13 downto 0);
  p_0_in(0) <= \^p_0_in\(0);
  p_1_in10_in <= \^p_1_in10_in\;
  p_1_in13_in <= \^p_1_in13_in\;
  p_1_in16_in <= \^p_1_in16_in\;
  p_1_in19_in <= \^p_1_in19_in\;
  p_1_in1_in <= \^p_1_in1_in\;
  p_1_in22_in <= \^p_1_in22_in\;
  p_1_in25_in <= \^p_1_in25_in\;
  p_1_in28_in <= \^p_1_in28_in\;
  p_1_in31_in <= \^p_1_in31_in\;
  p_1_in34_in <= \^p_1_in34_in\;
  p_1_in4_in <= \^p_1_in4_in\;
  p_1_in7_in <= \^p_1_in7_in\;
  p_1_in_0 <= \^p_1_in_0\;
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      I1 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      I2 => s_axi_wdata(0),
      O => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\,
      Q => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"787878FF"
    )
        port map (
      I0 => s_axi_wdata(9),
      I1 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      I2 => \^p_1_in7_in\,
      I3 => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1\,
      I4 => spicr_2_mst_n_slv_frm_axi_clk,
      O => \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0\,
      Q => \^p_1_in7_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FF7878"
    )
        port map (
      I0 => s_axi_wdata(10),
      I1 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      I2 => \^p_1_in4_in\,
      I3 => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1\,
      I4 => SPISR_2_MSB_Error_int,
      O => \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0\,
      Q => \^p_1_in4_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FF7878"
    )
        port map (
      I0 => s_axi_wdata(11),
      I1 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      I2 => \^p_1_in1_in\,
      I3 => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1\,
      I4 => SPISR_1_LOOP_Back_Error_int,
      O => \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0\,
      Q => \^p_1_in1_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FF7878"
    )
        port map (
      I0 => s_axi_wdata(12),
      I1 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      I2 => \^p_1_in_0\,
      I3 => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1\,
      I4 => SPISR_0_CMD_Error_to_axi_clk,
      O => \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0\,
      Q => \^p_1_in_0\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^p_1_in34_in\,
      I1 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      I2 => s_axi_wdata(1),
      O => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\,
      Q => \^p_1_in34_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"787878FF"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      I2 => \^p_1_in31_in\,
      I3 => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]_0\,
      I4 => tx_FIFO_Empty_d1,
      O => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0\,
      Q => \^p_1_in31_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^p_1_in28_in\,
      I1 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      I2 => s_axi_wdata(3),
      O => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0\,
      Q => \^p_1_in28_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7878787878FF7878"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      I2 => \^p_1_in25_in\,
      I3 => empty,
      I4 => scndry_out,
      I5 => rc_FIFO_Full_d1,
      O => \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\,
      Q => \^p_1_in25_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]_0\,
      Q => \^p_1_in22_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF78FF78787878"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      I2 => \^p_1_in19_in\,
      I3 => tx_occ_msb_4,
      I4 => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]_0\,
      I5 => tx_FIFO_Occpncy_MSB_d1,
      O => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\,
      Q => \^p_1_in19_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\,
      Q => \^p_1_in16_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0\,
      Q => \^p_1_in13_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg_reg[9]_0\,
      Q => \^p_1_in10_in\,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => intr_ip2bus_rdack,
      I1 => ip2Bus_RdAck_intr_reg_hole,
      I2 => ip2Bus_RdAck_core_reg,
      O => IP2Bus_RdAck_1
    );
\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\,
      I1 => intr_ip2bus_wrack,
      I2 => ip2Bus_WrAck_intr_reg_hole,
      I3 => wrack,
      I4 => ip2Bus_WrAck_core_reg,
      O => IP2Bus_WrAck_1
    );
intr2bus_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr2bus_rdack0,
      Q => intr_ip2bus_rdack,
      R => reset2ip_reset_int
    );
intr2bus_wrack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => interrupt_wrce_strb,
      Q => intr_ip2bus_wrack,
      R => reset2ip_reset_int
    );
ip2intc_irpt_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => ip2intc_irpt_INST_0_i_1_n_0,
      I2 => ip2intc_irpt_INST_0_i_2_n_0,
      I3 => ip2intc_irpt_INST_0_i_3_n_0,
      I4 => ip2intc_irpt_INST_0_i_4_n_0,
      O => ip2intc_irpt
    );
ip2intc_irpt_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^p_1_in25_in\,
      I1 => \^q\(4),
      I2 => \^p_1_in28_in\,
      I3 => \^q\(3),
      I4 => ip2intc_irpt_INST_0_i_5_n_0,
      O => ip2intc_irpt_INST_0_i_1_n_0
    );
ip2intc_irpt_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^p_1_in16_in\,
      I1 => \^q\(7),
      I2 => \^p_1_in13_in\,
      I3 => \^q\(8),
      I4 => ip2intc_irpt_INST_0_i_6_n_0,
      O => ip2intc_irpt_INST_0_i_2_n_0
    );
ip2intc_irpt_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000077707770777"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^p_1_in1_in\,
      I2 => \^p_1_in7_in\,
      I3 => \^q\(10),
      I4 => \^p_1_in10_in\,
      I5 => \^q\(9),
      O => ip2intc_irpt_INST_0_i_3_n_0
    );
ip2intc_irpt_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^p_1_in4_in\,
      I2 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      I3 => \^q\(0),
      I4 => \^p_1_in_0\,
      I5 => \^q\(13),
      O => ip2intc_irpt_INST_0_i_4_n_0
    );
ip2intc_irpt_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^p_1_in34_in\,
      I2 => \^q\(2),
      I3 => \^p_1_in31_in\,
      O => ip2intc_irpt_INST_0_i_5_n_0
    );
ip2intc_irpt_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^p_1_in19_in\,
      I2 => \^q\(5),
      I3 => \^p_1_in22_in\,
      O => ip2intc_irpt_INST_0_i_6_n_0
    );
\ip_irpt_enable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi_wdata(9),
      Q => \^q\(10),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi_wdata(10),
      Q => \^q\(11),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi_wdata(11),
      Q => \^q\(12),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi_wdata(12),
      Q => \^q\(13),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi_wdata(1),
      Q => \^q\(1),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi_wdata(2),
      Q => \^q\(2),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi_wdata(3),
      Q => \^q\(3),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi_wdata(4),
      Q => \^q\(4),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi_wdata(5),
      Q => \^q\(5),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi_wdata(6),
      Q => \^q\(6),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi_wdata(7),
      Q => \^q\(7),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_int(0),
      D => D(0),
      Q => \^q\(8),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi_wdata(8),
      Q => \^q\(9),
      R => reset2ip_reset_int
    );
ipif_glbl_irpt_enable_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ipif_glbl_irpt_enable_reg_reg_0,
      Q => \^p_0_in\(0),
      R => reset2ip_reset_int
    );
irpt_rdack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_rdack,
      Q => irpt_rdack_d1,
      R => reset2ip_reset_int
    );
irpt_wrack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_wrack,
      Q => irpt_wrack_d1,
      R => reset2ip_reset_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_cntrl_reg is
  port (
    spicr_bits_7_8_frm_axi_clk : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SPISR_1_LOOP_Back_Error_int : out STD_LOGIC;
    spicr_1_spe_frm_axi_clk : out STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]_0\ : out STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]_0\ : out STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]_0\ : out STD_LOGIC;
    spicr_8_tr_inhibit_frm_axi_clk : out STD_LOGIC;
    SPISR_2_MSB_Error_int : out STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0\ : out STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : out STD_LOGIC;
    rst : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wdata[9]\ : out STD_LOGIC;
    \s_axi_wdata[8]\ : out STD_LOGIC;
    SPISR_4_CPOL_CPHA_Error_int : out STD_LOGIC;
    \s_axi_wdata[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPISR_3_Slave_Mode_Error_int : out STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    bus2ip_wrce_int : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    SPICR_data_int_reg0 : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_1\ : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\ : in STD_LOGIC;
    \gen_rst_ic.wr_rst_busy_ic_reg\ : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\ : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 0 to 0 );
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\ : in STD_LOGIC;
    p_1_in10_in : in STD_LOGIC;
    \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1\ : in STD_LOGIC;
    \ip_irpt_enable_reg_reg[8]\ : in STD_LOGIC;
    p_1_in13_in : in STD_LOGIC;
    \FIFO_EXISTS.data_Exists_RcFIFO_int_d1\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0\ : in STD_LOGIC;
    p_1_in16_in : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_1\ : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_2\ : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_3\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_cntrl_reg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_cntrl_reg is
  signal \^control_reg_3_4_generate[4].spicr_data_int_reg[4]_0\ : STD_LOGIC;
  signal \^control_reg_5_9_generate[5].spicr_data_int_reg[5]_0\ : STD_LOGIC;
  signal \^control_reg_5_9_generate[6].spicr_data_int_reg[6]_0\ : STD_LOGIC;
  signal \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0\ : STD_LOGIC;
  signal spicr_7_ss_frm_axi_clk : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2\ : label is "soft_lutpair47";
  attribute box_type : string;
  attribute box_type of \SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I\ : label is "PRIMITIVE";
  attribute box_type of \SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \ip_irpt_enable_reg[8]_i_1\ : label is "soft_lutpair47";
begin
  \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0\ <= \^control_reg_3_4_generate[4].spicr_data_int_reg[4]_0\;
  \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]_0\ <= \^control_reg_5_9_generate[5].spicr_data_int_reg[5]_0\;
  \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]_0\ <= \^control_reg_5_9_generate[6].spicr_data_int_reg[6]_0\;
  \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]_0\ <= \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\;
\CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => SPICR_data_int_reg0,
      D => s_axi_wdata(6),
      Q => spicr_8_tr_inhibit_frm_axi_clk,
      S => reset2ip_reset_int
    );
\CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => SPICR_data_int_reg0,
      D => s_axi_wdata(5),
      Q => spicr_7_ss_frm_axi_clk,
      S => reset2ip_reset_int
    );
\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\,
      Q => spicr_6_rxfifo_rst_frm_axi_clk,
      R => '0'
    );
\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_1\,
      Q => \^control_reg_3_4_generate[4].spicr_data_int_reg[4]_0\,
      R => '0'
    );
\CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SPICR_data_int_reg0,
      D => s_axi_wdata(4),
      Q => \^control_reg_5_9_generate[5].spicr_data_int_reg[5]_0\,
      R => reset2ip_reset_int
    );
\CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SPICR_data_int_reg0,
      D => s_axi_wdata(3),
      Q => \^control_reg_5_9_generate[6].spicr_data_int_reg[6]_0\,
      R => reset2ip_reset_int
    );
\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SPICR_data_int_reg0,
      D => s_axi_wdata(2),
      Q => \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\,
      R => reset2ip_reset_int
    );
\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SPICR_data_int_reg0,
      D => s_axi_wdata(1),
      Q => spicr_1_spe_frm_axi_clk,
      R => reset2ip_reset_int
    );
\CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SPICR_data_int_reg0,
      D => s_axi_wdata(0),
      Q => SPISR_1_LOOP_Back_Error_int,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\,
      O => SPISR_3_Slave_Mode_Error_int
    );
\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^control_reg_5_9_generate[6].spicr_data_int_reg[6]_0\,
      I1 => \^control_reg_5_9_generate[5].spicr_data_int_reg[5]_0\,
      O => SPISR_4_CPOL_CPHA_Error_int
    );
\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD5FF2A00"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\,
      I2 => \ip_irpt_enable_reg_reg[8]\,
      I3 => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\,
      I4 => p_1_in13_in,
      I5 => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2_n_0\,
      O => \s_axi_wdata[8]\
    );
\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\,
      I1 => \ip_irpt_enable_reg_reg[8]\,
      I2 => \FIFO_EXISTS.data_Exists_RcFIFO_int_d1\,
      I3 => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0\,
      O => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"787878FF78FF7878"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\,
      I2 => p_1_in10_in,
      I3 => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1\,
      I4 => \^control_reg_5_9_generate[6].spicr_data_int_reg[6]_0\,
      I5 => \^control_reg_5_9_generate[5].spicr_data_int_reg[5]_0\,
      O => \s_axi_wdata[9]\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0\,
      I1 => Q(0),
      I2 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\,
      I3 => dout(0),
      I4 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0\,
      O => D(0)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222FFFFF222F222F"
    )
        port map (
      I0 => p_1_in16_in,
      I1 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_1\,
      I2 => \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\,
      I3 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_2\,
      I4 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_3\,
      I5 => spicr_7_ss_frm_axi_clk,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0\
    );
\SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi_wdata(2),
      Q => spicr_bits_7_8_frm_axi_clk(1),
      R => reset2ip_reset_int
    );
\SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi_wdata(1),
      Q => spicr_bits_7_8_frm_axi_clk(0),
      R => reset2ip_reset_int
    );
\SPICR_data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => SPICR_data_int_reg0,
      D => s_axi_wdata(7),
      Q => SPISR_2_MSB_Error_int,
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\,
      I2 => \ip_irpt_enable_reg_reg[8]\,
      O => \s_axi_wdata[8]_0\(0)
    );
\xpm_fifo_instance.xpm_fifo_async_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^control_reg_3_4_generate[4].spicr_data_int_reg[4]_0\,
      I1 => \gen_rst_ic.wr_rst_busy_ic_reg\,
      I2 => bus2ip_reset_ipif_inverted,
      O => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_fifo_ifmodule is
  port (
    rc_FIFO_Full_d1 : out STD_LOGIC;
    tx_FIFO_Empty_d1 : out STD_LOGIC;
    tx_FIFO_Occpncy_MSB_d1 : out STD_LOGIC;
    IP2Bus_Error_1 : out STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    Rx_FIFO_Full_Fifo_d1_synced_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \FIFO_EXISTS.Tx_FIFO_Empty_intr\ : in STD_LOGIC;
    tx_occ_msb : in STD_LOGIC;
    Receive_ip2bus_error_reg_0 : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    p_4_in : in STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_fifo_ifmodule;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_fifo_ifmodule is
  signal Receive_ip2bus_error0 : STD_LOGIC;
  signal receive_ip2bus_error : STD_LOGIC;
begin
\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => receive_ip2bus_error,
      I1 => \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg\,
      O => IP2Bus_Error_1
    );
Receive_ip2bus_error_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => Receive_ip2bus_error_reg_0,
      I1 => prmry_in,
      I2 => Bus_RNW_reg,
      I3 => p_4_in,
      O => Receive_ip2bus_error0
    );
Receive_ip2bus_error_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Receive_ip2bus_error0,
      Q => receive_ip2bus_error,
      R => reset2ip_reset_int
    );
rc_FIFO_Full_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Rx_FIFO_Full_Fifo_d1_synced_i,
      Q => rc_FIFO_Full_d1,
      R => reset2ip_reset_int
    );
tx_FIFO_Empty_d1_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FIFO_EXISTS.Tx_FIFO_Empty_intr\,
      Q => tx_FIFO_Empty_d1,
      S => reset2ip_reset_int
    );
tx_FIFO_Occpncy_MSB_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_occ_msb,
      Q => tx_FIFO_Occpncy_MSB_d1,
      R => reset2ip_reset_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_mode_control_logic is
  port (
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    ss_t : out STD_LOGIC;
    transfer_start_d2 : out STD_LOGIC;
    SPIXfer_done_int : out STD_LOGIC;
    stop_clock : out STD_LOGIC;
    SPIXfer_done_int_pulse : out STD_LOGIC;
    sck_d3 : out STD_LOGIC;
    wr_en : out STD_LOGIC;
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    drr_Overrun_int : out STD_LOGIC;
    io0_o : out STD_LOGIC;
    io1_o : out STD_LOGIC;
    io2_o : out STD_LOGIC;
    io3_o : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \Shift_Reg1__0\ : out STD_LOGIC;
    \RATIO_OF_2_GENERATE.Count_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_qspi_cntrl_ps_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CE : out STD_LOGIC;
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10\ : out STD_LOGIC;
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10\ : out STD_LOGIC;
    \qspo_int_reg[4]\ : out STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \stop_clock134_out__3\ : out STD_LOGIC;
    \stop_clock1__3\ : out STD_LOGIC;
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6]\ : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \RATIO_OF_2_GENERATE.Count_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D_0 : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    QSPI_IO1_T_0 : in STD_LOGIC;
    \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_0\ : in STD_LOGIC;
    spicr_8_tr_inhibit_to_spi_clk : in STD_LOGIC;
    R : in STD_LOGIC;
    Rst_to_spi : in STD_LOGIC;
    register_Data_slvsel_int : in STD_LOGIC;
    transfer_start_reg_0 : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_0\ : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \receive_Data_int1__0\ : in STD_LOGIC;
    \SPIXfer_done_int130_out__0\ : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_reg_0\ : in STD_LOGIC;
    Serial_Dout_018_in : in STD_LOGIC;
    \SPIXfer_done_int132_out__0\ : in STD_LOGIC;
    \mode_0__0\ : in STD_LOGIC;
    \mode_1__3\ : in STD_LOGIC;
    spicr_3_cpol_to_spi_clk : in STD_LOGIC;
    spicr_4_cpha_to_spi_clk : in STD_LOGIC;
    \master_tri_state_en_control1__0\ : in STD_LOGIC;
    \IO2_T_control__3\ : in STD_LOGIC;
    qspo : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_sequential_qspi_cntrl_ps_reg[0]_0\ : in STD_LOGIC;
    empty : in STD_LOGIC;
    spicr_bits_7_8_to_spi_clk : in STD_LOGIC_VECTOR ( 0 to 1 );
    QSPI_IO0_T_0 : in STD_LOGIC;
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1\ : in STD_LOGIC;
    \FSM_sequential_qspi_cntrl_ps_reg[1]_0\ : in STD_LOGIC;
    io1_i_sync : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[5]_0\ : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RATIO_OF_2_GENERATE.Count_reg[4]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_mode_control_logic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_mode_control_logic is
  signal \DRR_Overrun_reg_int0__0\ : STD_LOGIC;
  signal \FSM_sequential_qspi_cntrl_ps[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_qspi_cntrl_ps[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_qspi_cntrl_ps[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_qspi_cntrl_ps[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_qspi_cntrl_ps[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_qspi_cntrl_ps[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_qspi_cntrl_ps[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_qspi_cntrl_ps[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Mst_Trans_inhibit_d1 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal QSPI_IO0_T_i_1_n_0 : STD_LOGIC;
  signal \QSPI_MODE_2_T_CONTROL.QSPI_IO3_T_i_1_n_0\ : STD_LOGIC;
  signal \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_3_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\ : STD_LOGIC;
  signal \^ratio_of_2_generate.count_reg[0]_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.Count_reg_n_0_[3]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_4_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_3_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \^ratio_of_2_generate.ratio_2_cap_qspi_quad_mode_nm_mem_gen.shift_reg_reg[6]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.sck_o_int_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.sck_o_int_i_2_n_0\ : STD_LOGIC;
  signal \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_3_n_0\ : STD_LOGIC;
  signal \^spixfer_done_int\ : STD_LOGIC;
  signal SPIXfer_done_int1 : STD_LOGIC;
  signal SPIXfer_done_int_d1 : STD_LOGIC;
  signal \^spixfer_done_int_pulse\ : STD_LOGIC;
  signal SPIXfer_done_int_pulse_d1 : STD_LOGIC;
  signal SPIXfer_done_int_pulse_d2 : STD_LOGIC;
  signal Shift_Reg : STD_LOGIC_VECTOR ( 4 to 5 );
  signal \^shift_reg1__0\ : STD_LOGIC;
  signal \^drr_overrun_int\ : STD_LOGIC;
  signal \^io0_o\ : STD_LOGIC;
  signal \^io1_o\ : STD_LOGIC;
  signal \^io3_o\ : STD_LOGIC;
  signal p_0_in38_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_37_in : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^qspo_int_reg[4]\ : STD_LOGIC;
  signal receive_Data_int : STD_LOGIC;
  signal rx_shft_reg_mode_0011 : STD_LOGIC_VECTOR ( 0 to 6 );
  signal sck_d1 : STD_LOGIC;
  signal sck_d2 : STD_LOGIC;
  signal sck_o_int : STD_LOGIC;
  signal \^stop_clock\ : STD_LOGIC;
  signal \stop_clock28_out__0\ : STD_LOGIC;
  signal stop_clock_reg : STD_LOGIC;
  signal stop_clock_reg_i_2_n_0 : STD_LOGIC;
  signal stop_clock_reg_i_3_n_0 : STD_LOGIC;
  signal transfer_start : STD_LOGIC;
  signal transfer_start_d1 : STD_LOGIC;
  signal \transfer_start_pulse__0\ : STD_LOGIC;
  signal \^wr_en\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_qspi_cntrl_ps[0]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \FSM_sequential_qspi_cntrl_ps[0]_i_5\ : label is "soft_lutpair87";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_qspi_cntrl_ps_reg[0]\ : label is "cmd_send:001,addr_send:010,temp_addr_send:011,data_send:101,temp_data_send:100,data_receive:111,temp_data_receive:110,idle:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_qspi_cntrl_ps_reg[1]\ : label is "cmd_send:001,addr_send:010,temp_addr_send:011,data_send:101,temp_data_send:100,data_receive:111,temp_data_receive:110,idle:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_qspi_cntrl_ps_reg[2]\ : label is "cmd_send:001,addr_send:010,temp_addr_send:011,data_send:101,temp_data_send:100,data_receive:111,temp_data_receive:110,idle:000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of MST_TRANS_INHIBIT_D1_I : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of MST_TRANS_INHIBIT_D1_I : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of MST_TRANS_INHIBIT_D1_I : label is "PRIMITIVE";
  attribute KEEP : string;
  attribute KEEP of QSPI_IO0_T : label is "yes";
  attribute XILINX_LEGACY_PRIM of QSPI_IO0_T : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of QSPI_IO0_T : label is "VCC:CE GND:R";
  attribute box_type of QSPI_IO0_T : label is "PRIMITIVE";
  attribute KEEP of QSPI_IO1_T : label is "yes";
  attribute XILINX_LEGACY_PRIM of QSPI_IO1_T : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of QSPI_IO1_T : label is "VCC:CE GND:R";
  attribute box_type of QSPI_IO1_T : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1_i_1\ : label is "soft_lutpair87";
  attribute KEEP of \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T\ : label is "VCC:CE GND:R";
  attribute box_type of \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T\ : label is "PRIMITIVE";
  attribute KEEP of \QSPI_MODE_2_T_CONTROL.QSPI_IO3_T\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \QSPI_MODE_2_T_CONTROL.QSPI_IO3_T\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \QSPI_MODE_2_T_CONTROL.QSPI_IO3_T\ : label is "VCC:CE GND:R";
  attribute box_type of \QSPI_MODE_2_T_CONTROL.QSPI_IO3_T\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[2]_i_2\ : label is "soft_lutpair81";
  attribute KEEP of QSPI_SCK_T : label is "yes";
  attribute XILINX_LEGACY_PRIM of QSPI_SCK_T : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of QSPI_SCK_T : label is "VCC:CE GND:R";
  attribute box_type of QSPI_SCK_T : label is "PRIMITIVE";
  attribute KEEP of QSPI_SS_T : label is "yes";
  attribute XILINX_LEGACY_PRIM of QSPI_SS_T : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of QSPI_SS_T : label is "VCC:CE GND:R";
  attribute box_type of QSPI_SS_T : label is "PRIMITIVE";
  attribute IOB : string;
  attribute IOB of \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST\ : label is "TRUE";
  attribute box_type of \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_3\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.Count[0]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.Count[1]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.Count[2]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.Count[3]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.Count[4]_i_3\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_3\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_5\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_8\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_9\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_3\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_3\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[1]_i_2\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[2]_i_2\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[3]_i_2\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_2\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_3\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of SPIXfer_done_int_pulse_d1_i_1 : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of stop_clock_reg_i_4 : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \xpm_fifo_instance.xpm_fifo_async_inst_i_3\ : label is "soft_lutpair89";
begin
  \FSM_sequential_qspi_cntrl_ps_reg[2]_0\(2 downto 0) <= \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2 downto 0);
  Q(2 downto 0) <= \^q\(2 downto 0);
  \RATIO_OF_2_GENERATE.Count_reg[0]_0\ <= \^ratio_of_2_generate.count_reg[0]_0\;
  \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6]_0\(1 downto 0) <= \^ratio_of_2_generate.ratio_2_cap_qspi_quad_mode_nm_mem_gen.shift_reg_reg[6]_0\(1 downto 0);
  SPIXfer_done_int <= \^spixfer_done_int\;
  SPIXfer_done_int_pulse <= \^spixfer_done_int_pulse\;
  \Shift_Reg1__0\ <= \^shift_reg1__0\;
  drr_Overrun_int <= \^drr_overrun_int\;
  io0_o <= \^io0_o\;
  io1_o <= \^io1_o\;
  io3_o <= \^io3_o\;
  \qspo_int_reg[4]\ <= \^qspo_int_reg[4]\;
  stop_clock <= \^stop_clock\;
  wr_en <= \^wr_en\;
DRR_Overrun_reg_int0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => scndry_out,
      I1 => almost_full,
      I2 => \^drr_overrun_int\,
      I3 => \^wr_en\,
      O => \DRR_Overrun_reg_int0__0\
    );
DRR_Overrun_reg_int_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \DRR_Overrun_reg_int0__0\,
      Q => \^drr_overrun_int\,
      R => Rst_to_spi
    );
\FSM_sequential_qspi_cntrl_ps[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAEAAFE"
    )
        port map (
      I0 => \FSM_sequential_qspi_cntrl_ps[0]_i_2_n_0\,
      I1 => \FSM_sequential_qspi_cntrl_ps_reg[0]_0\,
      I2 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I3 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I4 => empty,
      O => \FSM_sequential_qspi_cntrl_ps[0]_i_1_n_0\
    );
\FSM_sequential_qspi_cntrl_ps[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEFEAAAAAAAA"
    )
        port map (
      I0 => \FSM_sequential_qspi_cntrl_ps[0]_i_4_n_0\,
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I2 => empty,
      I3 => qspo(3),
      I4 => \^qspo_int_reg[4]\,
      I5 => \FSM_sequential_qspi_cntrl_ps[0]_i_5_n_0\,
      O => \FSM_sequential_qspi_cntrl_ps[0]_i_2_n_0\
    );
\FSM_sequential_qspi_cntrl_ps[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044000400"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I2 => qspo(3),
      I3 => empty,
      I4 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I5 => register_Data_slvsel_int,
      O => \FSM_sequential_qspi_cntrl_ps[0]_i_4_n_0\
    );
\FSM_sequential_qspi_cntrl_ps[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C04"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I2 => empty,
      I3 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      O => \FSM_sequential_qspi_cntrl_ps[0]_i_5_n_0\
    );
\FSM_sequential_qspi_cntrl_ps[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFF000000000000"
    )
        port map (
      I0 => \FSM_sequential_qspi_cntrl_ps_reg[1]_0\,
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I2 => qspo(4),
      I3 => \^qspo_int_reg[4]\,
      I4 => \FSM_sequential_qspi_cntrl_ps[1]_i_2_n_0\,
      I5 => \FSM_sequential_qspi_cntrl_ps[1]_i_3_n_0\,
      O => \FSM_sequential_qspi_cntrl_ps[1]_i_1_n_0\
    );
\FSM_sequential_qspi_cntrl_ps[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5754FFFFFFFFFFFF"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I2 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I3 => qspo(3),
      I4 => empty,
      I5 => register_Data_slvsel_int,
      O => \FSM_sequential_qspi_cntrl_ps[1]_i_2_n_0\
    );
\FSM_sequential_qspi_cntrl_ps[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF04000000"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I2 => SPIXfer_done_int_d1,
      I3 => \^spixfer_done_int\,
      I4 => qspo(0),
      I5 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      O => \FSM_sequential_qspi_cntrl_ps[1]_i_3_n_0\
    );
\FSM_sequential_qspi_cntrl_ps[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7700770077F07700"
    )
        port map (
      I0 => empty,
      I1 => register_Data_slvsel_int,
      I2 => \^qspo_int_reg[4]\,
      I3 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I4 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I5 => \FSM_sequential_qspi_cntrl_ps_reg[1]_0\,
      O => \FSM_sequential_qspi_cntrl_ps[2]_i_1_n_0\
    );
\FSM_sequential_qspi_cntrl_ps[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400800"
    )
        port map (
      I0 => qspo(1),
      I1 => qspo(3),
      I2 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(1),
      I3 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(2),
      I4 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(0),
      O => \^qspo_int_reg[4]\
    );
\FSM_sequential_qspi_cntrl_ps_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \FSM_sequential_qspi_cntrl_ps[0]_i_1_n_0\,
      Q => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      R => Rst_to_spi
    );
\FSM_sequential_qspi_cntrl_ps_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \FSM_sequential_qspi_cntrl_ps[1]_i_1_n_0\,
      Q => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      R => Rst_to_spi
    );
\FSM_sequential_qspi_cntrl_ps_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \FSM_sequential_qspi_cntrl_ps[2]_i_1_n_0\,
      Q => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      R => Rst_to_spi
    );
MST_TRANS_INHIBIT_D1_I: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_8_tr_inhibit_to_spi_clk,
      Q => Mst_Trans_inhibit_d1,
      R => '0'
    );
QSPI_IO0_T: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => QSPI_IO0_T_i_1_n_0,
      Q => io0_t,
      R => '0'
    );
QSPI_IO0_T_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF89FFFFFF"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I2 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I3 => spicr_bits_7_8_to_spi_clk(0),
      I4 => spicr_bits_7_8_to_spi_clk(1),
      I5 => QSPI_IO0_T_0,
      O => QSPI_IO0_T_i_1_n_0
    );
QSPI_IO1_T: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => QSPI_IO1_T_0,
      Q => io1_t,
      R => '0'
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1\,
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I2 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I3 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      O => \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10\
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I2 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I3 => empty,
      O => \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10\
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[0].TXFIFO_FIRST_ENTRY_REG_I_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1\,
      I1 => empty,
      I2 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I3 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I4 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      O => CE
    );
\QSPI_MODE_2_T_CONTROL.QSPI_IO2_T\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_0\,
      Q => io2_t,
      R => '0'
    );
\QSPI_MODE_2_T_CONTROL.QSPI_IO3_T\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \QSPI_MODE_2_T_CONTROL.QSPI_IO3_T_i_1_n_0\,
      Q => io3_t,
      R => '0'
    );
\QSPI_MODE_2_T_CONTROL.QSPI_IO3_T_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777777775777"
    )
        port map (
      I0 => \master_tri_state_en_control1__0\,
      I1 => \IO2_T_control__3\,
      I2 => qspo(2),
      I3 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I4 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I5 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      O => \QSPI_MODE_2_T_CONTROL.QSPI_IO3_T_i_1_n_0\
    );
\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000D200000000"
    )
        port map (
      I0 => \^spixfer_done_int\,
      I1 => SPIXfer_done_int_d1,
      I2 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(0),
      I3 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I4 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I5 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      O => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[0]_i_1_n_0\
    );
\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006A00000000"
    )
        port map (
      I0 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(1),
      I1 => \^spixfer_done_int_pulse\,
      I2 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(0),
      I3 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I4 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I5 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      O => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[1]_i_1_n_0\
    );
\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000006AAA"
    )
        port map (
      I0 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(2),
      I1 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(1),
      I2 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(0),
      I3 => \^spixfer_done_int_pulse\,
      I4 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I5 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[2]_i_2_n_0\,
      O => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[2]_i_1_n_0\
    );
\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      O => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[2]_i_2_n_0\
    );
\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[0]_i_1_n_0\,
      Q => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(0),
      R => '0'
    );
\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[1]_i_1_n_0\,
      Q => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(1),
      R => '0'
    );
\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[2]_i_1_n_0\,
      Q => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(2),
      R => '0'
    );
QSPI_SCK_T: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => D_0,
      Q => sck_t,
      R => '0'
    );
QSPI_SS_T: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => D_0,
      Q => ss_t,
      R => '0'
    );
\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2_n_0\,
      Q => sck_o,
      R => R
    );
\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => sck_o_int,
      I1 => transfer_start_d1,
      I2 => transfer_start,
      I3 => \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_3_n_0\,
      I4 => spicr_3_cpol_to_spi_clk,
      O => \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2_n_0\
    );
\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I2 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      O => \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_3_n_0\
    );
\RATIO_OF_2_GENERATE.Count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      O => SPIXfer_done_int1
    );
\RATIO_OF_2_GENERATE.Count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      I1 => p_37_in,
      O => \plusOp__0\(1)
    );
\RATIO_OF_2_GENERATE.Count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      I1 => p_37_in,
      I2 => p_0_in38_in,
      O => \plusOp__0\(2)
    );
\RATIO_OF_2_GENERATE.Count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_37_in,
      I1 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      I2 => p_0_in38_in,
      I3 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[3]\,
      O => \plusOp__0\(3)
    );
\RATIO_OF_2_GENERATE.Count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => transfer_start,
      I1 => \^spixfer_done_int\,
      I2 => Rst_to_spi,
      O => \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.Count[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in38_in,
      I1 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      I2 => p_37_in,
      I3 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[3]\,
      O => \plusOp__0\(4)
    );
\RATIO_OF_2_GENERATE.Count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.Count_reg[4]_1\(0),
      D => SPIXfer_done_int1,
      Q => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      R => \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.Count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.Count_reg[4]_1\(0),
      D => \plusOp__0\(1),
      Q => p_37_in,
      R => \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.Count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.Count_reg[4]_1\(0),
      D => \plusOp__0\(2),
      Q => p_0_in38_in,
      R => \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.Count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.Count_reg[4]_1\(0),
      D => \plusOp__0\(3),
      Q => \RATIO_OF_2_GENERATE.Count_reg_n_0_[3]\,
      R => \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.Count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.Count_reg[4]_1\(0),
      D => \plusOp__0\(4),
      Q => \RATIO_OF_2_GENERATE.Count_reg[4]_0\(0),
      R => \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_reg_0\,
      I1 => \^shift_reg1__0\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_4_n_0\,
      I3 => \^ratio_of_2_generate.count_reg[0]_0\,
      I4 => Serial_Dout_018_in,
      I5 => \^io0_o\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => transfer_start_d1,
      I1 => transfer_start,
      I2 => SPIXfer_done_int_d1,
      O => \^shift_reg1__0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \SPIXfer_done_int130_out__0\,
      I1 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[3]\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[1]\,
      I3 => \receive_Data_int1__0\,
      I4 => p_1_in,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_4_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F700"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      I1 => transfer_start_d1,
      I2 => SPIXfer_done_int_d1,
      I3 => transfer_start,
      O => \^ratio_of_2_generate.count_reg[0]_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_1_n_0\,
      Q => \^io0_o\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFFF20202000"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_2_n_0\,
      I1 => \receive_Data_int1__0\,
      I2 => \^ratio_of_2_generate.count_reg[0]_0\,
      I3 => \SPIXfer_done_int132_out__0\,
      I4 => \SPIXfer_done_int130_out__0\,
      I5 => \^io1_o\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[2]\,
      I1 => dout(4),
      I2 => \SPIXfer_done_int130_out__0\,
      I3 => dout(6),
      I4 => \^shift_reg1__0\,
      I5 => p_1_in,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(0),
      I1 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(1),
      I2 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(2),
      I3 => qspo(1),
      I4 => qspo(3),
      O => \stop_clock134_out__3\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(0),
      I1 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(2),
      I2 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(1),
      I3 => qspo(3),
      I4 => qspo(1),
      O => \stop_clock1__3\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_1_n_0\,
      Q => \^io1_o\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => dout(5),
      I1 => transfer_start_d1,
      I2 => transfer_start,
      I3 => SPIXfer_done_int_d1,
      I4 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[1]\,
      O => \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6]\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_0\,
      Q => io2_o,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFFFAF00C000A0"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_2_n_0\,
      I1 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_3_n_0\,
      I2 => \^ratio_of_2_generate.count_reg[0]_0\,
      I3 => \mode_0__0\,
      I4 => \mode_1__3\,
      I5 => \^io3_o\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => qspo(2),
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I2 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I3 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => dout(6),
      I1 => transfer_start_d1,
      I2 => transfer_start,
      I3 => SPIXfer_done_int_d1,
      I4 => p_1_in,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_3_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_1_n_0\,
      Q => \^io3_o\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF008F00"
    )
        port map (
      I0 => Serial_Dout_018_in,
      I1 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      I2 => transfer_start_d1,
      I3 => transfer_start,
      I4 => SPIXfer_done_int_d1,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => dout(6),
      I1 => \^shift_reg1__0\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_3_n_0\,
      I3 => \receive_Data_int1__0\,
      I4 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[1]\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[2]\,
      I1 => Shift_Reg(4),
      I2 => \receive_Data_int1__0\,
      I3 => \SPIXfer_done_int130_out__0\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_3_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => dout(5),
      I1 => \^shift_reg1__0\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[1]_i_2_n_0\,
      I3 => \receive_Data_int1__0\,
      I4 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[2]\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[1]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[3]\,
      I1 => Shift_Reg(5),
      I2 => \receive_Data_int1__0\,
      I3 => \SPIXfer_done_int130_out__0\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[1]_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => dout(4),
      I1 => \^shift_reg1__0\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[2]_i_2_n_0\,
      I3 => \receive_Data_int1__0\,
      I4 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[3]\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[2]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => Shift_Reg(4),
      I1 => \^ratio_of_2_generate.ratio_2_cap_qspi_quad_mode_nm_mem_gen.shift_reg_reg[6]_0\(1),
      I2 => \receive_Data_int1__0\,
      I3 => \SPIXfer_done_int130_out__0\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[2]_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => dout(3),
      I1 => \^shift_reg1__0\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[3]_i_2_n_0\,
      I3 => \receive_Data_int1__0\,
      I4 => Shift_Reg(4),
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[3]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => Shift_Reg(5),
      I1 => \^ratio_of_2_generate.ratio_2_cap_qspi_quad_mode_nm_mem_gen.shift_reg_reg[6]_0\(0),
      I2 => \receive_Data_int1__0\,
      I3 => \SPIXfer_done_int130_out__0\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[3]_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => dout(2),
      I1 => \^shift_reg1__0\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4]_0\,
      I3 => \receive_Data_int1__0\,
      I4 => Shift_Reg(5),
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => dout(1),
      I1 => \^shift_reg1__0\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[5]_0\,
      I3 => \receive_Data_int1__0\,
      I4 => \^ratio_of_2_generate.ratio_2_cap_qspi_quad_mode_nm_mem_gen.shift_reg_reg[6]_0\(1),
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[5]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => io1_i_sync,
      I1 => \receive_Data_int1__0\,
      I2 => \^ratio_of_2_generate.ratio_2_cap_qspi_quad_mode_nm_mem_gen.shift_reg_reg[6]_0\(0),
      I3 => \^shift_reg1__0\,
      I4 => dout(0),
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[6]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0\,
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_2_n_0\,
      Q => p_1_in,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0\,
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[1]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[1]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0\,
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[2]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[2]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0\,
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[3]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[3]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0\,
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[4]_i_1_n_0\,
      Q => Shift_Reg(4),
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0\,
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[5]_i_1_n_0\,
      Q => Shift_Reg(5),
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0\,
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[6]_i_1_n_0\,
      Q => \^ratio_of_2_generate.ratio_2_cap_qspi_quad_mode_nm_mem_gen.shift_reg_reg[6]_0\(1),
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0\,
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[7]_0\(0),
      Q => \^ratio_of_2_generate.ratio_2_cap_qspi_quad_mode_nm_mem_gen.shift_reg_reg[6]_0\(0),
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBA5410"
    )
        port map (
      I0 => \receive_Data_int1__0\,
      I1 => \SPIXfer_done_int130_out__0\,
      I2 => \^q\(2),
      I3 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3]\,
      I4 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2]\,
      O => rx_shft_reg_mode_0011(1)
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBA5410"
    )
        port map (
      I0 => \receive_Data_int1__0\,
      I1 => \SPIXfer_done_int130_out__0\,
      I2 => \^q\(1),
      I3 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4]\,
      I4 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3]\,
      O => rx_shft_reg_mode_0011(2)
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBA5410"
    )
        port map (
      I0 => \receive_Data_int1__0\,
      I1 => \SPIXfer_done_int130_out__0\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4]\,
      O => rx_shft_reg_mode_0011(3)
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \receive_Data_int1__0\,
      I2 => io1_i_sync,
      O => rx_shft_reg_mode_0011(6)
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => rx_shft_reg_mode_0011(1),
      Q => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => rx_shft_reg_mode_0011(2),
      Q => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => rx_shft_reg_mode_0011(3),
      Q => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => D(2),
      Q => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => D(1),
      Q => \^q\(2),
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => rx_shft_reg_mode_0011(6),
      Q => \^q\(1),
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.sck_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => sck_o_int,
      Q => sck_d1,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.sck_d2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => sck_d1,
      Q => sck_d2,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.sck_d3_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => sck_d2,
      Q => sck_d3,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.sck_o_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060F060F060006"
    )
        port map (
      I0 => sck_o_int,
      I1 => transfer_start,
      I2 => Rst_to_spi,
      I3 => \RATIO_OF_2_GENERATE.sck_o_int_i_2_n_0\,
      I4 => spicr_3_cpol_to_spi_clk,
      I5 => spicr_4_cpha_to_spi_clk,
      O => \RATIO_OF_2_GENERATE.sck_o_int_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.sck_o_int_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => Mst_Trans_inhibit_d1,
      I1 => spicr_8_tr_inhibit_to_spi_clk,
      I2 => \^spixfer_done_int\,
      O => \RATIO_OF_2_GENERATE.sck_o_int_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.sck_o_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.sck_o_int_i_1_n_0\,
      Q => sck_o_int,
      R => '0'
    );
\RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011101010101010"
    )
        port map (
      I0 => Rst_to_spi,
      I1 => \transfer_start_pulse__0\,
      I2 => \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_3_n_0\,
      I3 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      I4 => p_37_in,
      I5 => \SPIXfer_done_int132_out__0\,
      O => \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_1_n_0\
    );
\RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_start,
      I1 => transfer_start_d1,
      O => \transfer_start_pulse__0\
    );
\RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080800"
    )
        port map (
      I0 => p_0_in38_in,
      I1 => p_37_in,
      I2 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      I3 => \SPIXfer_done_int130_out__0\,
      I4 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[3]\,
      O => \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_3_n_0\
    );
\RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_1_n_0\,
      Q => \^spixfer_done_int\,
      R => '0'
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SPIXfer_done_int_pulse_d2,
      I1 => Serial_Dout_018_in,
      O => receive_Data_int
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBA5410"
    )
        port map (
      I0 => \receive_Data_int1__0\,
      I1 => \SPIXfer_done_int130_out__0\,
      I2 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4]\,
      I3 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2]\,
      I4 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1]\,
      O => rx_shft_reg_mode_0011(0)
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => receive_Data_int,
      D => rx_shft_reg_mode_0011(0),
      Q => \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(7),
      R => Rst_to_spi
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => receive_Data_int,
      D => rx_shft_reg_mode_0011(1),
      Q => \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(6),
      R => Rst_to_spi
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => receive_Data_int,
      D => rx_shft_reg_mode_0011(2),
      Q => \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(5),
      R => Rst_to_spi
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => receive_Data_int,
      D => rx_shft_reg_mode_0011(3),
      Q => \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(4),
      R => Rst_to_spi
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => receive_Data_int,
      D => D(2),
      Q => \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(3),
      R => Rst_to_spi
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => receive_Data_int,
      D => D(1),
      Q => \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(2),
      R => Rst_to_spi
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => receive_Data_int,
      D => rx_shft_reg_mode_0011(6),
      Q => \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(1),
      R => Rst_to_spi
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => receive_Data_int,
      D => D(0),
      Q => \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(0),
      R => Rst_to_spi
    );
SPIXfer_done_int_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \^spixfer_done_int\,
      Q => SPIXfer_done_int_d1,
      R => Rst_to_spi
    );
SPIXfer_done_int_pulse_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^spixfer_done_int\,
      I1 => SPIXfer_done_int_d1,
      O => \^spixfer_done_int_pulse\
    );
SPIXfer_done_int_pulse_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \^spixfer_done_int_pulse\,
      Q => SPIXfer_done_int_pulse_d1,
      R => Rst_to_spi
    );
SPIXfer_done_int_pulse_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPIXfer_done_int_pulse_d1,
      Q => SPIXfer_done_int_pulse_d2,
      R => Rst_to_spi
    );
SPIXfer_done_int_pulse_d3_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPIXfer_done_int_pulse_d2,
      Q => \^wr_en\,
      R => Rst_to_spi
    );
\SS_O_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => register_Data_slvsel_int,
      Q => ss_o(0),
      S => Rst_to_spi
    );
stop_clock_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5550FE545050FF55"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I1 => stop_clock_reg_i_2_n_0,
      I2 => stop_clock_reg_i_3_n_0,
      I3 => \stop_clock28_out__0\,
      I4 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I5 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      O => \^stop_clock\
    );
stop_clock_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000008000000"
    )
        port map (
      I0 => empty,
      I1 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(0),
      I2 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(2),
      I3 => \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg\(1),
      I4 => qspo(3),
      I5 => qspo(1),
      O => stop_clock_reg_i_2_n_0
    );
stop_clock_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I1 => empty,
      I2 => qspo(0),
      I3 => SPIXfer_done_int_d1,
      I4 => \^spixfer_done_int\,
      O => stop_clock_reg_i_3_n_0
    );
stop_clock_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF020000"
    )
        port map (
      I0 => \^spixfer_done_int\,
      I1 => SPIXfer_done_int_d1,
      I2 => register_Data_slvsel_int,
      I3 => stop_clock_reg,
      I4 => empty,
      O => \stop_clock28_out__0\
    );
stop_clock_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \^stop_clock\,
      Q => stop_clock_reg,
      R => Rst_to_spi
    );
transfer_start_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => transfer_start,
      Q => transfer_start_d1,
      R => Rst_to_spi
    );
transfer_start_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => transfer_start_d1,
      Q => transfer_start_d2,
      R => Rst_to_spi
    );
transfer_start_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => transfer_start_reg_0,
      Q => transfer_start,
      R => '0'
    );
\xpm_fifo_instance.xpm_fifo_async_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => transfer_start_d1,
      I1 => transfer_start,
      I2 => SPIXfer_done_int_pulse_d2,
      O => rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_status_slave_sel_reg is
  port (
    SPISSR_frm_axi_clk : out STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]_0\ : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_status_slave_sel_reg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_status_slave_sel_reg is
  signal \SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \^spissr_frm_axi_clk\ : STD_LOGIC;
begin
  SPISSR_frm_axi_clk <= \^spissr_frm_axi_clk\;
\SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]_0\,
      I2 => p_3_in,
      I3 => Bus_RNW_reg,
      I4 => \^spissr_frm_axi_clk\,
      O => \SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1_n_0\
    );
\SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1_n_0\,
      Q => \^spissr_frm_axi_clk\,
      S => reset2ip_reset_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_sync_module is
  port (
    R : out STD_LOGIC;
    Rst_to_spi : out STD_LOGIC;
    spicr_5_txfifo_to_spi_clk : in STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_sync_module;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_sync_module is
  signal \^rst_to_spi\ : STD_LOGIC;
  signal Soft_Reset_frm_axi_d1 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of RESET_SYNC_AX2S_1 : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of RESET_SYNC_AX2S_1 : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of RESET_SYNC_AX2S_1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of RESET_SYNC_AX2S_1 : label is "PRIMITIVE";
  attribute ASYNC_REG of RESET_SYNC_AX2S_2 : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of RESET_SYNC_AX2S_2 : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of RESET_SYNC_AX2S_2 : label is "VCC:CE";
  attribute box_type of RESET_SYNC_AX2S_2 : label is "PRIMITIVE";
begin
  Rst_to_spi <= \^rst_to_spi\;
\QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[0].TXFIFO_FIRST_ENTRY_REG_I_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^rst_to_spi\,
      I1 => spicr_5_txfifo_to_spi_clk,
      O => R
    );
RESET_SYNC_AX2S_1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => reset2ip_reset_int,
      Q => Soft_Reset_frm_axi_d1,
      R => '0'
    );
RESET_SYNC_AX2S_2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Soft_Reset_frm_axi_d1,
      Q => \^rst_to_spi\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_soft_reset is
  port (
    wrack : out STD_LOGIC;
    \RESET_FLOPS[15].RST_FLOPS_0\ : out STD_LOGIC;
    rst_reg : out STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    sw_rst_cond : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \icount_out_reg[0]\ : in STD_LOGIC;
    \icount_out_reg[0]_0\ : in STD_LOGIC;
    reset_trig_reg_0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_soft_reset;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_soft_reset is
  signal FF_WRACK_i_1_n_0 : STD_LOGIC;
  signal \RESET_FLOPS[10].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[11].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[12].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[13].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[14].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \^reset_flops[15].rst_flops_0\ : STD_LOGIC;
  signal \RESET_FLOPS[15].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[4].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[5].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[6].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[7].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[8].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[9].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal flop_q_chain_1 : STD_LOGIC;
  signal flop_q_chain_10 : STD_LOGIC;
  signal flop_q_chain_11 : STD_LOGIC;
  signal flop_q_chain_12 : STD_LOGIC;
  signal flop_q_chain_13 : STD_LOGIC;
  signal flop_q_chain_14 : STD_LOGIC;
  signal flop_q_chain_15 : STD_LOGIC;
  signal flop_q_chain_2 : STD_LOGIC;
  signal flop_q_chain_3 : STD_LOGIC;
  signal flop_q_chain_4 : STD_LOGIC;
  signal flop_q_chain_5 : STD_LOGIC;
  signal flop_q_chain_6 : STD_LOGIC;
  signal flop_q_chain_7 : STD_LOGIC;
  signal flop_q_chain_8 : STD_LOGIC;
  signal flop_q_chain_9 : STD_LOGIC;
  signal reset_trig0 : STD_LOGIC;
  signal sw_rst_cond_d1 : STD_LOGIC;
  attribute IS_CE_INVERTED : string;
  attribute IS_CE_INVERTED of FF_WRACK : label is "1'b0";
  attribute IS_S_INVERTED : string;
  attribute IS_S_INVERTED of FF_WRACK : label is "1'b0";
  attribute box_type : string;
  attribute box_type of FF_WRACK : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FF_WRACK_i_1 : label is "soft_lutpair92";
  attribute IS_CE_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[0].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[10].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[10].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[10].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[10].RST_FLOPS_i_1\ : label is "soft_lutpair97";
  attribute IS_CE_INVERTED of \RESET_FLOPS[11].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[11].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[11].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[11].RST_FLOPS_i_1\ : label is "soft_lutpair98";
  attribute IS_CE_INVERTED of \RESET_FLOPS[12].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[12].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[12].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[12].RST_FLOPS_i_1\ : label is "soft_lutpair98";
  attribute IS_CE_INVERTED of \RESET_FLOPS[13].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[13].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[13].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[13].RST_FLOPS_i_1\ : label is "soft_lutpair99";
  attribute IS_CE_INVERTED of \RESET_FLOPS[14].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[14].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[14].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[14].RST_FLOPS_i_1\ : label is "soft_lutpair99";
  attribute IS_CE_INVERTED of \RESET_FLOPS[15].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[15].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[15].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[1].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[1].RST_FLOPS_i_1\ : label is "soft_lutpair93";
  attribute IS_CE_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[2].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[2].RST_FLOPS_i_1\ : label is "soft_lutpair93";
  attribute IS_CE_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[3].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[3].RST_FLOPS_i_1\ : label is "soft_lutpair94";
  attribute IS_CE_INVERTED of \RESET_FLOPS[4].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[4].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[4].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[4].RST_FLOPS_i_1\ : label is "soft_lutpair94";
  attribute IS_CE_INVERTED of \RESET_FLOPS[5].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[5].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[5].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[5].RST_FLOPS_i_1\ : label is "soft_lutpair95";
  attribute IS_CE_INVERTED of \RESET_FLOPS[6].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[6].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[6].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[6].RST_FLOPS_i_1\ : label is "soft_lutpair95";
  attribute IS_CE_INVERTED of \RESET_FLOPS[7].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[7].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[7].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[7].RST_FLOPS_i_1\ : label is "soft_lutpair96";
  attribute IS_CE_INVERTED of \RESET_FLOPS[8].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[8].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[8].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[8].RST_FLOPS_i_1\ : label is "soft_lutpair96";
  attribute IS_CE_INVERTED of \RESET_FLOPS[9].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[9].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[9].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[9].RST_FLOPS_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \icount_out[0]_i_1\ : label is "soft_lutpair92";
begin
  \RESET_FLOPS[15].RST_FLOPS_0\ <= \^reset_flops[15].rst_flops_0\;
FF_WRACK: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => FF_WRACK_i_1_n_0,
      Q => wrack,
      R => bus2ip_reset_ipif_inverted
    );
FF_WRACK_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^reset_flops[15].rst_flops_0\,
      I1 => flop_q_chain_1,
      O => FF_WRACK_i_1_n_0
    );
\RESET_FLOPS[0].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => S,
      Q => flop_q_chain_15,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[10].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[10].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_5,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[10].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_6,
      O => \RESET_FLOPS[10].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[11].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[11].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_4,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[11].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_5,
      O => \RESET_FLOPS[11].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[12].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[12].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_3,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[12].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_4,
      O => \RESET_FLOPS[12].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[13].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[13].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_2,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[13].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_3,
      O => \RESET_FLOPS[13].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[14].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[14].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_1,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[14].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_2,
      O => \RESET_FLOPS[14].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[15].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[15].RST_FLOPS_i_1_n_0\,
      Q => \^reset_flops[15].rst_flops_0\,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[15].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_1,
      O => \RESET_FLOPS[15].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[1].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_14,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[1].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_15,
      O => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[2].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_13,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[2].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_14,
      O => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[3].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_12,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[3].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_13,
      O => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[4].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[4].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_11,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[4].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_12,
      O => \RESET_FLOPS[4].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[5].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[5].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_10,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[5].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_11,
      O => \RESET_FLOPS[5].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[6].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[6].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_9,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[6].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_10,
      O => \RESET_FLOPS[6].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[7].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[7].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_8,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[7].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_9,
      O => \RESET_FLOPS[7].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[8].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[8].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_7,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[8].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_8,
      O => \RESET_FLOPS[8].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[9].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[9].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_6,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[9].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_7,
      O => \RESET_FLOPS[9].RST_FLOPS_i_1_n_0\
    );
\icount_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => bus2ip_reset_ipif_inverted,
      I1 => \^reset_flops[15].rst_flops_0\,
      I2 => \icount_out_reg[0]\,
      I3 => \icount_out_reg[0]_0\,
      O => rst_reg
    );
reset_trig_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sw_rst_cond_d1,
      I1 => reset_trig_reg_0,
      O => reset_trig0
    );
reset_trig_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => reset_trig0,
      Q => S,
      R => bus2ip_reset_ipif_inverted
    );
sw_rst_cond_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sw_rst_cond,
      Q => sw_rst_cond_d1,
      R => bus2ip_reset_ipif_inverted
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is "GRAY";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair52";
begin
  dest_out_bin(3) <= \dest_graysync_ff[1]\(3);
  dest_out_bin(2 downto 0) <= \^dest_out_bin\(2 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1\ : entity is "GRAY";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair24";
begin
  dest_out_bin(3) <= \dest_graysync_ff[1]\(3);
  dest_out_bin(2 downto 0) <= \^dest_out_bin\(2 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is "GRAY";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair27";
begin
  dest_out_bin(3) <= \dest_graysync_ff[1]\(3);
  dest_out_bin(2 downto 0) <= \^dest_out_bin\(2 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__3\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__3\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__3\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__3\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__3\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__3\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__3\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__3\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__3\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__3\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__3\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__3\ : entity is "GRAY";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__3\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair49";
begin
  dest_out_bin(3) <= \dest_graysync_ff[1]\(3);
  dest_out_bin(2 downto 0) <= \^dest_out_bin\(2 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is "GRAY";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal \dest_graysync_ff[3]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[3]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[3]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[3]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair51";
begin
  dest_out_bin(4) <= \dest_graysync_ff[3]\(4);
  dest_out_bin(3 downto 0) <= \^dest_out_bin\(3 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => \dest_graysync_ff[2]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(0),
      Q => \dest_graysync_ff[3]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(1),
      Q => \dest_graysync_ff[3]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(2),
      Q => \dest_graysync_ff[3]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => \dest_graysync_ff[3]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(4),
      Q => \dest_graysync_ff[3]\(4),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(0),
      I1 => \dest_graysync_ff[3]\(2),
      I2 => \dest_graysync_ff[3]\(4),
      I3 => \dest_graysync_ff[3]\(3),
      I4 => \dest_graysync_ff[3]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(1),
      I1 => \dest_graysync_ff[3]\(3),
      I2 => \dest_graysync_ff[3]\(4),
      I3 => \dest_graysync_ff[3]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(2),
      I1 => \dest_graysync_ff[3]\(4),
      I2 => \dest_graysync_ff[3]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(3),
      I1 => \dest_graysync_ff[3]\(4),
      O => \^dest_out_bin\(3)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__1\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__1\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__1\ : entity is "GRAY";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__1\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal \dest_graysync_ff[3]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[3]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[3]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[3]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair26";
begin
  dest_out_bin(4) <= \dest_graysync_ff[3]\(4);
  dest_out_bin(3 downto 0) <= \^dest_out_bin\(3 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => \dest_graysync_ff[2]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(0),
      Q => \dest_graysync_ff[3]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(1),
      Q => \dest_graysync_ff[3]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(2),
      Q => \dest_graysync_ff[3]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => \dest_graysync_ff[3]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(4),
      Q => \dest_graysync_ff[3]\(4),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(0),
      I1 => \dest_graysync_ff[3]\(2),
      I2 => \dest_graysync_ff[3]\(4),
      I3 => \dest_graysync_ff[3]\(3),
      I4 => \dest_graysync_ff[3]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(1),
      I1 => \dest_graysync_ff[3]\(3),
      I2 => \dest_graysync_ff[3]\(4),
      I3 => \dest_graysync_ff[3]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(2),
      I1 => \dest_graysync_ff[3]\(4),
      I2 => \dest_graysync_ff[3]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(3),
      I1 => \dest_graysync_ff[3]\(4),
      O => \^dest_out_bin\(3)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is "GRAY";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair53";
begin
  dest_out_bin(4) <= \dest_graysync_ff[1]\(4);
  dest_out_bin(3 downto 0) <= \^dest_out_bin\(3 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1__1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1__1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1__1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1__1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1__1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1__1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1__1\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1__1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1__1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1__1\ : entity is "GRAY";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1__1\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair28";
begin
  dest_out_bin(4) <= \dest_graysync_ff[1]\(4);
  dest_out_bin(3 downto 0) <= \^dest_out_bin\(3 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 2;
  attribute INIT : string;
  attribute INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "SYNC_RST";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4\ : entity is "SYNC_RST";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__5\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__5\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__5\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__5\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__5\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__5\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__5\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__5\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__5\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__5\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__5\ : entity is "SYNC_RST";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__5\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__6\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__6\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__6\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__6\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__6\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__6\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__6\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__6\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__6\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__6\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__6\ : entity is "SYNC_RST";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__6\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrst_busy : in STD_LOGIC;
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair55";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn_5 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrst_busy : in STD_LOGIC;
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn_5 : entity is "xpm_counter_updn";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn_5 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair30";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair68";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_16\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_16\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_16\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_16\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair42";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[1]_0\ : out STD_LOGIC;
    \count_value_i_reg[1]_1\ : out STD_LOGIC;
    \count_value_i_reg[0]_0\ : out STD_LOGIC;
    src_in_bin : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \grdc.rd_data_count_i_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_value_i_reg[1]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[1]_3\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ is
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[0]_0\ : STD_LOGIC;
  signal \^count_value_i_reg[1]_0\ : STD_LOGIC;
  signal \^count_value_i_reg[1]_1\ : STD_LOGIC;
begin
  \count_value_i_reg[0]_0\ <= \^count_value_i_reg[0]_0\;
  \count_value_i_reg[1]_0\ <= \^count_value_i_reg[1]_0\;
  \count_value_i_reg[1]_1\ <= \^count_value_i_reg[1]_1\;
\count_value_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005A88A655"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \count_value_i_reg[1]_2\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_2\(1),
      I4 => ram_empty_i,
      I5 => \count_value_i_reg[1]_3\,
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA88AAAA"
    )
        port map (
      I0 => \count_value_i[1]_i_2_n_0\,
      I1 => \count_value_i_reg[1]_2\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_2\(1),
      I4 => ram_empty_i,
      I5 => \count_value_i_reg[1]_3\,
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFF755500008AA"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \count_value_i_reg[1]_2\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_2\(1),
      I4 => ram_empty_i,
      I5 => \^count_value_i_reg[1]_1\,
      O => \count_value_i[1]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^count_value_i_reg[0]_0\,
      R => '0'
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^count_value_i_reg[1]_1\,
      R => '0'
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \grdc.rd_data_count_i_reg[2]\(0),
      I2 => \^count_value_i_reg[1]_1\,
      I3 => \grdc.rd_data_count_i_reg[2]\(1),
      O => src_in_bin(0)
    );
\grdc.rd_data_count_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696699669966969"
    )
        port map (
      I0 => \^count_value_i_reg[1]_0\,
      I1 => Q(2),
      I2 => \grdc.rd_data_count_i_reg[2]\(2),
      I3 => \grdc.rd_data_count_i_reg[2]\(1),
      I4 => \^count_value_i_reg[1]_1\,
      I5 => Q(1),
      O => D(0)
    );
\grdc.rd_data_count_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69FF696969690069"
    )
        port map (
      I0 => \^count_value_i_reg[1]_1\,
      I1 => \grdc.rd_data_count_i_reg[2]\(1),
      I2 => Q(1),
      I3 => \grdc.rd_data_count_i_reg[2]\(0),
      I4 => \^count_value_i_reg[0]_0\,
      I5 => Q(0),
      O => \^count_value_i_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_10\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[1]_0\ : out STD_LOGIC;
    \count_value_i_reg[1]_1\ : out STD_LOGIC;
    \count_value_i_reg[0]_0\ : out STD_LOGIC;
    src_in_bin : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \grdc.rd_data_count_i_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_value_i_reg[1]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[1]_3\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_10\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_10\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_10\ is
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[0]_0\ : STD_LOGIC;
  signal \^count_value_i_reg[1]_0\ : STD_LOGIC;
  signal \^count_value_i_reg[1]_1\ : STD_LOGIC;
begin
  \count_value_i_reg[0]_0\ <= \^count_value_i_reg[0]_0\;
  \count_value_i_reg[1]_0\ <= \^count_value_i_reg[1]_0\;
  \count_value_i_reg[1]_1\ <= \^count_value_i_reg[1]_1\;
\count_value_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005A88A655"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \count_value_i_reg[1]_2\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_2\(1),
      I4 => ram_empty_i,
      I5 => \count_value_i_reg[1]_3\,
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA88AAAA"
    )
        port map (
      I0 => \count_value_i[1]_i_2_n_0\,
      I1 => \count_value_i_reg[1]_2\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_2\(1),
      I4 => ram_empty_i,
      I5 => \count_value_i_reg[1]_3\,
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFF755500008AA"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \count_value_i_reg[1]_2\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_2\(1),
      I4 => ram_empty_i,
      I5 => \^count_value_i_reg[1]_1\,
      O => \count_value_i[1]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^count_value_i_reg[0]_0\,
      R => '0'
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^count_value_i_reg[1]_1\,
      R => '0'
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \grdc.rd_data_count_i_reg[2]\(0),
      I2 => \^count_value_i_reg[1]_1\,
      I3 => \grdc.rd_data_count_i_reg[2]\(1),
      O => src_in_bin(0)
    );
\grdc.rd_data_count_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696699669966969"
    )
        port map (
      I0 => \^count_value_i_reg[1]_0\,
      I1 => Q(2),
      I2 => \grdc.rd_data_count_i_reg[2]\(2),
      I3 => \grdc.rd_data_count_i_reg[2]\(1),
      I4 => \^count_value_i_reg[1]_1\,
      I5 => Q(1),
      O => D(0)
    );
\grdc.rd_data_count_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69FF696969690069"
    )
        port map (
      I0 => \^count_value_i_reg[1]_1\,
      I1 => \grdc.rd_data_count_i_reg[2]\(1),
      I2 => Q(1),
      I3 => \grdc.rd_data_count_i_reg[2]\(0),
      I4 => \^count_value_i_reg[0]_0\,
      I5 => Q(0),
      O => \^count_value_i_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : out STD_LOGIC;
    \reg_out_i_reg[4]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    src_in_bin : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[4]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \src_gray_ff_reg[4]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[0]\ : in STD_LOGIC;
    \count_value_i_reg[4]_0\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\ is
  signal \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\ : STD_LOGIC;
  signal \count_value_i[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[4]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__4\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__4\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__4\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__4\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[0]_i_1\ : label is "soft_lutpair61";
begin
  \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ <= \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\;
  \count_value_i_reg[3]_0\(3 downto 0) <= \^count_value_i_reg[3]_0\(3 downto 0);
\count_value_i[0]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \^count_value_i_reg[3]_0\(0),
      O => \count_value_i[0]_i_1__4_n_0\
    );
\count_value_i[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^count_value_i_reg[3]_0\(0),
      I4 => \^count_value_i_reg[3]_0\(1),
      O => \count_value_i[1]_i_1__4_n_0\
    );
\count_value_i[2]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \^count_value_i_reg[3]_0\(1),
      I2 => \^count_value_i_reg[3]_0\(2),
      O => \count_value_i[2]_i_1__4_n_0\
    );
\count_value_i[3]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(1),
      I1 => \^count_value_i_reg[3]_0\(0),
      I2 => \^count_value_i_reg[3]_0\(2),
      I3 => \^count_value_i_reg[3]_0\(3),
      O => \count_value_i[3]_i_1__4_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(2),
      I1 => \^count_value_i_reg[3]_0\(0),
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => \^count_value_i_reg[3]_0\(3),
      I4 => \count_value_i_reg_n_0_[4]\,
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[0]_i_1__4_n_0\,
      Q => \^count_value_i_reg[3]_0\(0),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[1]_i_1__4_n_0\,
      Q => \^count_value_i_reg[3]_0\(1),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[2]_i_1__4_n_0\,
      Q => \^count_value_i_reg[3]_0\(2),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[3]_i_1__4_n_0\,
      Q => \^count_value_i_reg[3]_0\(3),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[4]\,
      R => \count_value_i_reg[4]_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAFE00001501"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(3),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\,
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => \src_gray_ff_reg[4]\,
      I4 => \^count_value_i_reg[3]_0\(2),
      I5 => \count_value_i_reg_n_0_[4]\,
      O => src_in_bin(3)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBBAFB04044504"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(2),
      I1 => \src_gray_ff_reg[4]\,
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => \grdc.rd_data_count_i_reg[0]\,
      I4 => \^count_value_i_reg[3]_0\(0),
      I5 => \^count_value_i_reg[3]_0\(3),
      O => src_in_bin(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FB4F04"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\,
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => \src_gray_ff_reg[4]\,
      I4 => \^count_value_i_reg[3]_0\(2),
      O => src_in_bin(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\,
      O => src_in_bin(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\,
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2_n_0\,
      I1 => Q(1),
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => Q(2),
      I4 => \^count_value_i_reg[3]_0\(2),
      O => D(0)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDFDDDD44454444"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => ram_empty_i,
      I2 => rd_en,
      I3 => \count_value_i_reg[0]_0\(0),
      I4 => \count_value_i_reg[0]_0\(1),
      I5 => Q(0),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\,
      I1 => Q(2),
      I2 => \^count_value_i_reg[3]_0\(2),
      I3 => Q(3),
      I4 => \^count_value_i_reg[3]_0\(3),
      O => D(1)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44D4D4DD"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => \^count_value_i_reg[3]_0\(0),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\
    );
\grdc.rd_data_count_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\,
      I2 => \grdc.rd_data_count_i_reg[4]_0\(0),
      O => \reg_out_i_reg[4]\(0)
    );
\grdc.rd_data_count_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69699669"
    )
        port map (
      I0 => \grdc.rd_data_count_i[4]_i_3_n_0\,
      I1 => \grdc.rd_data_count_i_reg[4]_0\(3),
      I2 => \^count_value_i_reg[3]_0\(3),
      I3 => \grdc.rd_data_count_i_reg[4]_0\(2),
      I4 => \^count_value_i_reg[3]_0\(2),
      O => \reg_out_i_reg[4]\(1)
    );
\grdc.rd_data_count_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1EE1788787781EE1"
    )
        port map (
      I0 => \grdc.rd_data_count_i[4]_i_3_n_0\,
      I1 => \grdc.rd_data_count_i_reg[4]\,
      I2 => \grdc.rd_data_count_i_reg[4]_0\(4),
      I3 => \count_value_i_reg_n_0_[4]\,
      I4 => \grdc.rd_data_count_i_reg[4]_0\(3),
      I5 => \^count_value_i_reg[3]_0\(3),
      O => \reg_out_i_reg[4]\(2)
    );
\grdc.rd_data_count_i[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F999FFF990009990"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(2),
      I1 => \grdc.rd_data_count_i_reg[4]_0\(2),
      I2 => \grdc.rd_data_count_i_reg[4]_0\(1),
      I3 => \src_gray_ff_reg[4]\,
      I4 => \^count_value_i_reg[3]_0\(1),
      I5 => \grdc.rd_data_count_i_reg[3]\,
      O => \grdc.rd_data_count_i[4]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_11\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : out STD_LOGIC;
    \reg_out_i_reg[4]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    src_in_bin : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[4]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \src_gray_ff_reg[4]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[0]\ : in STD_LOGIC;
    \count_value_i_reg[4]_0\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_11\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_11\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_11\ is
  signal \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\ : STD_LOGIC;
  signal \count_value_i[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[4]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[0]_i_1\ : label is "soft_lutpair36";
begin
  \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ <= \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\;
  \count_value_i_reg[3]_0\(3 downto 0) <= \^count_value_i_reg[3]_0\(3 downto 0);
\count_value_i[0]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \^count_value_i_reg[3]_0\(0),
      O => \count_value_i[0]_i_1__4_n_0\
    );
\count_value_i[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^count_value_i_reg[3]_0\(0),
      I4 => \^count_value_i_reg[3]_0\(1),
      O => \count_value_i[1]_i_1__4_n_0\
    );
\count_value_i[2]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \^count_value_i_reg[3]_0\(1),
      I2 => \^count_value_i_reg[3]_0\(2),
      O => \count_value_i[2]_i_1__4_n_0\
    );
\count_value_i[3]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(1),
      I1 => \^count_value_i_reg[3]_0\(0),
      I2 => \^count_value_i_reg[3]_0\(2),
      I3 => \^count_value_i_reg[3]_0\(3),
      O => \count_value_i[3]_i_1__4_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(2),
      I1 => \^count_value_i_reg[3]_0\(0),
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => \^count_value_i_reg[3]_0\(3),
      I4 => \count_value_i_reg_n_0_[4]\,
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[0]_i_1__4_n_0\,
      Q => \^count_value_i_reg[3]_0\(0),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[1]_i_1__4_n_0\,
      Q => \^count_value_i_reg[3]_0\(1),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[2]_i_1__4_n_0\,
      Q => \^count_value_i_reg[3]_0\(2),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[3]_i_1__4_n_0\,
      Q => \^count_value_i_reg[3]_0\(3),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[4]\,
      R => \count_value_i_reg[4]_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAFE00001501"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(3),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\,
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => \src_gray_ff_reg[4]\,
      I4 => \^count_value_i_reg[3]_0\(2),
      I5 => \count_value_i_reg_n_0_[4]\,
      O => src_in_bin(3)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBBAFB04044504"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(2),
      I1 => \src_gray_ff_reg[4]\,
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => \grdc.rd_data_count_i_reg[0]\,
      I4 => \^count_value_i_reg[3]_0\(0),
      I5 => \^count_value_i_reg[3]_0\(3),
      O => src_in_bin(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FB4F04"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\,
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => \src_gray_ff_reg[4]\,
      I4 => \^count_value_i_reg[3]_0\(2),
      O => src_in_bin(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\,
      O => src_in_bin(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\,
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2_n_0\,
      I1 => Q(1),
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => Q(2),
      I4 => \^count_value_i_reg[3]_0\(2),
      O => D(0)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDFDDDD44454444"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => ram_empty_i,
      I2 => rd_en,
      I3 => \count_value_i_reg[0]_0\(0),
      I4 => \count_value_i_reg[0]_0\(1),
      I5 => Q(0),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\,
      I1 => Q(2),
      I2 => \^count_value_i_reg[3]_0\(2),
      I3 => Q(3),
      I4 => \^count_value_i_reg[3]_0\(3),
      O => D(1)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44D4D4DD"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => \^count_value_i_reg[3]_0\(0),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\
    );
\grdc.rd_data_count_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\,
      I2 => \grdc.rd_data_count_i_reg[4]_0\(0),
      O => \reg_out_i_reg[4]\(0)
    );
\grdc.rd_data_count_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69699669"
    )
        port map (
      I0 => \grdc.rd_data_count_i[4]_i_3_n_0\,
      I1 => \grdc.rd_data_count_i_reg[4]_0\(3),
      I2 => \^count_value_i_reg[3]_0\(3),
      I3 => \grdc.rd_data_count_i_reg[4]_0\(2),
      I4 => \^count_value_i_reg[3]_0\(2),
      O => \reg_out_i_reg[4]\(1)
    );
\grdc.rd_data_count_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1EE1788787781EE1"
    )
        port map (
      I0 => \grdc.rd_data_count_i[4]_i_3_n_0\,
      I1 => \grdc.rd_data_count_i_reg[4]\,
      I2 => \grdc.rd_data_count_i_reg[4]_0\(4),
      I3 => \count_value_i_reg_n_0_[4]\,
      I4 => \grdc.rd_data_count_i_reg[4]_0\(3),
      I5 => \^count_value_i_reg[3]_0\(3),
      O => \reg_out_i_reg[4]\(2)
    );
\grdc.rd_data_count_i[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F999FFF990009990"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(2),
      I1 => \grdc.rd_data_count_i_reg[4]_0\(2),
      I2 => \grdc.rd_data_count_i_reg[4]_0\(1),
      I3 => \src_gray_ff_reg[4]\,
      I4 => \^count_value_i_reg[3]_0\(1),
      I5 => \grdc.rd_data_count_i_reg[3]\,
      O => \grdc.rd_data_count_i[4]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_14\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gwdc.wr_data_count_i_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_14\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_14\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_14\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gwdc.wr_data_count_i[0]_i_1\ : label is "soft_lutpair40";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\gwdc.wr_data_count_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[2]\(0),
      O => D(0)
    );
\gwdc.wr_data_count_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F04B0FBB0FB4F04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[2]\(0),
      I2 => \^q\(1),
      I3 => \gwdc.wr_data_count_i_reg[2]\(1),
      I4 => \gwdc.wr_data_count_i_reg[2]\(2),
      I5 => \^q\(2),
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_3\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gwdc.wr_data_count_i_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_3\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_3\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \gwdc.wr_data_count_i[0]_i_1\ : label is "soft_lutpair66";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\gwdc.wr_data_count_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[2]\(0),
      O => D(0)
    );
\gwdc.wr_data_count_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F04B0FBB0FB4F04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[2]\(0),
      I2 => \^q\(1),
      I3 => \gwdc.wr_data_count_i_reg[2]\(1),
      I4 => \gwdc.wr_data_count_i_reg[2]\(2),
      I5 => \^q\(2),
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__3\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__3\ : label is "soft_lutpair62";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__3_n_0\
    );
\count_value_i[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__3_n_0\
    );
\count_value_i[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__3_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__3_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__3_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__3_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_12\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_12\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_12\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_12\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__3\ : label is "soft_lutpair37";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__3_n_0\
    );
\count_value_i[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__3_n_0\
    );
\count_value_i[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__3_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__3_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__3_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__3_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_15\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_15\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_15\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_15\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair41";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_4\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_4\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_4\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair67";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\ : out STD_LOGIC;
    overflow_i0 : out STD_LOGIC;
    clr_full : out STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    rst : in STD_LOGIC;
    \gof.overflow_i_reg\ : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  signal \^rst_d1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \gof.overflow_i_i_1\ : label is "soft_lutpair63";
begin
  rst_d1 <= \^rst_d1\;
d_out_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrst_busy,
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \^rst_d1\,
      I2 => wrst_busy,
      O => clr_full
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3A200A2"
    )
        port map (
      I0 => p_0_in,
      I1 => \^rst_d1\,
      I2 => rst,
      I3 => \gof.overflow_i_reg\,
      I4 => prog_full,
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\
    );
\gof.overflow_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => wrst_busy,
      I2 => \gof.overflow_i_reg\,
      I3 => wr_en,
      O => overflow_i0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_13 is
  port (
    rst_d1 : out STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\ : out STD_LOGIC;
    overflow_i0 : out STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_13 : entity is "xpm_fifo_reg_bit";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_13 is
  signal \^rst_d1\ : STD_LOGIC;
begin
  rst_d1 <= \^rst_d1\;
d_out_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrst_busy,
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E200E2E2"
    )
        port map (
      I0 => p_1_in,
      I1 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I2 => prog_full,
      I3 => rst,
      I4 => \^rst_d1\,
      I5 => wrst_busy,
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\
    );
\gof.overflow_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => wrst_busy,
      I2 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I3 => wr_en,
      O => overflow_i0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec is
  port (
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    diff_pntr_pf_q0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_out_i_reg[3]_0\ : out STD_LOGIC;
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clr_full : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec is
  signal \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\ : STD_LOGIC;
  signal leaving_afull : STD_LOGIC;
  signal ram_afull_i0 : STD_LOGIC;
  signal rd_pntr_wr : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FE0002"
    )
        port map (
      I0 => ram_afull_i0,
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\,
      I2 => rst,
      I3 => rst_d1,
      I4 => almost_full,
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8080802020FF20"
    )
        port map (
      I0 => wr_pntr_plus1_pf_carry,
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\(3),
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0\,
      I3 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0\,
      I4 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(3),
      I5 => rd_pntr_wr(3),
      O => ram_afull_i0
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_wr(0),
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\(0),
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\(2),
      I3 => rd_pntr_wr(2),
      I4 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\(1),
      I5 => rd_pntr_wr(1),
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF909090"
    )
        port map (
      I0 => rd_pntr_wr(3),
      I1 => Q(3),
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0\,
      I3 => leaving_afull,
      I4 => wr_pntr_plus1_pf_carry,
      I5 => clr_full,
      O => \reg_out_i_reg[3]_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_wr(0),
      I1 => Q(0),
      I2 => Q(2),
      I3 => rd_pntr_wr(2),
      I4 => Q(1),
      I5 => rd_pntr_wr(1),
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => rd_pntr_wr(3),
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(3),
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0\,
      O => leaving_afull
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_wr(0),
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(0),
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(2),
      I3 => rd_pntr_wr(2),
      I4 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(1),
      I5 => rd_pntr_wr(1),
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\,
      I1 => Q(2),
      I2 => rd_pntr_wr(2),
      I3 => rd_pntr_wr(3),
      I4 => Q(3),
      O => diff_pntr_pf_q0(0)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D444DDD4"
    )
        port map (
      I0 => rd_pntr_wr(1),
      I1 => Q(1),
      I2 => wr_pntr_plus1_pf_carry,
      I3 => Q(0),
      I4 => rd_pntr_wr(0),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => rd_pntr_wr(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => rd_pntr_wr(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => rd_pntr_wr(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => rd_pntr_wr(3),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i0 : out STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\ : in STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_out_i_reg[0]_0\ : in STD_LOGIC;
    \reg_out_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_1 : entity is "xpm_fifo_reg_vec";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_1 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_pf_ic_rc.ram_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666699999969"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\(1),
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\(0),
      I4 => rd_en,
      I5 => ram_empty_i,
      O => D(0)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D42B2BD4"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\,
      I2 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I3 => \^q\(1),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(1),
      O => D(1)
    );
\gen_pf_ic_rc.ram_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8080802020FF20"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_0\(3),
      I2 => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\,
      I3 => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(3),
      I5 => \^q\(3),
      O => ram_empty_i0
    );
\gen_pf_ic_rc.ram_empty_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_0\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_0\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg\(2),
      I3 => \^q\(2),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_6 is
  port (
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ : out STD_LOGIC;
    diff_pntr_pf_q0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_i0 : out STD_LOGIC;
    almost_full : in STD_LOGIC;
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_6 : entity is "xpm_fifo_reg_vec";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_6 is
  signal \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0\ : STD_LOGIC;
  signal ram_afull_i0 : STD_LOGIC;
  signal rd_pntr_wr : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00AA000000B8"
    )
        port map (
      I0 => almost_full,
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\,
      I2 => ram_afull_i0,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => rst,
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8080802020FF20"
    )
        port map (
      I0 => wr_pntr_plus1_pf_carry,
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(3),
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0\,
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0\,
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3),
      I5 => rd_pntr_wr(3),
      O => ram_afull_i0
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_wr(0),
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(0),
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(2),
      I3 => rd_pntr_wr(2),
      I4 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(1),
      I5 => rd_pntr_wr(1),
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\,
      I1 => Q(2),
      I2 => rd_pntr_wr(2),
      I3 => rd_pntr_wr(3),
      I4 => Q(3),
      O => diff_pntr_pf_q0(0)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D444DDD4"
    )
        port map (
      I0 => rd_pntr_wr(1),
      I1 => Q(1),
      I2 => wr_pntr_plus1_pf_carry,
      I3 => Q(0),
      I4 => rd_pntr_wr(0),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8080802020FF20"
    )
        port map (
      I0 => wr_pntr_plus1_pf_carry,
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0\,
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0\,
      I4 => Q(3),
      I5 => rd_pntr_wr(3),
      O => ram_full_i0
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_wr(0),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(0),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(2),
      I3 => rd_pntr_wr(2),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(1),
      I5 => rd_pntr_wr(1),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_wr(0),
      I1 => Q(0),
      I2 => Q(2),
      I3 => rd_pntr_wr(2),
      I4 => Q(1),
      I5 => rd_pntr_wr(1),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => rd_pntr_wr(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => rd_pntr_wr(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => rd_pntr_wr(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => rd_pntr_wr(3),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_8 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i0 : out STD_LOGIC;
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\ : in STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_out_i_reg[0]_0\ : in STD_LOGIC;
    \reg_out_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_8 : entity is "xpm_fifo_reg_vec";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_8 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_pf_ic_rc.ram_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666699999969"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\(1),
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\(0),
      I4 => rd_en,
      I5 => ram_empty_i,
      O => D(0)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D42B2BD4"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\,
      I2 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I3 => \^q\(1),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(1),
      O => D(1)
    );
\gen_pf_ic_rc.ram_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8080802020FF20"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_0\(3),
      I2 => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\,
      I3 => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(3),
      I5 => \^q\(3),
      O => ram_empty_i0
    );
\gen_pf_ic_rc.ram_empty_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_0\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_0\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg\(2),
      I3 => \^q\(2),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gwdc.wr_data_count_i_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wrst_busy : in STD_LOGIC;
    \reg_out_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\ : entity is "xpm_fifo_reg_vec";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gwdc.wr_data_count_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gwdc.wr_data_count_i[3]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \gwdc.wr_data_count_i[4]_i_1\ : label is "soft_lutpair57";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\gwdc.wr_data_count_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[4]\(0),
      I2 => \^q\(1),
      I3 => \gwdc.wr_data_count_i_reg[4]\(1),
      O => D(0)
    );
\gwdc.wr_data_count_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \gwdc.wr_data_count_i[4]_i_2_n_0\,
      I1 => \reg_out_i_reg_n_0_[3]\,
      I2 => \gwdc.wr_data_count_i_reg[4]\(3),
      O => D(1)
    );
\gwdc.wr_data_count_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gwdc.wr_data_count_i[4]_i_2_n_0\,
      I1 => \gwdc.wr_data_count_i_reg[4]\(3),
      I2 => \reg_out_i_reg_n_0_[3]\,
      I3 => \reg_out_i_reg_n_0_[4]\,
      I4 => \gwdc.wr_data_count_i_reg[4]\(4),
      O => D(2)
    );
\gwdc.wr_data_count_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4DD4444DDDDD4DD"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gwdc.wr_data_count_i_reg[4]\(2),
      I2 => \gwdc.wr_data_count_i_reg[4]\(0),
      I3 => \^q\(0),
      I4 => \gwdc.wr_data_count_i_reg[4]\(1),
      I5 => \^q\(1),
      O => \gwdc.wr_data_count_i[4]_i_2_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(0),
      Q => \^q\(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(1),
      Q => \^q\(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(2),
      Q => \^q\(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(3),
      Q => \reg_out_i_reg_n_0_[3]\,
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(4),
      Q => \reg_out_i_reg_n_0_[4]\,
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_2\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \reg_out_i_reg[2]_0\ : out STD_LOGIC;
    \grdc.rd_data_count_i_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \grdc.rd_data_count_i_reg[1]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[1]_0\ : in STD_LOGIC;
    \reg_out_i_reg[4]_0\ : in STD_LOGIC;
    \reg_out_i_reg[4]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_2\ : entity is "xpm_fifo_reg_vec";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\grdc.rd_data_count_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C33C96696996C33C"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \grdc.rd_data_count_i_reg[4]\(1),
      I3 => \grdc.rd_data_count_i_reg[1]\,
      I4 => \grdc.rd_data_count_i_reg[1]_0\,
      I5 => \grdc.rd_data_count_i_reg[4]\(0),
      O => D(0)
    );
\grdc.rd_data_count_i[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[4]\(2),
      O => \reg_out_i_reg[2]_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(4),
      Q => \^q\(4),
      R => \reg_out_i_reg[4]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_7\ is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gwdc.wr_data_count_i_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wrst_busy : in STD_LOGIC;
    \reg_out_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_7\ : entity is "xpm_fifo_reg_vec";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_7\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gwdc.wr_data_count_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gwdc.wr_data_count_i[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \gwdc.wr_data_count_i[4]_i_1\ : label is "soft_lutpair32";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\gwdc.wr_data_count_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[4]\(0),
      I2 => \^q\(1),
      I3 => \gwdc.wr_data_count_i_reg[4]\(1),
      O => D(0)
    );
\gwdc.wr_data_count_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \gwdc.wr_data_count_i[4]_i_2_n_0\,
      I1 => \reg_out_i_reg_n_0_[3]\,
      I2 => \gwdc.wr_data_count_i_reg[4]\(3),
      O => D(1)
    );
\gwdc.wr_data_count_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gwdc.wr_data_count_i[4]_i_2_n_0\,
      I1 => \gwdc.wr_data_count_i_reg[4]\(3),
      I2 => \reg_out_i_reg_n_0_[3]\,
      I3 => \reg_out_i_reg_n_0_[4]\,
      I4 => \gwdc.wr_data_count_i_reg[4]\(4),
      O => D(2)
    );
\gwdc.wr_data_count_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4DD4444DDDDD4DD"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gwdc.wr_data_count_i_reg[4]\(2),
      I2 => \gwdc.wr_data_count_i_reg[4]\(0),
      I3 => \^q\(0),
      I4 => \gwdc.wr_data_count_i_reg[4]\(1),
      I5 => \^q\(1),
      O => \gwdc.wr_data_count_i[4]_i_2_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(0),
      Q => \^q\(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(1),
      Q => \^q\(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(2),
      Q => \^q\(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(3),
      Q => \reg_out_i_reg_n_0_[3]\,
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(4),
      Q => \reg_out_i_reg_n_0_[4]\,
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_9\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \reg_out_i_reg[2]_0\ : out STD_LOGIC;
    \grdc.rd_data_count_i_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \grdc.rd_data_count_i_reg[1]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[1]_0\ : in STD_LOGIC;
    \reg_out_i_reg[4]_0\ : in STD_LOGIC;
    \reg_out_i_reg[4]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_9\ : entity is "xpm_fifo_reg_vec";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_9\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_9\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\grdc.rd_data_count_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C33C96696996C33C"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \grdc.rd_data_count_i_reg[4]\(1),
      I3 => \grdc.rd_data_count_i_reg[1]\,
      I4 => \grdc.rd_data_count_i_reg[1]_0\,
      I5 => \grdc.rd_data_count_i_reg[4]\(0),
      O => D(0)
    );
\grdc.rd_data_count_i[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[4]\(2),
      O => \reg_out_i_reg[2]_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(4),
      Q => \^q\(4),
      R => \reg_out_i_reg[4]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_SPO_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0_SPO_UNCONNECTED\ : STD_LOGIC;
  attribute dram_emb_xdc : string;
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7]\ : label is "no";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 128;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 5;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 6;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 7;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 6;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 7;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(0),
      Q => doutb(0),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(1),
      Q => doutb(1),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(2),
      Q => doutb(2),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(3),
      Q => doutb(3),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(4),
      Q => doutb(4),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(5),
      Q => doutb(5),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(6),
      Q => doutb(6),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(7),
      Q => doutb(7),
      R => rstb
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(0),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(0),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(1),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(1),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(2),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(2),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(3),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(3),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(4),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(4),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(5),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(5),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(6),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(6),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(7),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(7),
      R => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(1 downto 0),
      DIB(1 downto 0) => dina(3 downto 2),
      DIC(1 downto 0) => dina(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(1 downto 0),
      DOB(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(3 downto 2),
      DOC(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(5 downto 4),
      DOD(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => addra(2),
      A3 => addra(3),
      A4 => '0',
      D => dina(6),
      DPO => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(6),
      DPRA0 => addrb(0),
      DPRA1 => addrb(1),
      DPRA2 => addrb(2),
      DPRA3 => addrb(3),
      DPRA4 => '0',
      SPO => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_SPO_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => addra(2),
      A3 => addra(3),
      A4 => '0',
      D => dina(7),
      DPO => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(7),
      DPRA0 => addrb(0),
      DPRA1 => addrb(1),
      DPRA2 => addrb(2),
      DPRA3 => addrb(3),
      DPRA4 => '0',
      SPO => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0_SPO_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 8;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 8;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 128;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is "xpm_memory_base";
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 8;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 8;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 8;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 8;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 8;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 8;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 8;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 8;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 8;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 8;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 8;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 8;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ : entity is 8;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_SPO_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0_SPO_UNCONNECTED\ : STD_LOGIC;
  attribute dram_emb_xdc : string;
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7]\ : label is "no";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 128;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 5;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 6;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 7;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 6;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 7;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(0),
      Q => doutb(0),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(1),
      Q => doutb(1),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(2),
      Q => doutb(2),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(3),
      Q => doutb(3),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(4),
      Q => doutb(4),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(5),
      Q => doutb(5),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(6),
      Q => doutb(6),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(7),
      Q => doutb(7),
      R => rstb
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(0),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(0),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(1),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(1),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(2),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(2),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(3),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(3),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(4),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(4),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(5),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(5),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(6),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(6),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(7),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(7),
      R => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(1 downto 0),
      DIB(1 downto 0) => dina(3 downto 2),
      DIC(1 downto 0) => dina(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(1 downto 0),
      DOB(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(3 downto 2),
      DOC(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(5 downto 4),
      DOD(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => addra(2),
      A3 => addra(3),
      A4 => '0',
      D => dina(6),
      DPO => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(6),
      DPRA0 => addrb(0),
      DPRA1 => addrb(1),
      DPRA2 => addrb(2),
      DPRA3 => addrb(3),
      DPRA4 => '0',
      SPO => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_SPO_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => addra(2),
      A3 => addra(3),
      A4 => '0',
      D => dina(7),
      DPO => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(7),
      DPRA0 => addrb(0),
      DPRA1 => addrb(1),
      DPRA2 => addrb(2),
      DPRA3 => addrb(3),
      DPRA4 => '0',
      SPO => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0_SPO_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
uLChqOUbTt1NFqiY8jPjjWJ62+rDBQqU79LiT+Z6+gdlWinUir8nc2O0EGNyofvJW07+2lWUpfZh
gfpJjsobqvpJ2nYLxgwBiBsL8wBAP1jKld4vcwrRFif8QIkQ0apJAb/olBJLjoXrVaHBRe2cnb1c
oYTXROWoQOueWYRDTt8=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
cWFMh19dcAfh5I2fm5gNkzVKA+E12s5YjF++3lKiIst8GaBwa4on4FAuXEKW4EnPpxcvyMqXVyau
1iv3smLGLOPLYRGmQ+Lqbgvnzwf0EOjN2tKhG9aO1m0eNGrAn2GOB6+s+qBZ7yZ0bw9aIRZ14ADt
0tgxTDmKFjSrS1E20XpQOS/rgmJwxM+4uqb8CgmWM1DhycsOPCMvKYvEd8HuRQRtpK/QCa4/xxa0
4EgKNEoh6VEVoH5iktCx8a5+8whAk38RI77NFnH76yoxMmDeQo9htMBWBjYtn0904uI2jEYWqHjo
oyzVDOnhKivDgp7VhUkZNTMlJgpm1rNnMTnDng==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
Bac+rfdUQnZTOZSHj+fbLlDkqY9V6T37mC79TYn32zd9e4UQWEMVu/Qq9mmvmrOQU69Mo3lrXlh+
6Xh2h+E8iRO9eFGvneX8CXGQd0+s/GL2SrY/9HoZy9C4vwBabKKgVk05W72+t1LJigoJxEIMxVlZ
VJmkNkC6/xqCdF3k9SY=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Jhb8ls74g0uc3Fd1307BQ9zyFNylFTnHZyMBh2k6oawiqjyVvQFcgUo5Hh/3yGyp3nxnBgBQ2lU1
DV1XHDmTCa6V7QoVSgBHIG/AmNSKliiA8MYTdT49XiELM8GMNKijDtWYSe7t5sBTK5s09epxoWn+
AcWO7Qb/kBVeon2Ud1c8Njaqetd39tjcrSsrlC+v4qazicD0ULHrcgZC5cfPFXFCwwhk6xMIc9hn
uIFyZAHl0Y1rkaiVs1Ro5K5WDl9gIgMv6R+yGWnq8LsJU6J//4S5eZ72M7xkmquGupGAmOz7MJTE
sZEdmmljHxosXY88CkFVfwkmXHhtjj5/sOxYMg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
oNXIIL+xgdkNOfFImtuCpLT9HBDzBIRAelFSucWDBQIE5/qEUiXr1F6w6okbsOnTr/1BK1y82hBr
2hMFq6kPdTjzBxoeDHhEVkbhR70n2nJ/cdS7XjLDsq1yeewi+EVstQQPNMK5O2J5iKuWDb/BEszK
B2mkR2jCTIMfN9osMXmA5MNJlY6aUD+mQ6Yb4ci81LQ6pwO9g1mJWXvsO5Xzk/Kc4JdiCQW52zxx
5k7GvGT8MhCROXmrsQdTK0YqsSJMLec0DGXUwyM6C1F9o6Z2fMRuzZMQVqPr3QOathetEogsKSl3
f4+BUic/Ye+1upn7OF6gjteB//inYfCBagnzVQ==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gHrJRrOqtj1TQdMA/j92Y5PCCE1aNTwtE2jxzyKWyMM6kulnC0cMXqpUEoeDugoLkRBAuQQEfmwa
7mR9gfbs4ny9pg44hBu/27yOMq7/cXIvwvKa3CHpdbmA6HSp2icSU8hDyvTbioJU2jppkhALVD2J
duyjLrdwr+7Nxfy/16rq1EAxHAVjja/qweZ/UQdZhRqCCEGMu0D/d49pRtkDU/FTB79LchJ76YIm
puJWCUOtAH4D4pOOp4kuSPaw7JDzCwzSWYi3XiFoZKIcX4cosq95hjJ32vycPF7PBMbHjARJufvx
wVAbXjvXOrZfVDNy80LGXvLEqLygKskL/cvk/Q==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Swaq1gE2XfBxa8PrQrjW8HeMxN2R1seHvbcqrEn4Vav/sU6KouMEb7x82gVljEEGZtTMz4nKgE4P
h7B3y7rjOmwAPdfHwyzfUpb3SOeGgSvneW0fVeEhfJyJKDlXdBx+Dt5o1yZgVEdBzdooFB4X4B91
dUBK1p+ROFTZHmYGDy53ecZ0rg9NypgKGJh5NEaA/MDPRq29Iix+NKMq9CHPHBM4Ui+PESbZbOZv
U1jC1AJvuuokiKM9cGlNe5BqZGZYLk/LibvGuUV1+ljlSoxAlDySWniD/0FYwPDkBRipMHZiG4EK
ID9g8l9T5UHyouVfKjD+D0ZpaSLl5pUAhx9+iw==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
UatAu37joqwtobUVXchAh60uD53sdShUFZul39l9SJl1Id/88habH4svoqRknnswD+rqq1GW4P4x
DFAMPwW26Ez36mOxLzasDsjnjxROE9mAMNshTId7NaZlg0TsnDYvtZZSXNP/5NuRcy+kO5rSehKt
ve3QwiNvjmviJRlrudf2QbUZzUuWSwNMfntqkibRomvnakdSbVYz7zmKxyF2wbUKkjGVBAa7HLne
KD0Jsbq6aNVY6OgNO9CfYFNsWpkpXz/d3WD9jzjBeZhsBxlvS6yhEqdz2iDtcm+HajUonkV2An/2
1ef4pf36CCK87N7GGeDLIDEPNMMzXi3O6DkRZQc0xVPg6I8FzqnNCRE3zGr0F5AnvSNQC9QiHSgP
aCQfqpFRrNIniMnAMGGzbSV/SoyqkKRfgtk8MjWeR8cMlhjqLh0HbRh+Es9W2aiio4vg19/jNotO
qCWpFn+5luhpGz8n4u0x8sIZpE1C0IVZqrdmBDVNX7sdv6uW+KnvElCJ

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
jUks1HJ15RgDCglsJ6hDx9APGBmp3wVWHl0yyWJHvx3HdJBQe2/57etU1k3NSeSWRzKEzpRgB9wW
VDVL8UxQ2KYOn7Jn4Eok7xhzaW4bJGraUVsrXN6OZEp81mNq/ckk3uuAncXUC8EDfNFPEak7o/qk
a/xsAOFMxYHiAjFyct4Ej83egvfj275clFiA5QGodrJeBfNdhmeUAmTlWxx9Bb4JnGCwIIR6O2AG
Eb701jsv/lt2NvUCk6NmRHUf0MB+kt/am17FwpIR7PBC9DfEad1iwB/kj1c3SIPTMrh1FsW6avkC
wE7eSYRz+VD1UFn20x5AKaZLmYGz0HIELP6T9A==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14880)
`protect data_block
Rvs3GDOTGaAauKD/5Rcj+iZ8Z4bUDd6onODXZYEJJXqr0sRERTUA1iuB7p5oF9DLVuFny2ukjTwm
imZYCIOIQqkwHCtOAD4/6OO0JWjewsBZdkDNxMWhPczFgIOSwLA2DZptZcqLW4esiDNw7hXrBOmS
bP80R7YYLwebiF9odxNsRIJodCY57QjpkqXwMnPh/8qGLs7Lez4BGOqWzFlS0gVYEeHSjtpuyEuI
hUBlJLUD++BhSLsa/Wrmo5a4XtnwRh8d6OMZTLmiyjrHg8eQn5tt8zVVnb06S4pp4Zt4W5NNZWeR
ymCn03WRjXxLgo6ORUkCAEaBPp7xfRD07TlHnBp7qcSU6KPaUQ2Rva1F0iLr0EodTR544kEMQ/8M
hbk4gyOd5Ig2P+0s6wJ3QSbBtRYOMpAzohfSLX1zwS4INopzN9V66eOukK5o+3T5Gb/Uyy3kKy4P
u560cy00w/+zI23xkjts9M2GiA44PdfZGIN888b4T5A6w4to3VUcHxsQ0ITWtB7vkXzL6LBKqyhb
N0czZ+F52g4ROZl58X7qquQANIlgddrOWd4F52XvP8tt3WmlMwwBiEjOyh1Q8c6zmNmkZ5uovkOn
bHT8cCYUskUVAcw4S4juY9pfBRUTQbCtl269sKEDxe22E//1YYNYP+COoAWoH/FlrQdJ2gc3KzEx
ZcvtGyIKLS/MBcRomVFyI2N8AlS7iHak9Oyri6GvvGEO7bFEntJAL+EMmOJ0rt5RgLFSJ7hBdIer
N4PD7nkluup3FWuIL/ChO8vNXa4Rqf2i4yffqTUQuObZpOrU7j3ZD3aof0RZzwtnxSJQn5ToI+fI
hWdL4ttrMTAeV6wgsyhqVDZN6oWiF3jF1/wA8h/vGrEg/fnc6rGNKdaVWCulSy41VnDJDWuQ7PeD
yt4Xv0UmWa8+784mBpVgZhV2NnZ1izsDeJP/EESMtnCtbjJg5VPgZSAYzkOMpQ3hxLEtqYn/1hpU
2VEm8l34oAhBOJfbMaVe7WzopEwJJCNknq8fl/wSdqQ6BtXNpzLG0y4E2oJSxwFUx/PQNnMXKMSj
ayph7lEKfr7T5djm21cw/2ye5e/mUz5aDuojnUyULgTWGhnWbRNWhUyYmyr1cf542wUNqM4hKDCZ
Ix9TycWVCG1PgMwNaPU8nAuw8X9wRWV0155552rsWIq8SOn+EmWkmxaidNerlGg9qTfv3xzHrBfY
JTOHHUrQvh05fEjTW6cYBX+mmWeBIUCekVmfLn74EL8ge3yOP5Hh3SdjkBMVP05qEvMdlFHU64f1
5UTIPenYgG03ftt5HNtWsx3s0IhORWBgOQh+CxGtCHxV6CK/8eqdQbYymtLODT5fWjflIaoiWwFC
TO33n544DYyCsDUc9Uldf1aCv+AqOIjpRzoad9tKQjgRQY/fqVwhh8o3+871ZK1YWIT8ZzDiYWql
Bg0KomsQdoKjk5A1SJiyvMqj4AIKslUVkVnlRgKV7Y+ax2GM/lo/5MY+DDZ+pYohE6BtCZ8Pe+fb
ajhUmXh20pvnalsXQmTaeZbNQ7obIf0pa0a2OAPyosVQ3GzxC6SahC40iDRtS9yXNWYr/w8fi5Im
z3zZJD2CLU6dSR2+KfYAjOYxRsxKpzjzxh+bbAh+DblFqheD5h6PxHluDkS2OQfYKTnsCbMOwoL6
TCqo4quPSNXqE+nQFMNiRiEl9je8bnlqWDG06Jx5SihwZaqfNlAmJnVawiFmpWspxs8BH7mUjgPd
wbeonqdaqxvrgen0XZv/FGrBBoDmQ8hMig0TF343Kl199GJJxlVyvWFEGx2WGWs3AQxrDhE8xx7O
NmD2Es/YMtEFeTSsqxaJ131vp7X5MdruNr9dcWRxO7SwrtoibhNSvjZvcjDoj/i0lUU/IjxuI2mh
cYY4lX2ag8LVAUHVYgZJQaR3rTlwvsoVurruS8v1yGtB20jaNFAJJ6zNeEwrYkUqm59LiB03avft
Yiz0OCDo/zoSpQ3gYW9LzzMfYSYcmP63ZcTLmb6Iyp0TEhEmEvvpSUpuSsFI8T5X5ctlZnekUll+
dvH4sOGhBnvga/56U2MSnJa+eVt8SYLSQyhtEHX3hCvBoEqqCsyiOXjoBkBghjfjimMLr0/ytDdP
t6F4G8+jtCiRUZE3JHi7/+my3OZTsoy1LY0YmOBkMIuD+j5f43XFdRde0WQcSsLMphHGeqAVr1Lk
YasauPLhIXA9d0SlQibXgJgXR0LkMZX0xVwB6XguPoL5NtgCeNrh5YqONxUbfLKwFpEFuqzKrw7i
6DjtXIvlQWBvfT8y6E9FjiPMnARbwock2wf2Ad/dgv1IlDrzCWfSZMlRA0t5FJfoPupmjtpnUyjV
B1SWGAuHcGFIkRKprUcY59qDgSqz7Se5Z3FXxkswU7eaSlnOFdWsLJhMJ2vNw5/NBqWeZGcaaRtz
A7r/AVNskYWUJpyAcQpGlEurwOr8RnbCsENCj3eGkZEHVF/GWMzdLbouFiSQTahSQzkQoeTleS0o
g9nAdax0RcrzovrqZMcxz/Gu4sQc6MRzx2RjEkJps5lvXqAUfZyGSbFCZR8LB/5nBPbDDbqg0c2r
Y8ejJ4kP1j9dCYUvSvB+aVwfiUALdgS5xryrL0OOH9JKZLI9f+W+XQQ9T1dWeJH0I27FRps1D3su
QYVDn6xS+Akygokpgqu95QOqk5RUTpZiXz8Ger5z7LYB4pTXac+xYXrglYEXJj0uCM5Q+PN58ilX
0xaBcG6M3ReJXEJOaN7dX09JOns9zG2tgyscmLDY75xiBnd8xJCNBKhNlAR042h/pi6QFiJ6wh/H
TJx4EkLLjTrDCMfgaurc+YVOYSei8+QCFgHv4lfNXEHcfUdAaG5n0nKQCDrddjCb9kZY8HL+G5Xi
WBqeaDvDCfgPSeJTbb00Q0ZlZ6rK02T+U2AgBiXd8YMKHCbYIfoYfaiNAFH/fyQUE75k1oseKq1O
mGh05zrpk1NjSE9pZawhnwVPN9RsJak0NMVtmEXVRmdkKspNZGdy3YQaoVxMdf+IP79Vr9BBUFND
Y2OyN2rl6opbBqA+WhOlWm66VF7Z8kFzuuGHs6ygKYAwwQ9tXj10za4PgheY3VMdI6bJZCaziBSY
Qaaj9iSHIhtl1xHW5KIUPpEcavNShDSGDqP3Hiu1zxHzPkHXFRaG2aG6HfhdE2jTSZ8XobQyc6Lb
klTPARBv98kYhvyVtb45Qy10V6X0zU3dW0TpXfyN73FeUr5azIpzxkZyOn2aIX+xpue4jCCjA4te
hCVIt2csc+AVVP3v2RS69tAgdhXd20oJB1Pf8xbGKXUS2OrqS6bW6pMAvBILqRTp+Fs21YkRmh9u
lOxeTwffnPMj2pdb8EywI42IpX0wulO/rtKF83S0pftiwsP93G6jlBIXEzlKPKHdaa5xcmwDnJzb
e6fIcHHQhGhv9tN9RpxJuJ2NO6tePRKiNapY157GKJUnA/EcRFPE9D9OYfTUOZ7xsyV0lwsOV1uu
kXdbwNT2JsbBJGOukc2gXtSygw1l2X4T+e+8s4QyJVgq5/CbpMxjvuNO4skYtSb9m/vk5ibqkwoe
bvRl3bxxmK7Xe7UuU0DYZADKqePmt39kvR7ihewsrMiCP/fisEj1PCcVLQNfxp26Iz9qzB+Nxjq2
rkAP1dJ98hdbcIPKv1GGGGUe8jqcdkI1FjrWQiX6r8FSN2KfAj4zZPvHqByZCEwZDPkg6sH4k1/s
ICxJFnIAK/ztQD5onay/xNBIncBEEuI5pTD4TTheyqls7M8XOWeqvD5IW7Tns29IxhByGJtq6uhP
trPOyzlsIpAgg5+xOhJ+oI0uKXSWVAI1c6bGwTn/InGsrRNYjk3VTvOUlgWnUTh19bEbjvwdTK17
iOTr/igHlX6PaeCZAxSBSY8e1IUU2jr9VqsZNWjlzFj4XJoossO2tQeEu0F7Xv16lwAHSDz12/lO
c31a4gufR4Y6fA9PeJDVNJ+XCegbiEVW2Vei8JsLHRETuxOx8Duj7KcAQWjMTvdkAUvm1YPMuHIk
1O1ZsxsUIo/1pbDnvus7lRtBauHECvt2kzpKfrFuBmJDHYOY+FQ2PL2HWGipJnNYWHWGVdZXzztA
03dYy+ujZ/AP0fWTabMTwvvoWXjNQaE4iiNkmDSZ/3hPu3jjRvnkQlnLXyNuV1sjKnJ2Dh+vxC0g
7yE8RZ21N51rM99BGUTJKDnZg6efFuiaY12lq2bY9kaaOlepHsraJNoRdpCBVCvKxiDZeM7grJ0D
is7AO03uPBjvU3jHGIPz71kRv4VNJDmfDSQ8gNyRFKnPW01mrisbIG9A3ZFDq8Ok7Je5DV9WV/IW
y1+4NuMn+XEXBkifulB88pwN4Ys3lZeu7hjcTy7oH8Ah/nn37HJ7JWo5bfqgR4jZ4t24HBcmSv7q
pP36UkSGFCInX6BQX/8L2LrAcyiNe6ApRUzPZK3BeefNgCgg8+1WFTnTveH8mWSPq9q4S1cah0fS
rjBRuB3XeJu5a2lWRND9TDq1D36OXsyAFctnY4cxHVcOKY8FJuo9GxHmygpBhIX4jwchQ1yHwQAO
6k7hTXQu5bpqsdWFIkSE7QZC3jeaHTbST3O5fPlxJk3hCpM/uV9NynkZiECcPkE7BlEf4LOhJBq1
HgABNkx4i9fVXAXLRIVkNyyL3C0ki3wPSDOz7bt720u6KcNKqqlfhp6VkJYFtIo2lNiwon180fsm
yKW1zvEgsOuQ4ImyVJZUkz/nZ7FmQTv4Zw0HIqZZpdMA3NDI1Nk7G7+L94PItQCdSBkYAlcwRCju
p+ayB6inA9usvAJtdIP2us4yn0caSNweQLxXoOV2k9GKFXUYtT+6Se04HhMgpK9lufGueodfLuc1
t+zBAtIs9VbwjuLNU3B/ChNaYRwJMEl2CmHYYLbqotpCJBVgYvt+DSVB6LRBnEbwKlfWjvPo1DI3
HI0NJ+2yY3/KBqweFt3hdXiN/OFeK9BWFi6gwfvNASur8G3U6mZj3/tI5p3y/HTsifzx/8kov/u3
OrEMCSP2FN9kMonyYa19IDpOBJcdqPd8/Z1enGCkYj3YtYsHiEUWToQi1mE+Sd57F3LuSdDcHydn
KpUqA1MycuTKS/r3ryETvcCOHgdQV00Nqhzpe9dl/sSCbn2fS5DcaF5Md8vCeJQQ8nYANqT+efcz
rNhJ+W9kvCKY/l8UnHMAmHGy0qzTYrSo7xwmeZztyrutBwStPN+BHM8Iy5WxyKIyi6AXKDn4YOQP
Qovg0iF62qyZ4LnKsNiPd6I2QZFGe8b67CjM6Tu80WyD4zT5Xxf4sH+OrufASGO7LDZjGW5P/Dml
Vz8XmDlGvaOh0+m0/bmQspC3WzZU71ZOyWdFtIvLM6CRDVcSL9CBBpvn6mw87RqKY933EyAbYAeR
wcDZgZL7wGtAuOSoN6jjra2tRJkkp16yWcgOCCoiN2xvHsUzEvdP8ntwhY4g9hCXUT297qLo2bHT
XLIXFVHfLf4mowRmjRrPcRUYfBvGkhHC/bNzQcOl55014RZu/CnbZVJKKh2mv0ojzbEdhpRGHEYD
EAkR7ddgz9NWJ0FhAR8LQCTV/OdDfj8lL7uiznavXuQP745su1YV8kUdsQymYNGPhEHut7KwiFFw
oKjj4B1wJVRsf9tQgnnxU9sKz+ZCMr4tvYoaGxWpGT6hs+ZfjiM3lM1iIJsJ50kxQL4jy5bFeFkj
J27CexfbjLGXFBouAC1mH98h0ZzpCchUuHAOiJ0XxzQju+w5k0ZNIR3/ap82Y8/8QgNYx+9p+CD2
egDtJPufSmaOym0iiiyCNyQ1OHfERseY5IKxsbfEChy6TVcoIsuyjgSFPXMn1cGiPu+v4SGM2BrD
t44x9jQh5ypoEejHHtSH4lS8ko3oqAb40e8miJbUS8UIPegUeMK+jCq3uieTGmjQIR1jXlPKvXIZ
05x1pOg/Zi/nGoaT8QA0zpvAyXWaDIAkpIDnSp1J2qmZR1/LYO8mWaCQUkx3bMbw14RNKs/UOcwO
uF5CQrKZwLTJS89C1qiRBgL5SRklTtI+65z4uXdZe5IokJVIDWkbmQM/tciE4ETNzISEZpkfaZhY
3tlk2t1W78fgxK29BkOepeNX7C0rK/ksLqb69DrXiawp5/N825yZouZyQYnJoY4lR63jnHJZtVvw
IJGww3aLrbgcUN1n9YCLAwxv833tw1MhfqoG84R3CeWzrribEM1ASxTCVBqjFUNW2iHc8RG/xsLZ
O+OVKbG+YTeYS04E3SLildBZbnjXvsI5PrPElfesKJXAA45r7OdwZveaRtrnL8eXD81ek4bEz6ct
JRdwbaOsghQAcd82cbtiBRHPibCYHBGi+O8/Vs598aSl4C4AQGvOHKqLem9Y1DRm5K30wFb3KYYf
pxeonQXJPnuRKG2KS/S0mbaklB3hdqCmvTbpAx2oAd3ybsTsAgX7Qc9VJsCNs+04qOLHEyCd0hy5
ZWBYYCkbSxV8aansVOwuK4DVBDp3s+348pfpiOGWObHe8y/dLa6Bf2nlvA4DtuCfP1kv9irY35aZ
VslQiRx9JWEjNoYVxXKgAa2L99jRBQ1DDruiH/7mwebi91+m9d9FhpjdgFGo88Aqhb31/UiSOrnV
dMwa3qTJ/y8Cw9YP/C6nh7/n83OoI9UZyAs2PdK1SHDoHEVPTbFMP/lwWhcLR+uBMl9AV/r2G7Fb
iO9XmDYgpxvRbjFP+rNg4fqHmwYDQiFQfWsquwSGmplDI0X/+DJzLoJZN8utyZslcf1JpdBRUZu/
Ugs823FsJMkX3NRQNpvDDvIW9ePXB995gkoHs1ZS5T9XesAmjNLgNH71TEap1J/8ipOE8zVq3vSz
F1ikT2zV9crk1jGgNb/k066Dw51/QpESr4cNPq9HmuMZS4UUpjoSVWp8WLBXatRi0ti3XL9Q6QJi
r3i0cIbwJctecAqdL41tDsHZ2hsMzcNtsTvQcZEQFOy2IHJ601F3vGz1XS30e/YPyJcE/yAKxaXX
4VJHPuLI7KINGDvp2eZo76Vb1t+aMjQhT/bHqqadJbVsrr55TK51nrm6IG0goEudrWfCQgsPDaSO
QUySGWeCDF81ZYoQY/Mi7k+bbqjeH+a2acHTGf+NiLZua2UCobVwkg6tVSsEChAalhKxK16c7Mw4
4imytpzVCBL4Nm03iOWY8uqKVSdPZ5OPiBx4Z9zcEHAJa2nAs7VDt9tQNpXoYGfzne9ZG3NzoJPn
IGs/UotzVbzeXSqYcbfmSJvowUHPflUDnpqQVwoPRBk0NgSoihnmdZI1V6Klk2Koq8VPQYYIVlse
yQFbB1+hTUmn2+kbADsPWIUbjnCIFHzZdu/dha8WcBZecpBPwmnOa3pwnVA/FKnMCFVmNY5bvwN5
kESqWk7QL4f+Zxa++gP41Fu6MKeTfgPG+4UGl45q0WqxUgElet6u/UzwcJx/FdsDItyIOn2KUTkR
9HcGfcZVq8j0mdhYi2R5MXm7grLvHR0oKtLr1hTX34OfpWhrpzz5++/hvn48315uyE6n4dLvIkaL
WiI9rFo2klBZkbTmJR6TmLtg22HYLxUW0K0LKywJUej/Sg7F2kw7TQ07oHIONnPDlRb3r8ddp6q2
V2fTbA3EryAbQABnsXG4NxTB5kx2x6SRYYErV5pAKadScY/Uxvb0nc9kyrA4UCKHjf8ye23SfOkZ
bWUpmrF4oMA9oKfDAuAv6YN2YbLhfy8bmMME9BH9LR9/UhI3X5oEmiGMT0dSp1ZREu+5WwXmhSuI
5YCaEQ6WDLq8ZrR3z6NAX8NX2MGkY2p2zYH6bfPTNk9suj+IJNFUj45ZTXtoktrUv+roSIKfaP2X
KDLojgaOwJoXNlYmPuJW8BKLeBc6v3+RtZh8IVEOiI8mWHsWPIjOOWk48F8vQu/oYGnp0dV98xEP
fNuRDtDXuDmj9Z/FjCgdOVx4iDD/KTmkPyFCkdQVX9btxbDlWuIcP5t6f3abYaLhRNrlR6w98Ltw
S+ZgCi2x3ZvcN6yGSODYviWo7dHHGmd+2UTwy7imieFzalar//V81Zv9gqEv/wD+68imPZLiUVGe
XlGF2NstAiy3EISwCnDAzPlsxQ+x/6Fa+WH34UQ8lyj8PFyIk6KoFl137eEP6eC35rY1O3qE3Tz/
1pGbPsN0w1Bgq64ifvxy9RSZf5wUlCuLcBDroGt7h0fWhWYJHn0v8PkJWTC499D+1SAjj1OBnVVs
C0kiMSzZK7z7+3BIB3mkE1SkRo+tlrO/bEVedY1ipGv74Vur/VxKOoz9fcKlZ7DP8xcHsJ1nidBY
eEzlFtW7n8yDaEMZSJb1LCEt50R2guiw4LTdvlZ1NEAPIH3kDNZ/i5cI62vPbzfCmIA2pHP5j/rV
QlkI0Gu6HhMZksqDS7lFaNE5pq67wMNCS4zgafgSVXr3CncHg3yB272nLpAh6e/IM00ZV08w3gae
SZLXo0siiiuG47ZtC+EzQDB8fTiylpQcOpfLBqK2lDCzkokHlPXq/NF7+TzWCuAKY78R9iTOaDLC
HTwtUNF7XuS6dnBRsI0+XsQU5//FEF4G+2Ewxdq0OqrHVzt6OtRkhMrWdaz3znOVKMnQeLfQNL7K
v8EIBwjo0HVcynjEu6z30nGOWqg/YM4CJvT0A/LGzg0AJVipdbpuN1YtLwmC2kjpQbhgeDxWLC7P
jjAaigq0gXNqc+9X9Nt492raeNqsh90kVRlBXIrG21cKBaAFezHuEopT3qO9Pfg/iwovdWUWT/U1
Iw7yvLl/wqubL2amchxE1yblSBlQJF+bg953Y/8yB8b0Eh9KYBKJMq2t8g192Wct2KZjPGaVTkRr
Atpg4q6EfGxNM0zyWEqm3X4+PUfBT6jBR9pfe/La/p6lRTRm8pweqWmhFw4zmzjLfyjMQWPvSwq2
7hyDsLrPbQ/Mml0OTA4dVqi6XZGF7QbvuMt21FRrIv1jTEIZLgyPq8/QeMFFgsYeT9yB9RLztG6E
/whsVrvF9/uFWisdbA/GTx3/qIyCD4en3b0StUxQwDcSnyaohcWRoODGRKsP/+V7Flgxn3O6f9se
iI56/X2YXEeHVqlnYVIAv858+EQu47Rn4OCQnN5mqm0IVMLT1/tN1j2eZe/DV/iWCDpnzBCpr4SP
S54JVKmcujJ4Htp+mTcHsgIuXaL0UytkQV024EkLRX7SVH00OfwhmEgyerx4HMvulaJCc2Mh7F2u
CKHxoeYVv9JyJmcJr7XLrscNlJP+SVHuFqvCHOU/87CyfvlUVKhiKZj+tLUFSZYvZWHhzFM4E0cd
kQFv3BRCrkMCKLN/fHrMB+2shlXVW3b+SRPlrtZmboIaEvEWER7E9GPmFOh8+aEezeYDBVbIWqtj
nMGjx2ik+GlEGyLdtq7AuLJnzouqE5qKTq0AAeR9Giq6b+gGkhtYc6PIpAscaA43Q/IaRAY7rfEQ
KHTisKCwwT4nkW1QpAspcolfCi/E5kNiWEwBHa6KD/r+sEfuzlAD8N3EvrmGIkGrAUmOeYXN9vYQ
GGflBFu3AP97n2oLU/vHrE5vP42aU7osTvD5FX9S3psg+E3e+jHFVCFCkJicD5rFxfCkJ/SkuPD+
88HttTI/Q8CXwk5sENww0fa6soo298SK6UtmrAFDWXJ3xSersOnZ6XPE8EC8Omu8UTvFR1kCJzgQ
lhWMmH4iJDPlYXnZ7Di3xqYIPSI7euksACeUi5LdzjTK8v49ycMzTr+BuHtHmCYjHK1AuGXUgyiI
PqjPAJx7GgUx5SjC+WxSWlvgjna9y+eWpzKRhJuxwWArdxlPWdIf/fJ9UilRTp8GraphrMlvVTyC
qnsNNzibQfJjbecfaqg4uCgo4V6ZZ6owYSZCLSYSOP9+9SpQLdPY+0V21VMzOP8pdsLNPktIwGux
O0Mhwo6KI/hkOqnQoCZTW7D0/Na8zOGMI56DAxL6db4IV0e3K2Gw4PckYl5DP0yC/R4Ff7iXMSyZ
7roMEbkZIkaCcFa6FX49RJjuCgYDYgmcSG/XCJZ3XqtzHyK435hPf/YX3d8KQWaMKg2PLOqVEJ1z
1YCme5j71RFkNAzoyHRb6o/X+tmoU83cEwjdJjHDqdtPA4brbQ0LZh5QRzQZnl5xRxjiS26or0RR
dheo1DGy0OKpwzcN+L38ftvgc/I2UqxyWL9F0BI59PSPyAXUdygF8PwVAv+yRh3WaTlvEveFElqq
tCxvpTe35h4U3oYLZcaC/1aoe158+p1hxwzcODClUp+8V111OychqEWbXdxnjgnur6lSKKYQgJHs
GxWZgaPLRTmp3d8Ep1GmPG4kM9YdZXwj0T6ek7xRZXVhEUIvEOoMGtCbIUwVg9vGNGCNSt3LGqrG
xvsXlno+3EqQoacGK1rmuZ5kOPTKnq3YXcE9FJ6yWtzAWLU8p/Nu4kFkL75DHg2oofG8ZcRSJ8hr
Ccu54Zm+BsrK61mDo6oXOCSJMY1bCC6O9thhSvkrVEliF1qMJKOaPCfizFe5Q1WNCzVKfrTDerul
IJpfvslli7TaENIH/VgspHN3Hy821y+BNiop1sLQypSY6D224YU9Y2Zk33dCTOPnGnbBijLgaLaK
BTmaByrqRrAM0UYZAFl2Z8d6O6n55eKdRbsStCh9QiVyyhEGHPzXALcuT8y62NMYdje7lIEB6us/
ByCxcpW0F4g3BiRoXga5Dz5x0VxJ/g0A67Awfoh7k53XmYgYoyVVHMRUDPmFkZofrNSbacU8mNNi
wlnZpEvHemtDtSI8cU8Jj8vZpHd3PuHx1ek1S1H/OKqVXNqdBRqf8zxYbDBjQKKb/KFtMwjWG6yn
1/hgeVRF2X5oHCaKV1sOo5sgyGVgckUpEVO1gKlQgIjh1rgOqTG43AxNiiL2fFbjgU71cXXmxIpV
OoWxAgg7X42TrdKPKK9bsqdIPQ1zHxpOBw2RK5cA0Z+g/V8q6hGpfbfv7sKQ0n2djKXN0/Z5BA17
3lUKuE3myo78ZHsrGjl3vc6yknM25D2Ymy0WbRt/tLhjjkk5GFjnQ3z8/2KpdkUIhnHd1znl8HNB
dROTCaC0hxhqfPVRIm1BmdVUmC1tuvLXNIC6l2b4kGdnLxJDplexXL0hrXpL/ecIX9Nx5B8G5PxG
T6UruhrfqLQu/MDgO1C6JEJ6CeVCtoKs2h8HfqXyrbvqmhzpw6y4GpwRU2VZ4BFxMLYtGV/Y7aVL
Sr5uvX4zgU5WuEMyT4ng7zdwK1i4C3JymfRt6rN/zbSM7CwhjWKidA8cOLhyH9kXQpfIvS3+NA2D
qXMgH9Ea6jOhrzJH9p4jFu1yFDfsbx5uPK3s5MaEM3l88HR4iTeNBBU1Zhu9CARE4wfZ092nSqgE
TKbsbvosj+3d8SN0L59wxSYrCj3h5/SI3upRVvCQ7aW1+FWjGQzSdsTKFAxIwcqOmf7/Uk3QoC8g
2wlunojkzY/qpbwNkS9c6Dm3OcxU97QPCXR9G+Dd4zI7dLllBz3ITLF+oXsVU5gAzMTHIZ1UvJwl
nJcwnYylSGv/iN/OIGMvhXau/zpwYkbCuq3DPLN4IqCpFZxDTBnTZA1X+NPw1qqQQrjy51tFrHb7
JvotSfNI66YshyKZFEm7oSv0ValcaXKGUNW2KtwuAclTY7X/ax+2vUF9BjxFdCXBdgkkEye3Wwnh
LgbMldO1dt/t7vd5tL8YeIc3CHtPYJwdn/7I/5+AEOG9uOjLSMoX11KBJXZEM+A0ClKS4P8jhoxq
oZlzyyrEh0AjDxOu6V2swPZwKKsWx0U28UI/2YT5+OBhFUSPbJaqgykF9H5AWdk6KdBwwKv3M1KC
osDzVSZHBHLFJKCcDvm8bm+i04jeDw3FPCKHyCBfHw3qUNXf8uX79ix7c2KjQBVW9W+vq50kJvJ7
J25S8mcqJevJjTF7j5NcB/YzYxUf7UddPzAgv16wDhsjTDoFUzmhCROXNvxefN7w3TzJzyKtrAOF
d8+tx/Kx7oSIO7SpGryzJZOgtr+MMN4M4Q4Ks9ruU5LBfEmmzNEoROAY/PeujZKan2FyUrTGQ4lp
LKDEb7QPT7GanvODx2T4+cQAtNs8UsITpybr3ESUMXh5ssm4r256Zp9cRJms4Rw2+6GmYXj6wB6n
kCDQfKR2cH36w+XlVCHNoOAL7EYPnsQjfT6/0ZzG7mp2UYtuOQEO3RfW7z3JJzF9n+p59HpHrYaV
rgxC3WxjDabKsB23seP7KgpVmbNuARMM6qMAyOeqBGSdGo+IDsmeivHTAxEUR2vNDLt8RjTaO6Sm
rCJAMl0db3p0oogWKL89HWI8ONQrecwMG6m8GYd/BY0IYkE/8IGU5Qb3wg0T5i+Dp9h9DQJ1mH92
fj3wrg+OtplL05RycFW/OcyqS5s8qUYaa8dwenigZwUPxgubbUtST61LPkDfgsLbXrc3XpRHUM6k
Tegmd0ISPtSrNMu9lfInpTqk4foP1D2cbM7xDnADahNMtlIq0iDDLb+uGVuqSX9NXfZSnzBTjTYS
cvbgjTNsLuzXBB2mmUrvScQJjrJRNoJm6IhsA+DKJSFKw/SPsANzqmP8mKG5iDUJ/0RMKU4hGKhY
/DDRzCsy1fFpC976CFtp/pfBZco8iN1JflWRSU39XifB3bCSOJeZz95NdHFtHYw+IwHZSmmxdTUS
Nxaw+Dnfto2nxk6fca/HoWAQEPM8EUA+rJPTAfbELt0bBUp4r+fr7uYoicVPKsCEb7TqBScB7/cP
SbaNWkERHiC/sk2sNDIEtPLWE5mN9LidEaHcMJxllz8435wqdzTm002QETA2Zzq53KJXHsBfix0g
WmZKzDf+EvZkNl/CWfARNc+baZd7vuOdhgjJxLWIMJxNsNfFgVNHpasZFopRi3EG+p8caAoFg30u
YIXDKGGsWUPB0d/620p27SWz21N8j8XVpZK5G67qfIqA6oV6nnKp/Tslyr4WDJemTDdyb8zZ+BVN
Hxp5KbBJzVMepzBo2rK/rnqgamtgGYXyZ4QB9li9avsTllNGDEGAtBr+jCiY/kuxQ4977E6lLQ01
E3NThrd3lYAdLmCnTbmQD7bMr21aY1H35h6gf62Qe9oUQH1dPqf5mvfgnpiJSp9Wxub+qdGM6HRC
HvCa0yXQBnzhf0UwoOVDNif7jXEmzBZUT2l/VwkduHPGTBop3c2mXCvWfQhUvv4nKc3JHMQF4c5W
8ZgGOgiSzDS1t3O8FHwhMbdwxINQzjT5zl+ZrrveGm1qLB2e+bGc0EQdoYfzFkmFRH7qy7YUqAo3
l1umYxbLOirrLdciYuQsBjjsuo7yNtCwMWm5n7FU8QpVTx2LrPSBrblqN9fMlqSIJZLU6tSKrlaK
8SJojSoMGc1jgGNgmZhbrUUxB6iMrdFoAoq2AYof7pQONcej+4QoqUSiY7iP2P4ALSa9Zj+tqko8
aREPt1uj3uOYxQI8CJF3Ml/A/QRacbO06bBP8hMoLhFtxSYC8y6wdubuG+0r/p+b2x/SWeG9+cEE
+i/8bUnyBjJK6kHrAfVJYAR3EjFI/4EqQVRtzrSqs/kkXkoPqnDmPXhleC+ov0e+zRAYI+rJ1jop
OvE/aW+/x/l6SS0Z06HkmGPHP8i91kRKgsO/ao9LqhCI9bTotZjISd2dyZ1LmaWhtdwC8WmRLj0Y
LPp7aY4DxZRqbdPYZQ0hI4cAUjI32qdxOO1pBWf3QL1uTZl5SoAR9Uh6EOJ2d7ojPLL+R7j7S6uf
hcYX1j8TlRchH7asH4xZwSnzMr3MIS/CsIVK/SI9Fqug+Fd5TTUdBRvYtheYaNpBwv8oPlBydnuc
f3u9MXl+aNbTxan+7O28cUJlreL+2VLvl5U713LQPgycPdutLH4cDytBjREYGxYtokH9gCSKC0eY
kMNFJI3GCyoUXOEMX7ZNLKwRApBdxtKDhr5+aqqp0soUX1WudH4mzj5IeXx9vT5tCka4yeTJtqA1
vx+T3cO0Q+XSAYhzJgzI2z+m5yVezillgpHR0BhWX63Z57gK8VUQeBKtAbRflP1Y9Tbl2YQs7Er8
64CZknPYdNNwbU3tTR7rF8n0ZYzyhXdAd/ngAKzQ6kWjH9QWBKYTJgCmR2ZsS/WZCSqGOFbaAQ1U
QO6EYZOb34hGiq50QVZ3WkxUNfCOwlnl0JnKNb/ma8P4XL9r3Q2r+pn1OP59swRozAzuN715d01p
35UHHarVdrdPDQocNDGe02gR6jGzt6l+oQdibrVSCnlJEhB249rsiL8rYGQlv5TKVg7a2ljmHBfq
ki57DVN8Pc2h+utZdiqh/G3wkjxo4eN2EhAQ4k0VRAcGl9jNrJze6LjTehIIKAFCbIzI6IaDeH2y
p1CDOqx277YdZ/ZVJnLSrM54tRhqNlnXW3xiMSEg+jK3MtQjQRb3yuxRccoAPvRmbN+WTOUbHlNz
mrd817MzQugUgmurS36y+5EsF04LFuLvNyvD6hTWR2LtWIOaGatb1WOwrejdWUl9Z2ImpYSK+lba
YJtYxoYOTFd4iIOBhC+IUJtJ1FlLFF8YzKZsg+v/NBC0kmJRV2y/c81IdWcGx9vIJDKVCWVjgdr2
7df6KvBikngffAE6o+dHixGZO1P8njC0Yn6Cy/Rl14UD75/ax3xT3zzPbXvSWTY0U7CMZ0RqNFDi
n9Y96/a51U1AHCx+3jxQg+3tNuscBfgYUUq4rAeAsd1Yjw2rzxK6ZKEItc2UiGJqbOZSmaeHp+0V
Zxou4bpQcH4TjQ7Tita2r1SUlG0/+zVURpKiXjWcczyk7L/CHQDhEPJ0d426pEXaNj1pyxE5T2Xu
0P6FH21HtDSIbx2tIlTNzFntn4omD8YFXJ+cxoF7QVLmN5YTu20nC+6vChwXd5sRk9QxEQUDdxlm
i5xQkf9N8J4b0HNlNzL2vmX3ve7xI1HVsZJz4a/p/5sCQwPFHj6zIbjmT0YppbakOADNnrpzzyiU
imebQgI1ygMvLN+IhznL8LuSs3EUzWy/GbT7sE8tH9h82GYrap4M+vK/aBtKFDNBqeAqrw0eUUJU
gHQwMoU4OEelngh9hfd5KHZZluI+S8fZToN+lRNiZpHiKUMAgMYrep5QNYzqhkUNLlT2VJT5T9Es
xykg7wpZ3+ZiPZeT2BdajnAyb4ICQLrtkYPM9W7ONN9uNH0PwsrCWmJ+Au7+Tzbakr528HaZpIqx
+wWl+RizPdfs+5cK4UEwa39mmvDd5MAx4pH/mt9WXEFARpjGcfrozOTJoX5OygVY8+nKzEhqKJ91
xIJQzWfGFgJkXeXd58F+h9xUntfV7u8Epu4oT/iUytDP+hzoOUcGHsZGT/Usau402IDOPloXUZMi
t+tUHRRmMczy3xDsSID9EneGBGJr4sZ50sHfAnZbGGHHa4UMBnolbAvihFEAL/GzcZUr3vxDsY7k
dy+J44hE87AWM06ITdapFSlAVNnQ2VptnwC/PPX6uSVXJtCPjV7+eN8h6nZX1QUBD6FDz4USzr8H
fOmJHjkaDlcH5O6DjmgcIKFInX0IIHt8pa18lyjS9BudmCtPv5V+OP8eUNrXGeJ5ARRhOO5wQy2R
449l/8Csg1OmNCOkBoNQ3TmMjg78a7AkB4YK4u+OoI6C7xxIkh/w3qUfPWvire/Z7VVt8LiyKZ1g
TJycGXM8j+iu++vtKV+fnc5MO19rZwzCoPRJemJ8zJPtLYed+aaxFGX0YTQM7N/umzL30XYQmNxi
l7CkH76R3SNnUG7EBsgqhVnQjycwmixaIm+Fhow+WthzSZuoLK2gxks446f2SCTo/VN3Y6x0blJk
Lqg3UER7WJ+bZTZc1YLq/q/GU8kwXuPve5bZMz/LC20ISan0BioDDUyDKARZjyiFPY95Woi0ttyh
PuwKREJdAweUOBmIl1vMjSAmDoI9SZ2bINQZYmiUC01E7DIGjvMLl+m9fajw4WARFWUeby1XHIwC
Fr2eJIjM6U/mqCNxmgOAsZ8lizUIkiDi7e22C+BH0sPqV/SLUPdkZlPfqzThkLVeL5bBIPDGR3Re
koo5ZibAiWFDmhVPwXITZYK60UgJl5UfU1xuk7/G8TT5bkdh/b0KwPaCXztz9iU+KDI7eHfxSEv7
FWzUCMfoRjOlACB8N84sZmE2vjmMsol3kU+R2jGChFhVwJ9bmn/Oe86OT+jWilYcPG13vLl67YLx
Vq/U9ZCVzkrFWxbO32f4u8UiZbs2bB0WDyngY4fPDx3u/3Opp0S8AdQolqqARb0dgn5YFStQVy+H
jjPNzY0NdOmYuiw27G9gCGsyX3wP22JjEaCZEAZvc0tsRIMubEozDMRxgNLFLRFPnqF9zzqZtkta
uO741VEQtw3Rmg4Aka6sNrtuDA71K7hEtzvM6TkBFzcRLmww/lhbGC91YkLawRR9FHOWuQqgazuL
Sf7Yq64lirS24AjZfj/d94mragF2O17RZ7T/g0aPI16uuPXbv9bwtTtH/v16VSq1vJ1NNvbyt101
vlGNP9NF24UhORYBEMFFhxmaPWA5xyAlGZQzFS99pPi9g+JaFgTZegMHr7SJ7VCM9misZ3IwzvR1
Hglu/y+RTNEoi6jpfT+073OHquxpvRl42fCdVnEfvQcNSMWS9/7Au75HEXlxywmLp1g5+i0GcFDd
kCZRIoINNNNXLIjV5PjkTFJIl1N7NR+pmNIQkmG7cWoa8N2NDt97iCpmNeaT2VdyBAkNFgCoY3qz
qfo0mU4ZyIFJSgTm9WSdU2KX/u2K5VciBO3BNcjXgS8lp6uH48cxl40hsfeI7uYh9mZhurhY9wGt
7RnmHBWUn6wQ+tdGXhYTH6SPbxaK7TH0lyacceSMmaTsfMr/7ZIkcc95TCVIlcQ+dHVZZf7fMJEL
QSnLBFRtnf5V77xD7aP0L1RuyHkqS0g5731/jEifpT44VYbnG7dl7xC0jSqoACJqwFU5EqwlHajC
HI5194wZ4y/z9bT7wS9+de47okdz/B6ba9tHLlP2UZK3aVwqH63XKrtyJt50BD2YoQg19ecybkFz
2YiAmBapd0bDOPCZChBI6qDcCHkHcvuq6C37e0Lgg60HfhDKFrgltTFBVC8JSeZQp0tRAmNRpw8e
iyIhJah5wbfoqGWfUWfsQVCMWoHfBkLt64F8VG3TNHIaze2KoenOz/wj8us6w/9twG3z0v2OeiYj
crZ3oR5J1uR6WIvM1MoIghbo8RGP7MFfUDdzFC6Zn+05zjeVFQ9qj5X0dwqxl2CVBfc/C5qvYc23
JqjGnF6sFqeYWGFUCs228LFqZWVNlcU5FkdvRT/SzN0N6DXF9hRkzEpAIXKqFLHqxAnXYVLsBQF8
1iBVIZSsf7G8ZtG2to0/r77NrsKxvEi1feoXO9JXnMQmbFQGG8GcQifrsvk/Rue6/UDKU9GndjFe
+eZ6xuRJLbs9j2hd+18BGaoiniockRuO3NzB/KLPFE2s9dLbbD9JK/Qnx2ufJ88vgIuBbIaU17pK
tYwmwkVwmLIYY59sF6OsNe3rs2Ya1COGCWNZDG5f1jb69irKFP+WbABIWB2KAAlzImEaFvzOl1su
TJ/6kVmM7UOb2mP3d7uns+D75HVjuRF1fwIAk3qZ41HBBBZ1rQRSmLDPI1sss1a5KnRhLwpp58MH
A31o6jhrkztlqxFut7S98nnhUbgB/UoGPejyoWo293U/6VAPiRD8sNNjzjvQ7cCW0HL7pRu1RBr+
zxrKkv0jXLXiQaXQaYdk7HzKI9MU5hK2Ez0D1i/AK3WLBQN1BKqlj67dohHEBauviIRDt9uTn2Bl
txxRuCeoYdh4neir9TUgPM+YxnWS720qrCl+yrESA9Wk+HAqtI2Zr6FeabNNy2tNP25XMsYX3kHq
qMcaKcsBBrj8W3C05HJMlaFc18rRMKlxXh7Ao4IVTzw33DroN47Y2RwLQqLWkhNgXzWTOkCMEXuF
whJ/fpyczI63FLhLxYnIqrTQe126D6ah0WAm+FB61oPfx8MX/sFgMeIdcZq8Tmu+Wd8F/1QFFHsd
Xh/oQNi11y/fFm5fmQjAVzoAaCHIMCm6BvHZjgeH9WDkk0xNNNbyyjR7bd8t4agdSX7+hqowWx5J
LEsO/Fc9JdCR1i55XUxeaF/m0R/7+7dvj2r/c6CpkolHYGJF/NqXrZWjkc6FPeGK1efrvCWyclL1
muiisaXNr1FV2Q8/wMoJ0RXkEi7GGJbYlbjn+lwYoUlNPRgShS3XsDZ7WpAAr368NeoYHM30yHPF
/oXoz6TXBAJp+sbQKsyWELdvjgP4Q3Opno8m1KlB/O4a/GkheijjadZW/VasGaz1ZYLOrcnfIhzJ
OU38hKqFRvqS7BsD/OmOZRTnuGuMw8sQos1hUIvtr41peMLtYE9T3yf0nfPdj+HflWOQyZJTyD4o
R2Zg2NOc53WdoA1/CNPMceU/k9IFPXmr4S8bZT/hSaSA+2RZh/tfPUyUt7J7JFDVE1FKP3xLWWzu
2+rWoZLWwTswLhTTrGwtZhN+0BcxE3q2xpDaJdJSuMpUB4vQaIFXbhP8MnEDX1k0cAmAJ9DOvurJ
D8PKTGduV76nxX9SqxBicskFtvdqllgIr5THCMDGQACJ9Otuf/6YUH0j6XrqGhAnxbv3hasktaOx
lSnGUGGmcd8qE1wjY409DC2sFrzR9zGsmlBAJ5SWPrl36uuRl3vmYuJwd2nfNY8A0d71eq3D5PCA
DGwlWD5vaVFulC4giMih3O2804HyWws7CPuTU1zp1OjqVsPs9YUdA2gzM81qE/SuRic2CaJAeW5/
ZldhlxTjERypyXwkGaVZwvGkCbOYjoHXIc1D27ny9V6Dr9Ma0rjtyjcgwnScWUzVZAJilWdqzFMw
YVllfUaVdpyG339ALDdpJ7DTEQU89JBsB4DoiTDsc/ZD9KDnmuC2gRAmHQbrjO4pkgr6Py+kejTG
1eeEn5In2zM9txDZHrvpZ6kpgWR1No0xQcKs8+C38nVIVK4V6J+EQrH/D7YJD3cv3YyyhgieuIpb
B4uiN4EIj4sUMkXJpfgX6qk5cme2al0v3LvtEfoOZYZaVEAQ/DFzUBdEIOnMLc5X+M8G2p8YqoL7
pkx6c5uC6Valuzkkan+VZONnQnbNyZE4h4aMUUn+ep0NzoHLCR/E81czNgrqGYjDpQq79bTsqpTx
mcm0GVoOwCuMT/6m66IBmHBl8WNLVrjotV9Eu9S0iCK67UZNzWgypIPOlIutGtQCBucWEgzHbjfe
KhPvj4yXurmjik/rNemostQTV/kI4medtFqhR24QS6IP2hL9W5RN7UwxHTxns0NXBCDnA6LVAA3p
AZcKTGrgkECVW8O41ImwYuuTueNEbjynIFXmX6svhg766qaG2yy0uNkXr96535GDpQP3ipxm/Sar
poKV+HV5TWpmDK4PDbpJSoAiLmfrLVfnzWilIp6BqX/L7z3gRPDHywqFf368drkiLCKgMpk1tJHN
rHDhVtrf+41J+B4DXjhBD9xBlH01kerAabF8wbLXWg4P03Ee1iZkTMTufI5Og85iY82yCLMLZZZ5
JKkYAxC42bs+AxX9RsCmOWpmInSncmvUJShLgEcNrgna2GtfIwcaBkL/VW8cnnU62WgYwaDoXher
649peM6/11mUNNgIu92/jJyFeLwTv2ARZMVlD9aRy4oPqL4ON3xiGWlw2muvWVKTnviPUUBoh50w
iGtp3Oy4DStTWVldo8ClM+YSu7Lr8eBe3EsSMBDmv3QUV1zYdo6r3MO98Fc5fRrxGrud7ltQ8bOR
Plz4UAC/3oeccxfeOYWYUDobld4AV1H/RjqLmU2f00vl+EsGMfZp1IQ7K1o88OaVqPmsJ5yC5mey
ITJodEmfqkAA6+ycL+P0c/k1j7KR9QwB9fTPQGKSWLqy+S+MwgZ6cqYxx1XORxG/GztQyQ/debdM
ug3P
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  port (
    p_1_in_0 : out STD_LOGIC;
    p_2_in : out STD_LOGIC;
    p_3_in : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]_0\ : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    Bus_RNW_reg_reg_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_2 : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    ip2Bus_WrAck_core_reg0 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ : out STD_LOGIC;
    Bus_RNW_reg_reg_3 : out STD_LOGIC;
    Bus_RNW_reg_reg_4 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_2\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[3]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Bus_RNW_reg_reg_5 : out STD_LOGIC;
    Bus_RNW_reg_reg_6 : out STD_LOGIC;
    Bus_RNW_reg_reg_7 : out STD_LOGIC;
    Bus_RNW_reg_reg_8 : out STD_LOGIC;
    SPICR_data_int_reg0 : out STD_LOGIC;
    bus2ip_wrce_int : out STD_LOGIC_VECTOR ( 1 downto 0 );
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    Bus_RNW_reg_reg_9 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\ : out STD_LOGIC;
    intr2bus_rdack0 : out STD_LOGIC;
    irpt_rdack : out STD_LOGIC;
    intr_controller_rd_ce_or_reduce : out STD_LOGIC;
    rd_ce_or_reduce_core_cmb : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_3\ : out STD_LOGIC;
    \s_axi_wdata[31]\ : out STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ : out STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ : out STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\ : out STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg\ : out STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_WrAck_core_reg_d1 : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18]\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dout : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ip2Bus_RdAck_core_reg : in STD_LOGIC;
    spicr_4_cpha_frm_axi_clk : in STD_LOGIC;
    spicr_3_cpol_frm_axi_clk : in STD_LOGIC;
    p_1_in19_in : in STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : in STD_LOGIC;
    SPISSR_frm_axi_clk : in STD_LOGIC;
    SPISR_1_LOOP_Back_Error_int : in STD_LOGIC;
    empty : in STD_LOGIC;
    rx_fifo_empty_i : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3_0\ : in STD_LOGIC;
    ip2Bus_WrAck_core_reg_1 : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    p_1_in_1 : in STD_LOGIC;
    p_1_in1_in : in STD_LOGIC;
    p_1_in4_in : in STD_LOGIC;
    SPISR_2_MSB_Error_int : in STD_LOGIC;
    p_1_in10_in : in STD_LOGIC;
    p_1_in13_in : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    spicr_1_spe_frm_axi_clk : in STD_LOGIC;
    p_1_in34_in : in STD_LOGIC;
    Tx_FIFO_Empty_SPISR_to_axi_clk : in STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : in STD_LOGIC;
    p_1_in31_in : in STD_LOGIC;
    p_1_in28_in : in STD_LOGIC;
    p_1_in25_in : in STD_LOGIC;
    spicr_5_txfifo_rst_frm_axi_clk : in STD_LOGIC;
    spisel_d1_reg_to_axi_clk : in STD_LOGIC;
    p_1_in22_in : in STD_LOGIC;
    SPISR_0_CMD_Error_to_axi_clk : in STD_LOGIC;
    p_1_in7_in : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    spicr_8_tr_inhibit_frm_axi_clk : in STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    bus2ip_rnw_i : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack_int : in STD_LOGIC;
    s_axi_arready : in STD_LOGIC;
    ip2bus_wrack_int : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC;
    s_axi_awready_0 : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus_rnw_reg_reg_0\ : STD_LOGIC;
  signal \^bus_rnw_reg_reg_3\ : STD_LOGIC;
  signal \^bus_rnw_reg_reg_5\ : STD_LOGIC;
  signal \^bus_rnw_reg_reg_6\ : STD_LOGIC;
  signal \^bus_rnw_reg_reg_7\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[26].ce_out_i_reg[26]_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg_n_0_[31]\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_1\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[22]_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_6_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_5_n_0\ : STD_LOGIC;
  signal \^legacy_md_wr_rd_ack_gen.ip2bus_rdack_reg\ : STD_LOGIC;
  signal \^legacy_md_wr_rd_ack_gen.ip2bus_wrack_reg\ : STD_LOGIC;
  signal \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_10 : STD_LOGIC;
  signal ce_expnd_i_11 : STD_LOGIC;
  signal ce_expnd_i_12 : STD_LOGIC;
  signal ce_expnd_i_13 : STD_LOGIC;
  signal ce_expnd_i_14 : STD_LOGIC;
  signal ce_expnd_i_15 : STD_LOGIC;
  signal ce_expnd_i_17 : STD_LOGIC;
  signal ce_expnd_i_18 : STD_LOGIC;
  signal ce_expnd_i_19 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_20 : STD_LOGIC;
  signal ce_expnd_i_21 : STD_LOGIC;
  signal ce_expnd_i_22 : STD_LOGIC;
  signal ce_expnd_i_23 : STD_LOGIC;
  signal ce_expnd_i_24 : STD_LOGIC;
  signal ce_expnd_i_25 : STD_LOGIC;
  signal ce_expnd_i_26 : STD_LOGIC;
  signal ce_expnd_i_27 : STD_LOGIC;
  signal ce_expnd_i_28 : STD_LOGIC;
  signal ce_expnd_i_29 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal ce_expnd_i_30 : STD_LOGIC;
  signal ce_expnd_i_31 : STD_LOGIC;
  signal ce_expnd_i_4 : STD_LOGIC;
  signal ce_expnd_i_5 : STD_LOGIC;
  signal ce_expnd_i_6 : STD_LOGIC;
  signal ce_expnd_i_7 : STD_LOGIC;
  signal ce_expnd_i_8 : STD_LOGIC;
  signal ce_expnd_i_9 : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal \eqOp__4\ : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_18_in : STD_LOGIC;
  signal p_19_in : STD_LOGIC;
  signal \^p_1_in_0\ : STD_LOGIC;
  signal p_20_in : STD_LOGIC;
  signal p_21_in : STD_LOGIC;
  signal p_22_in : STD_LOGIC;
  signal p_23_in : STD_LOGIC;
  signal p_24_in : STD_LOGIC;
  signal p_25_in : STD_LOGIC;
  signal p_26_in : STD_LOGIC;
  signal p_27_in : STD_LOGIC;
  signal p_28_in : STD_LOGIC;
  signal p_29_in : STD_LOGIC;
  signal \^p_2_in\ : STD_LOGIC;
  signal p_30_in : STD_LOGIC;
  signal p_31_in : STD_LOGIC;
  signal \^p_3_in\ : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int[9]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[18]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[22]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_1_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of intr2bus_rdack_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of intr2bus_wrack_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of ip2Bus_RdAck_intr_reg_hole_d1_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of ip2Bus_RdAck_intr_reg_hole_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of ip2Bus_WrAck_intr_reg_hole_d1_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of ip2Bus_WrAck_intr_reg_hole_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ip_irpt_enable_reg[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of ipif_glbl_irpt_enable_reg_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of irpt_rdack_d1_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of irpt_wrack_d1_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair16";
begin
  Bus_RNW_reg_reg_0 <= \^bus_rnw_reg_reg_0\;
  Bus_RNW_reg_reg_3 <= \^bus_rnw_reg_reg_3\;
  Bus_RNW_reg_reg_5 <= \^bus_rnw_reg_reg_5\;
  Bus_RNW_reg_reg_6 <= \^bus_rnw_reg_reg_6\;
  Bus_RNW_reg_reg_7 <= \^bus_rnw_reg_reg_7\;
  \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]_0\ <= \^gen_bkend_ce_registers[26].ce_out_i_reg[26]_0\;
  \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_0\ <= \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\;
  \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1\ <= \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_1\;
  \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg\ <= \^legacy_md_wr_rd_ack_gen.ip2bus_rdack_reg\;
  \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\ <= \^legacy_md_wr_rd_ack_gen.ip2bus_wrack_reg\;
  p_1_in_0 <= \^p_1_in_0\;
  p_2_in <= \^p_2_in\;
  p_3_in <= \^p_3_in\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus2ip_rnw_i,
      I1 => Q,
      I2 => \^bus_rnw_reg_reg_0\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^bus_rnw_reg_reg_0\,
      R => '0'
    );
\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => spicr_6_rxfifo_rst_frm_axi_clk,
      I1 => ip2Bus_WrAck_core_reg_1,
      I2 => s_axi_wdata(5),
      I3 => p_7_in,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => reset2ip_reset_int,
      O => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\
    );
\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => spicr_5_txfifo_rst_frm_axi_clk,
      I1 => ip2Bus_WrAck_core_reg_1,
      I2 => s_axi_wdata(4),
      I3 => p_7_in,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => reset2ip_reset_int,
      O => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\
    );
\CONTROL_REG_5_9_GENERATE[9].SPICR_data_int[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => ip2Bus_WrAck_core_reg_1,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_7_in,
      O => SPICR_data_int_reg0
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_31,
      Q => p_31_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_21,
      Q => p_21_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_20,
      Q => p_20_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_19,
      Q => p_19_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_18,
      Q => p_18_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_17,
      Q => p_17_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4),
      I4 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(2),
      O => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0\,
      Q => p_16_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4),
      I4 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(1),
      O => ce_expnd_i_15
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_15,
      Q => p_15_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4),
      O => ce_expnd_i_14
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_14,
      Q => p_14_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_13,
      Q => p_13_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4),
      I2 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(2),
      I3 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(1),
      O => ce_expnd_i_12
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_12,
      Q => p_12_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_30,
      Q => p_30_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4),
      I4 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(2),
      O => ce_expnd_i_11
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_11,
      Q => p_11_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4),
      O => ce_expnd_i_10
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_10,
      Q => p_10_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_9,
      Q => p_9_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4),
      I2 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(2),
      I3 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(1),
      O => ce_expnd_i_8
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_8,
      Q => p_8_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4),
      I3 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(1),
      O => ce_expnd_i_7
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_7,
      Q => p_7_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4),
      I4 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(3),
      O => ce_expnd_i_6
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_6,
      Q => p_6_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_5,
      Q => \^gen_bkend_ce_registers[26].ce_out_i_reg[26]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4),
      I1 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(3),
      I2 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(2),
      I3 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(1),
      O => ce_expnd_i_4
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_4,
      Q => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4),
      I3 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(2),
      O => ce_expnd_i_3
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_3,
      Q => \^p_3_in\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4),
      I4 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(3),
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_2,
      Q => \^p_2_in\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_29,
      Q => p_29_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_1,
      Q => \^p_1_in_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^legacy_md_wr_rd_ack_gen.ip2bus_wrack_reg\,
      I1 => \^legacy_md_wr_rd_ack_gen.ip2bus_rdack_reg\,
      I2 => s_axi_aresetn,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4),
      I1 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(3),
      I2 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(2),
      I3 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(1),
      O => ce_expnd_i_0
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg_n_0_[31]\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_28,
      Q => p_28_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_27,
      Q => p_27_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_26,
      Q => p_26_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_25,
      Q => p_25_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_24,
      Q => p_24_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_23,
      Q => p_23_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_22,
      Q => p_22_in,
      R => cs_ce_clr
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_23_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => irpt_wrack_d1,
      O => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_3\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => p_24_in,
      I1 => p_0_in(0),
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_23_in,
      I4 => p_21_in,
      O => D(9)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0800080"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18]\(12),
      I1 => p_21_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_23_in,
      I4 => p_1_in_1,
      O => D(8)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0800080"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18]\(11),
      I1 => p_21_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_23_in,
      I4 => p_1_in1_in,
      O => D(7)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0800080"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18]\(10),
      I1 => p_21_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_23_in,
      I4 => p_1_in4_in,
      O => D(6)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_1\,
      I1 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18]\(9),
      I2 => SPISR_0_CMD_Error_to_axi_clk,
      I3 => \^bus_rnw_reg_reg_5\,
      I4 => p_1_in7_in,
      I5 => \^bus_rnw_reg_reg_6\,
      O => D(5)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => p_23_in,
      I1 => p_21_in,
      I2 => \^bus_rnw_reg_reg_0\,
      O => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_1\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_6_in,
      O => \^bus_rnw_reg_reg_5\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_23_in,
      O => \^bus_rnw_reg_reg_6\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0808080"
    )
        port map (
      I0 => SPISR_2_MSB_Error_int,
      I1 => p_7_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => SPISR_1_LOOP_Back_Error_int,
      I4 => p_6_in,
      I5 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[22]_i_2_n_0\,
      O => D(4)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0800080"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18]\(8),
      I1 => p_21_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_23_in,
      I4 => p_1_in10_in,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[22]_i_2_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB0808080"
    )
        port map (
      I0 => p_1_in13_in,
      I1 => p_23_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_21_in,
      I4 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18]\(7),
      I5 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2_n_0\,
      O => D(3)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => p_6_in,
      I1 => SPISR_2_MSB_Error_int,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_7_in,
      I4 => spicr_8_tr_inhibit_frm_axi_clk,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\,
      I2 => ip2Bus_RdAck_core_reg,
      O => \^bus_rnw_reg_reg_3\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_7_in,
      O => \^bus_rnw_reg_reg_7\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAEAEFFFFAE"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_2_n_0\,
      I1 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18]\(6),
      I2 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_1\,
      I3 => spicr_4_cpha_frm_axi_clk,
      I4 => spicr_3_cpol_frm_axi_clk,
      I5 => \^bus_rnw_reg_reg_5\,
      O => D(2)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_3\,
      I1 => dout(6),
      I2 => p_1_in19_in,
      I3 => \^bus_rnw_reg_reg_6\,
      I4 => spicr_6_rxfifo_rst_frm_axi_clk,
      I5 => \^bus_rnw_reg_reg_7\,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_2_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2_n_0\,
      I1 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18]\(5),
      I2 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_1\,
      I3 => dout(5),
      I4 => \^bus_rnw_reg_reg_3\,
      O => D(1)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_7\,
      I1 => spicr_5_txfifo_rst_frm_axi_clk,
      I2 => spisel_d1_reg_to_axi_clk,
      I3 => \^bus_rnw_reg_reg_5\,
      I4 => p_1_in22_in,
      I5 => \^bus_rnw_reg_reg_6\,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_3\,
      I1 => dout(4),
      I2 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2_n_0\,
      I3 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18]\(4),
      I4 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_1\,
      O => D(0)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => p_23_in,
      I1 => p_1_in25_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_7_in,
      I4 => spicr_4_cpha_frm_axi_clk,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_6_n_0\,
      I1 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18]\(3),
      I2 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_1\,
      I3 => dout(3),
      I4 => \^bus_rnw_reg_reg_3\,
      O => \ip_irpt_enable_reg_reg[3]\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_7\,
      I1 => spicr_3_cpol_frm_axi_clk,
      I2 => p_1_in28_in,
      I3 => \^bus_rnw_reg_reg_6\,
      I4 => almost_full,
      I5 => \^bus_rnw_reg_reg_5\,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_6_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
        port map (
      I0 => p_23_in,
      I1 => p_21_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18]\(2),
      I4 => \^bus_rnw_reg_reg_3\,
      I5 => dout(2),
      O => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_2\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_5\,
      I1 => Tx_FIFO_Empty_SPISR_to_axi_clk,
      I2 => spicr_2_mst_n_slv_frm_axi_clk,
      I3 => \^bus_rnw_reg_reg_7\,
      I4 => p_1_in31_in,
      I5 => \^bus_rnw_reg_reg_6\,
      O => \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80008000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\,
      I2 => ip2Bus_RdAck_core_reg,
      I3 => dout(1),
      I4 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_1\,
      I5 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18]\(1),
      O => Bus_RNW_reg_reg_4
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_5\,
      I1 => scndry_out,
      I2 => spicr_1_spe_frm_axi_clk,
      I3 => \^bus_rnw_reg_reg_7\,
      I4 => p_1_in34_in,
      I5 => \^bus_rnw_reg_reg_6\,
      O => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
        port map (
      I0 => p_23_in,
      I1 => p_21_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18]\(0),
      I4 => \^bus_rnw_reg_reg_3\,
      I5 => dout(0),
      O => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA808080"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => SPISSR_frm_axi_clk,
      I2 => \^p_3_in\,
      I3 => SPISR_1_LOOP_Back_Error_int,
      I4 => p_7_in,
      I5 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_5_n_0\,
      O => Bus_RNW_reg_reg_8
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00A800A800A800"
    )
        port map (
      I0 => p_6_in,
      I1 => empty,
      I2 => rx_fifo_empty_i,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_23_in,
      I5 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3_0\,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_5_n_0\
    );
\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440444444444444"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_15_in,
      I2 => s_axi_wdata(0),
      I3 => s_axi_wdata(2),
      I4 => s_axi_wdata(1),
      I5 => s_axi_wdata(3),
      O => Bus_RNW_reg_reg_9
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45445555"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_7_in,
      I2 => almost_full,
      I3 => \^gen_bkend_ce_registers[26].ce_out_i_reg[26]_0\,
      I4 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\,
      O => Bus_RNW_reg_reg_2
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0\,
      I1 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0\,
      I2 => p_10_in,
      I3 => p_8_in,
      I4 => p_14_in,
      O => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_11_in,
      I1 => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\,
      I2 => \^p_3_in\,
      I3 => \^p_2_in\,
      I4 => p_13_in,
      I5 => \^p_1_in_0\,
      O => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0\
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_12_in,
      I1 => p_6_in,
      I2 => p_9_in,
      I3 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg_n_0_[31]\,
      O => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0\
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000045445555"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_7_in,
      I2 => almost_full,
      I3 => \^gen_bkend_ce_registers[26].ce_out_i_reg[26]_0\,
      I4 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\,
      I5 => ip2Bus_WrAck_core_reg_d1,
      O => ip2Bus_WrAck_core_reg0
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAA"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_15_in,
      I2 => \^gen_bkend_ce_registers[26].ce_out_i_reg[26]_0\,
      I3 => p_7_in,
      I4 => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\,
      O => rd_ce_or_reduce_core_cmb
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized0\
     port map (
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_31 => ce_expnd_i_31
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[10].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized10\
     port map (
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_21 => ce_expnd_i_21
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[11].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized11\
     port map (
      \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_20 => ce_expnd_i_20
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[12].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized12\
     port map (
      \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_19 => ce_expnd_i_19
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[13].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized13\
     port map (
      \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_18 => ce_expnd_i_18
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[14].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized14\
     port map (
      \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_17 => ce_expnd_i_17
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[1].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized1\
     port map (
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_30 => ce_expnd_i_30
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized2\
     port map (
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_29 => ce_expnd_i_29
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[3].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized3\
     port map (
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_28 => ce_expnd_i_28
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[4].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized4\
     port map (
      \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_27 => ce_expnd_i_27
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[5].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized5\
     port map (
      \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_26 => ce_expnd_i_26
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized6\
     port map (
      \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_25 => ce_expnd_i_25
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized7\
     port map (
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_24 => ce_expnd_i_24
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[8].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized8\
     port map (
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_23 => ce_expnd_i_23
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[9].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized9\
     port map (
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_22 => ce_expnd_i_22
    );
\MEM_DECODE_GEN[1].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized19\
     port map (
      \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_13 => ce_expnd_i_13
    );
\MEM_DECODE_GEN[1].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized23\
     port map (
      \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_9 => ce_expnd_i_9
    );
\MEM_DECODE_GEN[2].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized19_17\
     port map (
      \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_5 => ce_expnd_i_5
    );
\MEM_DECODE_GEN[2].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized23_18\
     port map (
      \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\(4 downto 0) => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4 downto 0),
      ce_expnd_i_1 => ce_expnd_i_1
    );
\SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_7_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_wrce_int(0)
    );
intr2bus_rdack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55005400"
    )
        port map (
      I0 => irpt_rdack_d1,
      I1 => p_21_in,
      I2 => p_23_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_24_in,
      O => intr2bus_rdack0
    );
intr2bus_wrack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05050504"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => p_21_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_23_in,
      I4 => p_24_in,
      O => interrupt_wrce_strb
    );
ip2Bus_RdAck_intr_reg_hole_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0,
      O => intr_controller_rd_ce_or_reduce
    );
ip2Bus_RdAck_intr_reg_hole_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0,
      I2 => ip2Bus_RdAck_intr_reg_hole_d1,
      O => ip2Bus_RdAck_intr_reg_hole0
    );
ip2Bus_WrAck_intr_reg_hole_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0,
      O => Bus_RNW_reg_reg_1
    );
ip2Bus_WrAck_intr_reg_hole_d1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0,
      I1 => ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0,
      I2 => p_17_in,
      I3 => p_25_in,
      I4 => p_20_in,
      O => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0
    );
ip2Bus_WrAck_intr_reg_hole_d1_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_16_in,
      I1 => p_31_in,
      I2 => p_28_in,
      I3 => p_19_in,
      I4 => p_29_in,
      I5 => p_30_in,
      O => ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0
    );
ip2Bus_WrAck_intr_reg_hole_d1_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_26_in,
      I1 => p_18_in,
      I2 => p_27_in,
      I3 => p_22_in,
      O => ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0
    );
ip2Bus_WrAck_intr_reg_hole_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0,
      I2 => ip2Bus_WrAck_intr_reg_hole_d1,
      O => ip2Bus_WrAck_intr_reg_hole0
    );
\ip_irpt_enable_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_21_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_wrce_int(1)
    );
ipif_glbl_irpt_enable_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => p_24_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_0_in(0),
      O => \s_axi_wdata[31]\
    );
irpt_rdack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => p_21_in,
      I1 => p_23_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_24_in,
      O => irpt_rdack
    );
irpt_wrack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3332"
    )
        port map (
      I0 => p_21_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_23_in,
      I3 => p_24_in,
      O => irpt_wrack
    );
reset_trig_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => s_axi_wdata(2),
      I2 => s_axi_wdata(1),
      I3 => s_axi_wdata(3),
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => p_15_in,
      O => s_axi_wdata_0_sn_1
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ip2bus_rdack_int,
      I1 => s_axi_arready,
      I2 => \eqOp__4\,
      O => \^legacy_md_wr_rd_ack_gen.ip2bus_rdack_reg\
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ip2bus_wrack_int,
      I1 => s_axi_awready,
      I2 => \eqOp__4\,
      O => \^legacy_md_wr_rd_ack_gen.ip2bus_wrack_reg\
    );
s_axi_wready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => s_axi_awready_0(5),
      I1 => s_axi_awready_0(1),
      I2 => s_axi_awready_0(3),
      I3 => s_axi_awready_0(0),
      I4 => s_axi_awready_0(2),
      I5 => s_axi_awready_0(4),
      O => \eqOp__4\
    );
sw_rst_cond_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => p_15_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => s_axi_wdata(3),
      I3 => s_axi_wdata(1),
      I4 => s_axi_wdata(2),
      I5 => s_axi_wdata(0),
      O => sw_rst_cond
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  port (
    \gen_rst_ic.fifo_rd_rst_ic_reg_0\ : out STD_LOGIC;
    wrst_busy : out STD_LOGIC;
    d_out_int_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_rst_busy : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow_i0 : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gwack.wr_ack_i_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \guf.underflow_i_reg\ : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : signal is "yes";
  signal \gen_rst_ic.curr_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \gen_rst_ic.curr_rrst_state\ : signal is "yes";
  signal \gen_rst_ic.fifo_rd_rst_i\ : STD_LOGIC;
  signal \^gen_rst_ic.fifo_rd_rst_ic_reg_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_rd_rst_wr_i\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_rd\ : STD_LOGIC;
  signal \gen_rst_ic.next_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rst_ic.rst_seq_reentered_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_i_2_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_reg_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_i__0\ : STD_LOGIC;
  signal \^wrst_busy\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_wr_rst_ic_i_2\ : label is "soft_lutpair69";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gen_rst_ic.rrst_wr_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 2;
  attribute INIT : string;
  attribute INIT of \gen_rst_ic.rrst_wr_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_rst_ic.rrst_wr_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_rst_ic.rrst_wr_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_rst_ic.rst_seq_reentered_i_1\ : label is "soft_lutpair69";
  attribute DEF_VAL of \gen_rst_ic.wrst_rd_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 2;
  attribute INIT of \gen_rst_ic.wrst_rd_inst\ : label is "0";
  attribute INIT_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute VERSION of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute XPM_CDC of \gen_rst_ic.wrst_rd_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gen_rst_ic.wrst_rd_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[4]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \guf.underflow_i_i_1\ : label is "soft_lutpair70";
begin
  \gen_rst_ic.fifo_rd_rst_ic_reg_0\ <= \^gen_rst_ic.fifo_rd_rst_ic_reg_0\;
  wrst_busy <= \^wrst_busy\;
\/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \/i__n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03030200FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I5 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEEE"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I3 => rst,
      I4 => p_0_in,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0EEE0FFFFEEE0"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I5 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000C0008"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I1 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004400000044"
    )
        port map (
      I0 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I3 => rst,
      I4 => p_0_in,
      I5 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_rst_ic.curr_rrst_state\(0),
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      O => \gen_rst_ic.next_rrst_state\(1)
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(0),
      Q => \gen_rst_ic.curr_rrst_state\(0),
      R => '0'
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(1),
      Q => \gen_rst_ic.curr_rrst_state\(1),
      R => '0'
    );
\__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.next_rrst_state\(0)
    );
\gen_rst_ic.fifo_rd_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.fifo_rd_rst_i\
    );
\gen_rst_ic.fifo_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_rd_rst_i\,
      Q => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_ic_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFEA0000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => \rst_i__0\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\,
      I5 => \gen_rst_ic.fifo_wr_rst_ic\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => \rst_i__0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\,
      Q => \gen_rst_ic.fifo_wr_rst_ic\,
      R => '0'
    );
\gen_rst_ic.rrst_wr_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
     port map (
      dest_clk => wr_clk,
      dest_rst => \gen_rst_ic.fifo_rd_rst_wr_i\,
      src_rst => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\
    );
\gen_rst_ic.rst_seq_reentered_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered_i_2_n_0\,
      I1 => rst,
      I2 => p_0_in,
      O => \gen_rst_ic.rst_seq_reentered_i_1_n_0\
    );
\gen_rst_ic.rst_seq_reentered_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I5 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \gen_rst_ic.rst_seq_reentered_i_2_n_0\
    );
\gen_rst_ic.rst_seq_reentered_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.rst_seq_reentered_i_1_n_0\,
      Q => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      R => '0'
    );
\gen_rst_ic.wr_rst_busy_ic_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEF00"
    )
        port map (
      I0 => rst,
      I1 => p_0_in,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I3 => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\,
      I4 => \^wrst_busy\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\,
      Q => \^wrst_busy\,
      R => '0'
    );
\gen_rst_ic.wrst_rd_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__6\
     port map (
      dest_clk => rd_clk,
      dest_rst => \gen_rst_ic.fifo_wr_rst_rd\,
      src_rst => \gen_rst_ic.fifo_wr_rst_ic\
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \gwack.wr_ack_i_reg\,
      I2 => \^wrst_busy\,
      I3 => rst_d1,
      O => E(0)
    );
\grdc.rd_data_count_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      O => SR(0)
    );
\guf.underflow_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \guf.underflow_i_reg\,
      I1 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I2 => rd_en,
      O => underflow_i0
    );
\gwack.wr_ack_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => rst_d1,
      I1 => \gwack.wr_ack_i_reg\,
      I2 => wr_en,
      I3 => \^wrst_busy\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic\,
      I5 => rst,
      O => d_out_int_reg
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
wr_rst_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^wrst_busy\,
      I1 => rst_d1,
      O => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst__xdcDup__1\ is
  port (
    \gen_rst_ic.fifo_rd_rst_ic_reg_0\ : out STD_LOGIC;
    wrst_busy : out STD_LOGIC;
    d_out_int_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_rst_busy : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow_i0 : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gwack.wr_ack_i_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \guf.underflow_i_reg\ : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst__xdcDup__1\ : entity is "xpm_fifo_rst";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst__xdcDup__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst__xdcDup__1\ is
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : signal is "yes";
  signal \gen_rst_ic.curr_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \gen_rst_ic.curr_rrst_state\ : signal is "yes";
  signal \gen_rst_ic.fifo_rd_rst_i\ : STD_LOGIC;
  signal \^gen_rst_ic.fifo_rd_rst_ic_reg_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_rd_rst_wr_i\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_rd\ : STD_LOGIC;
  signal \gen_rst_ic.next_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rst_ic.rst_seq_reentered_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_i_2_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_reg_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_i__0\ : STD_LOGIC;
  signal \^wrst_busy\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_wr_rst_ic_i_2\ : label is "soft_lutpair43";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gen_rst_ic.rrst_wr_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 2;
  attribute INIT : string;
  attribute INIT of \gen_rst_ic.rrst_wr_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_rst_ic.rrst_wr_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_rst_ic.rrst_wr_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_rst_ic.rst_seq_reentered_i_1\ : label is "soft_lutpair43";
  attribute DEF_VAL of \gen_rst_ic.wrst_rd_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 2;
  attribute INIT of \gen_rst_ic.wrst_rd_inst\ : label is "0";
  attribute INIT_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute VERSION of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute XPM_CDC of \gen_rst_ic.wrst_rd_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gen_rst_ic.wrst_rd_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[4]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \guf.underflow_i_i_1\ : label is "soft_lutpair44";
begin
  \gen_rst_ic.fifo_rd_rst_ic_reg_0\ <= \^gen_rst_ic.fifo_rd_rst_ic_reg_0\;
  wrst_busy <= \^wrst_busy\;
\/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \/i__n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03030200FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I5 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEEE"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I3 => rst,
      I4 => p_0_in,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0EEE0FFFFEEE0"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I5 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000C0008"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I1 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004400000044"
    )
        port map (
      I0 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I3 => rst,
      I4 => p_0_in,
      I5 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_rst_ic.curr_rrst_state\(0),
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      O => \gen_rst_ic.next_rrst_state\(1)
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(0),
      Q => \gen_rst_ic.curr_rrst_state\(0),
      R => '0'
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(1),
      Q => \gen_rst_ic.curr_rrst_state\(1),
      R => '0'
    );
\__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.next_rrst_state\(0)
    );
\gen_rst_ic.fifo_rd_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.fifo_rd_rst_i\
    );
\gen_rst_ic.fifo_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_rd_rst_i\,
      Q => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_ic_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFEA0000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => \rst_i__0\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\,
      I5 => \gen_rst_ic.fifo_wr_rst_ic\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => \rst_i__0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\,
      Q => \gen_rst_ic.fifo_wr_rst_ic\,
      R => '0'
    );
\gen_rst_ic.rrst_wr_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__5\
     port map (
      dest_clk => wr_clk,
      dest_rst => \gen_rst_ic.fifo_rd_rst_wr_i\,
      src_rst => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\
    );
\gen_rst_ic.rst_seq_reentered_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered_i_2_n_0\,
      I1 => rst,
      I2 => p_0_in,
      O => \gen_rst_ic.rst_seq_reentered_i_1_n_0\
    );
\gen_rst_ic.rst_seq_reentered_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I5 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \gen_rst_ic.rst_seq_reentered_i_2_n_0\
    );
\gen_rst_ic.rst_seq_reentered_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.rst_seq_reentered_i_1_n_0\,
      Q => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      R => '0'
    );
\gen_rst_ic.wr_rst_busy_ic_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEF00"
    )
        port map (
      I0 => rst,
      I1 => p_0_in,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I3 => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\,
      I4 => \^wrst_busy\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\,
      Q => \^wrst_busy\,
      R => '0'
    );
\gen_rst_ic.wrst_rd_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4\
     port map (
      dest_clk => rd_clk,
      dest_rst => \gen_rst_ic.fifo_wr_rst_rd\,
      src_rst => \gen_rst_ic.fifo_wr_rst_ic\
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \gwack.wr_ack_i_reg\,
      I2 => \^wrst_busy\,
      I3 => rst_d1,
      O => E(0)
    );
\grdc.rd_data_count_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      O => SR(0)
    );
\guf.underflow_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \guf.underflow_i_reg\,
      I1 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I2 => rd_en,
      O => underflow_i0
    );
\gwack.wr_ack_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => rst_d1,
      I1 => \gwack.wr_ack_i_reg\,
      I2 => wr_en,
      I3 => \^wrst_busy\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic\,
      I5 => rst,
      O => d_out_int_reg
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
wr_rst_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^wrst_busy\,
      I1 => rst_d1,
      O => wr_rst_busy
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
uLChqOUbTt1NFqiY8jPjjWJ62+rDBQqU79LiT+Z6+gdlWinUir8nc2O0EGNyofvJW07+2lWUpfZh
gfpJjsobqvpJ2nYLxgwBiBsL8wBAP1jKld4vcwrRFif8QIkQ0apJAb/olBJLjoXrVaHBRe2cnb1c
oYTXROWoQOueWYRDTt8=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
cWFMh19dcAfh5I2fm5gNkzVKA+E12s5YjF++3lKiIst8GaBwa4on4FAuXEKW4EnPpxcvyMqXVyau
1iv3smLGLOPLYRGmQ+Lqbgvnzwf0EOjN2tKhG9aO1m0eNGrAn2GOB6+s+qBZ7yZ0bw9aIRZ14ADt
0tgxTDmKFjSrS1E20XpQOS/rgmJwxM+4uqb8CgmWM1DhycsOPCMvKYvEd8HuRQRtpK/QCa4/xxa0
4EgKNEoh6VEVoH5iktCx8a5+8whAk38RI77NFnH76yoxMmDeQo9htMBWBjYtn0904uI2jEYWqHjo
oyzVDOnhKivDgp7VhUkZNTMlJgpm1rNnMTnDng==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
Bac+rfdUQnZTOZSHj+fbLlDkqY9V6T37mC79TYn32zd9e4UQWEMVu/Qq9mmvmrOQU69Mo3lrXlh+
6Xh2h+E8iRO9eFGvneX8CXGQd0+s/GL2SrY/9HoZy9C4vwBabKKgVk05W72+t1LJigoJxEIMxVlZ
VJmkNkC6/xqCdF3k9SY=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Jhb8ls74g0uc3Fd1307BQ9zyFNylFTnHZyMBh2k6oawiqjyVvQFcgUo5Hh/3yGyp3nxnBgBQ2lU1
DV1XHDmTCa6V7QoVSgBHIG/AmNSKliiA8MYTdT49XiELM8GMNKijDtWYSe7t5sBTK5s09epxoWn+
AcWO7Qb/kBVeon2Ud1c8Njaqetd39tjcrSsrlC+v4qazicD0ULHrcgZC5cfPFXFCwwhk6xMIc9hn
uIFyZAHl0Y1rkaiVs1Ro5K5WDl9gIgMv6R+yGWnq8LsJU6J//4S5eZ72M7xkmquGupGAmOz7MJTE
sZEdmmljHxosXY88CkFVfwkmXHhtjj5/sOxYMg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
oNXIIL+xgdkNOfFImtuCpLT9HBDzBIRAelFSucWDBQIE5/qEUiXr1F6w6okbsOnTr/1BK1y82hBr
2hMFq6kPdTjzBxoeDHhEVkbhR70n2nJ/cdS7XjLDsq1yeewi+EVstQQPNMK5O2J5iKuWDb/BEszK
B2mkR2jCTIMfN9osMXmA5MNJlY6aUD+mQ6Yb4ci81LQ6pwO9g1mJWXvsO5Xzk/Kc4JdiCQW52zxx
5k7GvGT8MhCROXmrsQdTK0YqsSJMLec0DGXUwyM6C1F9o6Z2fMRuzZMQVqPr3QOathetEogsKSl3
f4+BUic/Ye+1upn7OF6gjteB//inYfCBagnzVQ==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gHrJRrOqtj1TQdMA/j92Y5PCCE1aNTwtE2jxzyKWyMM6kulnC0cMXqpUEoeDugoLkRBAuQQEfmwa
7mR9gfbs4ny9pg44hBu/27yOMq7/cXIvwvKa3CHpdbmA6HSp2icSU8hDyvTbioJU2jppkhALVD2J
duyjLrdwr+7Nxfy/16rq1EAxHAVjja/qweZ/UQdZhRqCCEGMu0D/d49pRtkDU/FTB79LchJ76YIm
puJWCUOtAH4D4pOOp4kuSPaw7JDzCwzSWYi3XiFoZKIcX4cosq95hjJ32vycPF7PBMbHjARJufvx
wVAbXjvXOrZfVDNy80LGXvLEqLygKskL/cvk/Q==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Swaq1gE2XfBxa8PrQrjW8HeMxN2R1seHvbcqrEn4Vav/sU6KouMEb7x82gVljEEGZtTMz4nKgE4P
h7B3y7rjOmwAPdfHwyzfUpb3SOeGgSvneW0fVeEhfJyJKDlXdBx+Dt5o1yZgVEdBzdooFB4X4B91
dUBK1p+ROFTZHmYGDy53ecZ0rg9NypgKGJh5NEaA/MDPRq29Iix+NKMq9CHPHBM4Ui+PESbZbOZv
U1jC1AJvuuokiKM9cGlNe5BqZGZYLk/LibvGuUV1+ljlSoxAlDySWniD/0FYwPDkBRipMHZiG4EK
ID9g8l9T5UHyouVfKjD+D0ZpaSLl5pUAhx9+iw==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
UatAu37joqwtobUVXchAh60uD53sdShUFZul39l9SJl1Id/88habH4svoqRknnswD+rqq1GW4P4x
DFAMPwW26Ez36mOxLzasDsjnjxROE9mAMNshTId7NaZlg0TsnDYvtZZSXNP/5NuRcy+kO5rSehKt
ve3QwiNvjmviJRlrudf2QbUZzUuWSwNMfntqkibRomvnakdSbVYz7zmKxyF2wbUKkjGVBAa7HLne
KD0Jsbq6aNVY6OgNO9CfYFNsWpkpXz/d3WD9jzjBeZhsBxlvS6yhEqdz2iDtcm+HajUonkV2An/2
1ef4pf36CCK87N7GGeDLIDEPNMMzXi3O6DkRZQc0xVPg6I8FzqnNCRE3zGr0F5AnvSNQC9QiHSgP
aCQfqpFRrNIniMnAMGGzbSV/SoyqkKRfgtk8MjWeR8cMlhjqLh0HbRh+Es9W2aiio4vg19/jNotO
qCWpFn+5luhpGz8n4u0x8sIZpE1C0IVZqrdmBDVNX7sdv6uW+KnvElCJ

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
jUks1HJ15RgDCglsJ6hDx9APGBmp3wVWHl0yyWJHvx3HdJBQe2/57etU1k3NSeSWRzKEzpRgB9wW
VDVL8UxQ2KYOn7Jn4Eok7xhzaW4bJGraUVsrXN6OZEp81mNq/ckk3uuAncXUC8EDfNFPEak7o/qk
a/xsAOFMxYHiAjFyct4Ej83egvfj275clFiA5QGodrJeBfNdhmeUAmTlWxx9Bb4JnGCwIIR6O2AG
Eb701jsv/lt2NvUCk6NmRHUf0MB+kt/am17FwpIR7PBC9DfEad1iwB/kj1c3SIPTMrh1FsW6avkC
wE7eSYRz+VD1UFn20x5AKaZLmYGz0HIELP6T9A==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 768)
`protect data_block
Rvs3GDOTGaAauKD/5Rcj+iZ8Z4bUDd6onODXZYEJJXqr0sRERTUA1iuB7p5oF9DLVuFny2ukjTwm
imZYCIOIQqkwHCtOAD4/6OO0JWjewsBZdkDNxMWhPczFgIOSwLA2DZptZcqLW4esiDNw7hXrBOmS
bP80R7YYLwebiF9odxNsRIJodCY57QjpkqXwMnPhyPcGTz1Jg1YgNmnZiu9GJS3fJKOGn/ULvPWD
2q1qMA51cs/7OqfNzXRV27hDtePlNwXS/AGBPTGaZJbEeTO/vji2XWqc/kajDnbAv0UX+kCkwikv
XVwr6R2fCKDsS0O93mQ9oH81OxpbJ0Z6MjsjC5Z2f3mXmB//Uni5kVl1IRN4jNhZpznf1IdisXwq
4OilbE/5zwYYzL+/3GONHUgNH5Rbwwaa+/UU+KOySqGq4ay5kk4ONzQEYLjs9fLmSFLceTEU7wGq
mVJcikoTFgEgPqVN5IfBT3chvnITqM3ktq6Yoceei6X+4TQAkfjzD8Rfh2dxpfLlYj4nr66Qhdgl
CxVbgFFK5JFMG8w1bJOxpuGg5pflXPwXcJpajO6zLgS/XrDC+OuUU3RpbMZVAxUqfYVi2nRPbcmz
aJAedQ7hmUT4ZVAqdr0ey1Ra0YeVwhWha3FiV1WccxdyTEt+wwJ5W08abmJAtUFgSig2W2h4Iwdz
NungPOLtVjeChI/ROYEv3a2l3a8PJtXN3BQGXoZ/eV6ZFWwlzXmUVu8BeatTps5b+6xZUeUbClfq
hSMDbO0nZjMWnJoakuxy1X/GFO1k1rJ4yofBJaeEhghLuEdoDUDf3N2KhewEOAXPLftmrIzjzoRK
xipN7GjePsvCLp6dv4G+/VxHu7BzWcdx2PDK1+hzV8UMkndPIgmDUyyWap++qNXxV+GZuexOSdrx
IErYG7XA7f4cA9UoWlGV/u9/iZ5DROkMlilArf3Ov2ojgyuFh50oTUhJ74CCYFrc0GsufNIpTKwP
6zDwn7xTDeBw2JGVlDBXzLH5dedmZOlTDP9Q
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in_0 : out STD_LOGIC;
    p_2_in : out STD_LOGIC;
    p_3_in : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    s_axi_bvalid_i_reg_0 : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    Bus_RNW_reg_reg_1 : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    ip2Bus_WrAck_core_reg0 : out STD_LOGIC;
    reset2ip_reset_int : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : out STD_LOGIC;
    Bus_RNW_reg_reg_2 : out STD_LOGIC;
    Bus_RNW_reg_reg_3 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[3]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Bus_RNW_reg_reg_4 : out STD_LOGIC;
    Bus_RNW_reg_reg_5 : out STD_LOGIC;
    Bus_RNW_reg_reg_6 : out STD_LOGIC;
    Bus_RNW_reg_reg_7 : out STD_LOGIC;
    SPICR_data_int_reg0 : out STD_LOGIC;
    bus2ip_wrce_int : out STD_LOGIC_VECTOR ( 1 downto 0 );
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    Bus_RNW_reg_reg_8 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\ : out STD_LOGIC;
    intr2bus_rdack0 : out STD_LOGIC;
    irpt_rdack : out STD_LOGIC;
    intr_controller_rd_ce_or_reduce : out STD_LOGIC;
    rd_ce_or_reduce_core_cmb : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_2\ : out STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg\ : out STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\ : out STD_LOGIC;
    \s_axi_wdata[31]\ : out STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ : out STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_WrAck_core_reg_d1 : in STD_LOGIC;
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dout : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ip2Bus_RdAck_core_reg : in STD_LOGIC;
    spicr_4_cpha_frm_axi_clk : in STD_LOGIC;
    spicr_3_cpol_frm_axi_clk : in STD_LOGIC;
    p_1_in19_in : in STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : in STD_LOGIC;
    SPISSR_frm_axi_clk : in STD_LOGIC;
    SPISR_1_LOOP_Back_Error_int : in STD_LOGIC;
    empty : in STD_LOGIC;
    rx_fifo_empty_i : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3\ : in STD_LOGIC;
    ip2Bus_WrAck_core_reg_1 : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    p_1_in_1 : in STD_LOGIC;
    p_1_in1_in : in STD_LOGIC;
    p_1_in4_in : in STD_LOGIC;
    SPISR_2_MSB_Error_int : in STD_LOGIC;
    p_1_in10_in : in STD_LOGIC;
    p_1_in13_in : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    spicr_1_spe_frm_axi_clk : in STD_LOGIC;
    p_1_in34_in : in STD_LOGIC;
    Tx_FIFO_Empty_SPISR_to_axi_clk : in STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : in STD_LOGIC;
    p_1_in31_in : in STD_LOGIC;
    p_1_in28_in : in STD_LOGIC;
    p_1_in25_in : in STD_LOGIC;
    spicr_5_txfifo_rst_frm_axi_clk : in STD_LOGIC;
    spisel_d1_reg_to_axi_clk : in STD_LOGIC;
    p_1_in22_in : in STD_LOGIC;
    SPISR_0_CMD_Error_to_axi_clk : in STD_LOGIC;
    p_1_in7_in : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    spicr_8_tr_inhibit_frm_axi_clk : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack_int : in STD_LOGIC;
    ip2bus_wrack_int : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^legacy_md_wr_rd_ack_gen.ip2bus_rdack_reg\ : STD_LOGIC;
  signal \^legacy_md_wr_rd_ack_gen.ip2bus_wrack_reg\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[6]\ : STD_LOGIC;
  signal bus2ip_rnw_i : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_i_2_n_0 : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^reset2ip_reset_int\ : STD_LOGIC;
  signal rst_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_bresp_i : STD_LOGIC;
  signal \s_axi_bresp_i[1]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal \state1__2\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[6]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair19";
begin
  \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg\ <= \^legacy_md_wr_rd_ack_gen.ip2bus_rdack_reg\;
  \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\ <= \^legacy_md_wr_rd_ack_gen.ip2bus_wrack_reg\;
  SR(0) <= \^sr\(0);
  reset2ip_reset_int <= \^reset2ip_reset_int\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid_i_reg_0 <= \^s_axi_bvalid_i_reg_0\;
  s_axi_rvalid_i_reg_0 <= \^s_axi_rvalid_i_reg_0\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF150015001500"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \state1__2\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \^legacy_md_wr_rd_ack_gen.ip2bus_rdack_reg\,
      I3 => s_axi_rresp_i,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \^legacy_md_wr_rd_ack_gen.ip2bus_wrack_reg\,
      I5 => s_axi_bresp_i,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F888FFFFF888"
    )
        port map (
      I0 => \^legacy_md_wr_rd_ack_gen.ip2bus_wrack_reg\,
      I1 => s_axi_bresp_i,
      I2 => s_axi_rresp_i,
      I3 => \^legacy_md_wr_rd_ack_gen.ip2bus_rdack_reg\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \state1__2\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid_i_reg_0\,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid_i_reg_0\,
      O => \state1__2\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \^sr\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => s_axi_bresp_i,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      O => plusOp(4)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      I5 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(5),
      O => plusOp(5)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(4),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(5),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(5),
      R => clear
    );
I_DECODER: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
     port map (
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      Bus_RNW_reg_reg_1 => Bus_RNW_reg_reg_0,
      Bus_RNW_reg_reg_2 => Bus_RNW_reg_reg_1,
      Bus_RNW_reg_reg_3 => Bus_RNW_reg_reg_2,
      Bus_RNW_reg_reg_4 => Bus_RNW_reg_reg_3,
      Bus_RNW_reg_reg_5 => Bus_RNW_reg_reg_4,
      Bus_RNW_reg_reg_6 => Bus_RNW_reg_reg_5,
      Bus_RNW_reg_reg_7 => Bus_RNW_reg_reg_6,
      Bus_RNW_reg_reg_8 => Bus_RNW_reg_reg_7,
      Bus_RNW_reg_reg_9 => Bus_RNW_reg_reg_8,
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\,
      D(9 downto 0) => D(9 downto 0),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\,
      \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]_0\ => \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_0\ => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(4) => \bus2ip_addr_i_reg_n_0_[6]\,
      \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(3) => \bus2ip_addr_i_reg_n_0_[5]\,
      \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(2) => \bus2ip_addr_i_reg_n_0_[4]\,
      \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(1) => \bus2ip_addr_i_reg_n_0_[3]\,
      \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\(0) => \bus2ip_addr_i_reg_n_0_[2]\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_2\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_3\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_2\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3_0\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18]\(12 downto 0) => Q(12 downto 0),
      \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg\ => \^legacy_md_wr_rd_ack_gen.ip2bus_rdack_reg\,
      \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\ => \^legacy_md_wr_rd_ack_gen.ip2bus_wrack_reg\,
      \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\ => \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\,
      Q => start2,
      SPICR_data_int_reg0 => SPICR_data_int_reg0,
      SPISR_0_CMD_Error_to_axi_clk => SPISR_0_CMD_Error_to_axi_clk,
      SPISR_1_LOOP_Back_Error_int => SPISR_1_LOOP_Back_Error_int,
      SPISR_2_MSB_Error_int => SPISR_2_MSB_Error_int,
      SPISSR_frm_axi_clk => SPISSR_frm_axi_clk,
      Tx_FIFO_Empty_SPISR_to_axi_clk => Tx_FIFO_Empty_SPISR_to_axi_clk,
      almost_full => almost_full,
      bus2ip_rnw_i => bus2ip_rnw_i,
      bus2ip_wrce_int(1 downto 0) => bus2ip_wrce_int(1 downto 0),
      dout(6 downto 0) => dout(6 downto 0),
      empty => empty,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr_controller_rd_ce_or_reduce => intr_controller_rd_ce_or_reduce,
      ip2Bus_RdAck_core_reg => ip2Bus_RdAck_core_reg,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_core_reg0 => ip2Bus_WrAck_core_reg0,
      ip2Bus_WrAck_core_reg_1 => ip2Bus_WrAck_core_reg_1,
      ip2Bus_WrAck_core_reg_d1 => ip2Bus_WrAck_core_reg_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      ip2bus_rdack_int => ip2bus_rdack_int,
      ip2bus_wrack_int => ip2bus_wrack_int,
      \ip_irpt_enable_reg_reg[3]\ => \ip_irpt_enable_reg_reg[3]\,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      p_0_in(0) => p_0_in(0),
      p_1_in10_in => p_1_in10_in,
      p_1_in13_in => p_1_in13_in,
      p_1_in19_in => p_1_in19_in,
      p_1_in1_in => p_1_in1_in,
      p_1_in22_in => p_1_in22_in,
      p_1_in25_in => p_1_in25_in,
      p_1_in28_in => p_1_in28_in,
      p_1_in31_in => p_1_in31_in,
      p_1_in34_in => p_1_in34_in,
      p_1_in4_in => p_1_in4_in,
      p_1_in7_in => p_1_in7_in,
      p_1_in_0 => p_1_in_0,
      p_1_in_1 => p_1_in_1,
      p_2_in => p_2_in,
      p_3_in => p_3_in,
      rd_ce_or_reduce_core_cmb => rd_ce_or_reduce_core_cmb,
      reset2ip_reset_int => \^reset2ip_reset_int\,
      rx_fifo_empty_i => rx_fifo_empty_i,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => is_read_reg_n_0,
      s_axi_awready => is_write_reg_n_0,
      s_axi_awready_0(5 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(5 downto 0),
      s_axi_wdata(6 downto 0) => s_axi_wdata(6 downto 0),
      \s_axi_wdata[31]\ => \s_axi_wdata[31]\,
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      scndry_out => scndry_out,
      spicr_1_spe_frm_axi_clk => spicr_1_spe_frm_axi_clk,
      spicr_2_mst_n_slv_frm_axi_clk => spicr_2_mst_n_slv_frm_axi_clk,
      spicr_3_cpol_frm_axi_clk => spicr_3_cpol_frm_axi_clk,
      spicr_4_cpha_frm_axi_clk => spicr_4_cpha_frm_axi_clk,
      spicr_5_txfifo_rst_frm_axi_clk => spicr_5_txfifo_rst_frm_axi_clk,
      spicr_6_rxfifo_rst_frm_axi_clk => spicr_6_rxfifo_rst_frm_axi_clk,
      spicr_8_tr_inhibit_frm_axi_clk => spicr_8_tr_inhibit_frm_axi_clk,
      spisel_d1_reg_to_axi_clk => spisel_d1_reg_to_axi_clk,
      sw_rst_cond => sw_rst_cond
    );
RESET_SYNC_AX2S_1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sr\(0),
      I1 => \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\,
      O => \^reset2ip_reset_int\
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(0),
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(1),
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(2),
      O => \bus2ip_addr_i[4]_i_1_n_0\
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(3),
      O => \bus2ip_addr_i[5]_i_1_n_0\
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \bus2ip_addr_i[6]_i_1_n_0\
    );
\bus2ip_addr_i[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(4),
      O => \bus2ip_addr_i[6]_i_2_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[6]_i_1_n_0\,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[6]_i_1_n_0\,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[6]_i_1_n_0\,
      D => \bus2ip_addr_i[4]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[6]_i_1_n_0\,
      D => \bus2ip_addr_i[5]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[6]_i_1_n_0\,
      D => \bus2ip_addr_i[6]_i_2_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[6]\,
      R => \^sr\(0)
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[6]_i_1_n_0\,
      D => s_axi_arvalid,
      Q => bus2ip_rnw_i,
      R => \^sr\(0)
    );
is_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8888"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \state1__2\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => is_read_reg_n_0,
      O => is_read_i_1_n_0
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_read_i_1_n_0,
      Q => is_read_reg_n_0,
      R => \^sr\(0)
    );
is_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => is_write_i_2_n_0,
      I5 => is_write_reg_n_0,
      O => is_write_i_1_n_0
    );
is_write_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_bready,
      I2 => \^s_axi_bvalid_i_reg_0\,
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid_i_reg_0\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => is_write_i_2_n_0
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_write_i_1_n_0,
      Q => is_write_reg_n_0,
      R => \^sr\(0)
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => rst_i_1_n_0
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_i_1_n_0,
      Q => \^sr\(0),
      R => '0'
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(0),
      I1 => s_axi_bresp_i,
      I2 => \^s_axi_bresp\(0),
      O => \s_axi_bresp_i[1]_i_1_n_0\
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_bresp_i[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => \^sr\(0)
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^legacy_md_wr_rd_ack_gen.ip2bus_wrack_reg\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid_i_reg_0\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid_i_reg_0\,
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(0),
      Q => s_axi_rdata(0),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(10),
      Q => s_axi_rdata(10),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(11),
      Q => s_axi_rdata(11),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(12),
      Q => s_axi_rdata(12),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(13),
      Q => s_axi_rdata(13),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(1),
      Q => s_axi_rdata(1),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(2),
      Q => s_axi_rdata(2),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(14),
      Q => s_axi_rdata(14),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(3),
      Q => s_axi_rdata(3),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(4),
      Q => s_axi_rdata(4),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(5),
      Q => s_axi_rdata(5),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(6),
      Q => s_axi_rdata(6),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(7),
      Q => s_axi_rdata(7),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(8),
      Q => s_axi_rdata(8),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(9),
      Q => s_axi_rdata(9),
      R => \^sr\(0)
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => p_1_in(0),
      Q => s_axi_rresp(0),
      R => \^sr\(0)
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^legacy_md_wr_rd_ack_gen.ip2bus_rdack_reg\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid_i_reg_0\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid_i_reg_0\,
      R => \^sr\(0)
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => \^sr\(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCAFFCA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^legacy_md_wr_rd_ack_gen.ip2bus_wrack_reg\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state1__2\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFFF0C5500FF0C"
    )
        port map (
      I0 => \state1__2\,
      I1 => p_5_in,
      I2 => s_axi_arvalid,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \^legacy_md_wr_rd_ack_gen.ip2bus_rdack_reg\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      O => p_5_in
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "warning";
  attribute EN_UF : string;
  attribute EN_UF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 16;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 128;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 4;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute READ_MODE : integer;
  attribute READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1f1f";
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 4;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 3;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal \^almost_empty\ : STD_LOGIC;
  signal \^almost_full\ : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_5\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\ : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal \gwdc.diff_wr_rd_pntr1_out\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal overflow_i0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_full_i0 : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_wr_cdc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_wr_cdc_dc : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^rd_rst_busy\ : STD_LOGIC;
  signal rdp_inst_n_10 : STD_LOGIC;
  signal rdp_inst_n_11 : STD_LOGIC;
  signal rdp_inst_n_12 : STD_LOGIC;
  signal rdp_inst_n_13 : STD_LOGIC;
  signal rdp_inst_n_6 : STD_LOGIC;
  signal rdp_inst_n_9 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_1 : STD_LOGIC;
  signal src_in_bin00_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal underflow_i0 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wr_pntr_plus1_pf : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal wr_pntr_plus1_pf_carry : STD_LOGIC;
  signal wr_pntr_rd_cdc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_pntr_rd_cdc_dc : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wrp_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrpp2_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_2 : STD_LOGIC;
  signal wrpp2_inst_n_3 : STD_LOGIC;
  signal wrst_busy : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_2 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair46";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 5;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 4;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 4;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 5;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 4;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_fwft.gae_fwft.aempty_fwft_i_i_1\ : label is "soft_lutpair45";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of \gen_sdpram.xpm_memory_base_inst\ : label is "[7:0]";
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_3\ : label is "soft_lutpair45";
begin
  almost_empty <= \^almost_empty\;
  almost_full <= \^almost_full\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  full_n <= \<const0>\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  rd_rst_busy <= \^rd_rst_busy\;
  sbiterr <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FF0"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => \^rd_rst_busy\
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => \^rd_rst_busy\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaf_wptr_p3.wrpp3_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn_5
     port map (
      Q(3 downto 0) => count_value_i(3 downto 0),
      wr_clk => wr_clk,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1__1\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(4 downto 0) => rd_pntr_wr_cdc_dc(4 downto 0),
      src_clk => rd_clk,
      src_in_bin(4) => rdp_inst_n_10,
      src_in_bin(3) => rdp_inst_n_11,
      src_in_bin(2) => rdp_inst_n_12,
      src_in_bin(1) => src_in_bin00_out(1),
      src_in_bin(0) => rdp_inst_n_13
    );
\gen_cdc_pntr.rd_pntr_cdc_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(3 downto 0) => rd_pntr_wr_cdc(3 downto 0),
      src_clk => rd_clk,
      src_in_bin(3 downto 0) => rd_pntr_ext(3 downto 0)
    );
\gen_cdc_pntr.rpw_gray_reg\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_6
     port map (
      D(3 downto 0) => rd_pntr_wr_cdc(3 downto 0),
      Q(3 downto 0) => wr_pntr_plus1_pf(4 downto 1),
      almost_full => \^almost_full\,
      diff_pntr_pf_q0(0) => diff_pntr_pf_q0(4),
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\ => \^full\,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(3 downto 0) => count_value_i(3 downto 0),
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3) => wrpp2_inst_n_0,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(2) => wrpp2_inst_n_1,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(1) => wrpp2_inst_n_2,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(0) => wrpp2_inst_n_3,
      ram_full_i0 => ram_full_i0,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rpw_gray_reg_dc\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_7\
     port map (
      D(2 downto 1) => \gwdc.diff_wr_rd_pntr1_out\(4 downto 3),
      D(0) => \gwdc.diff_wr_rd_pntr1_out\(1),
      Q(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      \gwdc.wr_data_count_i_reg[4]\(4 downto 0) => wr_pntr_ext(4 downto 0),
      \reg_out_i_reg[4]_0\(4 downto 0) => rd_pntr_wr_cdc_dc(4 downto 0),
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.wpr_gray_reg\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_8
     port map (
      D(1 downto 0) => diff_pntr_pe(1 downto 0),
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\(1 downto 0) => curr_fwft_state(1 downto 0),
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\ => rdp_inst_n_6,
      \gen_pf_ic_rc.ram_empty_i_reg\(3 downto 0) => rd_pntr_ext(3 downto 0),
      \gen_pf_ic_rc.ram_empty_i_reg_0\(3) => rdpp1_inst_n_0,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(2) => rdpp1_inst_n_1,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(1) => rdpp1_inst_n_2,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(0) => rdpp1_inst_n_3,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \reg_out_i_reg[0]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[3]_0\(3 downto 0) => wr_pntr_rd_cdc(3 downto 0)
    );
\gen_cdc_pntr.wpr_gray_reg_dc\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_9\
     port map (
      D(0) => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      \grdc.rd_data_count_i_reg[1]\ => \gen_fwft.rdpp1_inst_n_2\,
      \grdc.rd_data_count_i_reg[1]_0\ => \gen_fwft.rdpp1_inst_n_3\,
      \grdc.rd_data_count_i_reg[4]\(2 downto 0) => rd_pntr_ext(2 downto 0),
      rd_clk => rd_clk,
      \reg_out_i_reg[2]_0\ => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\,
      \reg_out_i_reg[4]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[4]_1\(4 downto 0) => wr_pntr_rd_cdc_dc(4 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_dc_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__1\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(4 downto 0) => wr_pntr_rd_cdc_dc(4 downto 0),
      src_clk => wr_clk,
      src_in_bin(4 downto 0) => wr_pntr_ext(4 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(3 downto 0) => wr_pntr_rd_cdc(3 downto 0),
      src_clk => wr_clk,
      src_in_bin(3 downto 0) => wr_pntr_ext(3 downto 0)
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \^empty\,
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \^empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.gae_fwft.aempty_fwft_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDD4000"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => ram_empty_i,
      I2 => curr_fwft_state(1),
      I3 => rd_en,
      I4 => \^almost_empty\,
      O => aempty_fwft_i0
    );
\gen_fwft.gae_fwft.aempty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => aempty_fwft_i0,
      Q => \^almost_empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3575"
    )
        port map (
      I0 => \^empty\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => \^rd_rst_busy\
    );
\gen_fwft.rdpp1_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_10\
     port map (
      D(0) => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      \count_value_i_reg[0]_0\ => \gen_fwft.rdpp1_inst_n_3\,
      \count_value_i_reg[1]_0\ => \gen_fwft.rdpp1_inst_n_1\,
      \count_value_i_reg[1]_1\ => \gen_fwft.rdpp1_inst_n_2\,
      \count_value_i_reg[1]_2\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[1]_3\ => \^rd_rst_busy\,
      \grdc.rd_data_count_i_reg[2]\(2 downto 0) => rd_pntr_ext(2 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      src_in_bin(0) => src_in_bin00_out(1)
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      Q => \^almost_full\,
      R => '0'
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888BBBBBBBBB"
    )
        port map (
      I0 => \^prog_empty\,
      I1 => \^empty\,
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      I4 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      I5 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\,
      Q => \^prog_empty\,
      S => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => p_1_in,
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_1,
      Q => \^prog_full\,
      R => '0'
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_full_i0,
      Q => \^full\,
      R => wrst_busy
    );
\gen_pf_ic_rc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => \^rd_rst_busy\
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__1\
     port map (
      addra(3 downto 0) => wr_pntr_ext(3 downto 0),
      addrb(3 downto 0) => rd_pntr_ext(3 downto 0),
      clka => wr_clk,
      clkb => rd_clk,
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(7 downto 0) => din(7 downto 0),
      dinb(7 downto 0) => B"00000000",
      douta(7 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(7 downto 0),
      doutb(7 downto 0) => dout(7 downto 0),
      ena => wr_pntr_plus1_pf_carry,
      enb => rdp_inst_n_6,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => \^rd_rst_busy\,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => '0',
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
\gof.overflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => overflow_i0,
      Q => overflow,
      R => '0'
    );
\grdc.rd_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => rdp_inst_n_9,
      Q => rd_data_count(0),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => rd_data_count(1),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => rd_data_count(2),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => rd_data_count(3),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => rd_data_count(4),
      R => \grdc.rd_data_count_i0\
    );
\guf.underflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => underflow_i0,
      Q => underflow,
      R => '0'
    );
\gwack.wr_ack_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_2,
      Q => wr_ack,
      R => '0'
    );
\gwdc.wr_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => wrp_inst_n_1,
      Q => wr_data_count(0),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(1),
      Q => wr_data_count(1),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(2),
      Q => wr_data_count(2),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(3),
      Q => wr_data_count(3),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(4),
      Q => wr_data_count(4),
      R => wrst_busy
    );
rdp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_11\
     port map (
      D(1 downto 0) => diff_pntr_pe(3 downto 2),
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdp_inst_n_6,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[3]_0\(3 downto 0) => rd_pntr_ext(3 downto 0),
      \count_value_i_reg[4]_0\ => \^rd_rst_busy\,
      \grdc.rd_data_count_i_reg[0]\ => \gen_fwft.rdpp1_inst_n_3\,
      \grdc.rd_data_count_i_reg[3]\ => \gen_fwft.rdpp1_inst_n_1\,
      \grdc.rd_data_count_i_reg[4]\ => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\,
      \grdc.rd_data_count_i_reg[4]_0\(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      \grdc.rd_data_count_i_reg[4]_0\(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      \grdc.rd_data_count_i_reg[4]_0\(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      \grdc.rd_data_count_i_reg[4]_0\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      \grdc.rd_data_count_i_reg[4]_0\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \reg_out_i_reg[4]\(2 downto 1) => \grdc.diff_wr_rd_pntr_rdc\(4 downto 3),
      \reg_out_i_reg[4]\(0) => rdp_inst_n_9,
      \src_gray_ff_reg[4]\ => \gen_fwft.rdpp1_inst_n_2\,
      src_in_bin(3) => rdp_inst_n_10,
      src_in_bin(2) => rdp_inst_n_11,
      src_in_bin(1) => rdp_inst_n_12,
      src_in_bin(0) => rdp_inst_n_13
    );
rdpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_12\
     port map (
      E(0) => rdp_inst_n_6,
      Q(3) => rdpp1_inst_n_0,
      Q(2) => rdpp1_inst_n_1,
      Q(1) => rdpp1_inst_n_2,
      Q(0) => rdpp1_inst_n_3,
      \count_value_i_reg[0]_0\ => \^rd_rst_busy\,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_13
     port map (
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\ => rst_d1_inst_n_1,
      \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ => \^full\,
      overflow_i0 => overflow_i0,
      p_1_in => p_1_in,
      prog_full => \^prog_full\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
wrp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_14\
     port map (
      D(1) => \gwdc.diff_wr_rd_pntr1_out\(2),
      D(0) => wrp_inst_n_1,
      E(0) => wr_pntr_plus1_pf_carry,
      Q(4 downto 0) => wr_pntr_ext(4 downto 0),
      \gwdc.wr_data_count_i_reg[2]\(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      \gwdc.wr_data_count_i_reg[2]\(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      \gwdc.wr_data_count_i_reg[2]\(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
wrpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_15\
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(3 downto 0) => wr_pntr_plus1_pf(4 downto 1),
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
wrpp2_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_16\
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(3) => wrpp2_inst_n_0,
      Q(2) => wrpp2_inst_n_1,
      Q(1) => wrpp2_inst_n_2,
      Q(0) => wrpp2_inst_n_3,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
xpm_fifo_rst_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst__xdcDup__1\
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      SR(0) => \grdc.rd_data_count_i0\,
      d_out_int_reg => xpm_fifo_rst_inst_n_2,
      \gen_rst_ic.fifo_rd_rst_ic_reg_0\ => \^rd_rst_busy\,
      \guf.underflow_i_reg\ => \^empty\,
      \gwack.wr_ack_i_reg\ => \^full\,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      rst_d1 => rst_d1,
      underflow_i0 => underflow_i0,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy,
      wrst_busy => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "warning";
  attribute EN_UF : string;
  attribute EN_UF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 16;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 128;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 5;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 4;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 8;
  attribute READ_MODE : integer;
  attribute READ_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "1F1F";
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 8;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 5;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 5;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 4;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 3;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 3;
  attribute invalid : integer;
  attribute invalid of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ : entity is 1;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal \^almost_empty\ : STD_LOGIC;
  signal \^almost_full\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_5\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\ : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal \gwdc.diff_wr_rd_pntr1_out\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal overflow_i0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_wr_cdc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_wr_cdc_dc : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^rd_rst_busy\ : STD_LOGIC;
  signal rdp_inst_n_10 : STD_LOGIC;
  signal rdp_inst_n_11 : STD_LOGIC;
  signal rdp_inst_n_12 : STD_LOGIC;
  signal rdp_inst_n_13 : STD_LOGIC;
  signal rdp_inst_n_6 : STD_LOGIC;
  signal rdp_inst_n_9 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_1 : STD_LOGIC;
  signal src_in_bin00_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal underflow_i0 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wr_pntr_plus1_pf : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal wr_pntr_plus1_pf_carry : STD_LOGIC;
  signal wr_pntr_rd_cdc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_pntr_rd_cdc_dc : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wrp_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrpp2_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_2 : STD_LOGIC;
  signal wrpp2_inst_n_3 : STD_LOGIC;
  signal wrst_busy : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_2 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair72";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 5;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 4;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 4;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 5;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 4;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_fwft.gae_fwft.aempty_fwft_i_i_1\ : label is "soft_lutpair71";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of \gen_sdpram.xpm_memory_base_inst\ : label is "[7:0]";
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_3\ : label is "soft_lutpair71";
begin
  almost_empty <= \^almost_empty\;
  almost_full <= \^almost_full\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  full_n <= \<const0>\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  rd_rst_busy <= \^rd_rst_busy\;
  sbiterr <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FF0"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => \^rd_rst_busy\
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => \^rd_rst_busy\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaf_wptr_p3.wrpp3_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn
     port map (
      Q(3 downto 0) => count_value_i(3 downto 0),
      wr_clk => wr_clk,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(4 downto 0) => rd_pntr_wr_cdc_dc(4 downto 0),
      src_clk => rd_clk,
      src_in_bin(4) => rdp_inst_n_10,
      src_in_bin(3) => rdp_inst_n_11,
      src_in_bin(2) => rdp_inst_n_12,
      src_in_bin(1) => src_in_bin00_out(1),
      src_in_bin(0) => rdp_inst_n_13
    );
\gen_cdc_pntr.rd_pntr_cdc_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
     port map (
      dest_clk => wr_clk,
      dest_out_bin(3 downto 0) => rd_pntr_wr_cdc(3 downto 0),
      src_clk => rd_clk,
      src_in_bin(3 downto 0) => rd_pntr_ext(3 downto 0)
    );
\gen_cdc_pntr.rpw_gray_reg\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec
     port map (
      D(3 downto 0) => rd_pntr_wr_cdc(3 downto 0),
      Q(3 downto 0) => wr_pntr_plus1_pf(4 downto 1),
      almost_full => \^almost_full\,
      clr_full => clr_full,
      diff_pntr_pf_q0(0) => diff_pntr_pf_q0(4),
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ => \^full\,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\(3 downto 0) => count_value_i(3 downto 0),
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(3) => wrpp2_inst_n_0,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(2) => wrpp2_inst_n_1,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(1) => wrpp2_inst_n_2,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(0) => wrpp2_inst_n_3,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      \reg_out_i_reg[3]_0\ => \gen_cdc_pntr.rpw_gray_reg_n_2\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rpw_gray_reg_dc\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\
     port map (
      D(2 downto 1) => \gwdc.diff_wr_rd_pntr1_out\(4 downto 3),
      D(0) => \gwdc.diff_wr_rd_pntr1_out\(1),
      Q(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      \gwdc.wr_data_count_i_reg[4]\(4 downto 0) => wr_pntr_ext(4 downto 0),
      \reg_out_i_reg[4]_0\(4 downto 0) => rd_pntr_wr_cdc_dc(4 downto 0),
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.wpr_gray_reg\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_1
     port map (
      D(1 downto 0) => diff_pntr_pe(1 downto 0),
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\(1 downto 0) => curr_fwft_state(1 downto 0),
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\ => rdp_inst_n_6,
      \gen_pf_ic_rc.ram_empty_i_reg\(3 downto 0) => rd_pntr_ext(3 downto 0),
      \gen_pf_ic_rc.ram_empty_i_reg_0\(3) => rdpp1_inst_n_0,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(2) => rdpp1_inst_n_1,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(1) => rdpp1_inst_n_2,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(0) => rdpp1_inst_n_3,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \reg_out_i_reg[0]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[3]_0\(3 downto 0) => wr_pntr_rd_cdc(3 downto 0)
    );
\gen_cdc_pntr.wpr_gray_reg_dc\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_2\
     port map (
      D(0) => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      \grdc.rd_data_count_i_reg[1]\ => \gen_fwft.rdpp1_inst_n_2\,
      \grdc.rd_data_count_i_reg[1]_0\ => \gen_fwft.rdpp1_inst_n_3\,
      \grdc.rd_data_count_i_reg[4]\(2 downto 0) => rd_pntr_ext(2 downto 0),
      rd_clk => rd_clk,
      \reg_out_i_reg[2]_0\ => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\,
      \reg_out_i_reg[4]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[4]_1\(4 downto 0) => wr_pntr_rd_cdc_dc(4 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_dc_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(4 downto 0) => wr_pntr_rd_cdc_dc(4 downto 0),
      src_clk => wr_clk,
      src_in_bin(4 downto 0) => wr_pntr_ext(4 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__3\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(3 downto 0) => wr_pntr_rd_cdc(3 downto 0),
      src_clk => wr_clk,
      src_in_bin(3 downto 0) => wr_pntr_ext(3 downto 0)
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \^empty\,
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \^empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.gae_fwft.aempty_fwft_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDD4000"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => ram_empty_i,
      I2 => curr_fwft_state(1),
      I3 => rd_en,
      I4 => \^almost_empty\,
      O => aempty_fwft_i0
    );
\gen_fwft.gae_fwft.aempty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => aempty_fwft_i0,
      Q => \^almost_empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3575"
    )
        port map (
      I0 => \^empty\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => \^rd_rst_busy\
    );
\gen_fwft.rdpp1_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\
     port map (
      D(0) => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      \count_value_i_reg[0]_0\ => \gen_fwft.rdpp1_inst_n_3\,
      \count_value_i_reg[1]_0\ => \gen_fwft.rdpp1_inst_n_1\,
      \count_value_i_reg[1]_1\ => \gen_fwft.rdpp1_inst_n_2\,
      \count_value_i_reg[1]_2\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[1]_3\ => \^rd_rst_busy\,
      \grdc.rd_data_count_i_reg[2]\(2 downto 0) => rd_pntr_ext(2 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      src_in_bin(0) => src_in_bin00_out(1)
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      Q => \^almost_full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_cdc_pntr.rpw_gray_reg_n_2\,
      Q => \^full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888BBBBBBBBB"
    )
        port map (
      I0 => \^prog_empty\,
      I1 => \^empty\,
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      I4 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      I5 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\,
      Q => \^prog_empty\,
      S => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => p_0_in,
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_1,
      Q => \^prog_full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => \^rd_rst_busy\
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
     port map (
      addra(3 downto 0) => wr_pntr_ext(3 downto 0),
      addrb(3 downto 0) => rd_pntr_ext(3 downto 0),
      clka => wr_clk,
      clkb => rd_clk,
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(7 downto 0) => din(7 downto 0),
      dinb(7 downto 0) => B"00000000",
      douta(7 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(7 downto 0),
      doutb(7 downto 0) => dout(7 downto 0),
      ena => wr_pntr_plus1_pf_carry,
      enb => rdp_inst_n_6,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => \^rd_rst_busy\,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => '0',
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
\gof.overflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => overflow_i0,
      Q => overflow,
      R => '0'
    );
\grdc.rd_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => rdp_inst_n_9,
      Q => rd_data_count(0),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => rd_data_count(1),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => rd_data_count(2),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => rd_data_count(3),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => rd_data_count(4),
      R => \grdc.rd_data_count_i0\
    );
\guf.underflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => underflow_i0,
      Q => underflow,
      R => '0'
    );
\gwack.wr_ack_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_2,
      Q => wr_ack,
      R => '0'
    );
\gwdc.wr_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => wrp_inst_n_1,
      Q => wr_data_count(0),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(1),
      Q => wr_data_count(1),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(2),
      Q => wr_data_count(2),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(3),
      Q => wr_data_count(3),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(4),
      Q => wr_data_count(4),
      R => wrst_busy
    );
rdp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\
     port map (
      D(1 downto 0) => diff_pntr_pe(3 downto 2),
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdp_inst_n_6,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[3]_0\(3 downto 0) => rd_pntr_ext(3 downto 0),
      \count_value_i_reg[4]_0\ => \^rd_rst_busy\,
      \grdc.rd_data_count_i_reg[0]\ => \gen_fwft.rdpp1_inst_n_3\,
      \grdc.rd_data_count_i_reg[3]\ => \gen_fwft.rdpp1_inst_n_1\,
      \grdc.rd_data_count_i_reg[4]\ => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\,
      \grdc.rd_data_count_i_reg[4]_0\(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      \grdc.rd_data_count_i_reg[4]_0\(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      \grdc.rd_data_count_i_reg[4]_0\(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      \grdc.rd_data_count_i_reg[4]_0\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      \grdc.rd_data_count_i_reg[4]_0\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \reg_out_i_reg[4]\(2 downto 1) => \grdc.diff_wr_rd_pntr_rdc\(4 downto 3),
      \reg_out_i_reg[4]\(0) => rdp_inst_n_9,
      \src_gray_ff_reg[4]\ => \gen_fwft.rdpp1_inst_n_2\,
      src_in_bin(3) => rdp_inst_n_10,
      src_in_bin(2) => rdp_inst_n_11,
      src_in_bin(1) => rdp_inst_n_12,
      src_in_bin(0) => rdp_inst_n_13
    );
rdpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\
     port map (
      E(0) => rdp_inst_n_6,
      Q(3) => rdpp1_inst_n_0,
      Q(2) => rdpp1_inst_n_1,
      Q(1) => rdpp1_inst_n_2,
      Q(0) => rdpp1_inst_n_3,
      \count_value_i_reg[0]_0\ => \^rd_rst_busy\,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
     port map (
      clr_full => clr_full,
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\ => rst_d1_inst_n_1,
      \gof.overflow_i_reg\ => \^full\,
      overflow_i0 => overflow_i0,
      p_0_in => p_0_in,
      prog_full => \^prog_full\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
wrp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_3\
     port map (
      D(1) => \gwdc.diff_wr_rd_pntr1_out\(2),
      D(0) => wrp_inst_n_1,
      E(0) => wr_pntr_plus1_pf_carry,
      Q(4 downto 0) => wr_pntr_ext(4 downto 0),
      \gwdc.wr_data_count_i_reg[2]\(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      \gwdc.wr_data_count_i_reg[2]\(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      \gwdc.wr_data_count_i_reg[2]\(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
wrpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_4\
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(3 downto 0) => wr_pntr_plus1_pf(4 downto 1),
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
wrpp2_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(3) => wrpp2_inst_n_0,
      Q(2) => wrpp2_inst_n_1,
      Q(1) => wrpp2_inst_n_2,
      Q(0) => wrpp2_inst_n_3,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
xpm_fifo_rst_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      SR(0) => \grdc.rd_data_count_i0\,
      d_out_int_reg => xpm_fifo_rst_inst_n_2,
      \gen_rst_ic.fifo_rd_rst_ic_reg_0\ => \^rd_rst_busy\,
      \guf.underflow_i_reg\ => \^empty\,
      \gwack.wr_ack_i_reg\ => \^full\,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      rst_d1 => rst_d1,
      underflow_i0 => underflow_i0,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy,
      wrst_busy => wrst_busy
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
uLChqOUbTt1NFqiY8jPjjWJ62+rDBQqU79LiT+Z6+gdlWinUir8nc2O0EGNyofvJW07+2lWUpfZh
gfpJjsobqvpJ2nYLxgwBiBsL8wBAP1jKld4vcwrRFif8QIkQ0apJAb/olBJLjoXrVaHBRe2cnb1c
oYTXROWoQOueWYRDTt8=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
cWFMh19dcAfh5I2fm5gNkzVKA+E12s5YjF++3lKiIst8GaBwa4on4FAuXEKW4EnPpxcvyMqXVyau
1iv3smLGLOPLYRGmQ+Lqbgvnzwf0EOjN2tKhG9aO1m0eNGrAn2GOB6+s+qBZ7yZ0bw9aIRZ14ADt
0tgxTDmKFjSrS1E20XpQOS/rgmJwxM+4uqb8CgmWM1DhycsOPCMvKYvEd8HuRQRtpK/QCa4/xxa0
4EgKNEoh6VEVoH5iktCx8a5+8whAk38RI77NFnH76yoxMmDeQo9htMBWBjYtn0904uI2jEYWqHjo
oyzVDOnhKivDgp7VhUkZNTMlJgpm1rNnMTnDng==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
Bac+rfdUQnZTOZSHj+fbLlDkqY9V6T37mC79TYn32zd9e4UQWEMVu/Qq9mmvmrOQU69Mo3lrXlh+
6Xh2h+E8iRO9eFGvneX8CXGQd0+s/GL2SrY/9HoZy9C4vwBabKKgVk05W72+t1LJigoJxEIMxVlZ
VJmkNkC6/xqCdF3k9SY=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Jhb8ls74g0uc3Fd1307BQ9zyFNylFTnHZyMBh2k6oawiqjyVvQFcgUo5Hh/3yGyp3nxnBgBQ2lU1
DV1XHDmTCa6V7QoVSgBHIG/AmNSKliiA8MYTdT49XiELM8GMNKijDtWYSe7t5sBTK5s09epxoWn+
AcWO7Qb/kBVeon2Ud1c8Njaqetd39tjcrSsrlC+v4qazicD0ULHrcgZC5cfPFXFCwwhk6xMIc9hn
uIFyZAHl0Y1rkaiVs1Ro5K5WDl9gIgMv6R+yGWnq8LsJU6J//4S5eZ72M7xkmquGupGAmOz7MJTE
sZEdmmljHxosXY88CkFVfwkmXHhtjj5/sOxYMg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
oNXIIL+xgdkNOfFImtuCpLT9HBDzBIRAelFSucWDBQIE5/qEUiXr1F6w6okbsOnTr/1BK1y82hBr
2hMFq6kPdTjzBxoeDHhEVkbhR70n2nJ/cdS7XjLDsq1yeewi+EVstQQPNMK5O2J5iKuWDb/BEszK
B2mkR2jCTIMfN9osMXmA5MNJlY6aUD+mQ6Yb4ci81LQ6pwO9g1mJWXvsO5Xzk/Kc4JdiCQW52zxx
5k7GvGT8MhCROXmrsQdTK0YqsSJMLec0DGXUwyM6C1F9o6Z2fMRuzZMQVqPr3QOathetEogsKSl3
f4+BUic/Ye+1upn7OF6gjteB//inYfCBagnzVQ==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gHrJRrOqtj1TQdMA/j92Y5PCCE1aNTwtE2jxzyKWyMM6kulnC0cMXqpUEoeDugoLkRBAuQQEfmwa
7mR9gfbs4ny9pg44hBu/27yOMq7/cXIvwvKa3CHpdbmA6HSp2icSU8hDyvTbioJU2jppkhALVD2J
duyjLrdwr+7Nxfy/16rq1EAxHAVjja/qweZ/UQdZhRqCCEGMu0D/d49pRtkDU/FTB79LchJ76YIm
puJWCUOtAH4D4pOOp4kuSPaw7JDzCwzSWYi3XiFoZKIcX4cosq95hjJ32vycPF7PBMbHjARJufvx
wVAbXjvXOrZfVDNy80LGXvLEqLygKskL/cvk/Q==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Swaq1gE2XfBxa8PrQrjW8HeMxN2R1seHvbcqrEn4Vav/sU6KouMEb7x82gVljEEGZtTMz4nKgE4P
h7B3y7rjOmwAPdfHwyzfUpb3SOeGgSvneW0fVeEhfJyJKDlXdBx+Dt5o1yZgVEdBzdooFB4X4B91
dUBK1p+ROFTZHmYGDy53ecZ0rg9NypgKGJh5NEaA/MDPRq29Iix+NKMq9CHPHBM4Ui+PESbZbOZv
U1jC1AJvuuokiKM9cGlNe5BqZGZYLk/LibvGuUV1+ljlSoxAlDySWniD/0FYwPDkBRipMHZiG4EK
ID9g8l9T5UHyouVfKjD+D0ZpaSLl5pUAhx9+iw==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
UatAu37joqwtobUVXchAh60uD53sdShUFZul39l9SJl1Id/88habH4svoqRknnswD+rqq1GW4P4x
DFAMPwW26Ez36mOxLzasDsjnjxROE9mAMNshTId7NaZlg0TsnDYvtZZSXNP/5NuRcy+kO5rSehKt
ve3QwiNvjmviJRlrudf2QbUZzUuWSwNMfntqkibRomvnakdSbVYz7zmKxyF2wbUKkjGVBAa7HLne
KD0Jsbq6aNVY6OgNO9CfYFNsWpkpXz/d3WD9jzjBeZhsBxlvS6yhEqdz2iDtcm+HajUonkV2An/2
1ef4pf36CCK87N7GGeDLIDEPNMMzXi3O6DkRZQc0xVPg6I8FzqnNCRE3zGr0F5AnvSNQC9QiHSgP
aCQfqpFRrNIniMnAMGGzbSV/SoyqkKRfgtk8MjWeR8cMlhjqLh0HbRh+Es9W2aiio4vg19/jNotO
qCWpFn+5luhpGz8n4u0x8sIZpE1C0IVZqrdmBDVNX7sdv6uW+KnvElCJ

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
jUks1HJ15RgDCglsJ6hDx9APGBmp3wVWHl0yyWJHvx3HdJBQe2/57etU1k3NSeSWRzKEzpRgB9wW
VDVL8UxQ2KYOn7Jn4Eok7xhzaW4bJGraUVsrXN6OZEp81mNq/ckk3uuAncXUC8EDfNFPEak7o/qk
a/xsAOFMxYHiAjFyct4Ej83egvfj275clFiA5QGodrJeBfNdhmeUAmTlWxx9Bb4JnGCwIIR6O2AG
Eb701jsv/lt2NvUCk6NmRHUf0MB+kt/am17FwpIR7PBC9DfEad1iwB/kj1c3SIPTMrh1FsW6avkC
wE7eSYRz+VD1UFn20x5AKaZLmYGz0HIELP6T9A==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7328)
`protect data_block
Rvs3GDOTGaAauKD/5Rcj+iZ8Z4bUDd6onODXZYEJJXqr0sRERTUA1iuB7p5oF9DLVuFny2ukjTwm
imZYCIOIQqkwHCtOAD4/6OO0JWjewsBZdkDNxMWhPczFgIOSwLA2DZptZcqLW4esiDNw7hXrBOmS
bP80R7YYLwebiF9odxNsRIJodCY57QjpkqXwMnPhyPcGTz1Jg1YgNmnZiu9GJY/V6S8+7zxsYts/
7ntHHI+/9vlolz87fD30DyGUBit9JcfZ72KwIs2+jGy87xdzYMzJow/cEcBj4xDDRJVqRWqiBI5y
8tz4yK/hZ6rTtSyf3xomODVh6A9T/HxJHjSRyxzQ+7DB3sY64QmTF8cE8wX1SpBgCMpQ3KZQkel0
D15FAeeM6klMDs04BryzWIgDsuwJLMDWVawrxZD04XleCOaNgsq4rIIv1pSM/c5DdLa6rYxaJJg6
srY55iQiXCEl2470CTe+jKLo6ZMCWUqZ1R/Rdjmo7rqdgKwTQfEn7iNevk2Xcatger0QCQEEPyJc
L4ONXJWwLWKtxl/WKlWrWLTK/Baa4Hx0R+h+YpPE06P9DBT04fTvvXse1tWxwPZ9qbJ28ZZEro6s
qJgHrNYTTg3KrXbicSIvw8VNSvV88wz4kwMeIB8zoGmE/xrM6GrBfDJYo8NYQUXjABW9Zu1TXpjC
4UygXD3psbD+2Qd1TJdwtvhfYBpJUHyITMe17WSo6qnM8zh7QLENQpe8MVBo7qWgWNCf/s5CjbUC
eLjw/W+ruR8EfmcN7KeskiJxmJtlBQjIAd3yThZc8soO+7y7212fzZ0V1Rrrj/EcOgxwm240DUtM
Kgn0EHe5NxLq0gI8DpImeEFEXf04icpLSDY8Gt1WtqXeVfzq+8HEsEBXRZUe8QWI1LPi3FzHur+X
fH2IiI3bAsdIcD1GoA8PyxK1Sr8418SfJpY8NGTV3IdExd06m1Jsk02sg9TZpziBjodFy+2RZR7l
jQ2xmTWXjpiVhon8L79/FlUVGN/7f3lMgn0sNkqYzXwv4wGVaNqXKsjO+LxmgBrkhFDcwEZa7fvz
sZ3YTauMvdCghiV+gj0/WYKk5517KHNp2wzIjWILC3+XeU6X9eDtQnU3H1dUGFqs3UUBkJ053WjI
vranF+8I8bUR85Yf4mImz5Aunq8qDgwoBB/yq1jp4Kx8P3BXOglPdhTYmIV3g1vj2VgmKBuQ9/Dt
7JOFl2inYzqtnJY5piuKrkl1zImncefEL7rcVGHqY7Qsd6syC+bJE/CgRW8Sv9+URGDp/6zHt78O
4O6bFWrLszeLw+ZIIE+dLpt5hy+I5AuQLC72433nF14V9mv3CHMdZQxdRGj43S2b5SKQyUDJILDa
6SWKKrUpttluKd9jsHjzoXiBB2bRoSiAwjidh0qGqOf/EY2+mF8owyuvz2YKIXDVQP+ufCeGqxO1
FZc+xKDu7LXvamGL2urkIJU1kgcyXNEKpSfjQGYHNXKCWSDTgZPv6BpZfKz+VT25qBZH0p7B5uyj
aO20oI2DPAxm2RaBU47qF+m37WqRCWI+dpqMui1GgSzfYqaS3XE3Sv47f/7wIujt8hH7Lq6w56f8
cu2/yvPBZMtAeu2DA9KyyWBx9sTQn26e9ahpVeQQlBblScmqF27HmrKKAWfvjkSRpb/GwcSgUWGN
uUyrbIzHLfP1ZkB+5wEMkMQiqClg4eZofTAgsa6lZKsQQQEqBvv+X7mXvorDtG37YESTyFvwcw5H
Bw6In91FsYSG6uL0VBt25inKMSgOQiqpjhPy2csSQu/d+d2q9sCndGBwCbX9A5ynHHLrUwjb9kB0
UNbARGrKzjytnWutH8BbhaFBKi7vnBjh+HazCJRjAo816gNjKIiFPaPpYJY85c9cREy95MlvW7rF
9KBNP+6HpiEQfwINZlE67YCmefDhgwX0apwFJh7gdqcE3znssDofL7friavmIFO8EzE96BiZSzdB
mpaYpcOA3/zA+narhe3zBBu1lRCLEvjXIVRYr/hGIBIfv15pNvK6eGtd9QSVGqSjL0VzoZzLPh09
EJRKqgbXA7WVluT1hDbmG9PornGPDoTvzMHeRr4P1cIYCyR6MdZ8dYfuYjKDgE1C/E10i7xEgaZs
u6hASiKA962FXS7vnMaduvnjTMBnhEUCVY77YZh5QO5u7Uo+Wp/6R0oLgG67mDBQpmR1NacYQCbk
FYe3qqpjeHJ3sH0VNj2gJSgLrIXkh0pV9NvTF7LKPDJk+vkO6TNyeA0zj228iYe7mwbfwToUETaj
avhwBHLT9fWqx2DwVYKoH60rSJJ5qNKA5HakgSoKmWoqE3axuzRp5b5Ya+DZcqXfYKKAx4H1kjHR
7JIdmcBN2oZ45npqWRPhewjvKgHwtZ2qTLr6XMcdbmA1pz0/rQkEG/eTB88TK+Q7PykVoPQ34eNY
bCuOT50jpoHw8CqXuI5FsEP1qedeo8AB8TupcD4Gc0w8IVglR0hovqs1ux6uqkaXMaCNGhlUi2eZ
kW41FFIuep7in+JFdvbl2P2f4C5QmGJ3b47vB07SUxuSwQKJYVKTM8qgQml1JOJ9pKW1578Pe2FZ
1DwdocCJklONgnXH5rnPUZV+ZWIW+SYPLmh5eGC4Br//3fL36NpMqOWYh+SjrvU4oSuh9DyMMoJn
LxCL8sIy5DwWTCSnIa2eR/jj4YvyVuuvKUhwbYtGWFr6/iyeZFfARRBRiTUDYBHokJoH7Or41pCn
CFZGQphW47dyf+U+B2HY1WWUIZeU59ENIqs6nBnh5hEN5rIi1ApYO/CUS1FadJ7pLYtjdE101wEg
cR8kMevgwtpAz6AhTY9dqfvyPBIICzc685fJucKNexaeNMvsqP77zGtcrsMjZeZF9UuXG+uJaobT
1h3cXGFUtRFx0d1XgKhSgtbOGGi0ilFUV1UjGbSFbfhnYgYJ6JGb9B9kkrrW5za+I3VUqUS+qWE9
ll+LiEM2nQkYnF4M10rSoeIOZhkW6gKA4l5rm9Ki4wzzEk+hW6BVYj0FKb2f2+wVLJlNrJ7iGaUv
oSvQhrVao1wWSl/5r+20Fdp+cwK2M+V5kcgTVsYiNIAGB0cCcO/YVx28oh5ME3VTsFpSMYbWnldr
EfksUJ5aeRJWWB3xDi7jUpum6w270EKbiwnuv+KEcKDavu5ty0C/Ls5HADUFVz+Pmiz91TU7mjOP
c3jhiD9Fe4vV3CsfYZ0zaiJOhzQXki5I6/Z6s2GMUTWz5py/9SRfBjsizxLDD8XvYz+HKpqvpswv
HzQJV+E4mzp5bx+mbBz90WznT5U4rGJ54w08MeaR3MwKe4FxiKc42CA6gtT8g4gcCtI7ZKSjevmT
qh2gPqDYSFPXZDae9837AqFttrcTOi9CVHbCn2ePBIMaZozBM3GinOn/vUqGH20b0ZiglXKgvcuX
FTyEIZXXKRbVEln8YHuz8+tNyLK7lj25M67ocnWc7U+OAdjrYrt9XQw7dYVnjtusUfLcrXhqR0TT
ABGuwAK7AeGRzfnIGGaGdawKUaG0wDytwbWqN7DYOpS53vCTRongVbySkDfrn7CiVh+xKfbx8G4T
tw1ncsGSytzJ6cZpvgt6MnvqTCV5I+atBLuqaNKV33mU5Wl8smugl/PiZElFbCgQpq9ORo49BooV
Eu3F4XLW19D5i7vXvN1htNA1E9YI7/E01+xAUnjGKj1tQBGd3s3zUdv73AeZyWfPTAg2UElXsKcP
aYOcjiHK8c7OogkIj5Bry4ND/4ZRMU2dsoNkoaM8hvrNT6Q+guydppPMbdqhAyrZ1tHP9LnWvSfH
RUlocq9VXfimzuYKI31oZ9cyJoHHMjdUsEEr6LPOlk3XHM1RXrsgIFPAroUNLR/M7tQLL9h/kTpq
GqUfbv4MSDmm9uOcSM8REcpocx+GH1MoCXCWrL0NsgaHZGCE3mVKv99f6NrFOJdXFXTI/2LreKLt
PtrKyODMLKiDS+bykiN7qTw2Nm9V1Y5h3MN9BR8Uwy4AXCJl+ZXP7JWnHZ9dTRdM/cj8VMzLoZqe
VZJ5J2EnLVckTvacKu1kwwGvPNQgg3E/WElaDWNI4qKLPLIi3DXvCahz0Vt3VruWHAvDYxgdnGTc
0ed3+2/hkkBqMr9I9kYR7HscHuU5tik5q00N6QU149nR2ZdHv6C1gLNNnTZVlL7anwRtEGQQtK/M
E536cwfh7hFPzDcufSSAoEYh70b5K7o8Ei6EvWUiabeYWU85H93I4vQVZG16M1y3zakk91E8zULf
1EaDxaJ32Z2Y5zEq9yhCfz1JC3ZrHFubM98PwEjsw7eIfvMr6mBn4ssPRi4myMBCW2riaoHXw3DM
FCKlHIdenU3Oa3apz1A8H5H6x20rLI7D/CIQ+HA5RsrqZ4z82zZkTKvIMHC6PvDD5qPj80a9k/Fm
0HPGcPPVuciOVduKiSG2KIN0sy+KQr77sA/FVUU7aak1F+4bvfcH7xEsATNM60L4kgYzZ8Ge6S02
lrkukRxHpHREdLM7zLacFEbj4sRP1fKM3S37yuK9L9P/G2J2Fnlrvn/21ZMisW2c+9eY/SUQcWK3
pAAIDBYtJE1NGc0NAlrKs1sQF4/d235eIfqG3XFdUMpV9G+adXxoREK5drQhDc6pyy385coMbRF1
KGkEs0uKYQgb0rAdGUtHhP8jYhgsnzl7OV14453p4OsQFjSp5KTkBP96fNQLh8fGD7JrfHIdt5A7
eHbSfd/HXq8Hmsbc7FIBQxDystwbP+uOKL6ZKFC8SCUVsRgabNj8Y6DZpQnPOOdiXQqnKwdhERzY
lWAfOMpppe1Grho/Z5qurAJZsuuPxkhG7zI3pt97KME1Ip+ehzBr0fiktD7q1b3KhfbHQ33Ne3v3
iB98FWoV+1UuQl3EXGXPYI6d0ek/mZsgVK0ytQ5sysb+zdfuFhZUdsmRjEA1YvJ8T1H+5D6y4brk
+XucvtiV0VHmHJf+qS9y8ZiicoETH6iEYReAhxXdSCTL9/1cN3mttUcQi2VXtTYkRGRFDaUAgaFO
4/+7BIYCowOj+piYgv6oquapeZn81JulaJKkXlDu7BfL2NROejfr00Z+R+sOMMDaraYz+OyZwxOe
+lY6a2RkoRI3tJqEbknkl1xdqcDX5gst4PS+JYheEydzPVP1soX9T2PzKZL3oUWdmyF2ffaYxUdi
dhRyky2qQDNhRqtSjMoIXJ/FR1PyV4N3FVA6ZnX8wAr+bDhcBusPiZvcG+824paj+ZuLJgXEUs6v
KHZK0vAQJjeEq0GuDpGv4JiRtUZtHdFZY7uNlqMjsxeLNRJW6BNL4rmqdJr4T34fPzpwxZ+ixUMw
zo+CjJlSTtGpAJzsl+JlgQk2c8YwzznelgaY5C8Vv0qnsfgVlhGS35kGftuwmR0xcXZgDBSF2v8e
f3viH7q1UehopLc0yb9nogEx/96qpCDirO81okiKFhf+7jwG2ZnoDmfgs/6GBAm5ZM5N6fMveW8D
6bgO2D24yz3fmIKA0FyM+SxQ0qzlCdOqMZbiC3+Ytd0NuosmIWmd+1p7Wg/SSYAWGXjPt8mU0nLq
8wMQT7StP+OuIxDe1RmTCp4D7wKdA6xq5BlyoBzMiPPdeaUhpUebwIXelZAMN6jmZNE3OEZCjJVq
QQLpZDb8ldj/uR1fPC4prd+XBiwyM1IAN0SCCqS6ypzScEZ7RVFvYH/1PHfFA79h83UueNmbPljl
guaTvjKvgTV+I6W58Fxrt0kuBUEr4cKaztXOPQAM4mFIcXkdiUIBhuIgOTjI6sCFAl1xdJWw9AV2
1nog6G4XM5YLkbO7HI+QcrMKMUZOQttd9mC7qWhU6TBFnuVhRQbnKXqj9atc1BhvV77fpJksWP0u
h+5Jjt8+GN7Eay2Lihcsd1ipJdWhN63/QdlDEYONpmWjBbic5LYNiCmFHrKcekdu2EJ3cL8MAPL4
s1wEugDf0vHL14wbHsXUUSbOYc92FdY1QqI6cAV+gEFTsPr3rYpoLdfSx6wmwNMPJghuxyT1lkCd
cKmW1mPyTI3c4Jb6udKxdgl8Ie0kTazcppEDY/6o5d1nLcohbybtTepARJ9P4SqwmfcChvN0eGCt
4FIW/ftGcocriTaTu5nfGvm7OETkpDe2rWruTCMWrXruFEbfBMcMbHBmJuMuHLFCHMjEPdoEtB76
7n57TBuri2mwciO6EjGaa/OHbjiZou54Aj6un74vgb4R2adcfQsPfUe7XWUgjIDNI0fEh8aDc0pc
jvoCPj/fVkDOD0wv4WCNO91FRqIv9FBZnrIsyCgMOwD6r+azlTtrxYg9RoFJseRxXWv4gS7Qds+w
Vjpo/WajwirbtH8lJxuxGQEBetfImFpP1yJOeGJBLZCQvPBnLmo23R57ioAcXVndjElnfqsaWJpC
YEk6IGkex+9VyohsjMe4ViN7QWtV/uXJoR7AQTh3JKAIsS4F3mthy5xsn9ztuSzLDSFF8STfnpgc
tm5PfNFMHQ1kALG/PKNBgjPJsY0U8HkVpPLFSeVIDkzChdrpf+z3RtVzQ6Vyg9Mvn9EK+GgqcOzR
vZKD/FEnRbzsZdSwryF3bMiEHznrQc4UGxbopMxzSnWWph7TczUe8iRMME8snGhL+PsMwG9LMPfc
njBWw3HRtDMUaPLyoNOLDYPjGzhusYDHwBoyJzdeLstWss9Agk+HJTheBJMzIzQ0vlhDBi7wvgj1
AxuKN+tJdA/fJe5ceJfoKbT4MlgGRadhSlG3FgXu7gQEm5Z/oyT8SGz+Kf9i6spEavbstCx+Icyu
9eM9GPik0CXUP6JEos0l8q93A2ssgfJZyLOTHPUu4o/odWkdh/CWDCd2NTQ9pkSuzco+elKzeLx7
k2ZSS3zJZ1efgaeDeaylXWWZnQrf1ALd+jVW8nnQAiPTE4Hy+EntCusq6ZfjlJebRAVgHbZ+8pAg
CyorqOjQMIt5jAX9Gw6f7tuiiaYtVr8EuPlhgZ+/RQXr7VCHZOMrR2bjNz2fN5aGD6QbrKq5rfJT
6/3ww6iuKmYp16yPfRck1R3igI7evvRr1F5OHK5xKDcvROcqYia2nPe7M0RMzp4iEZAAnxmj+k/S
NNDtOLmEmMfPj76Gq35J9r2SzaF1KOiKFA1tSEtpSrxWzq5CnWywCkDOrnmYs/AU8o5vpeI3hlWa
GCul4EymbOLVpgV+S8bDMJHZbKy9qvVneZNb3lkkB3im/kIEtrxkABLtHbbEl663vD5xSydEi6P7
D8mhoPK9l5d4JThEXrk7WblPx9yjKk3aS2CEdgmK9uji6W3WqY5d8qfxLIoVBHOj6NdhsOnyYm0O
o6PifGqEwJYtGVymJuJHwDAtDiiQ1dtdH7b3xwiKWAgIRiYNPyEaTel2ceY2iszr3mpNJgv9kGan
SYA1uY4UnvbF6mDHoCmudWoO8AeHJSKfZfDvID5xKpl8TpuKRlEkMRcbqNq2Sl8N3tik9afOTWxp
W8zTRpO6k7tNuA4OHZizY+jtyIJAZHazYyKS9k+ZRPE+Xej7rT0Rv7sNlQJQXNROHLCnuVnxDKL/
Xk3FgcSKFVS42U0X2+sZbnnEbRxnI4K8I9mEm9HTGG+y10uGDp0hydy4shIa01amPq+14qS2fpeK
w5PEjwTALA81H+1WBheJ/WrZljcxrcJVl3DG+7bc9yYaDM8ejuaWupLtaE5QiX4vp1MYCUNn3PFI
NF8XcmmAQbDJhmNI8NP6h8hvA944Nd9omqj+WX8aw83TML63HUlaQ0eq9Hr9yN5tL/6+UX9tBOwz
M6PSXYuQkfSiYQhn63gSEAhnkf0ahtQ1PTRqq6bK6X7DQ6Hj44180T1J84xPoV4ioUOH1QeHNaiJ
AgvcsIb6KibuPQIFZ1hlhdZoB05/WYxXCfCKy6sVoRy1A5aV98JhdMrE2pYlPh/Ebl5nyj7SF28C
fs87Un3sPh592fb3PjZSZkjtjjpIOL+fPgk4KHuzHABwAoz17l9UVLwi60SeUN5nAvmy2Sg7CZT3
FBuuJnJ4iFLDr7ve3vpTWt/WJJ8Doisx2FQ76GDNjNjkiLljEzLebcb4Q/V48nCe7AL2hdkcC65s
Ml20wvynZIhcZ/bKfN+58L3IP2ngRuxldXQBxI2uaJb7v0Y5hyik06qnKWiNs8UdlKUOmeCdj3AG
yFNcacQtbGJZMb7jPAkmzaaZz3NF6itbEP4pYeDTguA981Q1gHffXO042R1Ge+fnZSU7YieczoX6
JG8k0zvBShy8OQ8aWE6SnEVohpiSr3q5wLh8CpcKxfXGvYcvNGk/ySSR3D/TvWomKRJsSckahLg+
rAYuEKq1WVEEUux/3hUioPsBiGaagVv6Ezmkl8MgB3ORzfg3m5tGUUV1S4jz3TljMcX09FyRKCTu
qau4kc9g/ZoXxbGbmYbHJC+g/EE5o1a+N3WWKxNfUNNA5+iLuWXPnfY2hNl8bz9F/Dv0yYt5tvLF
L8HXMFfEj37BeSte7uA+KwaL6JgM2ltKfkrMKklNPDlRvwYmqyfNN6Wsk6AePniQNGfriwltGUhn
K6wD+7tjBgP3xi2J5hfdq/glY8dAM+6RXeHeY4LKjFCae+JqdknjFPrVKNap0hMyqBF15lbBuNYx
FThoxTCnsyCWFvRJ/oBEi0hVQd8XjDG8qg8eErGmT+18JzKNUV64DpiVde/PX39QJIBnZ+H13lg5
MJ4I9acNp9/XyQ2RqJrDFZYJQhFcQBLKeWhXAuxJ2ypTVvUP2eo4gQKUxqAXIabwru6EvaMmHc6R
yHaa7XLYgwBZgG4T63LcrLKx0veec/i0bQNkF6WN3zo8oDq7ZxWv9dyrfm6VjD8x0UtVcNmPmaQm
8ixE32tbW/A2rcQoBi0wI5gOKe91C+JLAULPpaNg+5sz3TrwOYCFpqQmgNd1wNSKypc01wHVYZCd
OBcl1D/b06gU3PYIh1/N+RpAT33DhQ8rc4Y0RzlI3n942e1hXjsOb23vjpLHSK6Mt1v5eJwCaGSG
dahZoC+P/OsoOXUDJcekTudDAlrzA+tZAk4Gww7zpFuhNrZVVJRXj3t5vHq04EjXbDXHzFnWjhys
VuN3ToNbHDHhNnHAjNT+ScHnj9Nkpo1EHL+h01ho2YjwJaOcrpTdTeod59L+/QoJZRaMFdRtKo20
q4bb+lEk3w02XoJroVy/0cj4EOUs2EWaUOxdtcKNxHt7qZurPyl+vgASof8lh0XEAqqcmSW6n6lm
APCnzAjgSx8UG2Rw0GEikD67cauqvBbxXf9JYTiwjWHIqn6lnCKSHVFIJE3q9YeoyB5T1IiaK+wd
S8BS4TRwsA77FB7+9GVWIStf18qC7nDwECrBKoVUbyBfbiT+vGoYwcS5tC1KVTp6GqPooLehd774
zNCzNZDko9S5byCoihFNubc5ka3TPYg7as4nyr7KjjrOPb+JhozAFyyH8F++EzRcN6QIqv0owunO
OylucFEjM3xxng941QC0kAEIXDMRxgCWHQFR5IehmE7X9BQ4gg5t4a5QwA3Zj+pBs3evFrSfUA8p
mv5qR2u+EBtHLAVAG6oiGUwJGuqDDeMNFLXr5rU4xwIuIdlF9gKb78s4J/IHuMZfOMsRz90BQdRI
r6e9WIeGU9ERiT9DpbKgRsZfwxbUJmzSM0WlBdiT4WoEzNCpqWiJNfZOKRmAdEx0hkyLe2g2KO2b
tfn6qLceEYonQje9Osehh2735JW8p6i7/SH0veVo0YWnMeOQP+Fg81LkE0PSstv6iGQlgYLCwWPt
iUWJFMAl17mlBdQTKP6blwrXChCK7H+urBOyvuQgg+o=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
  port (
    bus2ip_reset_ipif_inverted : out STD_LOGIC;
    p_1_in_0 : out STD_LOGIC;
    p_2_in : out STD_LOGIC;
    p_3_in : out STD_LOGIC;
    p_4_in : out STD_LOGIC;
    p_5_in : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    Bus_RNW_reg_reg : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    ip2Bus_WrAck_core_reg0 : out STD_LOGIC;
    reset2ip_reset_int : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : out STD_LOGIC;
    Bus_RNW_reg_reg_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_2 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[3]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Bus_RNW_reg_reg_3 : out STD_LOGIC;
    Bus_RNW_reg_reg_4 : out STD_LOGIC;
    Bus_RNW_reg_reg_5 : out STD_LOGIC;
    Bus_RNW_reg_reg_6 : out STD_LOGIC;
    SPICR_data_int_reg0 : out STD_LOGIC;
    bus2ip_wrce_int : out STD_LOGIC_VECTOR ( 1 downto 0 );
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    Bus_RNW_reg_reg_7 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\ : out STD_LOGIC;
    intr2bus_rdack0 : out STD_LOGIC;
    irpt_rdack : out STD_LOGIC;
    intr_controller_rd_ce_or_reduce : out STD_LOGIC;
    rd_ce_or_reduce_core_cmb : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_2\ : out STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg\ : out STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\ : out STD_LOGIC;
    \s_axi_wdata[31]\ : out STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ : out STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_WrAck_core_reg_d1 : in STD_LOGIC;
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dout : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ip2Bus_RdAck_core_reg : in STD_LOGIC;
    spicr_4_cpha_frm_axi_clk : in STD_LOGIC;
    spicr_3_cpol_frm_axi_clk : in STD_LOGIC;
    p_1_in19_in : in STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : in STD_LOGIC;
    SPISSR_frm_axi_clk : in STD_LOGIC;
    SPISR_1_LOOP_Back_Error_int : in STD_LOGIC;
    empty : in STD_LOGIC;
    rx_fifo_empty_i : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3\ : in STD_LOGIC;
    ip2Bus_WrAck_core_reg_1 : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    p_1_in_1 : in STD_LOGIC;
    p_1_in1_in : in STD_LOGIC;
    p_1_in4_in : in STD_LOGIC;
    SPISR_2_MSB_Error_int : in STD_LOGIC;
    p_1_in10_in : in STD_LOGIC;
    p_1_in13_in : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    spicr_1_spe_frm_axi_clk : in STD_LOGIC;
    p_1_in34_in : in STD_LOGIC;
    Tx_FIFO_Empty_SPISR_to_axi_clk : in STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : in STD_LOGIC;
    p_1_in31_in : in STD_LOGIC;
    p_1_in28_in : in STD_LOGIC;
    p_1_in25_in : in STD_LOGIC;
    spicr_5_txfifo_rst_frm_axi_clk : in STD_LOGIC;
    spisel_d1_reg_to_axi_clk : in STD_LOGIC;
    p_1_in22_in : in STD_LOGIC;
    SPISR_0_CMD_Error_to_axi_clk : in STD_LOGIC;
    p_1_in7_in : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    spicr_8_tr_inhibit_frm_axi_clk : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack_int : in STD_LOGIC;
    ip2bus_wrack_int : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
begin
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
I_SLAVE_ATTACHMENT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
     port map (
      Bus_RNW_reg_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      Bus_RNW_reg_reg_1 => Bus_RNW_reg_reg_0,
      Bus_RNW_reg_reg_2 => Bus_RNW_reg_reg_1,
      Bus_RNW_reg_reg_3 => Bus_RNW_reg_reg_2,
      Bus_RNW_reg_reg_4 => Bus_RNW_reg_reg_3,
      Bus_RNW_reg_reg_5 => Bus_RNW_reg_reg_4,
      Bus_RNW_reg_reg_6 => Bus_RNW_reg_reg_5,
      Bus_RNW_reg_reg_7 => Bus_RNW_reg_reg_6,
      Bus_RNW_reg_reg_8 => Bus_RNW_reg_reg_7,
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\,
      D(9 downto 0) => D(9 downto 0),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\,
      \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\ => p_5_in,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ => p_4_in,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_2\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_2\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3\,
      \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg\ => \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg\,
      \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\ => \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\,
      \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\ => \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\,
      Q(12 downto 0) => Q(12 downto 0),
      SPICR_data_int_reg0 => SPICR_data_int_reg0,
      SPISR_0_CMD_Error_to_axi_clk => SPISR_0_CMD_Error_to_axi_clk,
      SPISR_1_LOOP_Back_Error_int => SPISR_1_LOOP_Back_Error_int,
      SPISR_2_MSB_Error_int => SPISR_2_MSB_Error_int,
      \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ => \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\,
      SPISSR_frm_axi_clk => SPISSR_frm_axi_clk,
      SR(0) => bus2ip_reset_ipif_inverted,
      Tx_FIFO_Empty_SPISR_to_axi_clk => Tx_FIFO_Empty_SPISR_to_axi_clk,
      almost_full => almost_full,
      bus2ip_wrce_int(1 downto 0) => bus2ip_wrce_int(1 downto 0),
      dout(6 downto 0) => dout(6 downto 0),
      empty => empty,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr_controller_rd_ce_or_reduce => intr_controller_rd_ce_or_reduce,
      ip2Bus_RdAck_core_reg => ip2Bus_RdAck_core_reg,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_core_reg0 => ip2Bus_WrAck_core_reg0,
      ip2Bus_WrAck_core_reg_1 => ip2Bus_WrAck_core_reg_1,
      ip2Bus_WrAck_core_reg_d1 => ip2Bus_WrAck_core_reg_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      ip2bus_rdack_int => ip2bus_rdack_int,
      ip2bus_wrack_int => ip2bus_wrack_int,
      \ip_irpt_enable_reg_reg[3]\ => \ip_irpt_enable_reg_reg[3]\,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      p_0_in(0) => p_0_in(0),
      p_1_in(0) => p_1_in(0),
      p_1_in10_in => p_1_in10_in,
      p_1_in13_in => p_1_in13_in,
      p_1_in19_in => p_1_in19_in,
      p_1_in1_in => p_1_in1_in,
      p_1_in22_in => p_1_in22_in,
      p_1_in25_in => p_1_in25_in,
      p_1_in28_in => p_1_in28_in,
      p_1_in31_in => p_1_in31_in,
      p_1_in34_in => p_1_in34_in,
      p_1_in4_in => p_1_in4_in,
      p_1_in7_in => p_1_in7_in,
      p_1_in_0 => p_1_in_0,
      p_1_in_1 => p_1_in_1,
      p_2_in => p_2_in,
      p_3_in => p_3_in,
      rd_ce_or_reduce_core_cmb => rd_ce_or_reduce_core_cmb,
      reset2ip_reset_int => reset2ip_reset_int,
      rx_fifo_empty_i => rx_fifo_empty_i,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(4 downto 0) => s_axi_araddr(4 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(4 downto 0) => s_axi_awaddr(4 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid_i_reg_0 => s_axi_bvalid_i_reg,
      s_axi_rdata(14 downto 0) => s_axi_rdata(14 downto 0),
      \s_axi_rdata_i_reg[31]_0\(14 downto 0) => \s_axi_rdata_i_reg[31]\(14 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg,
      s_axi_wdata(6 downto 0) => s_axi_wdata(6 downto 0),
      \s_axi_wdata[31]\ => \s_axi_wdata[31]\,
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axi_wvalid => s_axi_wvalid,
      scndry_out => scndry_out,
      spicr_1_spe_frm_axi_clk => spicr_1_spe_frm_axi_clk,
      spicr_2_mst_n_slv_frm_axi_clk => spicr_2_mst_n_slv_frm_axi_clk,
      spicr_3_cpol_frm_axi_clk => spicr_3_cpol_frm_axi_clk,
      spicr_4_cpha_frm_axi_clk => spicr_4_cpha_frm_axi_clk,
      spicr_5_txfifo_rst_frm_axi_clk => spicr_5_txfifo_rst_frm_axi_clk,
      spicr_6_rxfifo_rst_frm_axi_clk => spicr_6_rxfifo_rst_frm_axi_clk,
      spicr_8_tr_inhibit_frm_axi_clk => spicr_8_tr_inhibit_frm_axi_clk,
      spisel_d1_reg_to_axi_clk => spisel_d1_reg_to_axi_clk,
      sw_rst_cond => sw_rst_cond
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_look_up_logic is
  port (
    qspo : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \receive_Data_int1__0\ : out STD_LOGIC;
    \SPIXfer_done_int130_out__0\ : out STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg\ : out STD_LOGIC;
    \SPIXfer_done_int132_out__0\ : out STD_LOGIC;
    \qspo_int_reg[0]\ : out STD_LOGIC;
    SPISR_0_CMD_Error_int : out STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[7]\ : out STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Serial_Dout_018_in : out STD_LOGIC;
    \mode_1__3\ : out STD_LOGIC;
    \mode_0__0\ : out STD_LOGIC;
    \qspo_int_reg[8]\ : out STD_LOGIC;
    \IO2_T_control__3\ : out STD_LOGIC;
    \FSM_sequential_qspi_cntrl_ps_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_qspi_cntrl_ps_reg[1]_0\ : out STD_LOGIC;
    \qspo_int_reg[3]\ : out STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    Rst_to_spi : in STD_LOGIC;
    R : in STD_LOGIC;
    CE : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10\ : in STD_LOGIC;
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10\ : in STD_LOGIC;
    io2_i_sync : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io3_i_sync : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_0\ : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_1\ : in STD_LOGIC;
    io2_o : in STD_LOGIC;
    SPIXfer_done_int_pulse : in STD_LOGIC;
    QSPI_IO1_T : in STD_LOGIC_VECTOR ( 2 downto 0 );
    empty : in STD_LOGIC;
    io1_i_sync : in STD_LOGIC;
    io0_i_sync : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sck_d3 : in STD_LOGIC;
    \stop_clock134_out__3\ : in STD_LOGIC;
    \stop_clock1__3\ : in STD_LOGIC;
    QSPI_IO1_T_0 : in STD_LOGIC;
    \master_tri_state_en_control1__0\ : in STD_LOGIC;
    SPIXfer_done_int : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_look_up_logic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_look_up_logic is
  signal \LOGIC_FOR_MD_12_GEN.Addr_Mode_0_int\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.Addr_Mode_1_int\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.CMD_decoded_int\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.Data_Mode_0_int\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\ : STD_LOGIC;
  signal QSPI_IO1_T_i_3_n_0 : STD_LOGIC;
  signal QSPI_IO1_T_i_4_n_0 : STD_LOGIC;
  signal \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d1\ : STD_LOGIC;
  signal \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_op\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_3_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_6_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_7_n_0\ : STD_LOGIC;
  signal \^spixfer_done_int130_out__0\ : STD_LOGIC;
  signal \^spixfer_done_int132_out__0\ : STD_LOGIC;
  signal \^serial_dout_018_in\ : STD_LOGIC;
  signal \^mode_0__0\ : STD_LOGIC;
  signal \^mode_1__3\ : STD_LOGIC;
  signal \^qspo\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^qspo_int_reg[8]\ : STD_LOGIC;
  signal \^receive_data_int1__0\ : STD_LOGIC;
  signal \NLW_QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I_dpo_UNCONNECTED\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \NLW_QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I_qdpo_UNCONNECTED\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \NLW_QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I_qspo_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \NLW_QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I_spo_UNCONNECTED\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_qspi_cntrl_ps[2]_i_3\ : label is "soft_lutpair77";
  attribute box_type : string;
  attribute box_type of \QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[0].TXFIFO_FIRST_ENTRY_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[1].TXFIFO_FIRST_ENTRY_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[2].TXFIFO_FIRST_ENTRY_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[3].TXFIFO_FIRST_ENTRY_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[4].TXFIFO_FIRST_ENTRY_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[5].TXFIFO_FIRST_ENTRY_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[6].TXFIFO_FIRST_ENTRY_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[7].TXFIFO_FIRST_ENTRY_REG_I\ : label is "PRIMITIVE";
  attribute C_FAMILY : string;
  attribute C_FAMILY of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is "artix7";
  attribute C_HAS_D : integer;
  attribute C_HAS_D of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is "soft";
  attribute c_addr_width : integer;
  attribute c_addr_width of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 8;
  attribute c_default_data : string;
  attribute c_default_data of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is "0";
  attribute c_depth : integer;
  attribute c_depth of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 256;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is "./";
  attribute c_has_clk : integer;
  attribute c_has_clk of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 1;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 1;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 1;
  attribute c_has_spo : integer;
  attribute c_has_spo of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is "mode_2_memory_2_nm.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 1;
  attribute c_width : integer;
  attribute c_width of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is 12;
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\ : label is "true";
  attribute SOFT_HLUTNM of \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_6\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_4\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_5\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of transfer_start_i_2 : label is "soft_lutpair77";
begin
  \SPIXfer_done_int130_out__0\ <= \^spixfer_done_int130_out__0\;
  \SPIXfer_done_int132_out__0\ <= \^spixfer_done_int132_out__0\;
  Serial_Dout_018_in <= \^serial_dout_018_in\;
  \mode_0__0\ <= \^mode_0__0\;
  \mode_1__3\ <= \^mode_1__3\;
  qspo(4 downto 0) <= \^qspo\(4 downto 0);
  \qspo_int_reg[8]\ <= \^qspo_int_reg[8]\;
  \receive_Data_int1__0\ <= \^receive_data_int1__0\;
\FSM_sequential_qspi_cntrl_ps[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF440F440F440F44"
    )
        port map (
      I0 => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_op\(0),
      I1 => \LOGIC_FOR_MD_12_GEN.CMD_decoded_int\,
      I2 => SPIXfer_done_int_pulse,
      I3 => QSPI_IO1_T(0),
      I4 => empty,
      I5 => \^qspo\(0),
      O => \qspo_int_reg[0]\
    );
\FSM_sequential_qspi_cntrl_ps[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^qspo\(3),
      I1 => empty,
      I2 => QSPI_IO1_T(0),
      O => \^qspo_int_reg[8]\
    );
\LOGIC_GENERATION_FDR.CMD_ERR_S2AX_1_CDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LOGIC_FOR_MD_12_GEN.CMD_decoded_int\,
      I1 => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_op\(0),
      O => SPISR_0_CMD_Error_int
    );
QSPI_IO0_T_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0000002A080808"
    )
        port map (
      I0 => QSPI_IO1_T(1),
      I1 => QSPI_IO1_T_0,
      I2 => \^qspo\(4),
      I3 => \LOGIC_FOR_MD_12_GEN.Addr_Mode_0_int\,
      I4 => \LOGIC_FOR_MD_12_GEN.Addr_Mode_1_int\,
      I5 => \^qspo_int_reg[8]\,
      O => \FSM_sequential_qspi_cntrl_ps_reg[1]_0\
    );
QSPI_IO1_T_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7D7D7F7FFDFDFFF"
    )
        port map (
      I0 => \master_tri_state_en_control1__0\,
      I1 => QSPI_IO1_T(1),
      I2 => QSPI_IO1_T(2),
      I3 => \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\,
      I4 => \LOGIC_FOR_MD_12_GEN.Data_Mode_0_int\,
      I5 => QSPI_IO1_T_i_3_n_0,
      O => \FSM_sequential_qspi_cntrl_ps_reg[1]\
    );
QSPI_IO1_T_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEAAFFFF14000000"
    )
        port map (
      I0 => \^qspo_int_reg[8]\,
      I1 => \LOGIC_FOR_MD_12_GEN.Data_Mode_0_int\,
      I2 => \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\,
      I3 => \^qspo\(4),
      I4 => QSPI_IO1_T_0,
      I5 => QSPI_IO1_T_i_4_n_0,
      O => QSPI_IO1_T_i_3_n_0
    );
QSPI_IO1_T_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \LOGIC_FOR_MD_12_GEN.Addr_Mode_1_int\,
      I1 => \LOGIC_FOR_MD_12_GEN.Addr_Mode_0_int\,
      O => QSPI_IO1_T_i_4_n_0
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10\,
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d1\,
      R => Rst_to_spi
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d1\,
      Q => \LOGIC_FOR_MD_12_GEN.CMD_decoded_int\,
      R => Rst_to_spi
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10\,
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1\,
      R => Rst_to_spi
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[0].TXFIFO_FIRST_ENTRY_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => CE,
      D => dout(7),
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address\(0),
      R => R
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[1].TXFIFO_FIRST_ENTRY_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => CE,
      D => dout(6),
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address\(1),
      R => R
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[2].TXFIFO_FIRST_ENTRY_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => CE,
      D => dout(5),
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address\(2),
      R => R
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[3].TXFIFO_FIRST_ENTRY_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => CE,
      D => dout(4),
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address\(3),
      R => R
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[4].TXFIFO_FIRST_ENTRY_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => CE,
      D => dout(3),
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address\(4),
      R => R
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[5].TXFIFO_FIRST_ENTRY_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => CE,
      D => dout(2),
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address\(5),
      R => R
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[6].TXFIFO_FIRST_ENTRY_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => CE,
      D => dout(1),
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address\(6),
      R => R
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[7].TXFIFO_FIRST_ENTRY_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => CE,
      D => dout(0),
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address\(7),
      R => R
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_15
     port map (
      a(7) => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address\(0),
      a(6) => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address\(1),
      a(5) => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address\(2),
      a(4) => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address\(3),
      a(3) => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address\(4),
      a(2) => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address\(5),
      a(1) => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address\(6),
      a(0) => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address\(7),
      clk => ext_spi_clk,
      d(11 downto 0) => B"000000000000",
      dpo(11 downto 0) => \NLW_QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I_dpo_UNCONNECTED\(11 downto 0),
      dpra(7 downto 0) => B"00000000",
      i_ce => '1',
      qdpo(11 downto 0) => \NLW_QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I_qdpo_UNCONNECTED\(11 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(11) => \^qspo\(4),
      qspo(10) => \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\,
      qspo(9) => \LOGIC_FOR_MD_12_GEN.Data_Mode_0_int\,
      qspo(8 downto 7) => \^qspo\(3 downto 2),
      qspo(6) => \LOGIC_FOR_MD_12_GEN.Addr_Mode_1_int\,
      qspo(5) => \LOGIC_FOR_MD_12_GEN.Addr_Mode_0_int\,
      qspo(4 downto 3) => \^qspo\(1 downto 0),
      qspo(2 downto 1) => \NLW_QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I_qspo_UNCONNECTED\(2 downto 1),
      qspo(0) => \QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_op\(0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => Rst_to_spi,
      spo(11 downto 0) => \NLW_QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I_spo_UNCONNECTED\(11 downto 0),
      we => '0'
    );
\QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\,
      I1 => QSPI_IO1_T(2),
      I2 => QSPI_IO1_T(1),
      I3 => \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_3_n_0\,
      O => \IO2_T_control__3\
    );
\QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DC8C8C8C"
    )
        port map (
      I0 => \^qspo_int_reg[8]\,
      I1 => \LOGIC_FOR_MD_12_GEN.Addr_Mode_1_int\,
      I2 => QSPI_IO1_T_0,
      I3 => \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\,
      I4 => \^qspo\(4),
      O => \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_3_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^mode_1__3\,
      I1 => \^mode_0__0\,
      O => \^serial_dout_018_in\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000005FF333305FF"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_6_n_0\,
      I1 => \LOGIC_FOR_MD_12_GEN.Data_Mode_0_int\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_7_n_0\,
      I3 => QSPI_IO1_T(1),
      I4 => QSPI_IO1_T(2),
      I5 => \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\,
      O => \^receive_data_int1__0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^mode_1__3\,
      I1 => \^mode_0__0\,
      O => \^spixfer_done_int132_out__0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A00CCCC0A00"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_6_n_0\,
      I1 => \LOGIC_FOR_MD_12_GEN.Data_Mode_0_int\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_7_n_0\,
      I3 => QSPI_IO1_T(1),
      I4 => QSPI_IO1_T(2),
      I5 => \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\,
      O => \^spixfer_done_int130_out__0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCDDDCCC8C888CCC"
    )
        port map (
      I0 => \^qspo_int_reg[8]\,
      I1 => \LOGIC_FOR_MD_12_GEN.Addr_Mode_0_int\,
      I2 => \^qspo\(4),
      I3 => \stop_clock134_out__3\,
      I4 => \stop_clock1__3\,
      I5 => \LOGIC_FOR_MD_12_GEN.Data_Mode_0_int\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_6_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCDDDCCC8C888CCC"
    )
        port map (
      I0 => \^qspo_int_reg[8]\,
      I1 => \LOGIC_FOR_MD_12_GEN.Addr_Mode_1_int\,
      I2 => \^qspo\(4),
      I3 => \stop_clock134_out__3\,
      I4 => \stop_clock1__3\,
      I5 => \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_7_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF10000000"
    )
        port map (
      I0 => \^receive_data_int1__0\,
      I1 => \^spixfer_done_int130_out__0\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_0\,
      I3 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_1\,
      I4 => \^spixfer_done_int132_out__0\,
      I5 => io2_o,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \LOGIC_FOR_MD_12_GEN.Data_Mode_0_int\,
      I1 => QSPI_IO1_T(2),
      I2 => QSPI_IO1_T(1),
      I3 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_6_n_0\,
      O => \^mode_0__0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\,
      I1 => QSPI_IO1_T(2),
      I2 => QSPI_IO1_T(1),
      I3 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_7_n_0\,
      O => \^mode_1__3\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4]\(1),
      I1 => io3_i_sync,
      I2 => \^receive_data_int1__0\,
      I3 => \^spixfer_done_int130_out__0\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6]\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4]\(0),
      I1 => io2_i_sync,
      I2 => \^receive_data_int1__0\,
      I3 => \^spixfer_done_int130_out__0\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[7]\
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^qspo\(4),
      I1 => sck_d3,
      I2 => \^serial_dout_018_in\,
      O => E(0)
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBA5410"
    )
        port map (
      I0 => \^receive_data_int1__0\,
      I1 => \^spixfer_done_int130_out__0\,
      I2 => io3_i_sync,
      I3 => Q(1),
      I4 => Q(2),
      O => D(2)
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBA5410"
    )
        port map (
      I0 => \^receive_data_int1__0\,
      I1 => \^spixfer_done_int130_out__0\,
      I2 => io2_i_sync,
      I3 => Q(0),
      I4 => Q(1),
      O => D(1)
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => io1_i_sync,
      I1 => \^receive_data_int1__0\,
      I2 => io0_i_sync,
      O => D(0)
    );
transfer_start_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^qspo\(0),
      I1 => SPIXfer_done_int,
      I2 => \^qspo\(3),
      I3 => empty,
      O => \qspo_int_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "16'b0001111100011111";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "warning";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "auto";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 5;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 8;
  attribute READ_MODE : string;
  attribute READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "1f1f";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 8;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "TRUE";
  attribute dont_touch : string;
  attribute dont_touch of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "true";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  attribute CASCADE_HEIGHT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute DOUT_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_SIM_ASSERT_ERR of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "warning";
  attribute EN_UF : string;
  attribute EN_UF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 16;
  attribute FIFO_READ_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 128;
  attribute FIFO_WRITE_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 16;
  attribute FULL_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "soft";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 7;
  attribute PROG_EMPTY_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute PROG_FULL_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute RD_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute READ_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RELATED_CLOCKS of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute USE_ADV_FEATURES of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1f1f";
  attribute VERSION : integer;
  attribute VERSION of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute WRITE_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute WR_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute XPM_MODULE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute invalid : integer;
  attribute invalid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
begin
  dbiterr <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gnuram_async_fifo.xpm_fifo_base_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
     port map (
      almost_empty => almost_empty,
      almost_full => almost_full,
      data_valid => data_valid,
      dbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      full_n => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => overflow,
      prog_empty => prog_empty,
      prog_full => prog_full,
      rd_clk => rd_clk,
      rd_data_count(4 downto 0) => rd_data_count(4 downto 0),
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      rst => rst,
      sbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\,
      sleep => sleep,
      underflow => underflow,
      wr_ack => wr_ack,
      wr_clk => wr_clk,
      wr_data_count(4 downto 0) => wr_data_count(4 downto 0),
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is "16'b0001111100011111";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is "warning";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is "auto";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is "xpm_fifo_async";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 5;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 8;
  attribute READ_MODE : string;
  attribute READ_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is "1F1F";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 8;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is "TRUE";
  attribute dont_touch : string;
  attribute dont_touch of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ : entity is "true";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  attribute CASCADE_HEIGHT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute DOUT_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_SIM_ASSERT_ERR of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "warning";
  attribute EN_UF : string;
  attribute EN_UF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 16;
  attribute FIFO_READ_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 128;
  attribute FIFO_WRITE_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 16;
  attribute FULL_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "soft";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 7;
  attribute PROG_EMPTY_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute PROG_FULL_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute RD_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute READ_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RELATED_CLOCKS of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute USE_ADV_FEATURES of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1F1F";
  attribute VERSION : integer;
  attribute VERSION of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute WRITE_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute WR_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute XPM_MODULE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute invalid : integer;
  attribute invalid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
begin
  dbiterr <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gnuram_async_fifo.xpm_fifo_base_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0\
     port map (
      almost_empty => almost_empty,
      almost_full => almost_full,
      data_valid => data_valid,
      dbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      full_n => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => overflow,
      prog_empty => prog_empty,
      prog_full => prog_full,
      rd_clk => rd_clk,
      rd_data_count(4 downto 0) => rd_data_count(4 downto 0),
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      rst => rst,
      sbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\,
      sleep => sleep,
      underflow => underflow,
      wr_ack => wr_ack,
      wr_clk => wr_clk,
      wr_data_count(4 downto 0) => wr_data_count(4 downto 0),
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg is
  port (
    almost_full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4]\ : out STD_LOGIC;
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\ : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0\ : in STD_LOGIC;
    rd_data_count : in STD_LOGIC_VECTOR ( 0 to 0 );
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1\ : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]\ : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]\ : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28]\ : in STD_LOGIC;
    p_5_in : in STD_LOGIC;
    \gwack.wr_ack_i_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28]_0\ : in STD_LOGIC;
    p_2_in : in STD_LOGIC;
    \SPIXfer_done_int130_out__0\ : in STD_LOGIC;
    \receive_Data_int1__0\ : in STD_LOGIC;
    \Shift_Reg1__0\ : in STD_LOGIC;
    io1_i_sync : in STD_LOGIC;
    io0_i_sync : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg is
  signal \^fifo_exists.ip2bus_wrack_transmit_enable\ : STD_LOGIC;
  signal \FIFO_EXISTS.Tx_FIFO_occ_Reversed\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_4_n_0\ : STD_LOGIC;
  signal \^almost_full\ : STD_LOGIC;
  signal \^dout\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal full : STD_LOGIC;
  signal wr_rst_busy : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_10\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_21\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_22\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_23\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_24\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_25\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_28\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_29\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_4\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_1\ : label is "soft_lutpair73";
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "16'b0001111100011111";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "warning";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 1;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 5;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 8;
  attribute READ_MODE : integer;
  attribute READ_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "1F1F";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 8;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "TRUE";
begin
  \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ <= \^fifo_exists.ip2bus_wrack_transmit_enable\;
  almost_full <= \^almost_full\;
  dout(7 downto 0) <= \^dout\(7 downto 0);
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA90000"
    )
        port map (
      I0 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(3),
      I1 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(0),
      I2 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(1),
      I3 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(2),
      I4 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2_n_0\,
      I5 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28]\,
      O => D(3)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EF0000000000"
    )
        port map (
      I0 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(3),
      I1 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(4),
      I2 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_4_n_0\,
      I3 => Bus_RNW_reg,
      I4 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28]_0\,
      I5 => p_2_in,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(2),
      I1 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(1),
      I2 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(0),
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_4_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA900"
    )
        port map (
      I0 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(2),
      I1 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(1),
      I2 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(0),
      I3 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2_n_0\,
      I4 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]\,
      O => D(2)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF90"
    )
        port map (
      I0 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(0),
      I1 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(1),
      I2 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2_n_0\,
      I3 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]\,
      O => D(1)
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFF4FFFF"
    )
        port map (
      I0 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(0),
      I1 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2_n_0\,
      I2 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\,
      I3 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0\,
      I4 => rd_data_count(0),
      I5 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1\,
      O => D(0)
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \SPIXfer_done_int130_out__0\,
      I1 => \^dout\(4),
      I2 => \^dout\(6),
      I3 => \receive_Data_int1__0\,
      I4 => \^dout\(7),
      O => \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4]\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^dout\(0),
      I1 => \Shift_Reg1__0\,
      I2 => io1_i_sync,
      I3 => \receive_Data_int1__0\,
      I4 => io0_i_sync,
      O => \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0]\(0)
    );
\xpm_fifo_instance.xpm_fifo_async_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__parameterized1\
     port map (
      almost_empty => \xpm_fifo_instance.xpm_fifo_async_inst_n_28\,
      almost_full => \^almost_full\,
      data_valid => \xpm_fifo_instance.xpm_fifo_async_inst_n_29\,
      dbiterr => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED\,
      din(7 downto 0) => s_axi_wdata(7 downto 0),
      dout(7 downto 0) => \^dout\(7 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED\,
      prog_empty => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED\,
      prog_full => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED\,
      rd_clk => ext_spi_clk,
      rd_data_count(4) => \xpm_fifo_instance.xpm_fifo_async_inst_n_21\,
      rd_data_count(3) => \xpm_fifo_instance.xpm_fifo_async_inst_n_22\,
      rd_data_count(2) => \xpm_fifo_instance.xpm_fifo_async_inst_n_23\,
      rd_data_count(1) => \xpm_fifo_instance.xpm_fifo_async_inst_n_24\,
      rd_data_count(0) => \xpm_fifo_instance.xpm_fifo_async_inst_n_25\,
      rd_en => rd_en,
      rd_rst_busy => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED\,
      rst => rst,
      sbiterr => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED\,
      sleep => '0',
      underflow => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED\,
      wr_ack => \xpm_fifo_instance.xpm_fifo_async_inst_n_10\,
      wr_clk => s_axi_aclk,
      wr_data_count(4 downto 0) => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(4 downto 0),
      wr_en => \^fifo_exists.ip2bus_wrack_transmit_enable\,
      wr_rst_busy => wr_rst_busy
    );
\xpm_fifo_instance.xpm_fifo_async_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^almost_full\,
      I1 => p_5_in,
      I2 => \gwack.wr_ack_i_reg\,
      I3 => Bus_RNW_reg,
      O => \^fifo_exists.ip2bus_wrack_transmit_enable\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_core_interface is
  port (
    SPISR_0_CMD_Error_to_axi_clk : out STD_LOGIC;
    spisel_d1_reg_to_axi_clk : out STD_LOGIC;
    Tx_FIFO_Empty_SPISR_to_axi_clk : out STD_LOGIC;
    spicr_1_spe_frm_axi_clk : out STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : out STD_LOGIC;
    spicr_3_cpol_frm_axi_clk : out STD_LOGIC;
    spicr_4_cpha_frm_axi_clk : out STD_LOGIC;
    spicr_5_txfifo_rst_frm_axi_clk : out STD_LOGIC;
    spicr_8_tr_inhibit_frm_axi_clk : out STD_LOGIC;
    SPISSR_frm_axi_clk : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 6 downto 0 );
    empty : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    ss_t : out STD_LOGIC;
    p_1_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPISR_1_LOOP_Back_Error_int : out STD_LOGIC;
    SPISR_2_MSB_Error_int : out STD_LOGIC;
    irpt_wrack_d1 : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    p_1_in34_in : out STD_LOGIC;
    p_1_in31_in : out STD_LOGIC;
    p_1_in28_in : out STD_LOGIC;
    p_1_in25_in : out STD_LOGIC;
    p_1_in22_in : out STD_LOGIC;
    p_1_in19_in : out STD_LOGIC;
    p_1_in13_in : out STD_LOGIC;
    p_1_in10_in : out STD_LOGIC;
    p_1_in7_in : out STD_LOGIC;
    p_1_in4_in : out STD_LOGIC;
    p_1_in1_in : out STD_LOGIC;
    p_1_in_0 : out STD_LOGIC;
    irpt_rdack_d1 : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : out STD_LOGIC;
    ip2Bus_WrAck_core_reg_d1 : out STD_LOGIC;
    ip2bus_wrack_int : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : out STD_LOGIC;
    ip2Bus_RdAck_core_reg : out STD_LOGIC;
    ip2bus_rdack_int : out STD_LOGIC;
    ip2Bus_WrAck_core_reg_1 : out STD_LOGIC;
    \RESET_FLOPS[15].RST_FLOPS\ : out STD_LOGIC;
    io0_o : out STD_LOGIC;
    io1_o : out STD_LOGIC;
    io2_o : out STD_LOGIC;
    io3_o : out STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : out STD_LOGIC;
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_fifo_empty_i : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    reset2ip_reset_int : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 13 downto 0 );
    bus2ip_wrce_int : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SPICR_data_int_reg0 : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    sw_rst_cond : in STD_LOGIC;
    irpt_wrack : in STD_LOGIC;
    interrupt_wrce_strb : in STD_LOGIC;
    irpt_rdack : in STD_LOGIC;
    intr2bus_rdack0 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1_reg_0 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : in STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0\ : in STD_LOGIC;
    ip2Bus_WrAck_core_reg0 : in STD_LOGIC;
    intr_controller_rd_ce_or_reduce : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : in STD_LOGIC;
    rd_ce_or_reduce_core_cmb : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg : in STD_LOGIC;
    io2_i_sync : in STD_LOGIC;
    io3_i_sync : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    p_5_in : in STD_LOGIC;
    p_4_in : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0\ : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1\ : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_0\ : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_1\ : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0\ : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_1\ : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28]_0\ : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0\ : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_1\ : in STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg_0\ : in STD_LOGIC;
    reset_trig_reg : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_2\ : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_3\ : in STD_LOGIC;
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_4\ : in STD_LOGIC;
    p_1_in_1 : in STD_LOGIC;
    p_2_in : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    io1_i_sync : in STD_LOGIC;
    io0_i_sync : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_core_interface;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_core_interface is
  signal CE : STD_LOGIC;
  signal CONTROL_REG_I_n_13 : STD_LOGIC;
  signal CONTROL_REG_I_n_14 : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_12\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_13\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_14\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_15\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_18\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_19\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_21\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_22\ : STD_LOGIC;
  signal \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1\ : STD_LOGIC;
  signal \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1\ : STD_LOGIC;
  signal \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1\ : STD_LOGIC;
  signal \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1\ : STD_LOGIC;
  signal \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1\ : STD_LOGIC;
  signal \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ : STD_LOGIC;
  signal \FIFO_EXISTS.Rx_FIFO_occ_Reversed\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_0\ : STD_LOGIC;
  signal \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_3\ : STD_LOGIC;
  signal \FIFO_EXISTS.TX_FIFO_II_n_15\ : STD_LOGIC;
  signal \FIFO_EXISTS.TX_FIFO_II_n_16\ : STD_LOGIC;
  signal \FIFO_EXISTS.Tx_FIFO_Empty_intr\ : STD_LOGIC;
  signal \FIFO_EXISTS.data_Exists_RcFIFO_int_d1\ : STD_LOGIC;
  signal \FIFO_EXISTS.data_Exists_RcFIFO_pulse030_in\ : STD_LOGIC;
  signal \FIFO_EXISTS.spiXfer_done_to_axi_1\ : STD_LOGIC;
  signal \IO2_T_control__3\ : STD_LOGIC;
  signal IP2Bus_Error_1 : STD_LOGIC;
  signal IP2Bus_RdAck_1 : STD_LOGIC;
  signal IP2Bus_WrAck_1 : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_3_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_2_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_4_n_0\ : STD_LOGIC;
  signal \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_6_n_0\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.Addr_Bit_int\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.Addr_Phase_int\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.Data_Dir_int\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.Data_Phase_int\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_11\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_13\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_15\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_16\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_17\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_21\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_23\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_24\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_25\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_19\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_20\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_21\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_23\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_30\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_35\ : STD_LOGIC;
  signal \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10\ : STD_LOGIC;
  signal \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1\ : STD_LOGIC;
  signal \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10\ : STD_LOGIC;
  signal Quad_Phase_int : STD_LOGIC;
  signal R : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.Count_reg\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \^reset_flops[15].rst_flops\ : STD_LOGIC;
  signal R_1 : STD_LOGIC;
  signal Rx_FIFO_Empty_Synced_in_SPI_domain : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo_d1 : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo_d1_synced_i : STD_LOGIC;
  signal SOFT_RESET_I_n_2 : STD_LOGIC;
  signal SPISR_0_CMD_Error_int : STD_LOGIC;
  signal \^spisr_0_cmd_error_to_axi_clk\ : STD_LOGIC;
  signal \^spisr_1_loop_back_error_int\ : STD_LOGIC;
  signal \^spisr_2_msb_error_int\ : STD_LOGIC;
  signal SPISR_3_Slave_Mode_Error_int : STD_LOGIC;
  signal SPISR_4_CPOL_CPHA_Error_int : STD_LOGIC;
  signal \^spissr_frm_axi_clk\ : STD_LOGIC;
  signal SPIXfer_done_int : STD_LOGIC;
  signal \SPIXfer_done_int130_out__0\ : STD_LOGIC;
  signal \SPIXfer_done_int132_out__0\ : STD_LOGIC;
  signal SPIXfer_done_int_pulse : STD_LOGIC;
  signal SPIXfer_done_rd_tx_en : STD_LOGIC;
  signal Serial_Dout_018_in : STD_LOGIC;
  signal Shift_Reg : STD_LOGIC_VECTOR ( 6 to 7 );
  signal \Shift_Reg1__0\ : STD_LOGIC;
  signal \^tx_fifo_empty_spisr_to_axi_clk\ : STD_LOGIC;
  signal \^almost_full\ : STD_LOGIC;
  signal almost_full_0 : STD_LOGIC;
  signal bus2IP_Data_for_interrupt_core : STD_LOGIC_VECTOR ( 23 to 23 );
  signal data_from_rx_fifo : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data_from_txfifo : STD_LOGIC_VECTOR ( 0 to 7 );
  signal data_to_rx_fifo : STD_LOGIC_VECTOR ( 0 to 7 );
  signal drr_Overrun_int : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal \^io2_o\ : STD_LOGIC;
  signal ip2Bus_Data_1 : STD_LOGIC_VECTOR ( 24 to 31 );
  signal \^ip2bus_rdack_core_reg\ : STD_LOGIC;
  signal ip2Bus_RdAck_core_reg0 : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole : STD_LOGIC;
  signal ip2Bus_WrAck_core_reg : STD_LOGIC;
  signal \^ip2bus_wrack_core_reg_1\ : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole : STD_LOGIC;
  signal \master_tri_state_en_control1__0\ : STD_LOGIC;
  signal \mode_0__0\ : STD_LOGIC;
  signal \mode_1__3\ : STD_LOGIC;
  signal p_0_in17_in : STD_LOGIC;
  signal \^p_1_in10_in\ : STD_LOGIC;
  signal \^p_1_in13_in\ : STD_LOGIC;
  signal p_1_in16_in : STD_LOGIC;
  signal \^p_1_in22_in\ : STD_LOGIC;
  signal qspi_cntrl_ps : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rc_FIFO_Full_d1 : STD_LOGIC;
  signal rd_en : STD_LOGIC;
  signal read_ack_delay_1 : STD_LOGIC;
  signal read_ack_delay_2 : STD_LOGIC;
  signal read_ack_delay_3 : STD_LOGIC;
  signal read_ack_delay_4 : STD_LOGIC;
  signal read_ack_delay_5 : STD_LOGIC;
  signal read_ack_delay_6 : STD_LOGIC;
  signal read_ack_delay_7 : STD_LOGIC;
  signal \receive_Data_int1__0\ : STD_LOGIC;
  signal register_Data_slvsel_int : STD_LOGIC;
  signal reset_TxFIFO_ptr_int : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal rst_to_spi_int : STD_LOGIC;
  signal \^rx_fifo_empty_i\ : STD_LOGIC;
  signal rx_shft_reg_mode_0011 : STD_LOGIC_VECTOR ( 4 to 7 );
  signal sck_d3 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  signal spiXfer_done_d2 : STD_LOGIC;
  signal spiXfer_done_d3 : STD_LOGIC;
  signal \^spixfer_done_int\ : STD_LOGIC;
  signal \^spicr_1_spe_frm_axi_clk\ : STD_LOGIC;
  signal \^spicr_2_mst_n_slv_frm_axi_clk\ : STD_LOGIC;
  signal \^spicr_3_cpol_frm_axi_clk\ : STD_LOGIC;
  signal spicr_3_cpol_to_spi_clk : STD_LOGIC;
  signal \^spicr_4_cpha_frm_axi_clk\ : STD_LOGIC;
  signal spicr_4_cpha_to_spi_clk : STD_LOGIC;
  signal \^spicr_5_txfifo_rst_frm_axi_clk\ : STD_LOGIC;
  signal spicr_5_txfifo_to_spi_clk : STD_LOGIC;
  signal \^spicr_6_rxfifo_rst_frm_axi_clk\ : STD_LOGIC;
  signal \^spicr_8_tr_inhibit_frm_axi_clk\ : STD_LOGIC;
  signal spicr_8_tr_inhibit_to_spi_clk : STD_LOGIC;
  signal spicr_bits_7_8_frm_axi_clk : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal spicr_bits_7_8_to_spi_clk : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \^spisel_d1_reg_to_axi_clk\ : STD_LOGIC;
  signal stop_clock : STD_LOGIC;
  signal \stop_clock134_out__3\ : STD_LOGIC;
  signal \stop_clock1__3\ : STD_LOGIC;
  signal transfer_start_d2 : STD_LOGIC;
  signal tx_FIFO_Empty_d1 : STD_LOGIC;
  signal tx_FIFO_Occpncy_MSB_d1 : STD_LOGIC;
  signal tx_fifo_empty : STD_LOGIC;
  signal tx_occ_msb : STD_LOGIC;
  signal tx_occ_msb_1 : STD_LOGIC;
  signal tx_occ_msb_2 : STD_LOGIC;
  signal tx_occ_msb_3 : STD_LOGIC;
  signal tx_occ_msb_4 : STD_LOGIC;
  signal wrack : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_almost_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_data_valid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_rd_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_wr_ack_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_wr_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \FIFO_EXISTS.RX_FIFO_II\ : label is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \FIFO_EXISTS.RX_FIFO_II\ : label is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of \FIFO_EXISTS.RX_FIFO_II\ : label is "16'b0001111100011111";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of \FIFO_EXISTS.RX_FIFO_II\ : label is "warning";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \FIFO_EXISTS.RX_FIFO_II\ : label is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \FIFO_EXISTS.RX_FIFO_II\ : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \FIFO_EXISTS.RX_FIFO_II\ : label is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of \FIFO_EXISTS.RX_FIFO_II\ : label is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of \FIFO_EXISTS.RX_FIFO_II\ : label is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \FIFO_EXISTS.RX_FIFO_II\ : label is 5;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \FIFO_EXISTS.RX_FIFO_II\ : label is 8;
  attribute READ_MODE : integer;
  attribute READ_MODE of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \FIFO_EXISTS.RX_FIFO_II\ : label is "1f1f";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \FIFO_EXISTS.RX_FIFO_II\ : label is 8;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \FIFO_EXISTS.RX_FIFO_II\ : label is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \FIFO_EXISTS.RX_FIFO_II\ : label is "TRUE";
begin
  \RESET_FLOPS[15].RST_FLOPS\ <= \^reset_flops[15].rst_flops\;
  SPISR_0_CMD_Error_to_axi_clk <= \^spisr_0_cmd_error_to_axi_clk\;
  SPISR_1_LOOP_Back_Error_int <= \^spisr_1_loop_back_error_int\;
  SPISR_2_MSB_Error_int <= \^spisr_2_msb_error_int\;
  SPISSR_frm_axi_clk <= \^spissr_frm_axi_clk\;
  Tx_FIFO_Empty_SPISR_to_axi_clk <= \^tx_fifo_empty_spisr_to_axi_clk\;
  almost_full <= \^almost_full\;
  empty <= \^empty\;
  io2_o <= \^io2_o\;
  ip2Bus_RdAck_core_reg <= \^ip2bus_rdack_core_reg\;
  ip2Bus_WrAck_core_reg_1 <= \^ip2bus_wrack_core_reg_1\;
  p_1_in10_in <= \^p_1_in10_in\;
  p_1_in13_in <= \^p_1_in13_in\;
  p_1_in22_in <= \^p_1_in22_in\;
  rx_fifo_empty_i <= \^rx_fifo_empty_i\;
  scndry_out <= \^scndry_out\;
  spicr_1_spe_frm_axi_clk <= \^spicr_1_spe_frm_axi_clk\;
  spicr_2_mst_n_slv_frm_axi_clk <= \^spicr_2_mst_n_slv_frm_axi_clk\;
  spicr_3_cpol_frm_axi_clk <= \^spicr_3_cpol_frm_axi_clk\;
  spicr_4_cpha_frm_axi_clk <= \^spicr_4_cpha_frm_axi_clk\;
  spicr_5_txfifo_rst_frm_axi_clk <= \^spicr_5_txfifo_rst_frm_axi_clk\;
  spicr_6_rxfifo_rst_frm_axi_clk <= \^spicr_6_rxfifo_rst_frm_axi_clk\;
  spicr_8_tr_inhibit_frm_axi_clk <= \^spicr_8_tr_inhibit_frm_axi_clk\;
  spisel_d1_reg_to_axi_clk <= \^spisel_d1_reg_to_axi_clk\;
CONTROL_REG_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_cntrl_reg
     port map (
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\ => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0\ => \^spicr_5_txfifo_rst_frm_axi_clk\,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_1\ => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\,
      \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]_0\ => \^spicr_4_cpha_frm_axi_clk\,
      \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]_0\ => \^spicr_3_cpol_frm_axi_clk\,
      \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]_0\ => \^spicr_2_mst_n_slv_frm_axi_clk\,
      D(0) => ip2Bus_Data_1(24),
      \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1\ => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1\,
      \FIFO_EXISTS.data_Exists_RcFIFO_int_d1\ => \FIFO_EXISTS.data_Exists_RcFIFO_int_d1\,
      \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\,
      \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0\ => \^rx_fifo_empty_i\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_1\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_1\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_2\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_2\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_3\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_3\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_4\,
      Q(0) => p_0_in17_in,
      SPICR_data_int_reg0 => SPICR_data_int_reg0,
      SPISR_1_LOOP_Back_Error_int => \^spisr_1_loop_back_error_int\,
      SPISR_2_MSB_Error_int => \^spisr_2_msb_error_int\,
      SPISR_3_Slave_Mode_Error_int => SPISR_3_Slave_Mode_Error_int,
      SPISR_4_CPOL_CPHA_Error_int => SPISR_4_CPOL_CPHA_Error_int,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      bus2ip_wrce_int(0) => bus2ip_wrce_int(0),
      dout(0) => data_from_rx_fifo(0),
      \gen_rst_ic.wr_rst_busy_ic_reg\ => \^reset_flops[15].rst_flops\,
      \ip_irpt_enable_reg_reg[8]\ => \^spisel_d1_reg_to_axi_clk\,
      p_1_in10_in => \^p_1_in10_in\,
      p_1_in13_in => \^p_1_in13_in\,
      p_1_in16_in => p_1_in16_in,
      reset2ip_reset_int => reset2ip_reset_int,
      rst => reset_TxFIFO_ptr_int,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 5) => s_axi_wdata(9 downto 7),
      s_axi_wdata(4 downto 0) => s_axi_wdata(4 downto 0),
      \s_axi_wdata[8]\ => CONTROL_REG_I_n_14,
      \s_axi_wdata[8]_0\(0) => bus2IP_Data_for_interrupt_core(23),
      \s_axi_wdata[9]\ => CONTROL_REG_I_n_13,
      spicr_1_spe_frm_axi_clk => \^spicr_1_spe_frm_axi_clk\,
      spicr_6_rxfifo_rst_frm_axi_clk => \^spicr_6_rxfifo_rst_frm_axi_clk\,
      spicr_8_tr_inhibit_frm_axi_clk => \^spicr_8_tr_inhibit_frm_axi_clk\,
      spicr_bits_7_8_frm_axi_clk(1 downto 0) => spicr_bits_7_8_frm_axi_clk(1 downto 0)
    );
\FIFO_EXISTS.CLK_CROSS_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cross_clk_sync_fifo_1
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      D => D_0,
      E(0) => \FIFO_EXISTS.CLK_CROSS_I_n_21\,
      \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ => \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\,
      \FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_reg\ => \^rx_fifo_empty_i\,
      \FIFO_EXISTS.spiXfer_done_to_axi_1\ => \FIFO_EXISTS.spiXfer_done_to_axi_1\,
      \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\,
      \IO2_T_control__3\ => \IO2_T_control__3\,
      \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC_0\ => \^spicr_5_txfifo_rst_frm_axi_clk\,
      \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_12\,
      \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_22\,
      \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_15\,
      \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_13\,
      \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2_0\ => \^tx_fifo_empty_spisr_to_axi_clk\,
      Q(0) => \RATIO_OF_2_GENERATE.Count_reg\(4),
      R => R,
      Rst_to_spi => rst_to_spi_int,
      SPISR_0_CMD_Error_int => SPISR_0_CMD_Error_int,
      SPISR_0_CMD_Error_to_axi_clk => \^spisr_0_cmd_error_to_axi_clk\,
      SPISSR_frm_axi_clk => \^spissr_frm_axi_clk\,
      almost_full => \^almost_full\,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      drr_Overrun_int => drr_Overrun_int,
      empty => tx_fifo_empty,
      ext_spi_clk => ext_spi_clk,
      \icount_out_reg[1]\ => \^ip2bus_wrack_core_reg_1\,
      \icount_out_reg[3]\ => \^reset_flops[15].rst_flops\,
      \master_tri_state_en_control1__0\ => \master_tri_state_en_control1__0\,
      p_1_in16_in => p_1_in16_in,
      p_1_in22_in => \^p_1_in22_in\,
      p_5_in => p_5_in,
      register_Data_slvsel_int => register_Data_slvsel_int,
      reset2ip_reset_int => reset2ip_reset_int,
      rst => rst,
      rst_reg => \FIFO_EXISTS.CLK_CROSS_I_n_14\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(1) => s_axi_wdata(7),
      s_axi_wdata(0) => s_axi_wdata(5),
      \s_axi_wdata[5]\ => \FIFO_EXISTS.CLK_CROSS_I_n_19\,
      \s_axi_wdata[7]\ => \FIFO_EXISTS.CLK_CROSS_I_n_18\,
      spiXfer_done_d2 => spiXfer_done_d2,
      spiXfer_done_d3 => spiXfer_done_d3,
      spicr_1_spe_frm_axi_clk => \^spicr_1_spe_frm_axi_clk\,
      spicr_2_mst_n_slv_frm_axi_clk => \^spicr_2_mst_n_slv_frm_axi_clk\,
      spicr_3_cpol_frm_axi_clk => \^spicr_3_cpol_frm_axi_clk\,
      spicr_3_cpol_to_spi_clk => spicr_3_cpol_to_spi_clk,
      spicr_4_cpha_frm_axi_clk => \^spicr_4_cpha_frm_axi_clk\,
      spicr_4_cpha_to_spi_clk => spicr_4_cpha_to_spi_clk,
      spicr_5_txfifo_to_spi_clk => spicr_5_txfifo_to_spi_clk,
      spicr_6_rxfifo_rst_frm_axi_clk => \^spicr_6_rxfifo_rst_frm_axi_clk\,
      spicr_8_tr_inhibit_frm_axi_clk => \^spicr_8_tr_inhibit_frm_axi_clk\,
      spicr_8_tr_inhibit_to_spi_clk => spicr_8_tr_inhibit_to_spi_clk,
      spicr_bits_7_8_frm_axi_clk(1 downto 0) => spicr_bits_7_8_frm_axi_clk(1 downto 0),
      spicr_bits_7_8_to_spi_clk(0 to 1) => spicr_bits_7_8_to_spi_clk(0 to 1),
      spisel_d1_reg_to_axi_clk => \^spisel_d1_reg_to_axi_clk\,
      stop_clock => stop_clock,
      transfer_start_d2 => transfer_start_d2,
      transfer_start_reg => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_25\,
      tx_occ_msb => tx_occ_msb,
      tx_occ_msb_4 => tx_occ_msb_4,
      wr_en => \^spixfer_done_int\
    );
\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^spisr_0_cmd_error_to_axi_clk\,
      Q => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1\,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^spisr_1_loop_back_error_int\,
      Q => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1\,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^spisr_2_msb_error_int\,
      Q => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1\,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => SPISR_3_Slave_Mode_Error_int,
      Q => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1\,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => SPISR_4_CPOL_CPHA_Error_int,
      Q => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1\,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.FIFO_IF_MODULE_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_fifo_ifmodule
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      \FIFO_EXISTS.Tx_FIFO_Empty_intr\ => \FIFO_EXISTS.Tx_FIFO_Empty_intr\,
      IP2Bus_Error_1 => IP2Bus_Error_1,
      \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg\ => \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg_0\,
      Receive_ip2bus_error_reg_0 => \^rx_fifo_empty_i\,
      Rx_FIFO_Full_Fifo_d1_synced_i => Rx_FIFO_Full_Fifo_d1_synced_i,
      p_4_in => p_4_in,
      prmry_in => \^empty\,
      rc_FIFO_Full_d1 => rc_FIFO_Full_d1,
      reset2ip_reset_int => reset2ip_reset_int,
      s_axi_aclk => s_axi_aclk,
      tx_FIFO_Empty_d1 => tx_FIFO_Empty_d1,
      tx_FIFO_Occpncy_MSB_d1 => tx_FIFO_Occpncy_MSB_d1,
      tx_occ_msb => tx_occ_msb
    );
\FIFO_EXISTS.RX_FIFO_EMPTY_SYNC_AXI_2_SPI_CDC\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync
     port map (
      Rx_FIFO_Full_Fifo => Rx_FIFO_Full_Fifo,
      almost_full => almost_full_0,
      ext_spi_clk => ext_spi_clk,
      prmry_in => \^empty\,
      scndry_out => Rx_FIFO_Empty_Synced_in_SPI_domain
    );
\FIFO_EXISTS.RX_FIFO_FULL_SYNCED_SPI_2_AXI_CDC\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0
     port map (
      Rx_FIFO_Full_Fifo_d1_synced_i => Rx_FIFO_Full_Fifo_d1_synced_i,
      empty => \^empty\,
      prmry_in => Rx_FIFO_Full_Fifo_d1,
      s_axi_aclk => s_axi_aclk,
      scndry_out => \^scndry_out\
    );
\FIFO_EXISTS.RX_FIFO_II\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async
     port map (
      almost_empty => \NLW_FIFO_EXISTS.RX_FIFO_II_almost_empty_UNCONNECTED\,
      almost_full => almost_full_0,
      data_valid => \NLW_FIFO_EXISTS.RX_FIFO_II_data_valid_UNCONNECTED\,
      dbiterr => \NLW_FIFO_EXISTS.RX_FIFO_II_dbiterr_UNCONNECTED\,
      din(7) => data_to_rx_fifo(0),
      din(6) => data_to_rx_fifo(1),
      din(5) => data_to_rx_fifo(2),
      din(4) => data_to_rx_fifo(3),
      din(3) => data_to_rx_fifo(4),
      din(2) => data_to_rx_fifo(5),
      din(1) => data_to_rx_fifo(6),
      din(0) => data_to_rx_fifo(7),
      dout(7) => data_from_rx_fifo(0),
      dout(6 downto 0) => dout(6 downto 0),
      empty => \^empty\,
      full => \NLW_FIFO_EXISTS.RX_FIFO_II_full_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => \NLW_FIFO_EXISTS.RX_FIFO_II_overflow_UNCONNECTED\,
      prog_empty => \NLW_FIFO_EXISTS.RX_FIFO_II_prog_empty_UNCONNECTED\,
      prog_full => \NLW_FIFO_EXISTS.RX_FIFO_II_prog_full_UNCONNECTED\,
      rd_clk => s_axi_aclk,
      rd_data_count(4 downto 0) => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(4 downto 0),
      rd_en => rd_en,
      rd_rst_busy => \NLW_FIFO_EXISTS.RX_FIFO_II_rd_rst_busy_UNCONNECTED\,
      rst => rst,
      sbiterr => \NLW_FIFO_EXISTS.RX_FIFO_II_sbiterr_UNCONNECTED\,
      sleep => '0',
      underflow => \NLW_FIFO_EXISTS.RX_FIFO_II_underflow_UNCONNECTED\,
      wr_ack => \NLW_FIFO_EXISTS.RX_FIFO_II_wr_ack_UNCONNECTED\,
      wr_clk => ext_spi_clk,
      wr_data_count(4 downto 0) => \NLW_FIFO_EXISTS.RX_FIFO_II_wr_data_count_UNCONNECTED\(4 downto 0),
      wr_en => \^spixfer_done_int\,
      wr_rst_busy => \NLW_FIFO_EXISTS.RX_FIFO_II_wr_rst_busy_UNCONNECTED\
    );
\FIFO_EXISTS.RX_FIFO_II_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^empty\,
      I1 => \^ip2bus_rdack_core_reg\,
      I2 => p_4_in,
      I3 => Bus_RNW_reg,
      O => rd_en
    );
\FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FIFO_EXISTS.CLK_CROSS_I_n_13\,
      Q => \^rx_fifo_empty_i\,
      R => '0'
    );
\FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => Rx_FIFO_Full_Fifo,
      Q => Rx_FIFO_Full_Fifo_d1,
      R => rst_to_spi_int
    );
\FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_f
     port map (
      \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ => \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\,
      \FIFO_EXISTS.Tx_FIFO_Empty_intr\ => \FIFO_EXISTS.Tx_FIFO_Empty_intr\,
      \FIFO_EXISTS.spiXfer_done_to_axi_1\ => \FIFO_EXISTS.spiXfer_done_to_axi_1\,
      \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\ => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_3\,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      \icount_out_reg[0]_0\ => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_0\,
      \icount_out_reg[0]_1\ => SOFT_RESET_I_n_2,
      \icount_out_reg[1]_0\ => \^reset_flops[15].rst_flops\,
      \icount_out_reg[1]_1\ => \^spicr_5_txfifo_rst_frm_axi_clk\,
      \icount_out_reg[1]_2\ => \FIFO_EXISTS.CLK_CROSS_I_n_15\,
      \icount_out_reg[3]_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_14\,
      rst => reset_TxFIFO_ptr_int,
      s_axi_aclk => s_axi_aclk,
      spiXfer_done_d2 => spiXfer_done_d2,
      spiXfer_done_d3 => spiXfer_done_d3,
      tx_FIFO_Empty_d1_reg => \^tx_fifo_empty_spisr_to_axi_clk\,
      tx_occ_msb_1 => tx_occ_msb_1
    );
\FIFO_EXISTS.TX_FIFO_II\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      D(3) => ip2Bus_Data_1(28),
      D(2) => ip2Bus_Data_1(29),
      D(1) => ip2Bus_Data_1(30),
      D(0) => ip2Bus_Data_1(31),
      \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ => \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28]\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_3_n_0\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28]_0\ => \^tx_fifo_empty_spisr_to_axi_clk\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2_n_0\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_2_n_0\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1\ => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_4_n_0\,
      \SPIXfer_done_int130_out__0\ => \SPIXfer_done_int130_out__0\,
      \Shift_Reg1__0\ => \Shift_Reg1__0\,
      almost_full => \^almost_full\,
      dout(7) => data_from_txfifo(0),
      dout(6) => data_from_txfifo(1),
      dout(5) => data_from_txfifo(2),
      dout(4) => data_from_txfifo(3),
      dout(3) => data_from_txfifo(4),
      dout(2) => data_from_txfifo(5),
      dout(1) => data_from_txfifo(6),
      dout(0) => data_from_txfifo(7),
      empty => tx_fifo_empty,
      ext_spi_clk => ext_spi_clk,
      \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0]\(0) => \FIFO_EXISTS.TX_FIFO_II_n_16\,
      \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4]\ => \FIFO_EXISTS.TX_FIFO_II_n_15\,
      \gwack.wr_ack_i_reg\ => \^ip2bus_wrack_core_reg_1\,
      io0_i_sync => io0_i_sync,
      io1_i_sync => io1_i_sync,
      p_2_in => p_2_in,
      p_5_in => p_5_in,
      rd_data_count(0) => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(0),
      rd_en => SPIXfer_done_rd_tx_en,
      \receive_Data_int1__0\ => \receive_Data_int1__0\,
      rst => reset_TxFIFO_ptr_int,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0)
    );
\FIFO_EXISTS.data_Exists_RcFIFO_int_d1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rx_fifo_empty_i\,
      O => \FIFO_EXISTS.data_Exists_RcFIFO_pulse030_in\
    );
\FIFO_EXISTS.data_Exists_RcFIFO_int_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FIFO_EXISTS.data_Exists_RcFIFO_pulse030_in\,
      Q => \FIFO_EXISTS.data_Exists_RcFIFO_int_d1\,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.tx_occ_msb_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_occ_msb_1,
      Q => tx_occ_msb_2,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.tx_occ_msb_3_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_occ_msb_2,
      Q => tx_occ_msb_3,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.tx_occ_msb_4_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_occ_msb_3,
      Q => tx_occ_msb_4,
      R => reset2ip_reset_int
    );
INTERRUPT_CONTROL_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interrupt_control
     port map (
      D(0) => bus2IP_Data_for_interrupt_core(23),
      \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1\ => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1\,
      \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1\ => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1\,
      \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1\ => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1\,
      \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1\ => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\,
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]_0\ => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_3\,
      \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_19\,
      \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]_0\ => \^tx_fifo_empty_spisr_to_axi_clk\,
      \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_18\,
      \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0\ => CONTROL_REG_I_n_14,
      \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg_reg[9]_0\ => CONTROL_REG_I_n_13,
      IP2Bus_RdAck_1 => IP2Bus_RdAck_1,
      IP2Bus_WrAck_1 => IP2Bus_WrAck_1,
      \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\ => \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg_0\,
      Q(13 downto 8) => Q(12 downto 7),
      Q(7) => p_0_in17_in,
      Q(6 downto 0) => Q(6 downto 0),
      SPISR_0_CMD_Error_to_axi_clk => \^spisr_0_cmd_error_to_axi_clk\,
      SPISR_1_LOOP_Back_Error_int => \^spisr_1_loop_back_error_int\,
      SPISR_2_MSB_Error_int => \^spisr_2_msb_error_int\,
      bus2ip_wrce_int(0) => bus2ip_wrce_int(1),
      empty => \^empty\,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      ip2Bus_RdAck_core_reg => \^ip2bus_rdack_core_reg\,
      ip2Bus_RdAck_intr_reg_hole => ip2Bus_RdAck_intr_reg_hole,
      ip2Bus_WrAck_core_reg => ip2Bus_WrAck_core_reg,
      ip2Bus_WrAck_intr_reg_hole => ip2Bus_WrAck_intr_reg_hole,
      ip2intc_irpt => ip2intc_irpt,
      ipif_glbl_irpt_enable_reg_reg_0 => ipif_glbl_irpt_enable_reg_reg,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      p_0_in(0) => p_0_in(0),
      p_1_in10_in => \^p_1_in10_in\,
      p_1_in13_in => \^p_1_in13_in\,
      p_1_in16_in => p_1_in16_in,
      p_1_in19_in => p_1_in19_in,
      p_1_in1_in => p_1_in1_in,
      p_1_in22_in => \^p_1_in22_in\,
      p_1_in25_in => p_1_in25_in,
      p_1_in28_in => p_1_in28_in,
      p_1_in31_in => p_1_in31_in,
      p_1_in34_in => p_1_in34_in,
      p_1_in4_in => p_1_in4_in,
      p_1_in7_in => p_1_in7_in,
      p_1_in_0 => p_1_in_0,
      rc_FIFO_Full_d1 => rc_FIFO_Full_d1,
      reset2ip_reset_int => reset2ip_reset_int,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(12 downto 8) => s_axi_wdata(13 downto 9),
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      scndry_out => \^scndry_out\,
      spicr_2_mst_n_slv_frm_axi_clk => \^spicr_2_mst_n_slv_frm_axi_clk\,
      tx_FIFO_Empty_d1 => tx_FIFO_Empty_d1,
      tx_FIFO_Occpncy_MSB_d1 => tx_FIFO_Occpncy_MSB_d1,
      tx_occ_msb_4 => tx_occ_msb_4,
      wrack => wrack
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF44444441"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_4_n_0\,
      I1 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(3),
      I2 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(2),
      I3 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(0),
      I4 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(1),
      I5 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28]_0\,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_3_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4441"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_4_n_0\,
      I1 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(2),
      I2 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(1),
      I3 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(0),
      I4 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0\,
      I5 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_1\,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF41"
    )
        port map (
      I0 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_4_n_0\,
      I1 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(0),
      I2 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(1),
      I3 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_0\,
      I4 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_1\,
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_2_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7F7F7F7F7FFF7"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_1_in_1,
      I2 => \^empty\,
      I3 => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_6_n_0\,
      I4 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(3),
      I5 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(4),
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_4_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(1),
      I1 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(0),
      I2 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(2),
      O => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_6_n_0\
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(9),
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(14),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(8),
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(13),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(7),
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(12),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(6),
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(11),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(5),
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(10),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(4),
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(9),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(3),
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(8),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_Data_1(24),
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(7),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(2),
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(6),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(1),
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(5),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(0),
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(4),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_Data_1(28),
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(3),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_Data_1(29),
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(2),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_Data_1(30),
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(1),
      R => reset2ip_reset_int
    );
\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_Data_1(31),
      Q => \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(0),
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2Bus_Error_1,
      Q => p_1_in(0),
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2Bus_RdAck_1,
      Q => ip2bus_rdack_int,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2Bus_WrAck_1,
      Q => ip2bus_wrack_int,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_ack_delay_6,
      I1 => read_ack_delay_7,
      O => ip2Bus_RdAck_core_reg0
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_RdAck_core_reg0,
      Q => \^ip2bus_rdack_core_reg\,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_WrAck_core_reg,
      Q => \^ip2bus_wrack_core_reg_1\,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0\,
      Q => ip2Bus_WrAck_core_reg_d1,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_WrAck_core_reg0,
      Q => ip2Bus_WrAck_core_reg,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rd_ce_or_reduce_core_cmb,
      Q => read_ack_delay_1,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_ack_delay_1,
      Q => read_ack_delay_2,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_3_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_ack_delay_2,
      Q => read_ack_delay_3,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_ack_delay_3,
      Q => read_ack_delay_4,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_ack_delay_4,
      Q => read_ack_delay_5,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_6_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_ack_delay_5,
      Q => read_ack_delay_6,
      R => reset2ip_reset_int
    );
\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_7_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_ack_delay_6,
      Q => read_ack_delay_7,
      R => reset2ip_reset_int
    );
\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_look_up_logic
     port map (
      CE => CE,
      D(2) => rx_shft_reg_mode_0011(4),
      D(1) => rx_shft_reg_mode_0011(5),
      D(0) => rx_shft_reg_mode_0011(7),
      E(0) => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_17\,
      \FSM_sequential_qspi_cntrl_ps_reg[1]\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_23\,
      \FSM_sequential_qspi_cntrl_ps_reg[1]_0\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_24\,
      \IO2_T_control__3\ => \IO2_T_control__3\,
      Q(2) => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_19\,
      Q(1) => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_20\,
      Q(0) => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_21\,
      QSPI_IO1_T(2 downto 0) => qspi_cntrl_ps(2 downto 0),
      QSPI_IO1_T_0 => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_30\,
      \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10\ => \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10\,
      \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1\ => \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1\,
      \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10\ => \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10\,
      R => R_1,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_11\,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_0\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_35\,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_1\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_23\,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4]\(1) => Shift_Reg(6),
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4]\(0) => Shift_Reg(7),
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6]\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_16\,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[7]\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_15\,
      Rst_to_spi => rst_to_spi_int,
      SPISR_0_CMD_Error_int => SPISR_0_CMD_Error_int,
      SPIXfer_done_int => SPIXfer_done_int,
      \SPIXfer_done_int130_out__0\ => \SPIXfer_done_int130_out__0\,
      \SPIXfer_done_int132_out__0\ => \SPIXfer_done_int132_out__0\,
      SPIXfer_done_int_pulse => SPIXfer_done_int_pulse,
      Serial_Dout_018_in => Serial_Dout_018_in,
      dout(7) => data_from_txfifo(0),
      dout(6) => data_from_txfifo(1),
      dout(5) => data_from_txfifo(2),
      dout(4) => data_from_txfifo(3),
      dout(3) => data_from_txfifo(4),
      dout(2) => data_from_txfifo(5),
      dout(1) => data_from_txfifo(6),
      dout(0) => data_from_txfifo(7),
      empty => tx_fifo_empty,
      ext_spi_clk => ext_spi_clk,
      io0_i_sync => io0_i_sync,
      io1_i_sync => io1_i_sync,
      io2_i_sync => io2_i_sync,
      io2_o => \^io2_o\,
      io3_i_sync => io3_i_sync,
      \master_tri_state_en_control1__0\ => \master_tri_state_en_control1__0\,
      \mode_0__0\ => \mode_0__0\,
      \mode_1__3\ => \mode_1__3\,
      qspo(4) => \LOGIC_FOR_MD_12_GEN.Data_Dir_int\,
      qspo(3) => \LOGIC_FOR_MD_12_GEN.Data_Phase_int\,
      qspo(2) => Quad_Phase_int,
      qspo(1) => \LOGIC_FOR_MD_12_GEN.Addr_Bit_int\,
      qspo(0) => \LOGIC_FOR_MD_12_GEN.Addr_Phase_int\,
      \qspo_int_reg[0]\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_13\,
      \qspo_int_reg[3]\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_25\,
      \qspo_int_reg[8]\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_21\,
      \receive_Data_int1__0\ => \receive_Data_int1__0\,
      sck_d3 => sck_d3,
      \stop_clock134_out__3\ => \stop_clock134_out__3\,
      \stop_clock1__3\ => \stop_clock1__3\
    );
\LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_mode_control_logic
     port map (
      CE => CE,
      D(2) => rx_shft_reg_mode_0011(4),
      D(1) => rx_shft_reg_mode_0011(5),
      D(0) => rx_shft_reg_mode_0011(7),
      D_0 => D_0,
      E(0) => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_17\,
      \FSM_sequential_qspi_cntrl_ps_reg[0]_0\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_13\,
      \FSM_sequential_qspi_cntrl_ps_reg[1]_0\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_21\,
      \FSM_sequential_qspi_cntrl_ps_reg[2]_0\(2 downto 0) => qspi_cntrl_ps(2 downto 0),
      \IO2_T_control__3\ => \IO2_T_control__3\,
      Q(2) => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_19\,
      Q(1) => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_20\,
      Q(0) => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_21\,
      QSPI_IO0_T_0 => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_24\,
      QSPI_IO1_T_0 => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_23\,
      \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10\ => \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10\,
      \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1\ => \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1\,
      \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10\ => \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10\,
      \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_22\,
      R => R,
      \RATIO_OF_2_GENERATE.Count_reg[0]_0\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_23\,
      \RATIO_OF_2_GENERATE.Count_reg[4]_0\(0) => \RATIO_OF_2_GENERATE.Count_reg\(4),
      \RATIO_OF_2_GENERATE.Count_reg[4]_1\(0) => \FIFO_EXISTS.CLK_CROSS_I_n_21\,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_reg_0\ => \FIFO_EXISTS.TX_FIFO_II_n_15\,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_0\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_11\,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4]_0\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_16\,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[5]_0\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_15\,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6]_0\(1) => Shift_Reg(6),
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6]_0\(0) => Shift_Reg(7),
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[7]_0\(0) => \FIFO_EXISTS.TX_FIFO_II_n_16\,
      \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(7) => data_to_rx_fifo(0),
      \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(6) => data_to_rx_fifo(1),
      \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(5) => data_to_rx_fifo(2),
      \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(4) => data_to_rx_fifo(3),
      \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(3) => data_to_rx_fifo(4),
      \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(2) => data_to_rx_fifo(5),
      \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(1) => data_to_rx_fifo(6),
      \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(0) => data_to_rx_fifo(7),
      Rst_to_spi => rst_to_spi_int,
      SPIXfer_done_int => SPIXfer_done_int,
      \SPIXfer_done_int130_out__0\ => \SPIXfer_done_int130_out__0\,
      \SPIXfer_done_int132_out__0\ => \SPIXfer_done_int132_out__0\,
      SPIXfer_done_int_pulse => SPIXfer_done_int_pulse,
      Serial_Dout_018_in => Serial_Dout_018_in,
      \Shift_Reg1__0\ => \Shift_Reg1__0\,
      almost_full => almost_full_0,
      dout(6) => data_from_txfifo(0),
      dout(5) => data_from_txfifo(1),
      dout(4) => data_from_txfifo(2),
      dout(3) => data_from_txfifo(3),
      dout(2) => data_from_txfifo(4),
      dout(1) => data_from_txfifo(5),
      dout(0) => data_from_txfifo(6),
      drr_Overrun_int => drr_Overrun_int,
      empty => tx_fifo_empty,
      ext_spi_clk => ext_spi_clk,
      \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6]\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_35\,
      io0_o => io0_o,
      io0_t => io0_t,
      io1_i_sync => io1_i_sync,
      io1_o => io1_o,
      io1_t => io1_t,
      io2_o => \^io2_o\,
      io2_t => io2_t,
      io3_o => io3_o,
      io3_t => io3_t,
      \master_tri_state_en_control1__0\ => \master_tri_state_en_control1__0\,
      \mode_0__0\ => \mode_0__0\,
      \mode_1__3\ => \mode_1__3\,
      qspo(4) => \LOGIC_FOR_MD_12_GEN.Data_Dir_int\,
      qspo(3) => \LOGIC_FOR_MD_12_GEN.Data_Phase_int\,
      qspo(2) => Quad_Phase_int,
      qspo(1) => \LOGIC_FOR_MD_12_GEN.Addr_Bit_int\,
      qspo(0) => \LOGIC_FOR_MD_12_GEN.Addr_Phase_int\,
      \qspo_int_reg[4]\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_30\,
      rd_en => SPIXfer_done_rd_tx_en,
      \receive_Data_int1__0\ => \receive_Data_int1__0\,
      register_Data_slvsel_int => register_Data_slvsel_int,
      sck_d3 => sck_d3,
      sck_o => sck_o,
      sck_t => sck_t,
      scndry_out => Rx_FIFO_Empty_Synced_in_SPI_domain,
      spicr_3_cpol_to_spi_clk => spicr_3_cpol_to_spi_clk,
      spicr_4_cpha_to_spi_clk => spicr_4_cpha_to_spi_clk,
      spicr_8_tr_inhibit_to_spi_clk => spicr_8_tr_inhibit_to_spi_clk,
      spicr_bits_7_8_to_spi_clk(0 to 1) => spicr_bits_7_8_to_spi_clk(0 to 1),
      ss_o(0) => ss_o(0),
      ss_t => ss_t,
      stop_clock => stop_clock,
      \stop_clock134_out__3\ => \stop_clock134_out__3\,
      \stop_clock1__3\ => \stop_clock1__3\,
      transfer_start_d2 => transfer_start_d2,
      transfer_start_reg_0 => \FIFO_EXISTS.CLK_CROSS_I_n_12\,
      wr_en => \^spixfer_done_int\
    );
RESET_SYNC_AXI_SPI_CLK_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_sync_module
     port map (
      R => R_1,
      Rst_to_spi => rst_to_spi_int,
      ext_spi_clk => ext_spi_clk,
      reset2ip_reset_int => reset2ip_reset_int,
      spicr_5_txfifo_to_spi_clk => spicr_5_txfifo_to_spi_clk
    );
SOFT_RESET_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_soft_reset
     port map (
      \RESET_FLOPS[15].RST_FLOPS_0\ => \^reset_flops[15].rst_flops\,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      \icount_out_reg[0]\ => \^spicr_5_txfifo_rst_frm_axi_clk\,
      \icount_out_reg[0]_0\ => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_0\,
      reset_trig_reg_0 => reset_trig_reg,
      rst_reg => SOFT_RESET_I_n_2,
      s_axi_aclk => s_axi_aclk,
      sw_rst_cond => sw_rst_cond,
      wrack => wrack
    );
\STATUS_REG_MODE_12_GEN.STATUS_SLAVE_SEL_REG_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_status_slave_sel_reg
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]_0\ => \^ip2bus_wrack_core_reg_1\,
      SPISSR_frm_axi_clk => \^spissr_frm_axi_clk\,
      p_3_in => p_3_in,
      reset2ip_reset_int => reset2ip_reset_int,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(0)
    );
ip2Bus_RdAck_intr_reg_hole_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr_controller_rd_ce_or_reduce,
      Q => ip2Bus_RdAck_intr_reg_hole_d1,
      R => reset2ip_reset_int
    );
ip2Bus_RdAck_intr_reg_hole_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_RdAck_intr_reg_hole0,
      Q => ip2Bus_RdAck_intr_reg_hole,
      R => reset2ip_reset_int
    );
ip2Bus_WrAck_intr_reg_hole_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_WrAck_intr_reg_hole_d1_reg_0,
      Q => ip2Bus_WrAck_intr_reg_hole_d1,
      R => reset2ip_reset_int
    );
ip2Bus_WrAck_intr_reg_hole_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_WrAck_intr_reg_hole0,
      Q => ip2Bus_WrAck_intr_reg_hole,
      R => reset2ip_reset_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi_top is
  port (
    io2_o : out STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    ss_t : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\ : out STD_LOGIC;
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg\ : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    io0_o : out STD_LOGIC;
    io1_o : out STD_LOGIC;
    io3_o : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 14 downto 0 );
    io0_i : in STD_LOGIC;
    io1_i : in STD_LOGIC;
    io2_i : in STD_LOGIC;
    io3_i : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi_top is
  signal \CONTROL_REG_I/SPICR_data_int_reg0\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/interrupt_wrce_strb\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/intr2bus_rdack0\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/irpt_rdack\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/irpt_rdack_d1\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/irpt_wrack\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/irpt_wrack_d1\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in\ : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \INTERRUPT_CONTROL_I/p_0_in0_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in11_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in14_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in20_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in23_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in26_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in29_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in2_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in32_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in35_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in5_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in8_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in10_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in13_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in19_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in1_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in22_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in25_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in28_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in31_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in34_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in4_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in7_in\ : STD_LOGIC;
  signal IP2Bus_Data : STD_LOGIC_VECTOR ( 0 to 31 );
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_1_in\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_2_in\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_3_in\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_4_in\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_5_in\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_10\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_11\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_16\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_17\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_18\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_19\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_20\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_21\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_32\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_33\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_34\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_35\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_41\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_43\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_44\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_45\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_50\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_53\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_54\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_55\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_18\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_31\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_52\ : STD_LOGIC;
  signal \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_74\ : STD_LOGIC;
  signal Rx_FIFO_Empty : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo_d1_synced : STD_LOGIC;
  signal \SOFT_RESET_I/sw_rst_cond\ : STD_LOGIC;
  signal SPISR_0_CMD_Error_to_axi_clk : STD_LOGIC;
  signal SPISR_1_LOOP_Back_Error_int : STD_LOGIC;
  signal SPISR_2_MSB_Error_int : STD_LOGIC;
  signal SPISSR_frm_axi_clk : STD_LOGIC;
  signal Tx_FIFO_Empty_SPISR_to_axi_clk : STD_LOGIC;
  signal bus2ip_reset_ipif_inverted : STD_LOGIC;
  signal bus2ip_wrce_int : STD_LOGIC_VECTOR ( 21 downto 7 );
  signal data_from_rx_fifo : STD_LOGIC_VECTOR ( 1 to 7 );
  signal intr_controller_rd_ce_or_reduce : STD_LOGIC;
  signal intr_ip2bus_data : STD_LOGIC_VECTOR ( 0 to 20 );
  signal io0_i_sync : STD_LOGIC;
  signal io1_i_sync : STD_LOGIC;
  signal io2_i_sync : STD_LOGIC;
  signal io3_i_sync : STD_LOGIC;
  signal ip2Bus_Data_1 : STD_LOGIC_VECTOR ( 21 to 27 );
  signal ip2Bus_RdAck_core_reg : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole0 : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole_d1 : STD_LOGIC;
  signal ip2Bus_WrAck_core_reg0 : STD_LOGIC;
  signal ip2Bus_WrAck_core_reg_1 : STD_LOGIC;
  signal ip2Bus_WrAck_core_reg_d1 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole0 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1 : STD_LOGIC;
  signal ip2bus_rdack_int : STD_LOGIC;
  signal ip2bus_wrack_int : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal rd_ce_or_reduce_core_cmb : STD_LOGIC;
  signal reset2ip_reset_int : STD_LOGIC;
  signal rx_fifo_empty_i : STD_LOGIC;
  signal spicr_1_spe_frm_axi_clk : STD_LOGIC;
  signal spicr_2_mst_n_slv_frm_axi_clk : STD_LOGIC;
  signal spicr_3_cpol_frm_axi_clk : STD_LOGIC;
  signal spicr_4_cpha_frm_axi_clk : STD_LOGIC;
  signal spicr_5_txfifo_rst_frm_axi_clk : STD_LOGIC;
  signal spicr_6_rxfifo_rst_frm_axi_clk : STD_LOGIC;
  signal spicr_8_tr_inhibit_frm_axi_clk : STD_LOGIC;
  signal spisel_d1_reg_to_axi_clk : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of IO0_I_REG : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of IO0_I_REG : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of IO0_I_REG : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of IO1_I_REG : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of IO1_I_REG : label is "VCC:CE GND:R";
  attribute box_type of IO1_I_REG : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of IO2_I_REG : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of IO2_I_REG : label is "VCC:CE GND:R";
  attribute box_type of IO2_I_REG : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of IO3_I_REG : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of IO3_I_REG : label is "VCC:CE GND:R";
  attribute box_type of IO3_I_REG : label is "PRIMITIVE";
begin
IO0_I_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => io0_i,
      Q => io0_i_sync,
      R => '0'
    );
IO1_I_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => io1_i,
      Q => io1_i_sync,
      R => '0'
    );
IO2_I_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => io2_i,
      Q => io2_i_sync,
      R => '0'
    );
IO3_I_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => io3_i,
      Q => io3_i_sync,
      R => '0'
    );
\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      Bus_RNW_reg_reg => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_10\,
      Bus_RNW_reg_reg_0 => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_11\,
      Bus_RNW_reg_reg_1 => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_17\,
      Bus_RNW_reg_reg_2 => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_18\,
      Bus_RNW_reg_reg_3 => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_32\,
      Bus_RNW_reg_reg_4 => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_33\,
      Bus_RNW_reg_reg_5 => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_34\,
      Bus_RNW_reg_reg_6 => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_35\,
      Bus_RNW_reg_reg_7 => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_41\,
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_54\,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_55\,
      D(9) => intr_ip2bus_data(0),
      D(8) => intr_ip2bus_data(18),
      D(7) => intr_ip2bus_data(19),
      D(6) => intr_ip2bus_data(20),
      D(5) => ip2Bus_Data_1(21),
      D(4) => ip2Bus_Data_1(22),
      D(3) => ip2Bus_Data_1(23),
      D(2) => ip2Bus_Data_1(25),
      D(1) => ip2Bus_Data_1(26),
      D(0) => ip2Bus_Data_1(27),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_44\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_16\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_19\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_20\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_2\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_50\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3\ => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_31\,
      \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg\ => \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg\,
      \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\ => \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\,
      \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_45\,
      Q(12) => \INTERRUPT_CONTROL_I/p_0_in35_in\,
      Q(11) => \INTERRUPT_CONTROL_I/p_0_in32_in\,
      Q(10) => \INTERRUPT_CONTROL_I/p_0_in29_in\,
      Q(9) => \INTERRUPT_CONTROL_I/p_0_in26_in\,
      Q(8) => \INTERRUPT_CONTROL_I/p_0_in23_in\,
      Q(7) => \INTERRUPT_CONTROL_I/p_0_in20_in\,
      Q(6) => \INTERRUPT_CONTROL_I/p_0_in14_in\,
      Q(5) => \INTERRUPT_CONTROL_I/p_0_in11_in\,
      Q(4) => \INTERRUPT_CONTROL_I/p_0_in8_in\,
      Q(3) => \INTERRUPT_CONTROL_I/p_0_in5_in\,
      Q(2) => \INTERRUPT_CONTROL_I/p_0_in2_in\,
      Q(1) => \INTERRUPT_CONTROL_I/p_0_in0_in\,
      Q(0) => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_74\,
      SPICR_data_int_reg0 => \CONTROL_REG_I/SPICR_data_int_reg0\,
      SPISR_0_CMD_Error_to_axi_clk => SPISR_0_CMD_Error_to_axi_clk,
      SPISR_1_LOOP_Back_Error_int => SPISR_1_LOOP_Back_Error_int,
      SPISR_2_MSB_Error_int => SPISR_2_MSB_Error_int,
      \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_52\,
      SPISSR_frm_axi_clk => SPISSR_frm_axi_clk,
      Tx_FIFO_Empty_SPISR_to_axi_clk => Tx_FIFO_Empty_SPISR_to_axi_clk,
      almost_full => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_18\,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      bus2ip_wrce_int(1) => bus2ip_wrce_int(21),
      bus2ip_wrce_int(0) => bus2ip_wrce_int(7),
      dout(6) => data_from_rx_fifo(1),
      dout(5) => data_from_rx_fifo(2),
      dout(4) => data_from_rx_fifo(3),
      dout(3) => data_from_rx_fifo(4),
      dout(2) => data_from_rx_fifo(5),
      dout(1) => data_from_rx_fifo(6),
      dout(0) => data_from_rx_fifo(7),
      empty => Rx_FIFO_Empty,
      interrupt_wrce_strb => \INTERRUPT_CONTROL_I/interrupt_wrce_strb\,
      intr2bus_rdack0 => \INTERRUPT_CONTROL_I/intr2bus_rdack0\,
      intr_controller_rd_ce_or_reduce => intr_controller_rd_ce_or_reduce,
      ip2Bus_RdAck_core_reg => ip2Bus_RdAck_core_reg,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_core_reg0 => ip2Bus_WrAck_core_reg0,
      ip2Bus_WrAck_core_reg_1 => ip2Bus_WrAck_core_reg_1,
      ip2Bus_WrAck_core_reg_d1 => ip2Bus_WrAck_core_reg_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      ip2bus_rdack_int => ip2bus_rdack_int,
      ip2bus_wrack_int => ip2bus_wrack_int,
      \ip_irpt_enable_reg_reg[3]\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_21\,
      irpt_rdack => \INTERRUPT_CONTROL_I/irpt_rdack\,
      irpt_rdack_d1 => \INTERRUPT_CONTROL_I/irpt_rdack_d1\,
      irpt_wrack => \INTERRUPT_CONTROL_I/irpt_wrack\,
      irpt_wrack_d1 => \INTERRUPT_CONTROL_I/irpt_wrack_d1\,
      p_0_in(0) => \INTERRUPT_CONTROL_I/p_0_in\(31),
      p_1_in(0) => p_1_in(1),
      p_1_in10_in => \INTERRUPT_CONTROL_I/p_1_in10_in\,
      p_1_in13_in => \INTERRUPT_CONTROL_I/p_1_in13_in\,
      p_1_in19_in => \INTERRUPT_CONTROL_I/p_1_in19_in\,
      p_1_in1_in => \INTERRUPT_CONTROL_I/p_1_in1_in\,
      p_1_in22_in => \INTERRUPT_CONTROL_I/p_1_in22_in\,
      p_1_in25_in => \INTERRUPT_CONTROL_I/p_1_in25_in\,
      p_1_in28_in => \INTERRUPT_CONTROL_I/p_1_in28_in\,
      p_1_in31_in => \INTERRUPT_CONTROL_I/p_1_in31_in\,
      p_1_in34_in => \INTERRUPT_CONTROL_I/p_1_in34_in\,
      p_1_in4_in => \INTERRUPT_CONTROL_I/p_1_in4_in\,
      p_1_in7_in => \INTERRUPT_CONTROL_I/p_1_in7_in\,
      p_1_in_0 => \I_SLAVE_ATTACHMENT/I_DECODER/p_1_in\,
      p_1_in_1 => \INTERRUPT_CONTROL_I/p_1_in\,
      p_2_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_2_in\,
      p_3_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_3_in\,
      p_4_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_4_in\,
      p_5_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_5_in\,
      rd_ce_or_reduce_core_cmb => rd_ce_or_reduce_core_cmb,
      reset2ip_reset_int => reset2ip_reset_int,
      rx_fifo_empty_i => rx_fifo_empty_i,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(4 downto 0) => s_axi_araddr(4 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(4 downto 0) => s_axi_awaddr(4 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid_i_reg => s_axi_bvalid_i_reg,
      s_axi_rdata(14 downto 0) => s_axi_rdata(14 downto 0),
      \s_axi_rdata_i_reg[31]\(14) => IP2Bus_Data(0),
      \s_axi_rdata_i_reg[31]\(13) => IP2Bus_Data(18),
      \s_axi_rdata_i_reg[31]\(12) => IP2Bus_Data(19),
      \s_axi_rdata_i_reg[31]\(11) => IP2Bus_Data(20),
      \s_axi_rdata_i_reg[31]\(10) => IP2Bus_Data(21),
      \s_axi_rdata_i_reg[31]\(9) => IP2Bus_Data(22),
      \s_axi_rdata_i_reg[31]\(8) => IP2Bus_Data(23),
      \s_axi_rdata_i_reg[31]\(7) => IP2Bus_Data(24),
      \s_axi_rdata_i_reg[31]\(6) => IP2Bus_Data(25),
      \s_axi_rdata_i_reg[31]\(5) => IP2Bus_Data(26),
      \s_axi_rdata_i_reg[31]\(4) => IP2Bus_Data(27),
      \s_axi_rdata_i_reg[31]\(3) => IP2Bus_Data(28),
      \s_axi_rdata_i_reg[31]\(2) => IP2Bus_Data(29),
      \s_axi_rdata_i_reg[31]\(1) => IP2Bus_Data(30),
      \s_axi_rdata_i_reg[31]\(0) => IP2Bus_Data(31),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid_i_reg => s_axi_rvalid_i_reg,
      s_axi_wdata(6) => s_axi_wdata(14),
      s_axi_wdata(5 downto 4) => s_axi_wdata(6 downto 5),
      s_axi_wdata(3 downto 0) => s_axi_wdata(3 downto 0),
      \s_axi_wdata[31]\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_53\,
      s_axi_wdata_0_sp_1 => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_43\,
      s_axi_wvalid => s_axi_wvalid,
      scndry_out => Rx_FIFO_Full_Fifo_d1_synced,
      spicr_1_spe_frm_axi_clk => spicr_1_spe_frm_axi_clk,
      spicr_2_mst_n_slv_frm_axi_clk => spicr_2_mst_n_slv_frm_axi_clk,
      spicr_3_cpol_frm_axi_clk => spicr_3_cpol_frm_axi_clk,
      spicr_4_cpha_frm_axi_clk => spicr_4_cpha_frm_axi_clk,
      spicr_5_txfifo_rst_frm_axi_clk => spicr_5_txfifo_rst_frm_axi_clk,
      spicr_6_rxfifo_rst_frm_axi_clk => spicr_6_rxfifo_rst_frm_axi_clk,
      spicr_8_tr_inhibit_frm_axi_clk => spicr_8_tr_inhibit_frm_axi_clk,
      spisel_d1_reg_to_axi_clk => spisel_d1_reg_to_axi_clk,
      sw_rst_cond => \SOFT_RESET_I/sw_rst_cond\
    );
\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_core_interface
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_54\,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_55\,
      D(9) => intr_ip2bus_data(0),
      D(8) => intr_ip2bus_data(18),
      D(7) => intr_ip2bus_data(19),
      D(6) => intr_ip2bus_data(20),
      D(5) => ip2Bus_Data_1(21),
      D(4) => ip2Bus_Data_1(22),
      D(3) => ip2Bus_Data_1(23),
      D(2) => ip2Bus_Data_1(25),
      D(1) => ip2Bus_Data_1(26),
      D(0) => ip2Bus_Data_1(27),
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_31\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_50\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(14) => IP2Bus_Data(0),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(13) => IP2Bus_Data(18),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(12) => IP2Bus_Data(19),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(11) => IP2Bus_Data(20),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(10) => IP2Bus_Data(21),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(9) => IP2Bus_Data(22),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(8) => IP2Bus_Data(23),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(7) => IP2Bus_Data(24),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(6) => IP2Bus_Data(25),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(5) => IP2Bus_Data(26),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(4) => IP2Bus_Data(27),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(3) => IP2Bus_Data(28),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(2) => IP2Bus_Data(29),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(1) => IP2Bus_Data(30),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0\(0) => IP2Bus_Data(31),
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_19\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_1\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_17\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_2\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_33\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_3\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_32\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_4\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_34\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28]_0\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_21\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_20\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_1\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_45\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_0\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_18\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_1\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_44\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_16\,
      \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_35\,
      \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg_0\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_41\,
      \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0\ => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_11\,
      Q(12) => \INTERRUPT_CONTROL_I/p_0_in35_in\,
      Q(11) => \INTERRUPT_CONTROL_I/p_0_in32_in\,
      Q(10) => \INTERRUPT_CONTROL_I/p_0_in29_in\,
      Q(9) => \INTERRUPT_CONTROL_I/p_0_in26_in\,
      Q(8) => \INTERRUPT_CONTROL_I/p_0_in23_in\,
      Q(7) => \INTERRUPT_CONTROL_I/p_0_in20_in\,
      Q(6) => \INTERRUPT_CONTROL_I/p_0_in14_in\,
      Q(5) => \INTERRUPT_CONTROL_I/p_0_in11_in\,
      Q(4) => \INTERRUPT_CONTROL_I/p_0_in8_in\,
      Q(3) => \INTERRUPT_CONTROL_I/p_0_in5_in\,
      Q(2) => \INTERRUPT_CONTROL_I/p_0_in2_in\,
      Q(1) => \INTERRUPT_CONTROL_I/p_0_in0_in\,
      Q(0) => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_74\,
      \RESET_FLOPS[15].RST_FLOPS\ => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_52\,
      SPICR_data_int_reg0 => \CONTROL_REG_I/SPICR_data_int_reg0\,
      SPISR_0_CMD_Error_to_axi_clk => SPISR_0_CMD_Error_to_axi_clk,
      SPISR_1_LOOP_Back_Error_int => SPISR_1_LOOP_Back_Error_int,
      SPISR_2_MSB_Error_int => SPISR_2_MSB_Error_int,
      SPISSR_frm_axi_clk => SPISSR_frm_axi_clk,
      Tx_FIFO_Empty_SPISR_to_axi_clk => Tx_FIFO_Empty_SPISR_to_axi_clk,
      almost_full => \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_18\,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      bus2ip_wrce_int(1) => bus2ip_wrce_int(21),
      bus2ip_wrce_int(0) => bus2ip_wrce_int(7),
      dout(6) => data_from_rx_fifo(1),
      dout(5) => data_from_rx_fifo(2),
      dout(4) => data_from_rx_fifo(3),
      dout(3) => data_from_rx_fifo(4),
      dout(2) => data_from_rx_fifo(5),
      dout(1) => data_from_rx_fifo(6),
      dout(0) => data_from_rx_fifo(7),
      empty => Rx_FIFO_Empty,
      ext_spi_clk => ext_spi_clk,
      interrupt_wrce_strb => \INTERRUPT_CONTROL_I/interrupt_wrce_strb\,
      intr2bus_rdack0 => \INTERRUPT_CONTROL_I/intr2bus_rdack0\,
      intr_controller_rd_ce_or_reduce => intr_controller_rd_ce_or_reduce,
      io0_i_sync => io0_i_sync,
      io0_o => io0_o,
      io0_t => io0_t,
      io1_i_sync => io1_i_sync,
      io1_o => io1_o,
      io1_t => io1_t,
      io2_i_sync => io2_i_sync,
      io2_o => io2_o,
      io2_t => io2_t,
      io3_i_sync => io3_i_sync,
      io3_o => io3_o,
      io3_t => io3_t,
      ip2Bus_RdAck_core_reg => ip2Bus_RdAck_core_reg,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_core_reg0 => ip2Bus_WrAck_core_reg0,
      ip2Bus_WrAck_core_reg_1 => ip2Bus_WrAck_core_reg_1,
      ip2Bus_WrAck_core_reg_d1 => ip2Bus_WrAck_core_reg_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      ip2Bus_WrAck_intr_reg_hole_d1_reg_0 => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_10\,
      ip2bus_rdack_int => ip2bus_rdack_int,
      ip2bus_wrack_int => ip2bus_wrack_int,
      ip2intc_irpt => ip2intc_irpt,
      ipif_glbl_irpt_enable_reg_reg => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_53\,
      irpt_rdack => \INTERRUPT_CONTROL_I/irpt_rdack\,
      irpt_rdack_d1 => \INTERRUPT_CONTROL_I/irpt_rdack_d1\,
      irpt_wrack => \INTERRUPT_CONTROL_I/irpt_wrack\,
      irpt_wrack_d1 => \INTERRUPT_CONTROL_I/irpt_wrack_d1\,
      p_0_in(0) => \INTERRUPT_CONTROL_I/p_0_in\(31),
      p_1_in(0) => p_1_in(1),
      p_1_in10_in => \INTERRUPT_CONTROL_I/p_1_in10_in\,
      p_1_in13_in => \INTERRUPT_CONTROL_I/p_1_in13_in\,
      p_1_in19_in => \INTERRUPT_CONTROL_I/p_1_in19_in\,
      p_1_in1_in => \INTERRUPT_CONTROL_I/p_1_in1_in\,
      p_1_in22_in => \INTERRUPT_CONTROL_I/p_1_in22_in\,
      p_1_in25_in => \INTERRUPT_CONTROL_I/p_1_in25_in\,
      p_1_in28_in => \INTERRUPT_CONTROL_I/p_1_in28_in\,
      p_1_in31_in => \INTERRUPT_CONTROL_I/p_1_in31_in\,
      p_1_in34_in => \INTERRUPT_CONTROL_I/p_1_in34_in\,
      p_1_in4_in => \INTERRUPT_CONTROL_I/p_1_in4_in\,
      p_1_in7_in => \INTERRUPT_CONTROL_I/p_1_in7_in\,
      p_1_in_0 => \INTERRUPT_CONTROL_I/p_1_in\,
      p_1_in_1 => \I_SLAVE_ATTACHMENT/I_DECODER/p_1_in\,
      p_2_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_2_in\,
      p_3_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_3_in\,
      p_4_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_4_in\,
      p_5_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_5_in\,
      rd_ce_or_reduce_core_cmb => rd_ce_or_reduce_core_cmb,
      reset2ip_reset_int => reset2ip_reset_int,
      reset_trig_reg => \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_43\,
      rx_fifo_empty_i => rx_fifo_empty_i,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(13 downto 0) => s_axi_wdata(13 downto 0),
      sck_o => sck_o,
      sck_t => sck_t,
      scndry_out => Rx_FIFO_Full_Fifo_d1_synced,
      spicr_1_spe_frm_axi_clk => spicr_1_spe_frm_axi_clk,
      spicr_2_mst_n_slv_frm_axi_clk => spicr_2_mst_n_slv_frm_axi_clk,
      spicr_3_cpol_frm_axi_clk => spicr_3_cpol_frm_axi_clk,
      spicr_4_cpha_frm_axi_clk => spicr_4_cpha_frm_axi_clk,
      spicr_5_txfifo_rst_frm_axi_clk => spicr_5_txfifo_rst_frm_axi_clk,
      spicr_6_rxfifo_rst_frm_axi_clk => spicr_6_rxfifo_rst_frm_axi_clk,
      spicr_8_tr_inhibit_frm_axi_clk => spicr_8_tr_inhibit_frm_axi_clk,
      spisel_d1_reg_to_axi_clk => spisel_d1_reg_to_axi_clk,
      ss_o(0) => ss_o(0),
      ss_t => ss_t,
      sw_rst_cond => \SOFT_RESET_I/sw_rst_cond\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    s_axi4_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi4_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_awlock : in STD_LOGIC;
    s_axi4_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awvalid : in STD_LOGIC;
    s_axi4_awready : out STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_wlast : in STD_LOGIC;
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_wready : out STD_LOGIC;
    s_axi4_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_bvalid : out STD_LOGIC;
    s_axi4_bready : in STD_LOGIC;
    s_axi4_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_arlock : in STD_LOGIC;
    s_axi4_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_arready : out STD_LOGIC;
    s_axi4_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_rlast : out STD_LOGIC;
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_i : in STD_LOGIC;
    io2_o : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_i : in STD_LOGIC;
    io3_o : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    io0_1_i : in STD_LOGIC;
    io0_1_o : out STD_LOGIC;
    io0_1_t : out STD_LOGIC;
    io1_1_i : in STD_LOGIC;
    io1_1_o : out STD_LOGIC;
    io1_1_t : out STD_LOGIC;
    io2_1_i : in STD_LOGIC;
    io2_1_o : out STD_LOGIC;
    io2_1_t : out STD_LOGIC;
    io3_1_i : in STD_LOGIC;
    io3_1_o : out STD_LOGIC;
    io3_1_t : out STD_LOGIC;
    spisel : in STD_LOGIC;
    sck_i : in STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t : out STD_LOGIC;
    ss_1_i : in STD_LOGIC;
    ss_1_o : out STD_LOGIC;
    ss_1_t : out STD_LOGIC;
    cfgclk : out STD_LOGIC;
    cfgmclk : out STD_LOGIC;
    eos : out STD_LOGIC;
    preq : out STD_LOGIC;
    clk : in STD_LOGIC;
    gsr : in STD_LOGIC;
    gts : in STD_LOGIC;
    keyclearb : in STD_LOGIC;
    usrcclkts : in STD_LOGIC;
    usrdoneo : in STD_LOGIC;
    usrdonets : in STD_LOGIC;
    pack : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  attribute Async_Clk : integer;
  attribute Async_Clk of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 0;
  attribute C_BYTE_LEVEL_INTERRUPT_EN : integer;
  attribute C_BYTE_LEVEL_INTERRUPT_EN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 0;
  attribute C_DUAL_QUAD_MODE : integer;
  attribute C_DUAL_QUAD_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is "artix7";
  attribute C_FIFO_DEPTH : integer;
  attribute C_FIFO_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 16;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is "axi_quad_spi_inst";
  attribute C_LSB_STUP : integer;
  attribute C_LSB_STUP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 0;
  attribute C_NEW_SEQ_EN : integer;
  attribute C_NEW_SEQ_EN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 1;
  attribute C_NUM_SS_BITS : integer;
  attribute C_NUM_SS_BITS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 1;
  attribute C_NUM_TRANSFER_BITS : integer;
  attribute C_NUM_TRANSFER_BITS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 8;
  attribute C_SCK_RATIO : integer;
  attribute C_SCK_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 2;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 0;
  attribute C_SHARED_STARTUP : integer;
  attribute C_SHARED_STARTUP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 0;
  attribute C_SPI_MEMORY : integer;
  attribute C_SPI_MEMORY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 2;
  attribute C_SPI_MEM_ADDR_BITS : integer;
  attribute C_SPI_MEM_ADDR_BITS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 24;
  attribute C_SPI_MODE : integer;
  attribute C_SPI_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 2;
  attribute C_SUB_FAMILY : string;
  attribute C_SUB_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is "artix7";
  attribute C_S_AXI4_ADDR_WIDTH : integer;
  attribute C_S_AXI4_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 24;
  attribute C_S_AXI4_BASEADDR : string;
  attribute C_S_AXI4_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is "32'b11111111111111111111111111111111";
  attribute C_S_AXI4_DATA_WIDTH : integer;
  attribute C_S_AXI4_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 32;
  attribute C_S_AXI4_HIGHADDR : string;
  attribute C_S_AXI4_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is "32'b00000000000000000000000000000000";
  attribute C_S_AXI4_ID_WIDTH : integer;
  attribute C_S_AXI4_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 4;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 7;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 32;
  attribute C_TYPE_OF_AXI4_INTERFACE : integer;
  attribute C_TYPE_OF_AXI4_INTERFACE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 0;
  attribute C_UC_FAMILY : integer;
  attribute C_UC_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 0;
  attribute C_USE_STARTUP : integer;
  attribute C_USE_STARTUP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 0;
  attribute C_USE_STARTUP_EXT : integer;
  attribute C_USE_STARTUP_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 0;
  attribute C_XIP_MODE : integer;
  attribute C_XIP_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 0;
  attribute C_XIP_PERF_MODE : integer;
  attribute C_XIP_PERF_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is 1;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute initialval : string;
  attribute initialval of spisel : signal is "VCC";
begin
  cfgclk <= \<const0>\;
  cfgmclk <= \<const0>\;
  eos <= \<const0>\;
  io0_1_o <= \<const0>\;
  io0_1_t <= \<const0>\;
  io1_1_o <= \<const0>\;
  io1_1_t <= \<const0>\;
  io2_1_o <= \<const0>\;
  io2_1_t <= \<const0>\;
  io3_1_o <= \<const0>\;
  io3_1_t <= \<const0>\;
  preq <= \<const0>\;
  s_axi4_arready <= \<const0>\;
  s_axi4_awready <= \<const0>\;
  s_axi4_bid(3) <= \<const0>\;
  s_axi4_bid(2) <= \<const0>\;
  s_axi4_bid(1) <= \<const0>\;
  s_axi4_bid(0) <= \<const0>\;
  s_axi4_bresp(1) <= \<const0>\;
  s_axi4_bresp(0) <= \<const0>\;
  s_axi4_bvalid <= \<const0>\;
  s_axi4_rdata(31) <= \<const0>\;
  s_axi4_rdata(30) <= \<const0>\;
  s_axi4_rdata(29) <= \<const0>\;
  s_axi4_rdata(28) <= \<const0>\;
  s_axi4_rdata(27) <= \<const0>\;
  s_axi4_rdata(26) <= \<const0>\;
  s_axi4_rdata(25) <= \<const0>\;
  s_axi4_rdata(24) <= \<const0>\;
  s_axi4_rdata(23) <= \<const0>\;
  s_axi4_rdata(22) <= \<const0>\;
  s_axi4_rdata(21) <= \<const0>\;
  s_axi4_rdata(20) <= \<const0>\;
  s_axi4_rdata(19) <= \<const0>\;
  s_axi4_rdata(18) <= \<const0>\;
  s_axi4_rdata(17) <= \<const0>\;
  s_axi4_rdata(16) <= \<const0>\;
  s_axi4_rdata(15) <= \<const0>\;
  s_axi4_rdata(14) <= \<const0>\;
  s_axi4_rdata(13) <= \<const0>\;
  s_axi4_rdata(12) <= \<const0>\;
  s_axi4_rdata(11) <= \<const0>\;
  s_axi4_rdata(10) <= \<const0>\;
  s_axi4_rdata(9) <= \<const0>\;
  s_axi4_rdata(8) <= \<const0>\;
  s_axi4_rdata(7) <= \<const0>\;
  s_axi4_rdata(6) <= \<const0>\;
  s_axi4_rdata(5) <= \<const0>\;
  s_axi4_rdata(4) <= \<const0>\;
  s_axi4_rdata(3) <= \<const0>\;
  s_axi4_rdata(2) <= \<const0>\;
  s_axi4_rdata(1) <= \<const0>\;
  s_axi4_rdata(0) <= \<const0>\;
  s_axi4_rid(3) <= \<const0>\;
  s_axi4_rid(2) <= \<const0>\;
  s_axi4_rid(1) <= \<const0>\;
  s_axi4_rid(0) <= \<const0>\;
  s_axi4_rlast <= \<const0>\;
  s_axi4_rresp(1) <= \<const0>\;
  s_axi4_rresp(0) <= \<const0>\;
  s_axi4_rvalid <= \<const0>\;
  s_axi4_wready <= \<const0>\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(31);
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13 downto 0) <= \^s_axi_rdata\(13 downto 0);
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
  ss_1_o <= \<const0>\;
  ss_1_t <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\NO_DUAL_QUAD_MODE.QSPI_NORMAL\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi_top
     port map (
      \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg\ => s_axi_arready,
      \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg\ => \^s_axi_awready\,
      ext_spi_clk => ext_spi_clk,
      io0_i => io0_i,
      io0_o => io0_o,
      io0_t => io0_t,
      io1_i => io1_i,
      io1_o => io1_o,
      io1_t => io1_t,
      io2_i => io2_i,
      io2_o => io2_o,
      io2_t => io2_t,
      io3_i => io3_i,
      io3_o => io3_o,
      io3_t => io3_t,
      ip2intc_irpt => ip2intc_irpt,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(4 downto 0) => s_axi_araddr(6 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(4 downto 0) => s_axi_awaddr(6 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid_i_reg => s_axi_bvalid,
      s_axi_rdata(14) => \^s_axi_rdata\(31),
      s_axi_rdata(13 downto 0) => \^s_axi_rdata\(13 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid_i_reg => s_axi_rvalid,
      s_axi_wdata(14) => s_axi_wdata(31),
      s_axi_wdata(13 downto 0) => s_axi_wdata(13 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      sck_o => sck_o,
      sck_t => sck_t,
      ss_o(0) => ss_o(0),
      ss_t => ss_t
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_i : in STD_LOGIC;
    io2_o : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_i : in STD_LOGIC;
    io3_o : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    sck_i : in STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_axi_quad_spi_0_1,axi_quad_spi,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_quad_spi,Vivado 2024.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_U0_cfgclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_cfgmclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_eos_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io0_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io0_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io1_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io1_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io2_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io2_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io3_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io3_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_preq_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ss_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ss_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi4_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi4_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi4_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi4_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 30 downto 14 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute Async_Clk : integer;
  attribute Async_Clk of U0 : label is 0;
  attribute C_BYTE_LEVEL_INTERRUPT_EN : integer;
  attribute C_BYTE_LEVEL_INTERRUPT_EN of U0 : label is 0;
  attribute C_DUAL_QUAD_MODE : integer;
  attribute C_DUAL_QUAD_MODE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_FIFO_DEPTH : integer;
  attribute C_FIFO_DEPTH of U0 : label is 16;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of U0 : label is "axi_quad_spi_inst";
  attribute C_LSB_STUP : integer;
  attribute C_LSB_STUP of U0 : label is 0;
  attribute C_NEW_SEQ_EN : integer;
  attribute C_NEW_SEQ_EN of U0 : label is 1;
  attribute C_NUM_SS_BITS : integer;
  attribute C_NUM_SS_BITS of U0 : label is 1;
  attribute C_NUM_TRANSFER_BITS : integer;
  attribute C_NUM_TRANSFER_BITS of U0 : label is 8;
  attribute C_SCK_RATIO : integer;
  attribute C_SCK_RATIO of U0 : label is 2;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SHARED_STARTUP : integer;
  attribute C_SHARED_STARTUP of U0 : label is 0;
  attribute C_SPI_MEMORY : integer;
  attribute C_SPI_MEMORY of U0 : label is 2;
  attribute C_SPI_MEM_ADDR_BITS : integer;
  attribute C_SPI_MEM_ADDR_BITS of U0 : label is 24;
  attribute C_SPI_MODE : integer;
  attribute C_SPI_MODE of U0 : label is 2;
  attribute C_SUB_FAMILY : string;
  attribute C_SUB_FAMILY of U0 : label is "artix7";
  attribute C_S_AXI4_ADDR_WIDTH : integer;
  attribute C_S_AXI4_ADDR_WIDTH of U0 : label is 24;
  attribute C_S_AXI4_BASEADDR : string;
  attribute C_S_AXI4_BASEADDR of U0 : label is "32'b11111111111111111111111111111111";
  attribute C_S_AXI4_DATA_WIDTH : integer;
  attribute C_S_AXI4_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI4_HIGHADDR : string;
  attribute C_S_AXI4_HIGHADDR of U0 : label is "32'b00000000000000000000000000000000";
  attribute C_S_AXI4_ID_WIDTH : integer;
  attribute C_S_AXI4_ID_WIDTH of U0 : label is 4;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 7;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_TYPE_OF_AXI4_INTERFACE : integer;
  attribute C_TYPE_OF_AXI4_INTERFACE of U0 : label is 0;
  attribute C_UC_FAMILY : integer;
  attribute C_UC_FAMILY of U0 : label is 0;
  attribute C_USE_STARTUP : integer;
  attribute C_USE_STARTUP of U0 : label is 0;
  attribute C_USE_STARTUP_EXT : integer;
  attribute C_USE_STARTUP_EXT of U0 : label is 0;
  attribute C_XIP_MODE : integer;
  attribute C_XIP_MODE of U0 : label is 0;
  attribute C_XIP_PERF_MODE : integer;
  attribute C_XIP_PERF_MODE of U0 : label is 1;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of ext_spi_clk : signal is "xilinx.com:signal:clock:1.0 spi_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ext_spi_clk : signal is "XIL_INTERFACENAME spi_clk, ASSOCIATED_BUSIF SPI_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of io0_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO0_I";
  attribute x_interface_parameter of io0_i : signal is "XIL_INTERFACENAME SPI_0, BOARD.ASSOCIATED_PARAM QSPI_BOARD_INTERFACE";
  attribute x_interface_info of io0_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO0_O";
  attribute x_interface_info of io0_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO0_T";
  attribute x_interface_info of io1_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO1_I";
  attribute x_interface_info of io1_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO1_O";
  attribute x_interface_info of io1_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO1_T";
  attribute x_interface_info of io2_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO2_I";
  attribute x_interface_info of io2_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO2_O";
  attribute x_interface_info of io2_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO2_T";
  attribute x_interface_info of io3_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO3_I";
  attribute x_interface_info of io3_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO3_O";
  attribute x_interface_info of io3_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO3_T";
  attribute x_interface_info of ip2intc_irpt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute x_interface_parameter of ip2intc_irpt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY EDGE_RISING, PortWidth 1";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 lite_clk CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME lite_clk, ASSOCIATED_BUSIF AXI_LITE, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 lite_reset RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME lite_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE WVALID";
  attribute x_interface_info of sck_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 SCK_I";
  attribute x_interface_info of sck_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 SCK_O";
  attribute x_interface_info of sck_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 SCK_T";
  attribute x_interface_info of ss_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 SS_T";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME AXI_LITE, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE WSTRB";
  attribute x_interface_info of ss_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 SS_I";
  attribute x_interface_info of ss_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 SS_O";
begin
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(31);
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13 downto 0) <= \^s_axi_rdata\(13 downto 0);
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi
     port map (
      cfgclk => NLW_U0_cfgclk_UNCONNECTED,
      cfgmclk => NLW_U0_cfgmclk_UNCONNECTED,
      clk => '0',
      eos => NLW_U0_eos_UNCONNECTED,
      ext_spi_clk => ext_spi_clk,
      gsr => '0',
      gts => '0',
      io0_1_i => '0',
      io0_1_o => NLW_U0_io0_1_o_UNCONNECTED,
      io0_1_t => NLW_U0_io0_1_t_UNCONNECTED,
      io0_i => io0_i,
      io0_o => io0_o,
      io0_t => io0_t,
      io1_1_i => '0',
      io1_1_o => NLW_U0_io1_1_o_UNCONNECTED,
      io1_1_t => NLW_U0_io1_1_t_UNCONNECTED,
      io1_i => io1_i,
      io1_o => io1_o,
      io1_t => io1_t,
      io2_1_i => '0',
      io2_1_o => NLW_U0_io2_1_o_UNCONNECTED,
      io2_1_t => NLW_U0_io2_1_t_UNCONNECTED,
      io2_i => io2_i,
      io2_o => io2_o,
      io2_t => io2_t,
      io3_1_i => '0',
      io3_1_o => NLW_U0_io3_1_o_UNCONNECTED,
      io3_1_t => NLW_U0_io3_1_t_UNCONNECTED,
      io3_i => io3_i,
      io3_o => io3_o,
      io3_t => io3_t,
      ip2intc_irpt => ip2intc_irpt,
      keyclearb => '0',
      pack => '0',
      preq => NLW_U0_preq_UNCONNECTED,
      s_axi4_aclk => '0',
      s_axi4_araddr(23 downto 0) => B"000000000000000000000000",
      s_axi4_arburst(1 downto 0) => B"00",
      s_axi4_arcache(3 downto 0) => B"0000",
      s_axi4_aresetn => '0',
      s_axi4_arid(3 downto 0) => B"0000",
      s_axi4_arlen(7 downto 0) => B"00000000",
      s_axi4_arlock => '0',
      s_axi4_arprot(2 downto 0) => B"000",
      s_axi4_arready => NLW_U0_s_axi4_arready_UNCONNECTED,
      s_axi4_arsize(2 downto 0) => B"000",
      s_axi4_arvalid => '0',
      s_axi4_awaddr(23 downto 0) => B"000000000000000000000000",
      s_axi4_awburst(1 downto 0) => B"00",
      s_axi4_awcache(3 downto 0) => B"0000",
      s_axi4_awid(3 downto 0) => B"0000",
      s_axi4_awlen(7 downto 0) => B"00000000",
      s_axi4_awlock => '0',
      s_axi4_awprot(2 downto 0) => B"000",
      s_axi4_awready => NLW_U0_s_axi4_awready_UNCONNECTED,
      s_axi4_awsize(2 downto 0) => B"000",
      s_axi4_awvalid => '0',
      s_axi4_bid(3 downto 0) => NLW_U0_s_axi4_bid_UNCONNECTED(3 downto 0),
      s_axi4_bready => '0',
      s_axi4_bresp(1 downto 0) => NLW_U0_s_axi4_bresp_UNCONNECTED(1 downto 0),
      s_axi4_bvalid => NLW_U0_s_axi4_bvalid_UNCONNECTED,
      s_axi4_rdata(31 downto 0) => NLW_U0_s_axi4_rdata_UNCONNECTED(31 downto 0),
      s_axi4_rid(3 downto 0) => NLW_U0_s_axi4_rid_UNCONNECTED(3 downto 0),
      s_axi4_rlast => NLW_U0_s_axi4_rlast_UNCONNECTED,
      s_axi4_rready => '0',
      s_axi4_rresp(1 downto 0) => NLW_U0_s_axi4_rresp_UNCONNECTED(1 downto 0),
      s_axi4_rvalid => NLW_U0_s_axi4_rvalid_UNCONNECTED,
      s_axi4_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi4_wlast => '0',
      s_axi4_wready => NLW_U0_s_axi4_wready_UNCONNECTED,
      s_axi4_wstrb(3 downto 0) => B"0000",
      s_axi4_wvalid => '0',
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 2) => s_axi_araddr(6 downto 2),
      s_axi_araddr(1 downto 0) => B"00",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 2) => s_axi_awaddr(6 downto 2),
      s_axi_awaddr(1 downto 0) => B"00",
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1) => \^s_axi_bresp\(1),
      s_axi_bresp(0) => NLW_U0_s_axi_bresp_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31) => \^s_axi_rdata\(31),
      s_axi_rdata(30 downto 14) => NLW_U0_s_axi_rdata_UNCONNECTED(30 downto 14),
      s_axi_rdata(13 downto 0) => \^s_axi_rdata\(13 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1) => \^s_axi_rresp\(1),
      s_axi_rresp(0) => NLW_U0_s_axi_rresp_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31) => s_axi_wdata(31),
      s_axi_wdata(30 downto 14) => B"00000000000000000",
      s_axi_wdata(13 downto 0) => s_axi_wdata(13 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => s_axi_wvalid,
      sck_i => '0',
      sck_o => sck_o,
      sck_t => sck_t,
      spisel => '1',
      ss_1_i => '0',
      ss_1_o => NLW_U0_ss_1_o_UNCONNECTED,
      ss_1_t => NLW_U0_ss_1_t_UNCONNECTED,
      ss_i(0) => '0',
      ss_o(0) => ss_o(0),
      ss_t => ss_t,
      usrcclkts => '0',
      usrdoneo => '1',
      usrdonets => '0'
    );
end STRUCTURE;
