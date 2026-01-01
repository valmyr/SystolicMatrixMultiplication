set_property SRC_FILE_INFO {cfile:/home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/Ethernet_ps/Ethernet_ps.srcs/constrs_1/new/zyqnZCU106.xdc rfile:../../../Ethernet_ps.srcs/constrs_1/new/zyqnZCU106.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AG13     [get_ports reset] ;# Bank  66 VCCO - VCC1V2   - IO_L8P_T1L_N2_AD5P_66
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVCMOS12 [get_ports reset] ;# Bank  66 VCCO - VCC1V2   - IO_L8P_T1L_N2_AD5P_66
set_property src_info {type:XDC file:1 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {LOC H9  IOSTANDARD LVDS} [get_ports clk_125mhz_p]
set_property src_info {type:XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {LOC G9  IOSTANDARD LVDS} [get_ports clk_125mhz_n]
set_property src_info {type:XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 5.000 -name clk_125mhz [get_ports clk_125mhz_p]
