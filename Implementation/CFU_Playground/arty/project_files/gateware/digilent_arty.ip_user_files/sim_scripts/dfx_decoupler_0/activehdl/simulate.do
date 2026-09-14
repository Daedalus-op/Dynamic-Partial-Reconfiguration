transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+dfx_decoupler_0  -L xpm -L axis_infrastructure_v1_1_1 -L axis_register_slice_v1_1_31 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_31 -L dfx_decoupler_v1_0_9 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.dfx_decoupler_0 xil_defaultlib.glbl

do {dfx_decoupler_0.udo}

run

endsim

quit -force
