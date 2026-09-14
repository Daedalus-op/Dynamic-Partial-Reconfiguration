// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


#include "dfx_decoupler_0_sc.h"

#include "dfx_decoupler_0.h"

#include "dfx_decoupler_0_core.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
dfx_decoupler_0::dfx_decoupler_0(const sc_core::sc_module_name& nm) : dfx_decoupler_0_sc(nm), s_cfu_inputs_cmd_valid("s_cfu_inputs_cmd_valid"), rp_cfu_inputs_cmd_valid("rp_cfu_inputs_cmd_valid"), s_cfu_inputs_cmd_payload_function_id("s_cfu_inputs_cmd_payload_function_id"), rp_cfu_inputs_cmd_payload_function_id("rp_cfu_inputs_cmd_payload_function_id"), s_cfu_inputs_cmd_payload_inputs_0("s_cfu_inputs_cmd_payload_inputs_0"), rp_cfu_inputs_cmd_payload_inputs_0("rp_cfu_inputs_cmd_payload_inputs_0"), s_cfu_inputs_cmd_payload_inputs_1("s_cfu_inputs_cmd_payload_inputs_1"), rp_cfu_inputs_cmd_payload_inputs_1("rp_cfu_inputs_cmd_payload_inputs_1"), s_cfu_inputs_rsp_ready("s_cfu_inputs_rsp_ready"), rp_cfu_inputs_rsp_ready("rp_cfu_inputs_rsp_ready"), s_cfu_inputs_reset("s_cfu_inputs_reset"), rp_cfu_inputs_reset("rp_cfu_inputs_reset"), cfu_inputs_ref_clk("cfu_inputs_ref_clk"), cfu_inputs_decouple_status("cfu_inputs_decouple_status"), s_cfu_outputs_cmd_ready("s_cfu_outputs_cmd_ready"), rp_cfu_outputs_cmd_ready("rp_cfu_outputs_cmd_ready"), s_cfu_outputs_rsp_valid("s_cfu_outputs_rsp_valid"), rp_cfu_outputs_rsp_valid("rp_cfu_outputs_rsp_valid"), s_cfu_outputs_rsp_payload_outputs_0("s_cfu_outputs_rsp_payload_outputs_0"), rp_cfu_outputs_rsp_payload_outputs_0("rp_cfu_outputs_rsp_payload_outputs_0"), s_cfu_outputs_cfu_id("s_cfu_outputs_cfu_id"), rp_cfu_outputs_cfu_id("rp_cfu_outputs_cfu_id"), decouple("decouple"), decouple_status("decouple_status"), decouple_ref_clk("decouple_ref_clk")
{

  // initialize pins
  mp_impl->s_cfu_inputs_cmd_valid(s_cfu_inputs_cmd_valid);
  mp_impl->rp_cfu_inputs_cmd_valid(rp_cfu_inputs_cmd_valid);
  mp_impl->s_cfu_inputs_cmd_payload_function_id(s_cfu_inputs_cmd_payload_function_id);
  mp_impl->rp_cfu_inputs_cmd_payload_function_id(rp_cfu_inputs_cmd_payload_function_id);
  mp_impl->s_cfu_inputs_cmd_payload_inputs_0(s_cfu_inputs_cmd_payload_inputs_0);
  mp_impl->rp_cfu_inputs_cmd_payload_inputs_0(rp_cfu_inputs_cmd_payload_inputs_0);
  mp_impl->s_cfu_inputs_cmd_payload_inputs_1(s_cfu_inputs_cmd_payload_inputs_1);
  mp_impl->rp_cfu_inputs_cmd_payload_inputs_1(rp_cfu_inputs_cmd_payload_inputs_1);
  mp_impl->s_cfu_inputs_rsp_ready(s_cfu_inputs_rsp_ready);
  mp_impl->rp_cfu_inputs_rsp_ready(rp_cfu_inputs_rsp_ready);
  mp_impl->s_cfu_inputs_reset(s_cfu_inputs_reset);
  mp_impl->rp_cfu_inputs_reset(rp_cfu_inputs_reset);
  mp_impl->cfu_inputs_ref_clk(cfu_inputs_ref_clk);
  mp_impl->cfu_inputs_decouple_status(cfu_inputs_decouple_status);
  mp_impl->s_cfu_outputs_cmd_ready(s_cfu_outputs_cmd_ready);
  mp_impl->rp_cfu_outputs_cmd_ready(rp_cfu_outputs_cmd_ready);
  mp_impl->s_cfu_outputs_rsp_valid(s_cfu_outputs_rsp_valid);
  mp_impl->rp_cfu_outputs_rsp_valid(rp_cfu_outputs_rsp_valid);
  mp_impl->s_cfu_outputs_rsp_payload_outputs_0(s_cfu_outputs_rsp_payload_outputs_0);
  mp_impl->rp_cfu_outputs_rsp_payload_outputs_0(rp_cfu_outputs_rsp_payload_outputs_0);
  mp_impl->s_cfu_outputs_cfu_id(s_cfu_outputs_cfu_id);
  mp_impl->rp_cfu_outputs_cfu_id(rp_cfu_outputs_cfu_id);
  mp_impl->decouple(decouple);
  mp_impl->decouple_status(decouple_status);
  mp_impl->decouple_ref_clk(decouple_ref_clk);

}

void dfx_decoupler_0::before_end_of_elaboration()
{
}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
dfx_decoupler_0::dfx_decoupler_0(const sc_core::sc_module_name& nm) : dfx_decoupler_0_sc(nm), s_cfu_inputs_cmd_valid("s_cfu_inputs_cmd_valid"), rp_cfu_inputs_cmd_valid("rp_cfu_inputs_cmd_valid"), s_cfu_inputs_cmd_payload_function_id("s_cfu_inputs_cmd_payload_function_id"), rp_cfu_inputs_cmd_payload_function_id("rp_cfu_inputs_cmd_payload_function_id"), s_cfu_inputs_cmd_payload_inputs_0("s_cfu_inputs_cmd_payload_inputs_0"), rp_cfu_inputs_cmd_payload_inputs_0("rp_cfu_inputs_cmd_payload_inputs_0"), s_cfu_inputs_cmd_payload_inputs_1("s_cfu_inputs_cmd_payload_inputs_1"), rp_cfu_inputs_cmd_payload_inputs_1("rp_cfu_inputs_cmd_payload_inputs_1"), s_cfu_inputs_rsp_ready("s_cfu_inputs_rsp_ready"), rp_cfu_inputs_rsp_ready("rp_cfu_inputs_rsp_ready"), s_cfu_inputs_reset("s_cfu_inputs_reset"), rp_cfu_inputs_reset("rp_cfu_inputs_reset"), cfu_inputs_ref_clk("cfu_inputs_ref_clk"), cfu_inputs_decouple_status("cfu_inputs_decouple_status"), s_cfu_outputs_cmd_ready("s_cfu_outputs_cmd_ready"), rp_cfu_outputs_cmd_ready("rp_cfu_outputs_cmd_ready"), s_cfu_outputs_rsp_valid("s_cfu_outputs_rsp_valid"), rp_cfu_outputs_rsp_valid("rp_cfu_outputs_rsp_valid"), s_cfu_outputs_rsp_payload_outputs_0("s_cfu_outputs_rsp_payload_outputs_0"), rp_cfu_outputs_rsp_payload_outputs_0("rp_cfu_outputs_rsp_payload_outputs_0"), s_cfu_outputs_cfu_id("s_cfu_outputs_cfu_id"), rp_cfu_outputs_cfu_id("rp_cfu_outputs_cfu_id"), decouple("decouple"), decouple_status("decouple_status"), decouple_ref_clk("decouple_ref_clk")
{

  // initialize pins
  mp_impl->s_cfu_inputs_cmd_valid(s_cfu_inputs_cmd_valid);
  mp_impl->rp_cfu_inputs_cmd_valid(rp_cfu_inputs_cmd_valid);
  mp_impl->s_cfu_inputs_cmd_payload_function_id(s_cfu_inputs_cmd_payload_function_id);
  mp_impl->rp_cfu_inputs_cmd_payload_function_id(rp_cfu_inputs_cmd_payload_function_id);
  mp_impl->s_cfu_inputs_cmd_payload_inputs_0(s_cfu_inputs_cmd_payload_inputs_0);
  mp_impl->rp_cfu_inputs_cmd_payload_inputs_0(rp_cfu_inputs_cmd_payload_inputs_0);
  mp_impl->s_cfu_inputs_cmd_payload_inputs_1(s_cfu_inputs_cmd_payload_inputs_1);
  mp_impl->rp_cfu_inputs_cmd_payload_inputs_1(rp_cfu_inputs_cmd_payload_inputs_1);
  mp_impl->s_cfu_inputs_rsp_ready(s_cfu_inputs_rsp_ready);
  mp_impl->rp_cfu_inputs_rsp_ready(rp_cfu_inputs_rsp_ready);
  mp_impl->s_cfu_inputs_reset(s_cfu_inputs_reset);
  mp_impl->rp_cfu_inputs_reset(rp_cfu_inputs_reset);
  mp_impl->cfu_inputs_ref_clk(cfu_inputs_ref_clk);
  mp_impl->cfu_inputs_decouple_status(cfu_inputs_decouple_status);
  mp_impl->s_cfu_outputs_cmd_ready(s_cfu_outputs_cmd_ready);
  mp_impl->rp_cfu_outputs_cmd_ready(rp_cfu_outputs_cmd_ready);
  mp_impl->s_cfu_outputs_rsp_valid(s_cfu_outputs_rsp_valid);
  mp_impl->rp_cfu_outputs_rsp_valid(rp_cfu_outputs_rsp_valid);
  mp_impl->s_cfu_outputs_rsp_payload_outputs_0(s_cfu_outputs_rsp_payload_outputs_0);
  mp_impl->rp_cfu_outputs_rsp_payload_outputs_0(rp_cfu_outputs_rsp_payload_outputs_0);
  mp_impl->s_cfu_outputs_cfu_id(s_cfu_outputs_cfu_id);
  mp_impl->rp_cfu_outputs_cfu_id(rp_cfu_outputs_cfu_id);
  mp_impl->decouple(decouple);
  mp_impl->decouple_status(decouple_status);
  mp_impl->decouple_ref_clk(decouple_ref_clk);

}

void dfx_decoupler_0::before_end_of_elaboration()
{
}

#endif // XM_SYSTEMC




#ifdef RIVIERA
dfx_decoupler_0::dfx_decoupler_0(const sc_core::sc_module_name& nm) : dfx_decoupler_0_sc(nm), s_cfu_inputs_cmd_valid("s_cfu_inputs_cmd_valid"), rp_cfu_inputs_cmd_valid("rp_cfu_inputs_cmd_valid"), s_cfu_inputs_cmd_payload_function_id("s_cfu_inputs_cmd_payload_function_id"), rp_cfu_inputs_cmd_payload_function_id("rp_cfu_inputs_cmd_payload_function_id"), s_cfu_inputs_cmd_payload_inputs_0("s_cfu_inputs_cmd_payload_inputs_0"), rp_cfu_inputs_cmd_payload_inputs_0("rp_cfu_inputs_cmd_payload_inputs_0"), s_cfu_inputs_cmd_payload_inputs_1("s_cfu_inputs_cmd_payload_inputs_1"), rp_cfu_inputs_cmd_payload_inputs_1("rp_cfu_inputs_cmd_payload_inputs_1"), s_cfu_inputs_rsp_ready("s_cfu_inputs_rsp_ready"), rp_cfu_inputs_rsp_ready("rp_cfu_inputs_rsp_ready"), s_cfu_inputs_reset("s_cfu_inputs_reset"), rp_cfu_inputs_reset("rp_cfu_inputs_reset"), cfu_inputs_ref_clk("cfu_inputs_ref_clk"), cfu_inputs_decouple_status("cfu_inputs_decouple_status"), s_cfu_outputs_cmd_ready("s_cfu_outputs_cmd_ready"), rp_cfu_outputs_cmd_ready("rp_cfu_outputs_cmd_ready"), s_cfu_outputs_rsp_valid("s_cfu_outputs_rsp_valid"), rp_cfu_outputs_rsp_valid("rp_cfu_outputs_rsp_valid"), s_cfu_outputs_rsp_payload_outputs_0("s_cfu_outputs_rsp_payload_outputs_0"), rp_cfu_outputs_rsp_payload_outputs_0("rp_cfu_outputs_rsp_payload_outputs_0"), s_cfu_outputs_cfu_id("s_cfu_outputs_cfu_id"), rp_cfu_outputs_cfu_id("rp_cfu_outputs_cfu_id"), decouple("decouple"), decouple_status("decouple_status"), decouple_ref_clk("decouple_ref_clk")
{

  // initialize pins
  mp_impl->s_cfu_inputs_cmd_valid(s_cfu_inputs_cmd_valid);
  mp_impl->rp_cfu_inputs_cmd_valid(rp_cfu_inputs_cmd_valid);
  mp_impl->s_cfu_inputs_cmd_payload_function_id(s_cfu_inputs_cmd_payload_function_id);
  mp_impl->rp_cfu_inputs_cmd_payload_function_id(rp_cfu_inputs_cmd_payload_function_id);
  mp_impl->s_cfu_inputs_cmd_payload_inputs_0(s_cfu_inputs_cmd_payload_inputs_0);
  mp_impl->rp_cfu_inputs_cmd_payload_inputs_0(rp_cfu_inputs_cmd_payload_inputs_0);
  mp_impl->s_cfu_inputs_cmd_payload_inputs_1(s_cfu_inputs_cmd_payload_inputs_1);
  mp_impl->rp_cfu_inputs_cmd_payload_inputs_1(rp_cfu_inputs_cmd_payload_inputs_1);
  mp_impl->s_cfu_inputs_rsp_ready(s_cfu_inputs_rsp_ready);
  mp_impl->rp_cfu_inputs_rsp_ready(rp_cfu_inputs_rsp_ready);
  mp_impl->s_cfu_inputs_reset(s_cfu_inputs_reset);
  mp_impl->rp_cfu_inputs_reset(rp_cfu_inputs_reset);
  mp_impl->cfu_inputs_ref_clk(cfu_inputs_ref_clk);
  mp_impl->cfu_inputs_decouple_status(cfu_inputs_decouple_status);
  mp_impl->s_cfu_outputs_cmd_ready(s_cfu_outputs_cmd_ready);
  mp_impl->rp_cfu_outputs_cmd_ready(rp_cfu_outputs_cmd_ready);
  mp_impl->s_cfu_outputs_rsp_valid(s_cfu_outputs_rsp_valid);
  mp_impl->rp_cfu_outputs_rsp_valid(rp_cfu_outputs_rsp_valid);
  mp_impl->s_cfu_outputs_rsp_payload_outputs_0(s_cfu_outputs_rsp_payload_outputs_0);
  mp_impl->rp_cfu_outputs_rsp_payload_outputs_0(rp_cfu_outputs_rsp_payload_outputs_0);
  mp_impl->s_cfu_outputs_cfu_id(s_cfu_outputs_cfu_id);
  mp_impl->rp_cfu_outputs_cfu_id(rp_cfu_outputs_cfu_id);
  mp_impl->decouple(decouple);
  mp_impl->decouple_status(decouple_status);
  mp_impl->decouple_ref_clk(decouple_ref_clk);

}

void dfx_decoupler_0::before_end_of_elaboration()
{
}

#endif // RIVIERA




#ifdef VCSSYSTEMC
dfx_decoupler_0::dfx_decoupler_0(const sc_core::sc_module_name& nm) : dfx_decoupler_0_sc(nm),  s_cfu_inputs_cmd_valid("s_cfu_inputs_cmd_valid"), rp_cfu_inputs_cmd_valid("rp_cfu_inputs_cmd_valid"), s_cfu_inputs_cmd_payload_function_id("s_cfu_inputs_cmd_payload_function_id"), rp_cfu_inputs_cmd_payload_function_id("rp_cfu_inputs_cmd_payload_function_id"), s_cfu_inputs_cmd_payload_inputs_0("s_cfu_inputs_cmd_payload_inputs_0"), rp_cfu_inputs_cmd_payload_inputs_0("rp_cfu_inputs_cmd_payload_inputs_0"), s_cfu_inputs_cmd_payload_inputs_1("s_cfu_inputs_cmd_payload_inputs_1"), rp_cfu_inputs_cmd_payload_inputs_1("rp_cfu_inputs_cmd_payload_inputs_1"), s_cfu_inputs_rsp_ready("s_cfu_inputs_rsp_ready"), rp_cfu_inputs_rsp_ready("rp_cfu_inputs_rsp_ready"), s_cfu_inputs_reset("s_cfu_inputs_reset"), rp_cfu_inputs_reset("rp_cfu_inputs_reset"), cfu_inputs_ref_clk("cfu_inputs_ref_clk"), cfu_inputs_decouple_status("cfu_inputs_decouple_status"), s_cfu_outputs_cmd_ready("s_cfu_outputs_cmd_ready"), rp_cfu_outputs_cmd_ready("rp_cfu_outputs_cmd_ready"), s_cfu_outputs_rsp_valid("s_cfu_outputs_rsp_valid"), rp_cfu_outputs_rsp_valid("rp_cfu_outputs_rsp_valid"), s_cfu_outputs_rsp_payload_outputs_0("s_cfu_outputs_rsp_payload_outputs_0"), rp_cfu_outputs_rsp_payload_outputs_0("rp_cfu_outputs_rsp_payload_outputs_0"), s_cfu_outputs_cfu_id("s_cfu_outputs_cfu_id"), rp_cfu_outputs_cfu_id("rp_cfu_outputs_cfu_id"), decouple("decouple"), decouple_status("decouple_status"), decouple_ref_clk("decouple_ref_clk")
{
  // initialize pins
  mp_impl->s_cfu_inputs_cmd_valid(s_cfu_inputs_cmd_valid);
  mp_impl->rp_cfu_inputs_cmd_valid(rp_cfu_inputs_cmd_valid);
  mp_impl->s_cfu_inputs_cmd_payload_function_id(s_cfu_inputs_cmd_payload_function_id);
  mp_impl->rp_cfu_inputs_cmd_payload_function_id(rp_cfu_inputs_cmd_payload_function_id);
  mp_impl->s_cfu_inputs_cmd_payload_inputs_0(s_cfu_inputs_cmd_payload_inputs_0);
  mp_impl->rp_cfu_inputs_cmd_payload_inputs_0(rp_cfu_inputs_cmd_payload_inputs_0);
  mp_impl->s_cfu_inputs_cmd_payload_inputs_1(s_cfu_inputs_cmd_payload_inputs_1);
  mp_impl->rp_cfu_inputs_cmd_payload_inputs_1(rp_cfu_inputs_cmd_payload_inputs_1);
  mp_impl->s_cfu_inputs_rsp_ready(s_cfu_inputs_rsp_ready);
  mp_impl->rp_cfu_inputs_rsp_ready(rp_cfu_inputs_rsp_ready);
  mp_impl->s_cfu_inputs_reset(s_cfu_inputs_reset);
  mp_impl->rp_cfu_inputs_reset(rp_cfu_inputs_reset);
  mp_impl->cfu_inputs_ref_clk(cfu_inputs_ref_clk);
  mp_impl->cfu_inputs_decouple_status(cfu_inputs_decouple_status);
  mp_impl->s_cfu_outputs_cmd_ready(s_cfu_outputs_cmd_ready);
  mp_impl->rp_cfu_outputs_cmd_ready(rp_cfu_outputs_cmd_ready);
  mp_impl->s_cfu_outputs_rsp_valid(s_cfu_outputs_rsp_valid);
  mp_impl->rp_cfu_outputs_rsp_valid(rp_cfu_outputs_rsp_valid);
  mp_impl->s_cfu_outputs_rsp_payload_outputs_0(s_cfu_outputs_rsp_payload_outputs_0);
  mp_impl->rp_cfu_outputs_rsp_payload_outputs_0(rp_cfu_outputs_rsp_payload_outputs_0);
  mp_impl->s_cfu_outputs_cfu_id(s_cfu_outputs_cfu_id);
  mp_impl->rp_cfu_outputs_cfu_id(rp_cfu_outputs_cfu_id);
  mp_impl->decouple(decouple);
  mp_impl->decouple_status(decouple_status);
  mp_impl->decouple_ref_clk(decouple_ref_clk);

  // Instantiate Socket Stubs


}

void dfx_decoupler_0::before_end_of_elaboration()
{
}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
dfx_decoupler_0::dfx_decoupler_0(const sc_core::sc_module_name& nm) : dfx_decoupler_0_sc(nm),  s_cfu_inputs_cmd_valid("s_cfu_inputs_cmd_valid"), rp_cfu_inputs_cmd_valid("rp_cfu_inputs_cmd_valid"), s_cfu_inputs_cmd_payload_function_id("s_cfu_inputs_cmd_payload_function_id"), rp_cfu_inputs_cmd_payload_function_id("rp_cfu_inputs_cmd_payload_function_id"), s_cfu_inputs_cmd_payload_inputs_0("s_cfu_inputs_cmd_payload_inputs_0"), rp_cfu_inputs_cmd_payload_inputs_0("rp_cfu_inputs_cmd_payload_inputs_0"), s_cfu_inputs_cmd_payload_inputs_1("s_cfu_inputs_cmd_payload_inputs_1"), rp_cfu_inputs_cmd_payload_inputs_1("rp_cfu_inputs_cmd_payload_inputs_1"), s_cfu_inputs_rsp_ready("s_cfu_inputs_rsp_ready"), rp_cfu_inputs_rsp_ready("rp_cfu_inputs_rsp_ready"), s_cfu_inputs_reset("s_cfu_inputs_reset"), rp_cfu_inputs_reset("rp_cfu_inputs_reset"), cfu_inputs_ref_clk("cfu_inputs_ref_clk"), cfu_inputs_decouple_status("cfu_inputs_decouple_status"), s_cfu_outputs_cmd_ready("s_cfu_outputs_cmd_ready"), rp_cfu_outputs_cmd_ready("rp_cfu_outputs_cmd_ready"), s_cfu_outputs_rsp_valid("s_cfu_outputs_rsp_valid"), rp_cfu_outputs_rsp_valid("rp_cfu_outputs_rsp_valid"), s_cfu_outputs_rsp_payload_outputs_0("s_cfu_outputs_rsp_payload_outputs_0"), rp_cfu_outputs_rsp_payload_outputs_0("rp_cfu_outputs_rsp_payload_outputs_0"), s_cfu_outputs_cfu_id("s_cfu_outputs_cfu_id"), rp_cfu_outputs_cfu_id("rp_cfu_outputs_cfu_id"), decouple("decouple"), decouple_status("decouple_status"), decouple_ref_clk("decouple_ref_clk")
{
  // initialize pins
  mp_impl->s_cfu_inputs_cmd_valid(s_cfu_inputs_cmd_valid);
  mp_impl->rp_cfu_inputs_cmd_valid(rp_cfu_inputs_cmd_valid);
  mp_impl->s_cfu_inputs_cmd_payload_function_id(s_cfu_inputs_cmd_payload_function_id);
  mp_impl->rp_cfu_inputs_cmd_payload_function_id(rp_cfu_inputs_cmd_payload_function_id);
  mp_impl->s_cfu_inputs_cmd_payload_inputs_0(s_cfu_inputs_cmd_payload_inputs_0);
  mp_impl->rp_cfu_inputs_cmd_payload_inputs_0(rp_cfu_inputs_cmd_payload_inputs_0);
  mp_impl->s_cfu_inputs_cmd_payload_inputs_1(s_cfu_inputs_cmd_payload_inputs_1);
  mp_impl->rp_cfu_inputs_cmd_payload_inputs_1(rp_cfu_inputs_cmd_payload_inputs_1);
  mp_impl->s_cfu_inputs_rsp_ready(s_cfu_inputs_rsp_ready);
  mp_impl->rp_cfu_inputs_rsp_ready(rp_cfu_inputs_rsp_ready);
  mp_impl->s_cfu_inputs_reset(s_cfu_inputs_reset);
  mp_impl->rp_cfu_inputs_reset(rp_cfu_inputs_reset);
  mp_impl->cfu_inputs_ref_clk(cfu_inputs_ref_clk);
  mp_impl->cfu_inputs_decouple_status(cfu_inputs_decouple_status);
  mp_impl->s_cfu_outputs_cmd_ready(s_cfu_outputs_cmd_ready);
  mp_impl->rp_cfu_outputs_cmd_ready(rp_cfu_outputs_cmd_ready);
  mp_impl->s_cfu_outputs_rsp_valid(s_cfu_outputs_rsp_valid);
  mp_impl->rp_cfu_outputs_rsp_valid(rp_cfu_outputs_rsp_valid);
  mp_impl->s_cfu_outputs_rsp_payload_outputs_0(s_cfu_outputs_rsp_payload_outputs_0);
  mp_impl->rp_cfu_outputs_rsp_payload_outputs_0(rp_cfu_outputs_rsp_payload_outputs_0);
  mp_impl->s_cfu_outputs_cfu_id(s_cfu_outputs_cfu_id);
  mp_impl->rp_cfu_outputs_cfu_id(rp_cfu_outputs_cfu_id);
  mp_impl->decouple(decouple);
  mp_impl->decouple_status(decouple_status);
  mp_impl->decouple_ref_clk(decouple_ref_clk);

  // Instantiate Socket Stubs


}

void dfx_decoupler_0::before_end_of_elaboration()
{
}

#endif // MTI_SYSTEMC




dfx_decoupler_0::~dfx_decoupler_0()
{
}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(dfx_decoupler_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(dfx_decoupler_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(dfx_decoupler_0);
#endif

