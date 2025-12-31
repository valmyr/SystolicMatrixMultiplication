//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Tue Dec 30 16:04:42 2025
//Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (GPIO_0_tri_o);
  output [8:0]GPIO_0_tri_o;

  wire [8:0]GPIO_0_tri_o;

  design_1 design_1_i
       (.GPIO_0_tri_o(GPIO_0_tri_o));
endmodule
