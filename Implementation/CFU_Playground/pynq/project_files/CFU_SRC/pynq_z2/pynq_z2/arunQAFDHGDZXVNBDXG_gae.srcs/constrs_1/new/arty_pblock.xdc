

create_pblock pblock_comp
add_cells_to_pblock [get_pblocks pblock_comp] [get_cells -quiet [list Cfu/comp]]
resize_pblock [get_pblocks pblock_comp] -add {SLICE_X50Y50:SLICE_X55Y99}
resize_pblock [get_pblocks pblock_comp] -add {DSP48_X1Y20:DSP48_X1Y39}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_comp]
set_property SNAPPING_MODE ON [get_pblocks pblock_comp]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets sys_clk]
