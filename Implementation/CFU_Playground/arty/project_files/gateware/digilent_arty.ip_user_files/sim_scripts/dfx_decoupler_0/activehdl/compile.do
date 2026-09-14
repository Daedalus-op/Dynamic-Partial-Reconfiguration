transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/axis_infrastructure_v1_1_1
vlib activehdl/axis_register_slice_v1_1_31
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_31
vlib activehdl/dfx_decoupler_v1_0_9
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap axis_infrastructure_v1_1_1 activehdl/axis_infrastructure_v1_1_1
vmap axis_register_slice_v1_1_31 activehdl/axis_register_slice_v1_1_31
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_31 activehdl/axi_register_slice_v2_1_31
vmap dfx_decoupler_v1_0_9 activehdl/dfx_decoupler_v1_0_9
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic/hdl" -l xpm -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l dfx_decoupler_v1_0_9 -l xil_defaultlib \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -  \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_infrastructure_v1_1_1  -v2k5 "+incdir+../../../ipstatic/hdl" -l xpm -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l dfx_decoupler_v1_0_9 -l xil_defaultlib \
"../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_31  -v2k5 "+incdir+../../../ipstatic/hdl" -l xpm -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l dfx_decoupler_v1_0_9 -l xil_defaultlib \
"../../../ipstatic/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../ipstatic/hdl" -l xpm -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l dfx_decoupler_v1_0_9 -l xil_defaultlib \
"../../../ipstatic/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -v2k5 "+incdir+../../../ipstatic/hdl" -l xpm -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l dfx_decoupler_v1_0_9 -l xil_defaultlib \
"../../../ipstatic/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vcom -work dfx_decoupler_v1_0_9 -  \
"../../../ipstatic/hdl/dfx_decoupler_v1_0_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../../digilent_arty.gen/sources_1/ip/dfx_decoupler_0/dfx_decoupler_dfx_decoupler_0.vhd" \
"../../../../digilent_arty.gen/sources_1/ip/dfx_decoupler_0/sim/dfx_decoupler_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

