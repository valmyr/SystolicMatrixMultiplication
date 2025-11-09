`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Valmir F. Silva
// 
// Create Date: 10/20/2025 09:23:21 AM
// Design Name: 
// Module Name: Arty7_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Arty7_top_sim(
    input  logic          clock           ,
    input  logic          uart_txd_in     ,
    input  logic    [3:0] btn             ,
    output logic          uart_rxd_out    
);
localparam  BYTESIZES = 8, OVERSAMPLING = 16, BAUDRATE = 115200,	COUNTER_CLOCK_INPUT = 100_000_000,CLOCK_REF=10_000_000;
localparam  WIDTHx = 1,SIZE = 8,WIDTH =8;
localparam CLOCK_TRANSFER_PC= 10_000;
SystolicCoreTop #(
   .BYTESIZES(BYTESIZES), .OVERSAMPLING(OVERSAMPLING), .BAUDRATE(BAUDRATE),	.COUNTER_CLOCK_INPUT(COUNTER_CLOCK_INPUT),.CLOCK_REF(CLOCK_REF), .WIDTHx(WIDTHx),.SIZE(SIZE),.WIDTH(WIDTH), .CLOCK_TRANSFER_PC(CLOCK_TRANSFER_PC)
)   SystolicCore0(
    .clock       (clock       )    ,
    .uart_txd_in (uart_txd_in )    ,
    .uart_rxd_out(uart_rxd_out)    ,
    .nreset       (~btn[0]    )
);
endmodule