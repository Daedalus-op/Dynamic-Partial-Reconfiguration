create_pblock pblock_inst_shift_high
add_cells_to_pblock [get_pblocks pblock_inst_shift_high] [get_cells -quiet [list inst_shift_high]]
resize_pblock [get_pblocks pblock_inst_shift_high] -add {SLICE_X8Y100:SLICE_X13Y149}
resize_pblock [get_pblocks pblock_inst_shift_high] -add {DSP48_X0Y40:DSP48_X0Y59}
resize_pblock [get_pblocks pblock_inst_shift_high] -add {RAMB18_X0Y40:RAMB18_X0Y59}
resize_pblock [get_pblocks pblock_inst_shift_high] -add {RAMB36_X0Y20:RAMB36_X0Y29}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_inst_shift_high]
create_pblock pblock_inst_shift_low
add_cells_to_pblock [get_pblocks pblock_inst_shift_low] [get_cells -quiet [list inst_shift_low]]
resize_pblock [get_pblocks pblock_inst_shift_low] -add {SLICE_X58Y50:SLICE_X63Y99}
resize_pblock [get_pblocks pblock_inst_shift_low] -add {DSP48_X1Y20:DSP48_X1Y39}
resize_pblock [get_pblocks pblock_inst_shift_low] -add {RAMB18_X1Y20:RAMB18_X1Y39}
resize_pblock [get_pblocks pblock_inst_shift_low] -add {RAMB36_X1Y10:RAMB36_X1Y19}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_inst_shift_low]
