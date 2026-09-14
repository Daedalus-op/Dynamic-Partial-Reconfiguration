set_property SRC_FILE_INFO {cfile:/home/jsp/Storage/CFU_PYNQ_FIles/CFU_SRC/pynq_z2/pynq_z2/arunQAFDHGDZXVNBDXG_gae.gen/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc rfile:../arunQAFDHGDZXVNBDXG_gae.gen/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc id:1 order:EARLY scoped_inst:system_i/processing_system7_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/jsp/Storage/CFU_PYNQ_FIles/CFU_SRC/pynq_z2/pynq_z2/arunQAFDHGDZXVNBDXG_gae.gen/sources_1/bd/system/ip/system_rst_ps7_0_100M_0/system_rst_ps7_0_100M_0.xdc rfile:../arunQAFDHGDZXVNBDXG_gae.gen/sources_1/bd/system/ip/system_rst_ps7_0_100M_0/system_rst_ps7_0_100M_0.xdc id:2 order:EARLY scoped_inst:system_i/rst_ps7_0_100M/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/jsp/Storage/CFU_PYNQ_FIles/CFU_SRC/pynq_z2/pynq_z2/arunQAFDHGDZXVNBDXG_gae.gen/sources_1/bd/system/ip/system_clk_wiz_0/system_clk_wiz_0.xdc rfile:../arunQAFDHGDZXVNBDXG_gae.gen/sources_1/bd/system/ip/system_clk_wiz_0/system_clk_wiz_0.xdc id:3 order:EARLY scoped_inst:system_i/clk_wiz/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/jsp/Storage/CFU_PYNQ_FIles/CFU_SRC/pynq_z2/pynq_z2/pynq_z2.srcs/sources_1/new/tul_pynq_z2.xdc rfile:../pynq_z2.srcs/sources_1/new/tul_pynq_z2.xdc id:4} [current_design]
current_instance system_i/processing_system7_0/inst
set_property src_info {type:SCOPED_XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_1 0.38997
current_instance
current_instance system_i/rst_ps7_0_100M/U0
set_property src_info {type:SCOPED_XDC file:2 line:50 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type CDC -id {CDC-11} -user "proc_sys_reset" -desc "Timing uncritical paths" -tags "1171415" -scope -internal -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to}]]
current_instance
current_instance system_i/clk_wiz/inst
set_property src_info {type:SCOPED_XDC file:3 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.080
current_instance
set_property src_info {type:XDC file:4 line:46 export:INPUT save:INPUT read:READ} [current_design]
create_clock -name clk125 -period 10.0 [get_ports clk125]
set_property src_info {type:XDC file:4 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_clock_groups -group [get_clocks -include_generated_clocks -of [get_nets sys_clk]] -group [get_clocks -include_generated_clocks -of [get_nets soc_crg_clkin]] -asynchronous
