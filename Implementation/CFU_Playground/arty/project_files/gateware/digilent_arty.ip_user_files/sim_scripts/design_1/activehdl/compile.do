transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/xbip_utils_v3_0_13
vlib activehdl/axi_utils_v2_0_9
vlib activehdl/xbip_pipe_v3_0_9
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/lib_pkg_v1_0_4
vlib activehdl/lib_srl_fifo_v1_0_4
vlib activehdl/c_reg_fd_v12_0_9
vlib activehdl/xbip_dsp48_wrapper_v3_0_6
vlib activehdl/xbip_dsp48_addsub_v3_0_9
vlib activehdl/xbip_addsub_v3_0_9
vlib activehdl/c_addsub_v12_0_18
vlib activehdl/c_gate_bit_v12_0_9
vlib activehdl/xbip_counter_v3_0_9
vlib activehdl/c_counter_binary_v12_0_19
vlib activehdl/dfx_controller_v1_0_7
vlib activehdl/xil_defaultlib
vlib activehdl/proc_sys_reset_v5_0_15
vlib activehdl/dist_mem_gen_v8_0_15
vlib activehdl/fifo_generator_v13_2_10
vlib activehdl/lib_fifo_v1_0_19
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_5
vlib activehdl/axi_quad_spi_v3_2_30
vlib activehdl/generic_baseblocks_v2_1_2
vlib activehdl/axi_data_fifo_v2_1_30
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_31
vlib activehdl/axi_protocol_converter_v2_1_31

vmap xpm activehdl/xpm
vmap xbip_utils_v3_0_13 activehdl/xbip_utils_v3_0_13
vmap axi_utils_v2_0_9 activehdl/axi_utils_v2_0_9
vmap xbip_pipe_v3_0_9 activehdl/xbip_pipe_v3_0_9
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap lib_pkg_v1_0_4 activehdl/lib_pkg_v1_0_4
vmap lib_srl_fifo_v1_0_4 activehdl/lib_srl_fifo_v1_0_4
vmap c_reg_fd_v12_0_9 activehdl/c_reg_fd_v12_0_9
vmap xbip_dsp48_wrapper_v3_0_6 activehdl/xbip_dsp48_wrapper_v3_0_6
vmap xbip_dsp48_addsub_v3_0_9 activehdl/xbip_dsp48_addsub_v3_0_9
vmap xbip_addsub_v3_0_9 activehdl/xbip_addsub_v3_0_9
vmap c_addsub_v12_0_18 activehdl/c_addsub_v12_0_18
vmap c_gate_bit_v12_0_9 activehdl/c_gate_bit_v12_0_9
vmap xbip_counter_v3_0_9 activehdl/xbip_counter_v3_0_9
vmap c_counter_binary_v12_0_19 activehdl/c_counter_binary_v12_0_19
vmap dfx_controller_v1_0_7 activehdl/dfx_controller_v1_0_7
vmap xil_defaultlib activehdl/xil_defaultlib
vmap proc_sys_reset_v5_0_15 activehdl/proc_sys_reset_v5_0_15
vmap dist_mem_gen_v8_0_15 activehdl/dist_mem_gen_v8_0_15
vmap fifo_generator_v13_2_10 activehdl/fifo_generator_v13_2_10
vmap lib_fifo_v1_0_19 activehdl/lib_fifo_v1_0_19
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 activehdl/interrupt_control_v3_1_5
vmap axi_quad_spi_v3_2_30 activehdl/axi_quad_spi_v3_2_30
vmap generic_baseblocks_v2_1_2 activehdl/generic_baseblocks_v2_1_2
vmap axi_data_fifo_v2_1_30 activehdl/axi_data_fifo_v2_1_30
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_31 activehdl/axi_register_slice_v2_1_31
vmap axi_protocol_converter_v2_1_31 activehdl/axi_protocol_converter_v2_1_31

vlog -work xpm  -sv2k12 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -  \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_13 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/24e7/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_9 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/1a81/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_9 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/713b/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_4 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work c_reg_fd_v12_0_9 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/e362/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_6 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/f596/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_9 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/378b/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_9 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/cb89/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_18 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/0e04/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_9 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/605f/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_9 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/e6d2/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_19 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/c76b/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work dfx_controller_v1_0_7 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/f85e/hdl/dfx_controller_v1_0_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/design_1/ip/design_1_dfx_controller_0_0/dfx_controller_design_1_dfx_controller_0_0_table_pkg.vhd" \
"../../../bd/design_1/ip/design_1_dfx_controller_0_0/dfx_controller_design_1_dfx_controller_0_0_vsm_VS_0.vhd" \
"../../../bd/design_1/ip/design_1_dfx_controller_0_0/dfx_controller_design_1_dfx_controller_0_0_fetch.vhd" \
"../../../bd/design_1/ip/design_1_dfx_controller_0_0/dfx_controller_design_1_dfx_controller_0_0_icap_if_0.vhd" \
"../../../bd/design_1/ip/design_1_dfx_controller_0_0/dfx_controller_design_1_dfx_controller_0_0.vhd" \
"../../../bd/design_1/ip/design_1_dfx_controller_0_0/sim/design_1_dfx_controller_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_clk_wiz_1/design_1_clk_wiz_1_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1/design_1_clk_wiz_1.v" \

vcom -work proc_sys_reset_v5_0_15 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_100M_1/sim/design_1_rst_clk_wiz_100M_1.vhd" \

vlog -work dist_mem_gen_v8_0_15  -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/fa7e/simulation/dist_mem_gen_v8_0.v" \

vlog -work fifo_generator_v13_2_10  -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_19 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_30 -  \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/2538/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/design_1/ip/design_1_axi_quad_spi_0_1/sim/design_1_axi_quad_spi_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/sim/design_1.v" \

vlog -work generic_baseblocks_v2_1_2  -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_31  -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/3242" "+incdir+../../../../digilent_arty.gen/sources_1/bd/design_1/ipshared/ec67/hdl" -l xpm -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l c_reg_fd_v12_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_addsub_v3_0_9 -l c_addsub_v12_0_18 -l c_gate_bit_v12_0_9 -l xbip_counter_v3_0_9 -l c_counter_binary_v12_0_19 -l dfx_controller_v1_0_7 -l xil_defaultlib -l proc_sys_reset_v5_0_15 -l dist_mem_gen_v8_0_15 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_30 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

