onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib fifo_128to128_depth1k_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {fifo_128to128_depth1k.udo}

run 1000ns

quit -force
