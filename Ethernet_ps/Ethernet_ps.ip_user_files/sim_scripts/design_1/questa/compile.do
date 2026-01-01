vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_22
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_22
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/proc_sys_reset_v5_0_17
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_36
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/interrupt_control_v3_1_5
vlib questa_lib/msim/axi_gpio_v2_0_37

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_22 questa_lib/msim/axi_vip_v1_1_22
vmap zynq_ultra_ps_e_vip_v1_0_22 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_22
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap proc_sys_reset_v5_0_17 questa_lib/msim/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_36 questa_lib/msim/axi_register_slice_v2_1_36
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 questa_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 questa_lib/msim/axi_gpio_v2_0_37

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

vlog -work xpm -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_22 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work proc_sys_reset_v5_0_17 -64 -93  \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_winsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_binsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_aroutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_routsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_awoutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_woutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_boutsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_arni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_rni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_awni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_wni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_bni_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_30/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_31/sim/bd_afc3_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/e44a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_32/sim/bd_afc3_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_33/sim/bd_afc3_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_34/sim/bd_afc3_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_35/sim/bd_afc3_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_36/sim/bd_afc3_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_37/sim/bd_afc3_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_38/sim/bd_afc3_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_39/sim/bd_afc3_m01e_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vcom -work smartconnect_v1_0 -64 -93  \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.sv" \

vlog -work axi_register_slice_v2_1_36 -64 -incr -mfcu  "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.sv" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -64 -93  \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37 -64 -93  \
"../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_gpio_0_1/sim/design_1_axi_gpio_0_1.vhd" \
"../../../bd/design_1/ip/design_1_rst_ps8_0_99M_6/sim/design_1_rst_ps8_0_99M_6.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_1_0/sim/design_1_axi_gpio_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/a0fe/hdl" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Ethernet_ps.gen/sources_1/bd/design_1/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

