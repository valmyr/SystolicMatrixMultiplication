vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -mfcu  -sv "+incdir+../../../../../../../../amd/2025.1/data/rsb/busdef" "+incdir+../../../../SystolicCore.gen/sources_1/ip/ila_0_1/hdl/verilog" \
"/home/xmen/amd/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/xmen/amd/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/xmen/amd/2025.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../../../amd/2025.1/data/rsb/busdef" "+incdir+../../../../SystolicCore.gen/sources_1/ip/ila_0_1/hdl/verilog" \
"../../../../SystolicCore.gen/sources_1/ip/ila_0_1/sim/ila_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

