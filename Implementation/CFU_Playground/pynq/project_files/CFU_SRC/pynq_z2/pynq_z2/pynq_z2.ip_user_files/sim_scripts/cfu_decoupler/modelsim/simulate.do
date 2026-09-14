onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xil_defaultlib -L axis_infrastructure_v1_1_1 -L axis_register_slice_v1_1_33 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_33 -L dfx_decoupler_v1_0_11 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.cfu_decoupler xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {cfu_decoupler.udo}

run 1000ns

quit -force
