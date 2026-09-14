
#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets sys_clk]

connect_debug_port dbg_hub/clk [get_nets clk100_IBUF_BUFG]


## Quad SPI Flash
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports qspi_flash_sck_io]
set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { qspi_flash_sck_io }]; #IO_L6P_T0_FCS_B_14 Sch=qspi_cs
set_property -dict {PACKAGE_PIN L13 IOSTANDARD LVCMOS33} [get_ports qspi_flash_ss_io]
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports qspi_flash_io0_io]
set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports qspi_flash_io1_io]
set_property -dict {PACKAGE_PIN L14 IOSTANDARD LVCMOS33} [get_ports qspi_flash_io2_io]
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports qspi_flash_io3_io]

create_pblock pblock_compute
add_cells_to_pblock [get_pblocks pblock_compute] [get_cells -quiet [list arty_system/Cfu/compute]]
resize_pblock [get_pblocks pblock_compute] -add {SLICE_X38Y0:SLICE_X65Y49}
resize_pblock [get_pblocks pblock_compute] -add {DSP48_X1Y0:DSP48_X1Y19}
resize_pblock [get_pblocks pblock_compute] -add {RAMB18_X1Y0:RAMB18_X2Y19}
resize_pblock [get_pblocks pblock_compute] -add {RAMB36_X1Y0:RAMB36_X2Y9}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_compute]
set_property SNAPPING_MODE ON [get_pblocks pblock_compute]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk100_IBUF]
