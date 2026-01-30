onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib matrix_in_memeory_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {matrix_in_memeory.udo}

run 1000ns

quit -force
