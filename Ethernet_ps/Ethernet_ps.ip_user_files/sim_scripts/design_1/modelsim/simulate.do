onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xil_defaultlib -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_22 -L zynq_ultra_ps_e_vip_v1_0_22 -L proc_sys_reset_v5_0_17 -L smartconnect_v1_0 -L axi_register_slice_v2_1_36 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_5 -L axi_gpio_v2_0_37 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_1 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run 1000ns

quit -force
