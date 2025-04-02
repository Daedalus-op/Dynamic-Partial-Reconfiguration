# WTF to DO HERE????
####################################################################################
#///////////////////////////////////////////////////////////////////////////////
#// Copyright (c) 2005-2020 Xilinx, Inc.
#// This design is confidential and proprietary of Xilinx, Inc.
#// All Rights Reserved.
#///////////////////////////////////////////////////////////////////////////////
#//   ____  ____
#//  /   /\/   /
#// /___/  \  /   Vendor: Xilinx
#// \   \   \/    Version:
#//  \   \        Application: Dynamic Function eXchange
#//  /   /        Filename: top_a7100.xdc
#// /___/   /\    Date Last Modified:
#// \   \  / #//  \___\/\___ #// Device:
#// Design Name: led_shift_count
#// Purpose: Dynamic Function eXchange Tutorial
#///////////////////////////////////////////////////////////////////////////////

###############################################################################
# User Time Names / User Time Groups / Time Specs
###############################################################################
create_clock -period 5.000 -name clk [get_ports clk]

#set configuration voltage
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

#-------------------------------------------------
# pblock_count
#            for pr instance reconfig_module_count
#-------------------------------------------------
create_pblock pblock_count
add_cells_to_pblock [get_pblocks pblock_count] [get_cells -quiet [list inst_count]]
resize_pblock [get_pblocks pblock_count] -add {SLICE_X8Y150:SLICE_X15Y199}
resize_pblock [get_pblocks pblock_count] -add {DSP48_X0Y60:DSP48_X0Y79}
resize_pblock [get_pblocks pblock_count] -add {RAMB18_X0Y60:RAMB18_X0Y79}
resize_pblock [get_pblocks pblock_count] -add {RAMB36_X0Y30:RAMB36_X0Y39}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_count]

#-------------------------------------------------
# pblock_shift
#            for pr instance reconfig_module_shift
#-------------------------------------------------
create_pblock pblock_shift
set_property RESET_AFTER_RECONFIG false [get_pblocks pblock_shift]
set_property EXCLUDE_PLACEMENT 1 [get_pblocks pblock_shift]

#-----------------------------------
# LED LOCs
#    LED[0-3] shift
#    LED[4-7] count
#-----------------------------------
#Net shift_out[0] LOC=AB8; # GPIO_LED0_LS on Bank33 (VCC1V5 1.5 volt)
set_property PACKAGE_PIN H5 [get_ports {shift_out[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {shift_out[0]}]

# GPIO_LED1_LS on Bank33 (VCC1V5 1.5 volt)
set_property PACKAGE_PIN J5 [get_ports {shift_out[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {shift_out[1]}]

# GPIO_LED2_LS on Bank33 (VCC1V5 1.5 volt)
set_property PACKAGE_PIN T9 [get_ports {shift_out[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {shift_out[2]}]

# GPIO_LED3_LS on Bank33 (VCC1V5 1.5 volt)
set_property PACKAGE_PIN T10 [get_ports {shift_out[3]}]
set_property IOSTANDARD LVCMOS15 [get_ports {shift_out[3]}]

# GPIO_LED4_LS on Bank13 (VADJ 2.5 volt)
set_property PACKAGE_PIN F6 [get_ports {count_out[3]}]
set_property IOSTANDARD LVCMOS15 [get_ports {count_out[3]}]

# GPIO_LED5_LS on Bank17 (VADJ 2.5 volt)
set_property PACKAGE_PIN J4 [get_ports {count_out[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {count_out[2]}]

# GPIO_LED6_LS on Bank17 (VADJ 2.5 volt)
set_property PACKAGE_PIN J2 [get_ports {count_out[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {count_out[1]}]

# GPIO_LED7_LS on Bank18 (VADJ 2.5 volt)
set_property PACKAGE_PIN H6 [get_ports {count_out[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {count_out[0]}]


# For Programmable Clock Source over SMA
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS15 [get_ports clk]

#-----------------------------------
# push buttons LOCs
#-----------------------------------
# Reset Button on Switch SW5 "Center Button"
# GPIO_SW_C on Bank18 (VADJ 2.5 volt)
set_property PACKAGE_PIN D9 [get_ports rst_n]
set_property IOSTANDARD LVCMOS15 [get_ports rst_n]


#-----------------------------------
# End
#-----------------------------------

create_pblock pblock_inst_shift
add_cells_to_pblock [get_pblocks pblock_inst_shift] [get_cells -quiet [list inst_shift]]
resize_pblock [get_pblocks pblock_inst_shift] -add {SLICE_X62Y100:SLICE_X67Y149}
resize_pblock [get_pblocks pblock_inst_shift] -add {RAMB18_X1Y40:RAMB18_X1Y59}
resize_pblock [get_pblocks pblock_inst_shift] -add {RAMB36_X1Y20:RAMB36_X1Y29}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_inst_shift]
