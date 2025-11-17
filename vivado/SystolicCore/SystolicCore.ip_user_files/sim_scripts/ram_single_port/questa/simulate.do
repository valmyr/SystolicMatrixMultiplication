onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib ram_single_port_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {ram_single_port.udo}

run 1000ns

quit -force
