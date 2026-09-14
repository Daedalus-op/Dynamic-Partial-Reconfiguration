################################################################################
# IO constraints
################################################################################
# clk125:0
set_property LOC H16 [get_ports {pl_clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {pl_clk}]

# usb_uart:0.tx
set_property LOC Y14 [get_ports {usb_uart_tx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_uart_tx}]

# usb_uart:0.rx
set_property LOC T11 [get_ports {usb_uart_rx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_uart_rx}]

# user_led:0
set_property LOC R14 [get_ports {user_led0}]
set_property IOSTANDARD LVCMOS33 [get_ports {user_led0}]

set_property LOC R14 [get_ports {user_led0}]
set_property IOSTANDARD LVCMOS33 [get_ports {user_led0}]

# user_led:1
set_property LOC P14 [get_ports {user_led1}]
set_property IOSTANDARD LVCMOS33 [get_ports {user_led1}]

# user_led:2
set_property LOC N16 [get_ports {user_led2}]
set_property IOSTANDARD LVCMOS33 [get_ports {user_led2}]

# user_led:3
set_property LOC M14 [get_ports {user_led3}]
set_property IOSTANDARD LVCMOS33 [get_ports {user_led3}]

#set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { reset_rtl }]; #IO_L4P_T0_35 Sch=btn[0]

################################################################################
# Design constraints
################################################################################

################################################################################
# Clock constraints
################################################################################


#create_clock -name clk125 -period 10.0 [get_ports clk125]

#set_clock_groups -group [get_clocks -include_generated_clocks -of [get_nets sys_clk]] -group [get_clocks -include_generated_clocks -of [get_nets soc_crg_clkin]] -asynchronous

################################################################################
# False path constraints
################################################################################


set_false_path -quiet -through [get_nets -hierarchical -filter {mr_ff == TRUE}]

set_false_path -quiet -to [get_pins -filter {REF_PIN_NAME == PRE} -of_objects [get_cells -hierarchical -filter {ars_ff1 == TRUE || ars_ff2 == TRUE}]]

set_max_delay 2 -quiet -from [get_pins -filter {REF_PIN_NAME == C} -of_objects [get_cells -hierarchical -filter {ars_ff1 == TRUE}]] -to [get_pins -filter {REF_PIN_NAME == D} -of_objects [get_cells -hierarchical -filter {ars_ff2 == TRUE}]]