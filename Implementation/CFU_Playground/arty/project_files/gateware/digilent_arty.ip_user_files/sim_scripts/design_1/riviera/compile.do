transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xbip_utils_v3_0_13
vlib riviera/axi_utils_v2_0_9
vlib riviera/xbip_pipe_v3_0_9
vlib riviera/lib_cdc_v1_0_3
vlib riviera/lib_pkg_v1_0_4
vlib riviera/lib_srl_fifo_v1_0_4
vlib riviera/c_reg_fd_v12_0_9
vlib riviera/xbip_dsp48_wrapper_v3_0_6
vlib riviera/xbip_dsp48_addsub_v3_0_9
vlib riviera/xbip_addsub_v3_0_9
vlib riviera/c_addsub_v12_0_18
vlib riviera/c_gate_bit_v12_0_9
vlib riviera/xbip_counter_v3_0_9
vlib riviera/c_counter_binary_v12_0_19
vlib riviera/dfx_controller_v1_0_7
vlib riviera/xil_defaultlib
vlib riviera/proc_sys_reset_v5_0_15
vlib riviera/dist_mem_gen_v8_0_15
vlib riviera/fifo_generator_v13_2_10
vlib riviera/lib_fifo_v1_0_19
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_quad_spi_v3_2_30
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/axi_data_fifo_v2_1_30
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_31
vlib riviera/axi_protocol_converter_v2_1_31

vmap xpm riviera/xpm
vmap xbip_utils_v3_0_13 riviera/xbip_utils_v3_0_13
vmap axi_utils_v2_0_9 riviera/axi_utils_v2_0_9
vmap xbip_pipe_v3_0_9 riviera/xbip_pipe_v3_0_9
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap lib_srl_fifo_v1_0_4 riviera/lib_srl_fifo_v1_0_4
vmap c_reg_fd_v12_0_9 riviera/c_reg_fd_v12_0_9
vmap xbip_dsp48_wrapper_v3_0_6 riviera/xbip_dsp48_wrapper_v3_0_6
vmap xbip_dsp48_addsub_v3_0_9 riviera/xbip_dsp48_addsub_v3_0_9
vmap xbip_addsub_v3_0_9 riviera/xbip_addsub_v3_0_9
vmap c_addsub_v12_0_18 riviera/c_addsub_v12_0_18
vmap c_gate_bit_v12_0_9 riviera/c_gate_bit_v12_0_9
vmap xbip_counter_v3_0_9 riviera/xbip_counter_v3_0_9
vmap c_counter_binary_v12_0_19 riviera/c_counter_binary_v12_0_19
vmap dfx_controller_v1_0_7 riviera/dfx_controller_v1_0_7
vmap xil_defaultlib riviera/xil_defaultlib
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15
vmap dist_mem_gen_v8_0_15 riviera/dist_mem_gen_v8_0_15
vmap fifo_generator_v13_2_10 riviera/fifo_generator_v13_2_10
vmap lib_fifo_v1_0_19 riviera/lib_fifo_v1_0_19
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_quad_spi_v3_2_30 riviera/axi_quad_spi_v3_2_30
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap axi_data_fifo_v2_1_30 riviera/axi_data_fifo_v2_1_30
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_31 riviera/axi_register_slice_v2_1_31
vmap axi_protocol_converter_v2_1_31 riviera/axi_protocol_converter_v2_1_31

vlog -work xpm  -incr "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_13 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/24e7/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_9 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/1a81/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_9 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/713b/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work c_reg_fd_v12_0_9 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/e362/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_6 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/f596/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_9 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/378b/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_9 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/cb89/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_18 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/0e04/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_9 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/605f/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_9 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/e6d2/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_19 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/c76b/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work dfx_controller_v1_0_7 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/f85e/hdl/dfx_controller_v1_0_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_dfx_controller_0_0/dfx_controller_design_1_dfx_controller_0_0_table_pkg.vhd" \
"../../../bd/design_1/ip/design_1_dfx_controller_0_0/dfx_controller_design_1_dfx_controller_0_0_vsm_VS_0.vhd" \
"../../../bd/design_1/ip/design_1_dfx_controller_0_0/dfx_controller_design_1_dfx_controller_0_0_fetch.vhd" \
"../../../bd/design_1/ip/design_1_dfx_controller_0_0/dfx_controller_design_1_dfx_controller_0_0_icap_if_0.vhd" \
"../../../bd/design_1/ip/design_1_dfx_controller_0_0/dfx_controller_design_1_dfx_controller_0_0.vhd" \
"../../../bd/design_1/ip/design_1_dfx_controller_0_0/sim/design_1_dfx_controller_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_clk_wiz_1/design_1_clk_wiz_1_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1/design_1_clk_wiz_1.v" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_100M_1/sim/design_1_rst_clk_wiz_100M_1.vhd" \

vlog -work dist_mem_gen_v8_0_15  -incr -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/fa7e/simulation/dist_mem_gen_v8_0.v" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_19 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_30 -93  -incr \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/2538/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_quad_spi_0_1/sim/design_1_axi_quad_spi_0_1.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/sim/design_1.v" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -incr -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -incr -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_31  -incr -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

