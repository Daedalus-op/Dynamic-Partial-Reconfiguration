vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axis_infrastructure_v1_1_1
vlib modelsim_lib/msim/axis_register_slice_v1_1_31
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_31
vlib modelsim_lib/msim/dfx_decoupler_v1_0_9
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap axis_infrastructure_v1_1_1 modelsim_lib/msim/axis_infrastructure_v1_1_1
vmap axis_register_slice_v1_1_31 modelsim_lib/msim/axis_register_slice_v1_1_31
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_31 modelsim_lib/msim/axi_register_slice_v2_1_31
vmap dfx_decoupler_v1_0_9 modelsim_lib/msim/dfx_decoupler_v1_0_9
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -mfcu  -sv "+incdir+../../../ipstatic/hdl" \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_infrastructure_v1_1_1 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_31 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vcom -work dfx_decoupler_v1_0_9 -64 -93  \
"../../../ipstatic/hdl/dfx_decoupler_v1_0_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../../digilent_arty.gen/sources_1/ip/dfx_decoupler_0/dfx_decoupler_dfx_decoupler_0.vhd" \
"../../../../digilent_arty.gen/sources_1/ip/dfx_decoupler_0/sim/dfx_decoupler_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

