transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+teste_dma  -L xil_defaultlib -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L axi_datamover_v5_1_37 -L axi_sg_v4_1_21 -L axi_dma_v7_1_37 -L proc_sys_reset_v5_0_17 -L smartconnect_v1_0 -L axi_register_slice_v2_1_36 -L gigantic_mux -L xlconcat_v2_1_7 -L axis_infrastructure_v1_1_1 -L axis_data_fifo_v2_0_17 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.teste_dma xil_defaultlib.glbl

do {teste_dma.udo}

run 1000ns

endsim

quit -force
