vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_22
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_22
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/axi_fifo_mm_s_v4_3_7
vlib questa_lib/msim/proc_sys_reset_v5_0_17
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_36
vlib questa_lib/msim/axi_timer_v2_0_37

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_22 questa_lib/msim/axi_vip_v1_1_22
vmap zynq_ultra_ps_e_vip_v1_0_22 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_22
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_fifo_mm_s_v4_3_7 questa_lib/msim/axi_fifo_mm_s_v4_3_7
vmap proc_sys_reset_v5_0_17 questa_lib/msim/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_36 questa_lib/msim/axi_register_slice_v2_1_36
vmap axi_timer_v2_0_37 questa_lib/msim/axi_timer_v2_0_37

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

vlog -work xpm -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_22 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_zynq_ultra_ps_e_0_1/sim/SystolicCore_zynq_ultra_ps_e_0_1_vip_wrapper.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_fifo_mm_s_v4_3_7 -64 -93  \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/1b97/hdl/axi_fifo_mm_s_v4_3_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_fifo_mm_s_0_0/sim/SystolicCore_axi_fifo_mm_s_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/sim/bd_3e58.v" \

vcom -work proc_sys_reset_v5_0_17 -64 -93  \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_1/sim/bd_3e58_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_2/sim/bd_3e58_arinsw_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_3/sim/bd_3e58_rinsw_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_4/sim/bd_3e58_awinsw_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_5/sim/bd_3e58_winsw_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_6/sim/bd_3e58_binsw_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_7/sim/bd_3e58_aroutsw_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_8/sim/bd_3e58_routsw_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_9/sim/bd_3e58_awoutsw_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_10/sim/bd_3e58_woutsw_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_11/sim/bd_3e58_boutsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_12/sim/bd_3e58_arni_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_13/sim/bd_3e58_rni_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_14/sim/bd_3e58_awni_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_15/sim/bd_3e58_wni_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_16/sim/bd_3e58_bni_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_17/sim/bd_3e58_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_18/sim/bd_3e58_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_19/sim/bd_3e58_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_20/sim/bd_3e58_s00a2s_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_21/sim/bd_3e58_sarn_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_22/sim/bd_3e58_srn_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_23/sim/bd_3e58_sawn_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_24/sim/bd_3e58_swn_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_25/sim/bd_3e58_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_26/sim/bd_3e58_m00s2a_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_27/sim/bd_3e58_m00arn_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_28/sim/bd_3e58_m00rn_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_29/sim/bd_3e58_m00awn_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_30/sim/bd_3e58_m00wn_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_31/sim/bd_3e58_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/e44a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_32/sim/bd_3e58_m00e_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_33/sim/bd_3e58_m01s2a_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_34/sim/bd_3e58_m01arn_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_35/sim/bd_3e58_m01rn_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_36/sim/bd_3e58_m01awn_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_37/sim/bd_3e58_m01wn_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_38/sim/bd_3e58_m01bn_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_39/sim/bd_3e58_m01e_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_40/sim/bd_3e58_m02s2a_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_41/sim/bd_3e58_m02arn_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_42/sim/bd_3e58_m02rn_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_43/sim/bd_3e58_m02awn_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_44/sim/bd_3e58_m02wn_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_45/sim/bd_3e58_m02bn_0.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/bd_0/ip/ip_46/sim/bd_3e58_m02e_0.sv" \

vcom -work smartconnect_v1_0 -64 -93  \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.sv" \

vlog -work axi_register_slice_v2_1_36 -64 -incr -mfcu  "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_smc_0/sim/SystolicCore_axi_smc_0.sv" \

vcom -work xil_defaultlib -64 -93  \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_rst_ps8_0_99M_0/sim/SystolicCore_rst_ps8_0_99M_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_AXI_Stream_Systolic_0_0/sim/SystolicCore_AXI_Stream_Systolic_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_fifo_mm_s_1_0/sim/SystolicCore_axi_fifo_mm_s_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_AXI_Stream_Systolic_1_0/sim/SystolicCore_AXI_Stream_Systolic_1_0.v" \

vcom -work axi_timer_v2_0_37 -64 -93  \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/05e8/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_axi_timer_0_0/sim/SystolicCore_axi_timer_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/sim/SystolicCore.v" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_onlyFPGA_0_0/sim/SystolicCore_onlyFPGA_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

