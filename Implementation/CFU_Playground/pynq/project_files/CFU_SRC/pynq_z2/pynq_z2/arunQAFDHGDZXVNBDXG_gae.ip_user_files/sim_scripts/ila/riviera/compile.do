transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xilinx_vip  -incr -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 "+incdir+/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib \
"/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 "+incdir+../../../../arunQAFDHGDZXVNBDXG_gae.gen/sources_1/ip/ila/hdl/verilog" "+incdir+/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/home/jsp/Storage/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../arunQAFDHGDZXVNBDXG_gae.gen/sources_1/ip/ila/hdl/verilog" "+incdir+/home/jsp/Storage/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib \
"../../../../arunQAFDHGDZXVNBDXG_gae.gen/sources_1/ip/ila/sim/ila.v" \

vlog -work xil_defaultlib \
"glbl.v"

