`timescale 1ns / 1ps
module tb;    
  logic clock   , nreset;
  logic  nreset_arty;
  parameter SIZE_M = 4;
  parameter FRAMA_START = 4;
  parameter SIZE_INPUT_SERIAL = (2*SIZE_M-1)*SIZE_M + FRAMA_START;
  logic [7:0]INPUT_A [SIZE_INPUT_SERIAL-1:0];
  logic [7:0]INPUT_B [SIZE_INPUT_SERIAL-1:0];

  logic [7:0]INPUT_A1 [SIZE_INPUT_SERIAL-1:0];
  logic [7:0]INPUT_B1 [SIZE_INPUT_SERIAL-1:0];
  logic [$clog2(SIZE_INPUT_SERIAL):0]cnt1 ;
  logic [$clog2(SIZE_INPUT_SERIAL):0]cnt2 ;
  parameter  BYTESIZES = 8, OVERSAMPLING = 16, BAUDRATE = 115200,	COUNTER_CLOCK_INPUT = 100_000_000,CLOCK_REF=10_000_000;
  logic     inv_r;
  //--------------------------------------------------------------------------------------------------
  //Pinout UART
  logic                   tb_uart_clock                                      ;
  logic                   tb_uart_nreset                                     ;
 //pinout RX              tb_                                         ;
  logic                   tb_uart_sdata_rx_in                                ;
  logic                   tb_uart_valid_rx_in                                ;
  logic [BYTESIZES-1:0]   tb_uart_ready_rx_out                               ;
  logic                   tb_uart_data_rx_out                                ;
 //pinout TX              tb_                                         ;
  logic                   tb_uart_valid_tx_in                                ;
  logic [BYTESIZES-1:0]   tb_uart_data_tx_in                                 ;
  logic                   tb_uart_ready_tx_out                               ;
  logic                   tb_uart_sdata_tx_out                               ;

  uart_top uart_tb(
    .clock             (tb_uart_clock       )    ,
    .nreset            (tb_uart_nreset      )    ,
    //pinout RX                                 
    .sdata_rx_in       (tb_uart_sdata_rx_in )    ,
    .valid_rx_in       (1                )    ,
    .ready_rx_out      (                 )    ,
    .data_rx_out       (tb_uart_data_rx_out)    ,  
    //pinout TX                                                  
    .valid_tx_in       (1'b1 )    ,
    .data_tx_in        ({4'b0000,tb_uart_data_tx_in}  )    ,
    .ready_tx_out      (tb_uart_ready_tx_out)    ,
    .sdata_tx_out      (tb_uart_sdata_tx_out)
);
initial begin

end

  assign tb_uart_clock = clock;
  assign tb_uart_nreset = nreset;
  assign serial2mem_nreset =nreset;
  assign serial2mem_clock =clock;
  assign serial2mem_valid_i = 1;

  initial begin
    clock = 0;
    nreset = 1;
    nreset_arty = 1;
    inv_r = 0;

    $readmemh("testeINPUT_A.mem",INPUT_A);
    $readmemh("testeINPUT_B.mem",INPUT_B);
    $readmemh("testeINPUT_A1.mem",INPUT_A1);
    $readmemh("testeINPUT_B1.mem",INPUT_B1);
    #1 nreset =0;
       nreset_arty = 0;
    #1 nreset = 1;
       nreset_arty = 1;

    #30_000_000 nreset =0;
    #1 nreset =1;
    //#(40_300_000)$finish;
  end
  //assign tb_uart_data_tx_in = inv_r ? (cnt1!=SIZE_INPUT_SERIAL) ? INPUT_A[cnt1] : INPUT_B[cnt2] :(cnt1!=SIZE_INPUT_SERIAL) ? INPUT_A1[cnt1] : INPUT_B1[cnt2] ;
  always #(5)clock=~clock;/*
  always_ff@(posedge clock, negedge nreset)begin
      if(!nreset)begin
        cnt <= 0;
          serial2mem_rw = 0;
          serial2mem_rready_i = 0;
      end else begin
        cnt <= !serial2mem_ready_o ? cnt +1: 0;
        //serial2mem_in_data =!serial2mem_ready_o ? $random%10: 0;
        if(serial2mem_rvalid_o)begin
          serial2mem_rready_i = 1;
          serial2mem_rw = 1;
        end
      end
    end*/
  //xrun ./tb_fpga.sv ../rtl/Arty7_top_sim.sv ../rtl/systolicMatrixMultiply.sv ../rtl/accumulator.sv -access +rwc +gui
  logic aa;
  assign aa = tb_uart_ready_tx_out;
   always_ff@(posedge tb_uart_ready_tx_out, negedge nreset)begin
      if(!nreset)begin
        cnt1 <= 0;
        cnt2 <= 0;
        inv_r <= ~inv_r;
        tb_uart_data_tx_in <= 0 ;
      end else begin
        if(inv_r)begin
          cnt1 <= (cnt1 == SIZE_INPUT_SERIAL) ? cnt1:cnt1 +1   ;
          cnt2 <= (cnt1 == SIZE_INPUT_SERIAL) && cnt2 != SIZE_INPUT_SERIAL? cnt2 +1 : cnt2;
          if(cnt2 <= SIZE_INPUT_SERIAL-1)
            tb_uart_data_tx_in <= (cnt1!=SIZE_INPUT_SERIAL) ? INPUT_A[cnt1] : INPUT_B[cnt2];
          else tb_uart_data_tx_in <= 0;
        end else begin
          cnt1 <= (cnt1 == SIZE_INPUT_SERIAL) ? cnt1:cnt1 +1   ;
          cnt2 <= (cnt1 == SIZE_INPUT_SERIAL) && cnt2 != SIZE_INPUT_SERIAL? cnt2 +1 : cnt2;
          if(cnt2 <= SIZE_INPUT_SERIAL -1)
            tb_uart_data_tx_in <= (cnt1!=SIZE_INPUT_SERIAL) ? INPUT_A1[cnt1] : INPUT_B1[cnt2];
          else tb_uart_data_tx_in <= 0;
        end
      end
    end

/*
  initial begin 
    @(posedge tb_uart_ready_tx_out, negedge nreset)begin
      if(!nreset)begin
        cnt1 = 0;
        cnt2 = 0;
      end else begin
        cnt1 = (cnt1 == SIZE_INPUT_SERIAL) ? cnt1:cnt1 +1   ;
        cnt2 = (cnt1 == SIZE_INPUT_SERIAL) && cnt2 != SIZE_INPUT_SERIAL? cnt2 +1 : cnt2;
      end
    end
    #10000000
    cnt1 = 0;
    cnt2 = 0;
      @(posedge tb_uart_ready_tx_out, negedge nreset)begin
      if(!nreset)begin
        cnt1 = 0;
        cnt2 = 0;
      end else begin
        cnt2 = (cnt1 == SIZE_INPUT_SERIAL) ? cnt1:cnt1 +1   ;
        cnt1 = (cnt1 == SIZE_INPUT_SERIAL) && cnt2 != SIZE_INPUT_SERIAL? cnt2 +1 : cnt2;
      end
    end  */
  //end
  Arty7_top_sim a(
    .clock       (clock)              ,
    .btn         ({3'b000,!nreset_arty} )   ,
    .uart_txd_in (tb_uart_sdata_tx_out)   ,
    .uart_rxd_out(tb_uart_sdata_rx_in)  
);


endmodule