transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/axis_infrastructure_v1_1_1
vlib riviera/axis_register_slice_v1_1_33
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_33
vlib riviera/dfx_decoupler_v1_0_11
vlib riviera/xil_defaultlib

vmap axis_infrastructure_v1_1_1 riviera/axis_infrastructure_v1_1_1
vmap axis_register_slice_v1_1_33 riviera/axis_register_slice_v1_1_33
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_33 riviera/axi_register_slice_v2_1_33
vmap dfx_decoupler_v1_0_11 riviera/dfx_decoupler_v1_0_11
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work axis_infrastructure_v1_1_1  -incr -v2k5 "+incdir+../../../ipstatic/hdl" -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_33 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l dfx_decoupler_v1_0_11 -l xil_defaultlib \
"../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_33  -incr -v2k5 "+incdir+../../../ipstatic/hdl" -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_33 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l dfx_decoupler_v1_0_11 -l xil_defaultlib \
"../../../ipstatic/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../ipstatic/hdl" -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_33 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l dfx_decoupler_v1_0_11 -l xil_defaultlib \
"../../../ipstatic/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33  -incr -v2k5 "+incdir+../../../ipstatic/hdl" -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_33 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l dfx_decoupler_v1_0_11 -l xil_defaultlib \
"../../../ipstatic/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vcom -work dfx_decoupler_v1_0_11 -93  -incr \
"../../../ipstatic/hdl/dfx_decoupler_v1_0_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../pynq_z2.gen/sources_1/ip/cfu_decoupler/dfx_decoupler_cfu_decoupler.vhd" \
"../../../../pynq_z2.gen/sources_1/ip/cfu_decoupler/sim/cfu_decoupler.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

