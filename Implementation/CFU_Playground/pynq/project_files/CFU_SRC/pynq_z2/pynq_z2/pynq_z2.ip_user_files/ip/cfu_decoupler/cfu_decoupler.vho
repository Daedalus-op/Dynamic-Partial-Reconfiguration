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

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT cfu_decoupler
  PORT (
    s_cfu_inputs_cmd_valid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    rp_cfu_inputs_cmd_valid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_cfu_inputs_cmd_payload_function_id : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    rp_cfu_inputs_cmd_payload_function_id : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_cfu_inputs_cmd_payload_inputs_0 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    rp_cfu_inputs_cmd_payload_inputs_0 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    s_cfu_inputs_cmd_payload_inputs_1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_cfu_inputs_cmd_payload_inputs_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_cfu_inputs_rsp_ready : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_cfu_inputs_rsp_ready : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_cfu_inputs_reset : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    rp_cfu_inputs_reset : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_cfu_inputs_clk : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    rp_cfu_inputs_clk : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_cfu_output_cmd_ready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    rp_cfu_output_cmd_ready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_cfu_output_rsp_valid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    rp_cfu_output_rsp_valid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_cfu_output_rsp_payload_outputs_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_cfu_output_rsp_payload_outputs_0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_cfu_output_cfu_id : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    rp_cfu_output_cfu_id : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    decouple : IN STD_LOGIC;
    decouple_status : OUT STD_LOGIC 
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : cfu_decoupler
  PORT MAP (
    s_cfu_inputs_cmd_valid => s_cfu_inputs_cmd_valid,
    rp_cfu_inputs_cmd_valid => rp_cfu_inputs_cmd_valid,
    s_cfu_inputs_cmd_payload_function_id => s_cfu_inputs_cmd_payload_function_id,
    rp_cfu_inputs_cmd_payload_function_id => rp_cfu_inputs_cmd_payload_function_id,
    s_cfu_inputs_cmd_payload_inputs_0 => s_cfu_inputs_cmd_payload_inputs_0,
    rp_cfu_inputs_cmd_payload_inputs_0 => rp_cfu_inputs_cmd_payload_inputs_0,
    s_cfu_inputs_cmd_payload_inputs_1 => s_cfu_inputs_cmd_payload_inputs_1,
    rp_cfu_inputs_cmd_payload_inputs_1 => rp_cfu_inputs_cmd_payload_inputs_1,
    s_cfu_inputs_rsp_ready => s_cfu_inputs_rsp_ready,
    rp_cfu_inputs_rsp_ready => rp_cfu_inputs_rsp_ready,
    s_cfu_inputs_reset => s_cfu_inputs_reset,
    rp_cfu_inputs_reset => rp_cfu_inputs_reset,
    s_cfu_inputs_clk => s_cfu_inputs_clk,
    rp_cfu_inputs_clk => rp_cfu_inputs_clk,
    s_cfu_output_cmd_ready => s_cfu_output_cmd_ready,
    rp_cfu_output_cmd_ready => rp_cfu_output_cmd_ready,
    s_cfu_output_rsp_valid => s_cfu_output_rsp_valid,
    rp_cfu_output_rsp_valid => rp_cfu_output_rsp_valid,
    s_cfu_output_rsp_payload_outputs_0 => s_cfu_output_rsp_payload_outputs_0,
    rp_cfu_output_rsp_payload_outputs_0 => rp_cfu_output_rsp_payload_outputs_0,
    s_cfu_output_cfu_id => s_cfu_output_cfu_id,
    rp_cfu_output_cfu_id => rp_cfu_output_cfu_id,
    decouple => decouple,
    decouple_status => decouple_status
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file cfu_decoupler.vhd when simulating
-- the core, cfu_decoupler. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.



