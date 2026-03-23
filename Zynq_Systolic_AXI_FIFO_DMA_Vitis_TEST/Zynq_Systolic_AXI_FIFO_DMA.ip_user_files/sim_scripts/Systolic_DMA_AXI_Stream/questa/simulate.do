onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib Systolic_DMA_AXI_Stream_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {Systolic_DMA_AXI_Stream.udo}

run 1000ns

quit -force
