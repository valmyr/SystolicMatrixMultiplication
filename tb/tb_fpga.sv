`timescale 1ns / 1ps
module tb;    
    logic clock   , nreset;

  logic [7:0]INPUT_A [121:0];
  logic [7:0]INPUT_B [119:0];
  logic [7:0]cnt1 ;
  logic [7:0]cnt2 ;
  parameter  BYTESIZES = 8, OVERSAMPLING = 16, BAUDRATE = 115200,	COUNTER_CLOCK_INPUT = 100_000_000,CLOCK_REF=10_000_000;
  parameter WIDTH = 8, SIZE = 8;
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
assign INPUT_A[000] = 8'h00;
assign INPUT_A[001] = 8'h00;
assign INPUT_A[002] = 8'h00;
assign INPUT_A[003] = 8'h00;
assign INPUT_A[004] = 8'h00;
assign INPUT_A[005] = 8'h00;
assign INPUT_A[006] = 8'h00;
assign INPUT_A[007] = 8'h07;
assign INPUT_A[008] = 8'h00;
assign INPUT_A[009] = 8'h00;
assign INPUT_A[010] = 8'h00;
assign INPUT_A[011] = 8'h00;
assign INPUT_A[012] = 8'h00;
assign INPUT_A[013] = 8'h00;
assign INPUT_A[014] = 8'h02;
assign INPUT_A[015] = 8'h05;
assign INPUT_A[016] = 8'h00;
assign INPUT_A[017] = 8'h00;
assign INPUT_A[018] = 8'h00;
assign INPUT_A[019] = 8'h00;
assign INPUT_A[020] = 8'h00;
assign INPUT_A[021] = 8'h07;
assign INPUT_A[022] = 8'h09;
assign INPUT_A[023] = 8'h01;
assign INPUT_A[024] = 8'h00;
assign INPUT_A[025] = 8'h00;
assign INPUT_A[026] = 8'h00;
assign INPUT_A[027] = 8'h00;
assign INPUT_A[028] = 8'h01;
assign INPUT_A[029] = 8'h05;
assign INPUT_A[030] = 8'h03;
assign INPUT_A[031] = 8'h03;
assign INPUT_A[032] = 8'h00;
assign INPUT_A[033] = 8'h00;
assign INPUT_A[034] = 8'h00;
assign INPUT_A[035] = 8'h00;
assign INPUT_A[036] = 8'h00;
assign INPUT_A[037] = 8'h05;
assign INPUT_A[038] = 8'h07;
assign INPUT_A[039] = 8'h05;
assign INPUT_A[040] = 8'h00;
assign INPUT_A[041] = 8'h00;
assign INPUT_A[042] = 8'h09;
assign INPUT_A[043] = 8'h02;
assign INPUT_A[044] = 8'h02;
assign INPUT_A[045] = 8'h04;
assign INPUT_A[046] = 8'h04;
assign INPUT_A[047] = 8'h02;
assign INPUT_A[048] = 8'h00;
assign INPUT_A[049] = 8'h02;
assign INPUT_A[050] = 8'h01;
assign INPUT_A[051] = 8'h03;
assign INPUT_A[052] = 8'h05;
assign INPUT_A[053] = 8'h09;
assign INPUT_A[054] = 8'h07;
assign INPUT_A[055] = 8'h09;
assign INPUT_A[056] = 8'h03;
assign INPUT_A[057] = 8'h01;
assign INPUT_A[058] = 8'h03;
assign INPUT_A[059] = 8'h01;
assign INPUT_A[060] = 8'h03;
assign INPUT_A[061] = 8'h07;
assign INPUT_A[062] = 8'h02;
assign INPUT_A[063] = 8'h01;
assign INPUT_A[064] = 8'h09;
assign INPUT_A[065] = 8'h00;
assign INPUT_A[066] = 8'h02;
assign INPUT_A[067] = 8'h05;
assign INPUT_A[068] = 8'h05;
assign INPUT_A[069] = 8'h07;
assign INPUT_A[070] = 8'h03;
assign INPUT_A[071] = 8'h00;
assign INPUT_A[072] = 8'h02;
assign INPUT_A[073] = 8'h02;
assign INPUT_A[074] = 8'h05;
assign INPUT_A[075] = 8'h01;
assign INPUT_A[076] = 8'h09;
assign INPUT_A[077] = 8'h08;
assign INPUT_A[078] = 8'h00;
assign INPUT_A[079] = 8'h00;
assign INPUT_A[080] = 8'h04;
assign INPUT_A[081] = 8'h02;
assign INPUT_A[082] = 8'h01;
assign INPUT_A[083] = 8'h03;
assign INPUT_A[084] = 8'h04;
assign INPUT_A[085] = 8'h00;
assign INPUT_A[086] = 8'h00;
assign INPUT_A[087] = 8'h00;
assign INPUT_A[088] = 8'h03;
assign INPUT_A[089] = 8'h05;
assign INPUT_A[090] = 8'h08;
assign INPUT_A[091] = 8'h03;
assign INPUT_A[092] = 8'h00;
assign INPUT_A[093] = 8'h00;
assign INPUT_A[094] = 8'h00;
assign INPUT_A[095] = 8'h00;
assign INPUT_A[096] = 8'h09;
assign INPUT_A[097] = 8'h03;
assign INPUT_A[098] = 8'h03;
assign INPUT_A[099] = 8'h00;
assign INPUT_A[100] = 8'h00;
assign INPUT_A[101] = 8'h00;
assign INPUT_A[102] = 8'h00;
assign INPUT_A[103] = 8'h00;
assign INPUT_A[104] = 8'h02;
assign INPUT_A[105] = 8'h02;
assign INPUT_A[106] = 8'h00;
assign INPUT_A[107] = 8'h00;
assign INPUT_A[108] = 8'h00;
assign INPUT_A[109] = 8'h00;
assign INPUT_A[110] = 8'h00;
assign INPUT_A[111] = 8'h00;
assign INPUT_A[112] = 8'h08;
assign INPUT_A[113] = 8'h00;
assign INPUT_A[114] = 8'h00;
assign INPUT_A[115] = 8'h00;
assign INPUT_A[116] = 8'h00;
assign INPUT_A[117] = 8'h00;
assign INPUT_A[118] = 8'h00;
assign INPUT_A[119] = 8'h00;


assign INPUT_A[120] = 8'h00;
assign INPUT_A[121] = 8'h00;
assign INPUT_A[122] = 8'h00;
assign INPUT_B[000] = 8'h00;
assign INPUT_B[001] = 8'h00;
assign INPUT_B[002] = 8'h00;
assign INPUT_B[003] = 8'h00;
assign INPUT_B[004] = 8'h00;
assign INPUT_B[005] = 8'h00;
assign INPUT_B[006] = 8'h00;
assign INPUT_B[007] = 8'h01;
assign INPUT_B[008] = 8'h00;
assign INPUT_B[009] = 8'h00;
assign INPUT_B[010] = 8'h00;
assign INPUT_B[011] = 8'h00;
assign INPUT_B[012] = 8'h00;
assign INPUT_B[013] = 8'h00;
assign INPUT_B[014] = 8'h02;
assign INPUT_B[015] = 8'h04;
assign INPUT_B[016] = 8'h00;
assign INPUT_B[017] = 8'h00;
assign INPUT_B[018] = 8'h00;
assign INPUT_B[019] = 8'h00;
assign INPUT_B[020] = 8'h00;
assign INPUT_B[021] = 8'h04;
assign INPUT_B[022] = 8'h02;
assign INPUT_B[023] = 8'h09;
assign INPUT_B[024] = 8'h00;
assign INPUT_B[025] = 8'h00;
assign INPUT_B[026] = 8'h00;
assign INPUT_B[027] = 8'h00;
assign INPUT_B[028] = 8'h06;
assign INPUT_B[029] = 8'h05;
assign INPUT_B[030] = 8'h01;
assign INPUT_B[031] = 8'h00;
assign INPUT_B[032] = 8'h00;
assign INPUT_B[033] = 8'h00;
assign INPUT_B[034] = 8'h00;
assign INPUT_B[035] = 8'h09;
assign INPUT_B[036] = 8'h05;
assign INPUT_B[037] = 8'h09;
assign INPUT_B[038] = 8'h02;
assign INPUT_B[039] = 8'h08;
assign INPUT_B[040] = 8'h00;
assign INPUT_B[041] = 8'h00;
assign INPUT_B[042] = 8'h04;
assign INPUT_B[043] = 8'h02;
assign INPUT_B[044] = 8'h07;
assign INPUT_B[045] = 8'h08;
assign INPUT_B[046] = 8'h04;
assign INPUT_B[047] = 8'h09;
assign INPUT_B[048] = 8'h00;
assign INPUT_B[049] = 8'h09;
assign INPUT_B[050] = 8'h00;
assign INPUT_B[051] = 8'h06;
assign INPUT_B[052] = 8'h04;
assign INPUT_B[053] = 8'h01;
assign INPUT_B[054] = 8'h07;
assign INPUT_B[055] = 8'h05;
assign INPUT_B[056] = 8'h07;
assign INPUT_B[057] = 8'h00;
assign INPUT_B[058] = 8'h04;
assign INPUT_B[059] = 8'h01;
assign INPUT_B[060] = 8'h01;
assign INPUT_B[061] = 8'h06;
assign INPUT_B[062] = 8'h09;
assign INPUT_B[063] = 8'h09;
assign INPUT_B[064] = 8'h03;
assign INPUT_B[065] = 8'h07;
assign INPUT_B[066] = 8'h07;
assign INPUT_B[067] = 8'h01;
assign INPUT_B[068] = 8'h04;
assign INPUT_B[069] = 8'h03;
assign INPUT_B[070] = 8'h08;
assign INPUT_B[071] = 8'h00;
assign INPUT_B[072] = 8'h08;
assign INPUT_B[073] = 8'h00;
assign INPUT_B[074] = 8'h01;
assign INPUT_B[075] = 8'h01;
assign INPUT_B[076] = 8'h03;
assign INPUT_B[077] = 8'h09;
assign INPUT_B[078] = 8'h00;
assign INPUT_B[079] = 8'h00;
assign INPUT_B[080] = 8'h00;
assign INPUT_B[081] = 8'h02;
assign INPUT_B[082] = 8'h09;
assign INPUT_B[083] = 8'h02;
assign INPUT_B[084] = 8'h01;
assign INPUT_B[085] = 8'h00;
assign INPUT_B[086] = 8'h00;
assign INPUT_B[087] = 8'h00;
assign INPUT_B[088] = 8'h03;
assign INPUT_B[089] = 8'h06;
assign INPUT_B[090] = 8'h03;
assign INPUT_B[091] = 8'h09;
assign INPUT_B[092] = 8'h00;
assign INPUT_B[093] = 8'h00;
assign INPUT_B[094] = 8'h00;
assign INPUT_B[095] = 8'h00;
assign INPUT_B[096] = 8'h08;
assign INPUT_B[097] = 8'h02;
assign INPUT_B[098] = 8'h09;
assign INPUT_B[099] = 8'h00;
assign INPUT_B[100] = 8'h00;
assign INPUT_B[101] = 8'h00;
assign INPUT_B[102] = 8'h00;
assign INPUT_B[103] = 8'h00;
assign INPUT_B[104] = 8'h05;
assign INPUT_B[105] = 8'h00;
assign INPUT_B[106] = 8'h00;
assign INPUT_B[107] = 8'h00;
assign INPUT_B[108] = 8'h00;
assign INPUT_B[109] = 8'h00;
assign INPUT_B[110] = 8'h00;
assign INPUT_B[111] = 8'h00;
assign INPUT_B[112] = 8'h04;
assign INPUT_B[113] = 8'h00;
assign INPUT_B[114] = 8'h00;
assign INPUT_B[115] = 8'h00;
assign INPUT_B[116] = 8'h00;
assign INPUT_B[117] = 8'h00;
assign INPUT_B[118] = 8'h00;
assign INPUT_B[119] = 8'h00;


serial2mem #(.WIDTH(WIDTH), .SIZE(SIZE))serial2mem_inst0(
  .clock   (serial2mem_clock   )                                   ,  
  .nreset  (serial2mem_nreset  )                                   ,// r=1,w=0
  .rw      (serial2mem_rw      )                                   , //Dado válido na entrada
  .valid_i (serial2mem_valid_i )                                   , //Dado válido na entrada
  .rready_i(serial2mem_rready_i)                                   , //Pronto para receber uma resposta
  .rvalid_o(serial2mem_rvalid_o)                                   , //Resposta Válida(Operação concluida)
  .ready_o (serial2mem_ready_o )                                   , //Pronto para receber um dado valido na entrada
  .in_data (serial2mem_in_data )                                   ,
  .out_data(serial2mem_out_data) 
);
  assign uart_clock = clock;
  assign uart_nreset = nreset;

  assign serial2mem_nreset =nreset;
  assign serial2mem_clock =clock;
  assign serial2mem_valid_i = 1;

  initial begin
     clock = 0;
    nreset = 1;
    #1 nreset =0;
    #1 nreset = 1;
    //#(40_300_000)$finish;
  end
  assign uart_data_tx_in = (cnt1!=122) ? INPUT_A[cnt1] : INPUT_B[cnt2];
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

    always_ff@(posedge uart_ready_tx_out, negedge nreset)begin
      if(!nreset)begin
        cnt1 <= 0;
        cnt2 <= 0;
      end else begin
        cnt1 <= (cnt1 == 122) ? cnt1:cnt1 +1   ;
        cnt2 <= (cnt1 == 122)? cnt2 +1 : 0;
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