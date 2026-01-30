transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+matrix_in_memeory  -L xil_defaultlib -L xilinx_vip -L xpm -L blk_mem_gen_v8_4_12 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.matrix_in_memeory xil_defaultlib.glbl

do {matrix_in_memeory.udo}

run 1000ns

endsim

quit -force
