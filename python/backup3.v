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

module design_1_wrapper
(
       clk_125mhz_p,
          reset,
       clk_125mhz_n
 );
  input clk_125mhz_p;
  input clk_125mhz_n;
  input reset;
  wire clk;


  wire [31:0]AXI_STR_TXD_0_tdata;
  wire AXI_STR_TXD_0_tlast;
  wire AXI_STR_TXD_0_tready;
  wire AXI_STR_TXD_0_tvalid;
  wire nreset;
  
assign nreset = ~reset;
assign AXI_STR_TXD_0_tready =1;
  design_1 design_1_i
       (.AXI_STR_TXD_0_tdata(AXI_STR_TXD_0_tdata),
        .AXI_STR_TXD_0_tlast(AXI_STR_TXD_0_tlast),
        .AXI_STR_TXD_0_tready(AXI_STR_TXD_0_tready),
        .AXI_STR_TXD_0_tvalid(AXI_STR_TXD_0_tvalid));
        
        
         
  IBUFDS #(hw_ila_1
  .DIFF_TERM("TRUE"),
  .IBUF_LOW_PWR("FALSE")) ibufds_clk (
  .I (clk_125mhz_p),
  .IB(clk_125mhz_n),
  .O (clk)
); 

reg last_handshack;
reg [127:0]data;
always@(posedge clk, negedge nreset)begin
    if(!nreset)begin
        last_handshack <= 0;
    end else begin
        last_handshack <= AXI_STR_TXD_0_tvalid;
        data <= AXI_STR_TXD_0_tvalid && !last_handshack ? {data[127-4:0],AXI_STR_TXD_0_tdata[3:0]}: data;
    end
end
ila_0 your_instance_name (
	.clk(clk), // input wire clk


	.probe0(data), // input wire [31:0]  probe0  
	.probe1(AXI_STR_TXD_0_tready), // input wire [0:0]  probe1 
	.probe2(AXI_STR_TXD_0_tvalid), // input wire [0:0]  probe2 
	.probe3(AXI_STR_TXD_0_tlast) // input wire [0:0]  probe3
);
endmodule
