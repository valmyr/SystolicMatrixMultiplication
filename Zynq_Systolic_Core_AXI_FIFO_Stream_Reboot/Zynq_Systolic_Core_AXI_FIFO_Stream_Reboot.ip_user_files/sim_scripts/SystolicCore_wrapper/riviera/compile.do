transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_22
vlib riviera/zynq_ultra_ps_e_vip_v1_0_22
vlib riviera/xil_defaultlib
vlib riviera/proc_sys_reset_v5_0_17
vlib riviera/smartconnect_v1_0
vlib riviera/axi_register_slice_v2_1_36
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/axi_fifo_mm_s_v4_3_7

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_22 riviera/axi_vip_v1_1_22
vmap zynq_ultra_ps_e_vip_v1_0_22 riviera/zynq_ultra_ps_e_vip_v1_0_22
vmap xil_defaultlib riviera/xil_defaultlib
vmap proc_sys_reset_v5_0_17 riviera/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_register_slice_v2_1_36 riviera/axi_register_slice_v2_1_36
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap axi_fifo_mm_s_v4_3_7 riviera/axi_fifo_mm_s_v4_3_7

vlog -work xilinx_vip  -incr "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/xmen/Music/2025.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/home/xmen/Music/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_22  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_zynq_ultra_ps_e_0_0/sim/SystolicCore_wrapper_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/sim/bd_76f3.v" \

vcom -work proc_sys_reset_v5_0_17 -93  -incr \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_1/sim/bd_76f3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_2/sim/bd_76f3_arinsw_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_3/sim/bd_76f3_rinsw_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_4/sim/bd_76f3_awinsw_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_5/sim/bd_76f3_winsw_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_6/sim/bd_76f3_binsw_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_7/sim/bd_76f3_aroutsw_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_8/sim/bd_76f3_routsw_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_9/sim/bd_76f3_awoutsw_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_10/sim/bd_76f3_woutsw_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_11/sim/bd_76f3_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_12/sim/bd_76f3_arni_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_13/sim/bd_76f3_rni_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_14/sim/bd_76f3_awni_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_15/sim/bd_76f3_wni_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_16/sim/bd_76f3_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_17/sim/bd_76f3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_18/sim/bd_76f3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_19/sim/bd_76f3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_20/sim/bd_76f3_s00a2s_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_21/sim/bd_76f3_sarn_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_22/sim/bd_76f3_srn_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_23/sim/bd_76f3_sawn_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_24/sim/bd_76f3_swn_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_25/sim/bd_76f3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_26/sim/bd_76f3_m00s2a_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_27/sim/bd_76f3_m00arn_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_28/sim/bd_76f3_m00rn_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_29/sim/bd_76f3_m00awn_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_30/sim/bd_76f3_m00wn_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_31/sim/bd_76f3_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/e44a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_32/sim/bd_76f3_m00e_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_33/sim/bd_76f3_m01s2a_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_34/sim/bd_76f3_m01arn_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_35/sim/bd_76f3_m01rn_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_36/sim/bd_76f3_m01awn_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_37/sim/bd_76f3_m01wn_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_38/sim/bd_76f3_m01bn_0.sv" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/bd_0/ip/ip_39/sim/bd_76f3_m01e_0.sv" \

vcom -work smartconnect_v1_0 -93  -incr \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.sv" \

vlog -work axi_register_slice_v2_1_36  -incr -v2k5 "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_smc_0/sim/SystolicCore_wrapper_axi_smc_0.sv" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_rst_ps8_0_99M_0/sim/SystolicCore_wrapper_rst_ps8_0_99M_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_fifo_mm_s_v4_3_7 -93  -incr \
"../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/1b97/hdl/axi_fifo_mm_s_v4_3_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_fifo_mm_s_1_0/sim/SystolicCore_wrapper_axi_fifo_mm_s_1_0.vhd" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_axi_fifo_mm_s_2_0/sim/SystolicCore_wrapper_axi_fifo_mm_s_2_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/ec67/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/a0fe/hdl" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.gen/sources_1/bd/SystolicCore_wrapper/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../Music/2025.2/data/rsb/busdef" "+incdir+/home/xmen/Music/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l zynq_ultra_ps_e_vip_v1_0_22 -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_36 -l axi_lite_ipif_v3_0_4 -l axi_fifo_mm_s_v4_3_7 \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_AXI_Stream_Systolic_1_0/sim/SystolicCore_wrapper_AXI_Stream_Systolic_1_0.v" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_AXI_Stream_Systolic_2_0/sim/SystolicCore_wrapper_AXI_Stream_Systolic_2_0.v" \
"../../../bd/SystolicCore_wrapper/ip/SystolicCore_wrapper_onlyFPGA_0_0/sim/SystolicCore_wrapper_onlyFPGA_0_0.v" \
"../../../bd/SystolicCore_wrapper/sim/SystolicCore_wrapper.v" \

vlog -work xil_defaultlib \
"glbl.v"

