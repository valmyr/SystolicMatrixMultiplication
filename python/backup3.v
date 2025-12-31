`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Valmir F. Silva
// 
// Create Date: 10/20/2025 09:23:21 AM
// Design Name: 
// Module Name: zynq_wrapper_systolic
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 

// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module zynq_wrapper_systolic(
       clk_125mhz_p ,
       reset        ,
       clk_125mhz_n
);

localparam  BYTESIZES = 8;
localparam  WIDTHx = 4,SIZE = 16,WIDTH =8;

input clk_125mhz_p;
input clk_125mhz_n;
input reset;
wire clk;
wire nreset;
assign nreset = ~reset;
wire [15:0]GPIO_0_tri_o;
wire [15:0]GPIO_1_tri_i;


wire [7:0]data_input;
wire enable_write;
assign data_input = GPIO_0_tri_o[9:1];
assign enable_write =GPIO_0_tri_o[0];
reg last_enable_write;
wire valid_data;
reg reg_valid_data;
reg [7:0]data;
reg [63:0] d;
reg [3:0]counter ;
//assign valid_data = enable_write && !last_enable_write;
always@(posedge clk, negedge nreset)begin
    if(!nreset)begin
        counter <= 0;
        last_enable_write <= 0;
        reg_valid_data <= 0;
        d <=0;
    end else begin
    counter <= enable_write && !last_enable_write ? counter +1: counter;
        last_enable_write <= enable_write;
        reg_valid_data <= enable_write && !last_enable_write;
        data <= enable_write && !last_enable_write ? data_input :data;
        d <= enable_write && !last_enable_write ? {d[63-4:0],data_input[3:0]} :d;
    end
end






  design_1 design_1_i(
        .GPIO_0_tri_o(GPIO_0_tri_o),
        .GPIO_1_tri_i(GPIO_1_tri_i)
  );
  IBUFDS #(
  .DIFF_TERM("TRUE"),
  .IBUF_LOW_PWR("FALSE")) ibufds_clk (
  .I (clk_125mhz_p),
  .IB(clk_125mhz_n),
  .O (clk)
  ); 
  SystolicCoreTop #(
     .BYTESIZES(BYTESIZES),.WIDTHx(WIDTHx),.SIZE(SIZE),.WIDTH(WIDTH)
  )   SystolicCore0(
          .clock               (clk               )      ,// input
          .nreset              (nreset            )      ,// input 
          .uart_data_rx_out    (data              )      ,// input 8 Bits / 1 Byte
          .uart_data_tx_in     (                  )      ,// output 8 Bits
          .uart_valid_rx_in    (                  )      ,// input
          .uart_valid_tx_in    (                  )      ,// output 
          .uart_ready_tx_out   (0                 )      ,// input
          .uart_ready_rx_out   (reg_valid_data    )       // input
    
  );


  
  ila_0 your_instance_name (
  	.clk(clk), // input wire clk
  	.probe0(data), // input wire [31:0]  probe0  
  	.probe1(reg_valid_data), // input wire [0:0]  probe1 
  	.probe2(enable_write), // input wire [0:0]  probe2 
  	.probe3(counter == 15) // input wire [0:0]  probe3
  );
endmodule
