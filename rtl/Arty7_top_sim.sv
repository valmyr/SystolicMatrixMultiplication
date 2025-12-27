`timescale 1ns / 100ps
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
// [USF-XSim-62] 'compile' step failed with error(s). Please check the Tcl console output or '/home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/SystolicCore/SystolicCore.sim/sim_1/behav/xsim/xvlog.log' file for more information.

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
    output logic          led             ,
    output logic          uart_rxd_out    
);
localparam  BYTESIZES = 8, OVERSAMPLING = 16, BAUDRATE = 115200,	COUNTER_CLOCK_INPUT = 100_000_000,CLOCK_REF=10_000_000;
localparam  WIDTHx = 4,SIZE = 16,WIDTH =8;
localparam CLOCK_TRANSFER_PC= 11500; //Constante determinada da seguinte forma: ((BAUDRATE)/(BIT_START+BIT_STOP+BIT_DADOS+BIT_PARITY))) obso...
assign led = clock;


//---------------------------------------------------------------------------------------------------
//Pinout UART
logic                   uart_clock                                                                              ;
logic                   uart_nreset                                                                             ;
 //pinout RX                                                       ;                                            
logic                   uart_sdata_rx_in                                                                        ;
logic                   uart_valid_rx_in                                                                        ;
logic                   uart_ready_rx_out                                                                       ;
logic   [BYTESIZES-1:0] uart_data_rx_out                                                                        ;
 //pinout TX                                                       ;                                            
logic                   uart_valid_tx_in                                                                        ;
logic [BYTESIZES-1:0]   uart_data_tx_in                                                                         ;
logic                   uart_ready_tx_out                                                                       ;
logic                   uart_sdata_tx_out                                                                       ;


//Atribuição UART
assign uart_sdata_rx_in = uart_txd_in                                                                           ;
assign uart_rxd_out     = uart_sdata_tx_out                                                                     ;
(*dont_touch = "true"*) 
assign uart_valid_rx_in =   1                                                                                   ;//UART RX SEMPRE APTO A RECEBER DADOS.
assign uart_clock = clock;
assign uart_nreset = ~btn[0];
(*dont_touch = "true"*)
uart_top #(.BYTESIZES(BYTESIZES), .OVERSAMPLING(OVERSAMPLING), .BAUDRATE(BAUDRATE),	.COUNTER_CLOCK_INPUT(COUNTER_CLOCK_INPUT), .CLOCK_REF(CLOCK_REF)) uart_systolic_core (
    .clock                      (uart_clock                                 )                  ,
    .nreset                     (uart_nreset                                )                  ,
    //pinout RX                                                                                  
    .sdata_rx_in                (uart_sdata_rx_in                           )                  ,
    .valid_rx_in                (uart_valid_rx_in                           )                  ,
    .ready_rx_out               (uart_ready_rx_out                          )                  ,
    .data_rx_out                (uart_data_rx_out                           )                  ,  
    //pinout TX                                                                                                   
    .valid_tx_in                (uart_valid_tx_in                           )                  ,
    .data_tx_in                 (uart_data_tx_in                            )                  ,
    .ready_tx_out               (uart_ready_tx_out                          )                  ,
    .sdata_tx_out               (uart_sdata_tx_out                          )              
);

SystolicCoreTop #(
   .BYTESIZES(BYTESIZES), .OVERSAMPLING(OVERSAMPLING), .BAUDRATE(BAUDRATE),	.COUNTER_CLOCK_INPUT(COUNTER_CLOCK_INPUT),.CLOCK_REF(CLOCK_REF), .WIDTHx(WIDTHx),.SIZE(SIZE),.WIDTH(WIDTH), .CLOCK_TRANSFER_PC(CLOCK_TRANSFER_PC)
)   SystolicCore0(
        .clock               (clock             )      ,
        .nreset              (~btn[0]           )      ,
        .uart_data_rx_out    (uart_data_rx_out  )      ,
        .uart_data_tx_in     (uart_data_tx_in   )      ,
        .uart_valid_rx_in    (uart_valid_rx_in  )      ,
        .uart_valid_tx_in    (uart_valid_tx_in  )      ,    
        .uart_ready_tx_out   (uart_ready_tx_out )      ,
        .uart_ready_rx_out   (uart_ready_rx_out )      
  
);

SystolicCoreTop #(
   .BYTESIZES(BYTESIZES), .OVERSAMPLING(OVERSAMPLING), .BAUDRATE(BAUDRATE),	.COUNTER_CLOCK_INPUT(COUNTER_CLOCK_INPUT),.CLOCK_REF(CLOCK_REF), .WIDTHx(WIDTHx),.SIZE(SIZE),.WIDTH(WIDTH), .CLOCK_TRANSFER_PC(CLOCK_TRANSFER_PC)
)   SystolicCore1(
        .clock               (clock             )      ,
        .nreset              (~btn[0]           )      ,
        .uart_data_rx_out    (uart_data_rx_out  )      ,
        .uart_data_tx_in     (uart_data_tx_in   )      ,
        .uart_valid_rx_in    (                  )      ,
        .uart_valid_tx_in    (                  )      ,    
        .uart_ready_tx_out   (uart_ready_tx_out )      ,
        .uart_ready_rx_out   (uart_ready_rx_out )      
  
);




/*

logic [7:0] aa,assd;
logic aaas;

uart_top #(.BYTESIZES(BYTESIZES), .OVERSAMPLING(OVERSAMPLING), .BAUDRATE(BAUDRATE),	.COUNTER_CLOCK_INPUT(COUNTER_CLOCK_INPUT), .CLOCK_REF(CLOCK_REF)) uart_systolic_core (
    .clock                      (clock                                 )                  ,
    .nreset                     (~btn[0]                                )                  ,
    //pinout RX                                                                                  
    .sdata_rx_in                (uart_txd_in                           )                  ,
    .valid_rx_in                (1                           )                  ,
    .ready_rx_out               (aaas                          )                  ,
    .data_rx_out                (aa                           )                  ,  
    //pinout TX                                                                                                   
    .valid_tx_in                (1                           )                  ,
    .data_tx_in                 (assd                            )                  ,
    .ready_tx_out               (                          )                  ,
    .sdata_tx_out               (uart_rxd_out                          )              
);

assign assd = aa;
    

ila_1 your_instance_name (
	.clk(clock), // input wire clk


	.probe0(aa), // input wire [7:0]  probe0  
	.probe1(assd), // input wire [7:0]  probe1 
	.probe2(uart_txd_in), // input wire [0:0]  probe2 
	.probe3(aaas) // input wire [0:0]  probe3
);*/
endmodule