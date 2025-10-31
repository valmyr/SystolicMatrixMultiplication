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


module Arty7_top(
    input  logic          clock           ,
    input  logic [3:0]    sw              ,
    input  logic [3:0]    btn             ,
    input  logic          uart_txd_in      ,
    output logic          uart_rxd_out   ,
    output logic [3:0]    led             ,
    output logic [2:0]    led0RGB         ,
    output logic [2:0]    led1RGB         ,
    output logic [2:0]    led2RGB         ,
    output logic [2:0]    led3RGB          
);
parameter  BYTESIZES = 8, OVERSAMPLING = 16, BAUDRATE = 115200,	COUNTER_CLOCK_INPUT = 100_000_000,CLOCK_REF=10_000_000;
parameter WIDTHx =1,SIZE = 8, WIDTH = 8;

logic nreset;
logic [31:0] counter;
logic valid, ready_env_uart_rx, cnt;
logic [BYTESIZES-1:0] data_rx_out;
logic [BYTESIZES-1:0] data_rx_out1;
logic [SIZE*WIDTHx-1:0] a; 
logic [SIZE*WIDTHx-1:0] b; 
logic [WIDTH-1:0] Cout_DUT[SIZE-1:0][SIZE-1:0];

uart_top #(.BYTESIZES(BYTESIZES), .OVERSAMPLING(OVERSAMPLING), .BAUDRATE(BAUDRATE),	.COUNTER_CLOCK_INPUT(COUNTER_CLOCK_INPUT), .CLOCK_REF(CLOCK_REF)) uart1
(

    .clock        (clock)                            ,
    .nreset       (nreset)                           ,
    //pinout RX   
    .sdata_rx_in  (uart_txd_in                  )    ,
    .valid_rx_in  (1'b1                         )    ,
    .ready_rx_out (  ready_env_uart_rx          )    ,
    .data_rx_out  (   data_rx_out               )    ,  
    //pinout TX
    .valid_tx_in  (valid                        )    ,
    .data_tx_in   ( {4'b0000,sw}                )    ,
    .ready_tx_out (                             )    ,
    .sdata_tx_out (uart_rxd_out                 )
);
systolicMatrixMultiply  #(.WIDTH(WIDTH),.WIDTHx(WIDTHx),.SIZE(SIZE)) DUT_MatrixMultiplyM0(
    .clock            (cnt        )                              ,
    .nreset           (nreset       )                              ,
    .valid_i          (1            )                              ,
    .a_input          (a            )                              ,
    .b_input          (b            )                              ,
    .ready_o          (             )                              ,
    .output_produc_a_b(Cout_DUT )
);

assign nreset = !btn[0];

always_ff@(posedge ready_env_uart_rx, negedge nreset)begin
    if(!nreset)cnt <= 0;
    else cnt <= cnt +1; 
end

always_comb begin
    case(cnt)
        0:a = data_rx_out;
        1:b = data_rx_out;
    endcase
end
//assign led = data_rx_out[3:0];
//always_ff@(posedge btn[1])
//    if(btn[1])  valid <= 1;
//    else        valid <=0;
//always_ff@(posedge btn[1])
//assign data_rx_out1 = data_rx_out;
//assign led = data_rx_out1;
//always_ff@(posedge clock)
//     led0RGB     <= sw[2 ] ? led :0;
// assign led0RGB =  led;
//assign led1RGB =  led0RGB;
//assign led2RGB =  led0RGB;
//assign led3RGB =  led0RGB;
endmodule
