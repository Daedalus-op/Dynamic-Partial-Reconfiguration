set_property SRC_FILE_INFO {cfile:/home/xubundadu/Desktop/Capstone/Knowledge-Base/Implementation/AMD_DFX_Tutorial/led_Shift_Count_7s/Sources/xdc/top_a7100.xdc rfile:../../../../Knowledge-Base/Implementation/AMD_DFX_Tutorial/led_Shift_Count_7s/Sources/xdc/top_a7100.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:33 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_count
add_cells_to_pblock [get_pblocks pblock_count] [get_cells -quiet [list inst_count]]
resize_pblock [get_pblocks pblock_count] -add {SLICE_X8Y150:SLICE_X15Y199}
resize_pblock [get_pblocks pblock_count] -add {DSP48_X0Y60:DSP48_X0Y79}
resize_pblock [get_pblocks pblock_count] -add {RAMB18_X0Y60:RAMB18_X0Y79}
resize_pblock [get_pblocks pblock_count] -add {RAMB36_X0Y30:RAMB36_X0Y39}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_count]
set_property src_info {type:XDC file:1 line:45 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_shift
set_property RESET_AFTER_RECONFIG false [get_pblocks pblock_shift]
set_property EXCLUDE_PLACEMENT 1 [get_pblocks pblock_shift]
set_property src_info {type:XDC file:1 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H5 [get_ports {shift_out[0]}]
set_property src_info {type:XDC file:1 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN J5 [get_ports {shift_out[1]}]
set_property src_info {type:XDC file:1 line:63 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T9 [get_ports {shift_out[2]}]
set_property src_info {type:XDC file:1 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T10 [get_ports {shift_out[3]}]
set_property src_info {type:XDC file:1 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN F6 [get_ports {count_out[3]}]
set_property src_info {type:XDC file:1 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN J4 [get_ports {count_out[2]}]
set_property src_info {type:XDC file:1 line:79 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN J2 [get_ports {count_out[1]}]
set_property src_info {type:XDC file:1 line:83 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H6 [get_ports {count_out[0]}]
set_property src_info {type:XDC file:1 line:88 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E3 [get_ports clk]
set_property src_info {type:XDC file:1 line:96 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D9 [get_ports rst_n]
set_property src_info {type:XDC file:1 line:104 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_inst_shift
add_cells_to_pblock [get_pblocks pblock_inst_shift] [get_cells -quiet [list inst_shift]]
resize_pblock [get_pblocks pblock_inst_shift] -add {SLICE_X62Y100:SLICE_X67Y149}
resize_pblock [get_pblocks pblock_inst_shift] -add {RAMB18_X1Y40:RAMB18_X1Y59}
resize_pblock [get_pblocks pblock_inst_shift] -add {RAMB36_X1Y20:RAMB36_X1Y29}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_inst_shift]
