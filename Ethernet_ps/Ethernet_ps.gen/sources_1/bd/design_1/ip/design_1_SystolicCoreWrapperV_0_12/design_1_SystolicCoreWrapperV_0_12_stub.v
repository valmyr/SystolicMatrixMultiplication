// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sat Jan  3 19:38:53 2026
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode synth_stub
//               /home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/Ethernet_ps/Ethernet_ps.gen/sources_1/bd/design_1/ip/design_1_SystolicCoreWrapperV_0_12/design_1_SystolicCoreWrapperV_0_12_stub.v
// Design      : design_1_SystolicCoreWrapperV_0_12
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_SystolicCoreWrapperV_0_12,SystolicCoreWrapperVerilogGlobal,{}" *) (* CORE_GENERATION_INFO = "design_1_SystolicCoreWrapperV_0_12,SystolicCoreWrapperVerilogGlobal,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=SystolicCoreWrapperVerilogGlobal,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,BYTESIZES=8,WIDTHx=4,SIZE=16,WIDTH=8}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "SystolicCoreWrapperVerilogGlobal,Vivado 2025.2" *) 
module design_1_SystolicCoreWrapperV_0_12(clk, nrst, gpio_input, gpio_output)
/* synthesis syn_black_box black_box_pad_pin="nrst,gpio_input[15:0],gpio_output[15:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  input nrst;
  input [15:0]gpio_input;
  output [15:0]gpio_output;
endmodule
