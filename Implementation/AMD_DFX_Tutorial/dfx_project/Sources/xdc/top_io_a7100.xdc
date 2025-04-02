####################################################################################
#///////////////////////////////////////////////////////////////////////////////
#// Copyright (c) 2005-2020 Xilinx, Inc.
#// This design is confidential and proprietary of Xilinx, Inc.
#// All Rights Reserved.
#///////////////////////////////////////////////////////////////////////////////
#//   ____  ____
#//  /   /\/   /
#// /___/  \  /   Vendor: Xilinx
#// \   \   \/    Version: 2020.1
#//  \   \        Application: Dynamic Function eXchange
#//  /   /        Filename: top_io_a7100.xdc
#// /___/   /\    Date Last Modified: 14 FEB 2020
#// \   \  / #//  \___\/\___ #// Device:
#// Design Name: led_shift_shift
#// Purpose: Dynamic Function eXchange Tutorial
#///////////////////////////////////////////////////////////////////////////////

###############################################################################
# User Time Names / User Time Groups / Time Specs
###############################################################################
create_clock -period 5.000 -name clk [get_ports gclk]

#set configuration voltage
set_property CONFIG_VOLTAGE 2.5 [current_design]
set_property CFGBVS VCCO [current_design]


#-----------------------------------
# LED LOCs
#    LED[0-3] shift
#    LED[4-7] count
#-----------------------------------
#Net shift_out[0] LOC=AB8; # GPIO_LED0_LS on Bank33 (VCC1V5 1.5 volt)
set_property PACKAGE_PIN H5 [get_ports {shift_low_out[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {shift_low_out[0]}]

# GPIO_LED1_LS on Bank33 (VCC1V5 1.5 volt)
set_property PACKAGE_PIN J5 [get_ports {shift_low_out[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {shift_low_out[1]}]

# GPIO_LED2_LS on Bank33 (VCC1V5 1.5 volt)
set_property PACKAGE_PIN T9 [get_ports {shift_low_out[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {shift_low_out[2]}]

# GPIO_LED3_LS on Bank33 (VCC1V5 1.5 volt)
set_property PACKAGE_PIN T10 [get_ports {shift_low_out[3]}]
set_property IOSTANDARD LVCMOS15 [get_ports {shift_low_out[3]}]

# GPIO_LED4_LS on Bank13 (VADJ 2.5 volt)
set_property PACKAGE_PIN G6 [get_ports {shift_high_out[3]}]
set_property IOSTANDARD LVCMOS15 [get_ports {shift_high_out[3]}]

# GPIO_LED5_LS on Bank17 (VADJ 2.5 volt)
set_property PACKAGE_PIN G3 [get_ports {shift_high_out[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {shift_high_out[2]}]

# GPIO_LED6_LS on Bank17 (VADJ 2.5 volt)
set_property PACKAGE_PIN J3 [get_ports {shift_high_out[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {shift_high_out[1]}]

# GPIO_LED7_LS on Bank18 (VADJ 2.5 volt)
set_property PACKAGE_PIN K1 [get_ports {shift_high_out[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {shift_high_out[0]}]


# For Programmable Clock Source over SMA
set_property PACKAGE_PIN E3 [get_ports gclk]
set_property IOSTANDARD LVCMOS15 [get_ports gclk]

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

