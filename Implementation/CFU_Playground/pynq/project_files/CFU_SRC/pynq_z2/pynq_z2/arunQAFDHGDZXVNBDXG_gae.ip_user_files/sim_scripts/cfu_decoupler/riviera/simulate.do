transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+cfu_decoupler  -L xilinx_vip -L xpm -L axis_infrastructure_v1_1_1 -L axis_register_slice_v1_1_31 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_31 -L dfx_decoupler_v1_0_9 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.cfu_decoupler xil_defaultlib.glbl

do {cfu_decoupler.udo}

run 1000ns

endsim

quit -force
