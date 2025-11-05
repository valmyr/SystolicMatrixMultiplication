`timescale 1ns / 1ps
module tb;    
    logic clock   , nreset;

  logic [7:0]INPUT_A [32:0];
  logic [5:0]cnt ;
  parameter  BYTESIZES = 8, OVERSAMPLING = 16, BAUDRATE = 115200,	COUNTER_CLOCK_INPUT = 100_000_000,CLOCK_REF=10_000_000;
  //--------------------------------------------------------------------------------------------------
  //Pinout UART
  logic                   uart_clock                                      ;
  logic                   uart_nreset                                     ;
 //pinout RX                                                       ;
  logic                   uart_sdata_rx_in                                ;
  logic                   uart_valid_rx_in                                ;
  logic [BYTESIZES-1:0]   uart_ready_rx_out                               ;
  logic                   uart_data_rx_out                                ;
 //pinout TX                                                       ;
  logic                   uart_valid_tx_in                                ;
  logic [BYTESIZES-1:0]   uart_data_tx_in                                 ;
  logic                   uart_ready_tx_out                               ;
  logic                   uart_sdata_tx_out                               ;
  uart_top #(.BYTESIZS(BYTESIZES), .OVERSAMPLING(OVERSAMPLING), .BAUDRATE(BAUDRATE),	.COUNTER_CLOCK_INPUT(COUNTER_CLOCK_INPUT), .CLOCK_REF(CLOCK_REF)) uart1 (
    .clock             (uart_clock       )    ,
    .nreset            (uart_nreset      )    ,
    //pinout RX                                 
    .sdata_rx_in       (uart_sdata_rx_in )    ,
    .valid_rx_in       (1                )    ,
    .ready_rx_out      (                 )    ,
    .data_rx_out       ( uart_data_rx_out)    ,  
    //pinout TX                                                  
    .valid_tx_in       (1'b1 )    ,
    .data_tx_in        (uart_data_tx_in  )    ,
    .ready_tx_out      (uart_ready_tx_out)    ,
    .sdata_tx_out      (uart_sdata_tx_out)
);
  assign INPUT_A[00] = 8'b00000001;
  assign INPUT_A[01] = 8'b00000010;
  assign INPUT_A[02] = 8'b00000011;
  assign INPUT_A[03] = 8'b00000110;
  assign INPUT_A[04] = 8'b00001011;
  assign INPUT_A[05] = 8'b00111110;
  assign INPUT_A[06] = 8'b01101100;
  assign INPUT_A[07] = 8'b11010010;
  assign INPUT_A[08] = 8'b01011010;
  assign INPUT_A[09] = 8'b11101000;
  assign INPUT_A[10] = 8'b11111000;
  assign INPUT_A[11] = 8'b00110000;
  assign INPUT_A[12] = 8'b11100000;
  assign INPUT_A[13] = 8'b11000000;
  assign INPUT_A[14] = 8'b00000000;

  assign INPUT_A[15] = 8'b10101010;
  assign INPUT_A[16] = 8'b00000000;

  assign INPUT_A[17] = 8'b00000001;
  assign INPUT_A[18] = 8'b00000010;
  assign INPUT_A[19] = 8'b00000001;
  assign INPUT_A[20] = 8'b00000000;
  assign INPUT_A[21] = 8'b00000000;
  assign INPUT_A[22] = 8'b00010111;
  assign INPUT_A[23] = 8'b00010110;
  assign INPUT_A[24] = 8'b00001110;
  assign INPUT_A[25] = 8'b11110110;
  assign INPUT_A[26] = 8'b11001100;
  assign INPUT_A[27] = 8'b10100000;
  assign INPUT_A[28] = 8'b00100000;
  assign INPUT_A[29] = 8'b11000000;
  assign INPUT_A[30] = 8'b00000000;
  assign INPUT_A[31] = 8'b00000000;

  assign INPUT_A[32] = 8'b00000000;
  assign INPUT_A[33] = 8'b00000000;



  assign uart_clock = clock;
  assign uart_nreset = nreset;
  initial begin
     clock = 0;
    nreset = 1;
    #1 nreset =0;
    #1 nreset = 1;
    #(20_300_000)$finish;
  end
  assign uart_data_tx_in = INPUT_A[cnt];
  always #(5)clock=~clock;
  //xrun ./tb_fpga.sv ../rtl/Arty7_top_sim.sv ../rtl/systolicMatrixMultiply.sv ../rtl/accumulator.sv -access +rwc +gui

    always_ff@(posedge uart_ready_tx_out, negedge nreset)begin
      if(!nreset)begin
        cnt <= 0;
      end else begin
        cnt <= cnt +1;
      end
    end
  Arty7_top_sim a(
    .clock       (clock)              ,
    .sw          (0)                  ,
    .btn         ({3'b000,!nreset} )   ,
    .uart_txd_in (uart_sdata_tx_out)   ,
    .uart_rxd_out(uart_sdata_rx_in)  ,
    .led         ()        ,
    .led0RGB     ()        ,
    .led1RGB     ()        ,
    .led2RGB     ()        ,
    .led3RGB     ()         
);
endmodule