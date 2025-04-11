-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:dfx_decoupler:1.0
-- IP Revision: 11

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY system_dfx_dfx_decoupler_0_0 IS
  PORT (
    s_read_data_DATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    rp_read_data_DATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_stored_data_DATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    rp_stored_data_DATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_write_data_DATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    rp_write_data_DATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    decouple : IN STD_LOGIC;
    decouple_status : OUT STD_LOGIC
  );
END system_dfx_dfx_decoupler_0_0;

ARCHITECTURE system_dfx_dfx_decoupler_0_0_arch OF system_dfx_dfx_decoupler_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_dfx_dfx_decoupler_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT dfx_decoupler_system_dfx_dfx_decoupler_0_0 IS
    GENERIC (
      C_XDEVICEFAMILY : STRING
    );
    PORT (
      s_read_data_DATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      rp_read_data_DATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_stored_data_DATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      rp_stored_data_DATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_write_data_DATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      rp_write_data_DATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      decouple : IN STD_LOGIC;
      decouple_status : OUT STD_LOGIC
    );
  END COMPONENT dfx_decoupler_system_dfx_dfx_decoupler_0_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF system_dfx_dfx_decoupler_0_0_arch: ARCHITECTURE IS "dfx_decoupler_system_dfx_dfx_decoupler_0_0,Vivado 2024.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF system_dfx_dfx_decoupler_0_0_arch : ARCHITECTURE IS "system_dfx_dfx_decoupler_0_0,dfx_decoupler_system_dfx_dfx_decoupler_0_0,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF system_dfx_dfx_decoupler_0_0_arch: ARCHITECTURE IS "system_dfx_dfx_decoupler_0_0,dfx_decoupler_system_dfx_dfx_decoupler_0_0,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dfx_decoupler,x_ipVersion=1.0,x_ipCoreRevision=11,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_XDEVICEFAMILY=zynq}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF rp_read_data_DATA: SIGNAL IS "xilinx.com:signal:data:1.0 rp_read_data DATA";
  ATTRIBUTE X_INTERFACE_MODE OF rp_read_data_DATA: SIGNAL IS "master rp_read_data";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_read_data_DATA: SIGNAL IS "XIL_INTERFACENAME rp_read_data, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_stored_data_DATA: SIGNAL IS "xilinx.com:signal:data:1.0 rp_stored_data DATA";
  ATTRIBUTE X_INTERFACE_MODE OF rp_stored_data_DATA: SIGNAL IS "master rp_stored_data";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_stored_data_DATA: SIGNAL IS "XIL_INTERFACENAME rp_stored_data, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_write_data_DATA: SIGNAL IS "xilinx.com:signal:data:1.0 rp_write_data DATA";
  ATTRIBUTE X_INTERFACE_MODE OF rp_write_data_DATA: SIGNAL IS "slave rp_write_data";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_write_data_DATA: SIGNAL IS "XIL_INTERFACENAME rp_write_data, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_read_data_DATA: SIGNAL IS "xilinx.com:signal:data:1.0 s_read_data DATA";
  ATTRIBUTE X_INTERFACE_MODE OF s_read_data_DATA: SIGNAL IS "slave s_read_data";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_read_data_DATA: SIGNAL IS "XIL_INTERFACENAME s_read_data, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_stored_data_DATA: SIGNAL IS "xilinx.com:signal:data:1.0 s_stored_data DATA";
  ATTRIBUTE X_INTERFACE_MODE OF s_stored_data_DATA: SIGNAL IS "slave s_stored_data";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_stored_data_DATA: SIGNAL IS "XIL_INTERFACENAME s_stored_data, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_write_data_DATA: SIGNAL IS "xilinx.com:signal:data:1.0 s_write_data DATA";
  ATTRIBUTE X_INTERFACE_MODE OF s_write_data_DATA: SIGNAL IS "master s_write_data";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_write_data_DATA: SIGNAL IS "XIL_INTERFACENAME s_write_data, MISC.CLK_REQUIRED FALSE";
BEGIN
  U0 : dfx_decoupler_system_dfx_dfx_decoupler_0_0
    GENERIC MAP (
      C_XDEVICEFAMILY => "zynq"
    )
    PORT MAP (
      s_read_data_DATA => s_read_data_DATA,
      rp_read_data_DATA => rp_read_data_DATA,
      s_stored_data_DATA => s_stored_data_DATA,
      rp_stored_data_DATA => rp_stored_data_DATA,
      s_write_data_DATA => s_write_data_DATA,
      rp_write_data_DATA => rp_write_data_DATA,
      decouple => decouple,
      decouple_status => decouple_status
    );
END system_dfx_dfx_decoupler_0_0_arch;
