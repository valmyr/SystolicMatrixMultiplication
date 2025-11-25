transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+dual_porte_ram  -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_12 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.dual_porte_ram xil_defaultlib.glbl

do {dual_porte_ram.udo}

run 1000ns

endsim

quit -force
