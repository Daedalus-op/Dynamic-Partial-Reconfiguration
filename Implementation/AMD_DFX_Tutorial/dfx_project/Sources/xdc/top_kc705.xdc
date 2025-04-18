####################################################################################
#///////////////////////////////////////////////////////////////////////////////
#// Copyright (c) 2005-2016 Xilinx, Inc.
#// This design is confidential and proprietary of Xilinx, Inc.
#// All Rights Reserved.
#///////////////////////////////////////////////////////////////////////////////
#//   ____  ____
#//  /   /\/   /
#// /___/  \  /   Vendor: Xilinx
#// \   \   \/    Version: 2020.1
#//  \   \        Application: Dynamic Function eXchange
#//  /   /        Filename: top_kc705.xdc
#// /___/   /\    Date Last Modified: 14 FEB 2020
#// \   \  /  \
#//  \___\/\___\
#// Device: KC705 board Rev 1.0
#// Design Name: led_shift_shift
#// Purpose: Dynamic Function eXchange Project Tutorial
#///////////////////////////////////////////////////////////////////////////////

###############################################################################
# User Time Names / User Time Groups / Time Specs
###############################################################################
create_clock -name clk_p -period 5 [get_ports clk_p]

#set configuration voltage
set_property CONFIG_VOLTAGE 2.5 [current_design]
set_property CFGBVS VCCO [current_design]

#-------------------------------------------------
# pblock_count 
#            for pr instance reconfig_module_count
#-------------------------------------------------
create_pblock pblock_shift_high
add_cells_to_pblock [get_pblocks pblock_shift_high]  [get_cells -quiet [list inst_shift_high]]
resize_pblock [get_pblocks pblock_shift_high] -add {SLICE_X4Y150:SLICE_X9Y199} 
resize_pblock [get_pblocks pblock_shift_high] -add {RAMB18_X0Y60:RAMB18_X0Y79} 
resize_pblock [get_pblocks pblock_shift_high] -add {RAMB36_X0Y30:RAMB36_X0Y39}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_shift_high]
set_property SNAPPING_MODE ON [get_pblocks pblock_shift_high]

#-------------------------------------------------
# pblock_shift 
#            for pr instance reconfig_module_shift
#-------------------------------------------------
create_pblock pblock_shift_low
add_cells_to_pblock [get_pblocks pblock_shift_low]  [get_cells -quiet [list inst_shift_low]]
resize_pblock [get_pblocks pblock_shift_low] -add {SLICE_X136Y50:SLICE_X145Y99}
resize_pblock [get_pblocks pblock_shift_low] -add {RAMB18_X6Y20:RAMB18_X6Y39}
resize_pblock [get_pblocks pblock_shift_low] -add {RAMB36_X6Y10:RAMB36_X6Y19}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_shift_low]
set_property SNAPPING_MODE ON [get_pblocks pblock_shift_low]

#-----------------------------------
# LED LOCs 
#    LED[0-3] shift_low
#    LED[4-7] shift_high
#-----------------------------------
# GPIO_LED0_LS on Bank33 (VCC1V5 1.5 volt)
set_property PACKAGE_PIN AB8 [get_ports shift_low_out[0]]
set_property IOSTANDARD LVCMOS15 [get_ports shift_low_out[0]]

# GPIO_LED1_LS on Bank33 (VCC1V5 1.5 volt)
set_property PACKAGE_PIN AA8 [get_ports shift_low_out[1]]
set_property IOSTANDARD LVCMOS15 [get_ports shift_low_out[1]]

# GPIO_LED2_LS on Bank33 (VCC1V5 1.5 volt)
set_property PACKAGE_PIN AC9 [get_ports shift_low_out[2]]
set_property IOSTANDARD LVCMOS15 [get_ports shift_low_out[2]]

# GPIO_LED3_LS on Bank33 (VCC1V5 1.5 volt)
set_property PACKAGE_PIN AB9 [get_ports shift_low_out[3]]
set_property IOSTANDARD LVCMOS15 [get_ports shift_low_out[3]]

# GPIO_LED4_LS on Bank13 (VADJ 2.5 volt)
set_property PACKAGE_PIN F16 [get_ports shift_high_out[3]]
set_property IOSTANDARD LVCMOS25 [get_ports shift_high_out[3]]

# GPIO_LED5_LS on Bank17 (VADJ 2.5 volt)
set_property PACKAGE_PIN E18 [get_ports shift_high_out[2]]
set_property IOSTANDARD LVCMOS25 [get_ports shift_high_out[2]]

# GPIO_LED6_LS on Bank17 (VADJ 2.5 volt)
set_property PACKAGE_PIN G19 [get_ports shift_high_out[1]]
set_property IOSTANDARD LVCMOS25 [get_ports shift_high_out[1]]

# GPIO_LED7_LS on Bank18 (VADJ 2.5 volt)
set_property PACKAGE_PIN AE26 [get_ports shift_high_out[0]]
set_property IOSTANDARD LVCMOS25 [get_ports shift_high_out[0]]


# For Programable Clock Source over SMA
set_property PACKAGE_PIN K28 [get_ports clk_p]
set_property IOSTANDARD LVDS_25 [get_ports clk_p]

set_property PACKAGE_PIN K29 [get_ports clk_n]
set_property IOSTANDARD LVDS_25 [get_ports clk_n]


#-----------------------------------
# push buttons LOCs
#-----------------------------------
# Reset Button on Switch SW5 "Center Button"
# GPIO_SW_C on Bank18 (VADJ 2.5 volt)
set_property PACKAGE_PIN G12 [get_ports rst_n]
set_property IOSTANDARD LVCMOS25 [get_ports rst_n]


#-----------------------------------
# End
#-----------------------------------
