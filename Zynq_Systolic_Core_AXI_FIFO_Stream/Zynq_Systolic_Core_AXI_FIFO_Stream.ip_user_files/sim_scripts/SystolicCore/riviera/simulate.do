transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+SystolicCore  -L xil_defaultlib -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L axi_lite_ipif_v3_0_4 -L axi_fifo_mm_s_v4_3_7 -L proc_sys_reset_v5_0_17 -L smartconnect_v1_0 -L axi_register_slice_v2_1_36 -L gigantic_mux -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.SystolicCore xil_defaultlib.glbl

do {SystolicCore.udo}

run 1000ns

endsim

quit -force
