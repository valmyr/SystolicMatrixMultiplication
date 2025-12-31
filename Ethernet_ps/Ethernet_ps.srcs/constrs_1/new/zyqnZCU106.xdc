set_property PACKAGE_PIN AG13     [get_ports reset] ;# Bank  66 VCCO - VCC1V2   - IO_L8P_T1L_N2_AD5P_66
set_property IOSTANDARD  LVCMOS12 [get_ports reset] ;# Bank  66 VCCO - VCC1V2   - IO_L8P_T1L_N2_AD5P_66


#set_property PACKAGE_PIN AL11     [get_ports led_8bits_tri_o[0]] ;# Bank  66 VCCO - VCC1V2   - IO_L8P_T1L_N2_AD5P_66
#set_property IOSTANDARD  LVCMOS12 [get_ports led_8bits_tri_o[0]] ;# Bank  66 VCCO - VCC1V2   - IO_L8P_T1L_N2_AD5P_66
#set_property PACKAGE_PIN AL13     [get_ports led_8bits_tri_o[1]] ;# Bank  66 VCCO - VCC1V2   - IO_L7N_T1L_N1_QBC_AD13N_66
#set_property IOSTANDARD  LVCMOS12 [get_ports led_8bits_tri_o[1]] ;# Bank  66 VCCO - VCC1V2   - IO_L7N_T1L_N1_QBC_AD13N_66
#set_property PACKAGE_PIN AK13     [get_ports led_8bits_tri_o[2]] ;# Bank  66 VCCO - VCC1V2   - IO_L7P_T1L_N0_QBC_AD13P_66
#set_property IOSTANDARD  LVCMOS12 [get_ports led_8bits_tri_o[2]] ;# Bank  66 VCCO - VCC1V2   - IO_L7P_T1L_N0_QBC_AD13P_66
#set_property PACKAGE_PIN AM8      [get_ports led_8bits_tri_o[3]] ;# Bank  66 VCCO - VCC1V2   - IO_L6N_T0U_N11_AD6N_66
#set_property IOSTANDARD  LVCMOS12 [get_ports led_8bits_tri_o[3]] ;# Bank  66 VCCO - VCC1V2   - IO_L6N_T0U_N11_AD6N_66
#set_property PACKAGE_PIN AM9      [get_ports led_8bits_tri_o[4]] ;# Bank  66 VCCO - VCC1V2   - IO_L6P_T0U_N10_AD6P_66
#set_property IOSTANDARD  LVCMOS12 [get_ports led_8bits_tri_o[4]] ;# Bank  66 VCCO - VCC1V2   - IO_L6P_T0U_N10_AD6P_66
#set_property PACKAGE_PIN AM10     [get_ports led_8bits_tri_o[5]] ;# Bank  66 VCCO - VCC1V2   - IO_L5N_T0U_N9_AD14N_66
#set_property IOSTANDARD  LVCMOS12 [get_ports led_8bits_tri_o[5]] ;# Bank  66 VCCO - VCC1V2   - IO_L5N_T0U_N9_AD14N_66
#set_property PACKAGE_PIN AM11     [get_ports led_8bits_tri_o[6]] ;# Bank  66 VCCO - VCC1V2   - IO_L5P_T0U_N8_AD14P_66
#set_property IOSTANDARD  LVCMOS12 [get_ports led_8bits_tri_o[6]] ;# Bank  66 VCCO - VCC1V2   - IO_L5P_T0U_N8_AD14P_66
set_property -dict {LOC H9  IOSTANDARD LVDS} [get_ports clk_125mhz_p]
set_property -dict {LOC G9  IOSTANDARD LVDS} [get_ports clk_125mhz_n]
create_clock -period 5.000 -name clk_125mhz [get_ports clk_125mhz_p]

#set_property IOSTANDARD LVCMOS12 [get_ports s_axi_bvalid_0]
