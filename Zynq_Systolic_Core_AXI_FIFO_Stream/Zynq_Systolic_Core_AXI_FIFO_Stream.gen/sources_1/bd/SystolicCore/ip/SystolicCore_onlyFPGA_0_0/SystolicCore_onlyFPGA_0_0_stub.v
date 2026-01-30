// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Fri Jan 30 01:08:25 2026
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode synth_stub
//               /home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/Zynq_Systolic_Core_AXI_FIFO_Stream/Zynq_Systolic_Core_AXI_FIFO_Stream.gen/sources_1/bd/SystolicCore/ip/SystolicCore_onlyFPGA_0_0/SystolicCore_onlyFPGA_0_0_stub.v
// Design      : SystolicCore_onlyFPGA_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "SystolicCore_onlyFPGA_0_0,onlyFPGA,{}" *) (* CORE_GENERATION_INFO = "SystolicCore_onlyFPGA_0_0,onlyFPGA,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=onlyFPGA,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "onlyFPGA,Vivado 2025.2" *) 
module SystolicCore_onlyFPGA_0_0(nreset, clock)
/* synthesis syn_black_box black_box_pad_pin="nreset" */
/* synthesis syn_force_seq_prim="clock" */;
  input nreset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, FREQ_HZ 299970032, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN SystolicCore_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0" *) input clock /* synthesis syn_isclock = 1 */;
endmodule
