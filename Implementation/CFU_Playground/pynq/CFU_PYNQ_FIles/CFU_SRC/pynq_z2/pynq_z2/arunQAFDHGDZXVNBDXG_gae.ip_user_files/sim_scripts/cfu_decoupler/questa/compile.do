vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axis_infrastructure_v1_1_1
vlib questa_lib/msim/axis_register_slice_v1_1_31
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_31
vlib questa_lib/msim/dfx_decoupler_v1_0_9
vlib questa_lib/msim/xil_defaultlib

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axis_infrastructure_v1_1_1 questa_lib/msim/axis_infrastructure_v1_1_1
vmap axis_register_slice_v1_1_31 questa_lib/msim/axis_register_slice_v1_1_31
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_31 questa_lib/msim/axi_register_slice_v2_1_31
vmap dfx_decoupler_v1_0_9 questa_lib/msim/dfx_decoupler_v1_0_9
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/include" \
"/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../ipstatic/hdl" "+incdir+/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/include" \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_infrastructure_v1_1_1 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl" "+incdir+/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_31 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl" "+incdir+/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl" "+incdir+/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl" "+incdir+/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vcom -work dfx_decoupler_v1_0_9 -64 -93  \
"../../../ipstatic/hdl/dfx_decoupler_v1_0_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../../arunQAFDHGDZXVNBDXG_gae.gen/sources_1/ip/cfu_decoupler/dfx_decoupler_cfu_decoupler.vhd" \
"../../../../arunQAFDHGDZXVNBDXG_gae.gen/sources_1/ip/cfu_decoupler/sim/cfu_decoupler.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

