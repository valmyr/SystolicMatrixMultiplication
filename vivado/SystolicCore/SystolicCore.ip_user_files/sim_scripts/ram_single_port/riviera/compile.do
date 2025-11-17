transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/blk_mem_gen_v8_4_11
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap blk_mem_gen_v8_4_11 riviera/blk_mem_gen_v8_4_11
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../../../../../../amd/2025.1/data/rsb/busdef" -l xpm -l blk_mem_gen_v8_4_11 -l xil_defaultlib \
"/home/xmen/amd/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/xmen/amd/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/home/xmen/amd/2025.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_11  -incr -v2k5 "+incdir+../../../../../../../../amd/2025.1/data/rsb/busdef" -l xpm -l blk_mem_gen_v8_4_11 -l xil_defaultlib \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../../../amd/2025.1/data/rsb/busdef" -l xpm -l blk_mem_gen_v8_4_11 -l xil_defaultlib \
"../../../../SystolicCore.gen/sources_1/ip/ram_single_port/sim/ram_single_port.v" \

vlog -work xil_defaultlib \
"glbl.v"

