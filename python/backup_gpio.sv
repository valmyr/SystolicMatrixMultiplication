//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Sat Dec 27 02:14:45 2025
//Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module zynq_wrapper_systolic(
       clk_125mhz_p ,
       reset        ,
       clk_125mhz_n
);
input clk_125mhz_p;
input clk_125mhz_n;
input reset;
wire clk;
wire nreset;
assign nreset = ~reset;
wire [7:0]GPIO_0_tri_o;

  design_1 design_1_i
       (.GPIO_0_tri_o(GPIO_0_tri_o));
        
         
  IBUFDS #(
  .DIFF_TERM("TRUE"),
  .IBUF_LOW_PWR("FALSE")) ibufds_clk (
  .I (clk_125mhz_p),
  .IB(clk_125mhz_n),
  .O (clk)
); 


wire [7:0]data_input;
wire enable_write;
assign data_input = GPIO_0_tri_o[8:1];
assign enable_write =GPIO_0_tri_o[0];
reg last_enable_write;
reg [127:0]data;
always@(posedge clk, negedge nreset)begin
    if(!nreset)begin
        last_enable_write <= 0;
    end else begin
        last_enable_write <= enable_write;
        data <= enable_write && !last_enable_write ? {data[127-4:0],data_input[3:0]}: data;
    end
end
ila_0 your_instance_name (
	.clk(clk), // input wire clk
	.probe0(data), // input wire [31:0]  probe0  
	.probe1(enable_write && !last_enable_write), // input wire [0:0]  probe1 
	.probe2(enable_write), // input wire [0:0]  probe2 
	.probe3(last_enable_write) // input wire [0:0]  probe3
);
endmodule
