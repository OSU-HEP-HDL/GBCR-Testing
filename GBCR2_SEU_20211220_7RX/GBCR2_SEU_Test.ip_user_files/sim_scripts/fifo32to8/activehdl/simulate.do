transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+fifo32to8  -L xpm -L fifo_generator_v13_2_10 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.fifo32to8 xil_defaultlib.glbl

do {fifo32to8.udo}

run

endsim

quit -force
