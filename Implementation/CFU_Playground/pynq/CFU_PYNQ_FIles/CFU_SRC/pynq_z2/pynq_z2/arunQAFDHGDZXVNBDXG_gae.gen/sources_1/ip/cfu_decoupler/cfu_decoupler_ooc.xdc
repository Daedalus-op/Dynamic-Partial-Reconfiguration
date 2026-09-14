
# decouple_ref_clk_CLOCK contains decouple_ref_clk which is a clock with frequency 100000000 Hz and period 10.0ns
create_clock -verbose -period 10.0 -name decouple_ref_clk [get_ports decouple_ref_clk]
#set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports decouple_ref_clk]



# Processing interface cfu_inputs
#     vlnv        : undef
#     intf_mode   : slave
#     static_mode : slave
#     cdc_stages  : 6


# cfu_inputs has CDC

# cfu_inputs_ref_clk_CLOCK contains cfu_inputs_ref_clk which is a clock with frequency 100000000 Hz and period 10.0ns
create_clock  -verbose -period 10.0 -name cfu_inputs_ref_clk [get_ports cfu_inputs_ref_clk]
#     set_property HD.CLK_SRC BUFGCTRL_X0Y1 [get_ports cfu_inputs_ref_clk]
# Processing interface cfu_inputs ...done


# Processing interface cfu_output
#     vlnv        : undef
#     intf_mode   : master
#     static_mode : master
#     cdc_stages  : 6


# cfu_output has CDC

# cfu_output_ref_clk_CLOCK contains cfu_output_ref_clk which is a clock with frequency 100000000 Hz and period 10.0ns
create_clock  -verbose -period 10.0 -name cfu_output_ref_clk [get_ports cfu_output_ref_clk]
#     set_property HD.CLK_SRC BUFGCTRL_X0Y2 [get_ports cfu_output_ref_clk]
# Processing interface cfu_output ...done


# End of File


