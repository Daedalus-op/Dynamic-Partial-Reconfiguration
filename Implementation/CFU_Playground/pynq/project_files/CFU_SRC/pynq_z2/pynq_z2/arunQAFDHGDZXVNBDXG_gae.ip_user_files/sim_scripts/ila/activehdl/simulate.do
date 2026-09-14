transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+ila  -L xilinx_vip -L xpm -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.ila xil_defaultlib.glbl

do {ila.udo}

run

endsim

quit -force
