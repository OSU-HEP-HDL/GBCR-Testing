transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+fifo_128to128_depth1k  -L xpm -L fifo_generator_v13_2_10 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.fifo_128to128_depth1k xil_defaultlib.glbl

do {fifo_128to128_depth1k.udo}

run

endsim

quit -force
