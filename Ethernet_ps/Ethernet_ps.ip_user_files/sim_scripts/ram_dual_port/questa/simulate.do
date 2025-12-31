onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib ram_dual_port_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {ram_dual_port.udo}

run 1000ns

quit -force
