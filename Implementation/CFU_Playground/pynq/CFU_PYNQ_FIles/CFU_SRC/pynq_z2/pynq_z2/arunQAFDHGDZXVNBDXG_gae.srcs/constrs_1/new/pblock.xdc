create_pblock pblock_cfu_inst
add_cells_to_pblock [get_pblocks pblock_cfu_inst] [get_cells -quiet [list cfu_system/Cfu/cfu_inst]]
resize_pblock [get_pblocks pblock_cfu_inst] -add {SLICE_X34Y50:SLICE_X39Y99}
resize_pblock [get_pblocks pblock_cfu_inst] -add {DSP48_X2Y20:DSP48_X2Y39}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_cfu_inst]
set_property SNAPPING_MODE ON [get_pblocks pblock_cfu_inst]
