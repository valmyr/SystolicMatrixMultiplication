`timescale 1ns / 1ps
module tb;    
    logic clock   , nreset;
  initial begin
     clock = 0;
    nreset = 1;
    #1 nreset =0;
    #1 nreset = 1;

    #100 $finish;
  end
  always #(1)clock=~clock;
  //xrun ./tb_fpga.sv ../rtl/Arty7_top_sim.sv ../rtl/systolicMatrixMultiply.sv ../rtl/accumulator.sv -access +rwc +gui


  Arty7_top_sim a(
    .clock       (clock)    ,
    .sw          (0)    ,
    .btn         (nreset )   ,
    .uart_txd_in (0)     ,
    .uart_rxd_out ()  ,
    .led     ()        ,
    .led0RGB ()        ,
    .led1RGB ()        ,
    .led2RGB ()        ,
    .led3RGB ()         
);
endmodule