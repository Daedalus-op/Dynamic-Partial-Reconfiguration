vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/axis_infrastructure_v1_1_1
vlib questa_lib/msim/axis_register_slice_v1_1_33
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_33
vlib questa_lib/msim/dfx_decoupler_v1_0_11
vlib questa_lib/msim/xil_defaultlib

vmap axis_infrastructure_v1_1_1 questa_lib/msim/axis_infrastructure_v1_1_1
vmap axis_register_slice_v1_1_33 questa_lib/msim/axis_register_slice_v1_1_33
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_33 questa_lib/msim/axi_register_slice_v2_1_33
vmap dfx_decoupler_v1_0_11 questa_lib/msim/dfx_decoupler_v1_0_11
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work axis_infrastructure_v1_1_1 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_33 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vcom -work dfx_decoupler_v1_0_11 -64 -93  \
"../../../ipstatic/hdl/dfx_decoupler_v1_0_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../../pynq_z2.gen/sources_1/ip/cfu_decoupler/dfx_decoupler_cfu_decoupler.vhd" \
"../../../../pynq_z2.gen/sources_1/ip/cfu_decoupler/sim/cfu_decoupler.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

