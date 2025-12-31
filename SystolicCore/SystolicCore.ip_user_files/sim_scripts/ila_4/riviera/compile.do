transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xilinx_vip  -incr -l smartconnect_v1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -l smartconnect_v1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+../../../../SystolicCore.gen/sources_1/ip/ila_4/hdl/verilog" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+../../../../SystolicCore.gen/sources_1/ip/ila_4/hdl/verilog" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib \
"../../../../SystolicCore.gen/sources_1/ip/ila_4/sim/ila_4.v" \

vlog -work xil_defaultlib \
"glbl.v"

