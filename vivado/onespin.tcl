start_message_log -force RTLvsVerilog_netlist.log
load_settings ec_fpga_xilinx_rtf

read_verilog -golden Arty7_top_sim_func_synth.v
read_verilog -revised Arty7_top_sim_func_impl.v

set_elaborate_option -both -top Arty7_top_sim
elaborate -both

set_mode ec

map

compare

stop_message_log 
