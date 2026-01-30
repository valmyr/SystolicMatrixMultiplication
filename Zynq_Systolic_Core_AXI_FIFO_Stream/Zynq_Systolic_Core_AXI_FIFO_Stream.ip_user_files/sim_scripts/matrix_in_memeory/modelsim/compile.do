vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/blk_mem_gen_v8_4_12
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap blk_mem_gen_v8_4_12 modelsim_lib/msim/blk_mem_gen_v8_4_12
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_12 -64 -incr -mfcu  "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/ip/matrix_in_memeory/sim/matrix_in_memeory.v" \

vlog -work xil_defaultlib \
"glbl.v"

