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
logic valid, ready_env_uart_rx,EvenT_SevenToZero,EvenT_SevenToZero_next;
logic [BYTESIZES-1:0] data_rx_out;
logic [BYTESIZES-1:0] data_rx_out1;
logic [SIZE*WIDTHx-1:0] a; 
logic [SIZE*WIDTHx-1:0] b; 
logic [WIDTH-1:0] Cout_DUT[SIZE-1:0][SIZE-1:0];

logic [3:0]cnt1,next_cnt1;


logic [WIDTH-1:0]IMPUT_A[2*SIZE-1:0];
logic [WIDTH-1:0]IMPUT_B[2*SIZE-1:0];

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
    .clock            (clock        )                              ,
    .nreset           (nreset       )                              ,
    .valid_i          (1            )                              ,
    .a_input          (a            )                              ,
    .b_input          (b            )                              ,
    .ready_o          (             )                              ,
    .output_produc_a_b(Cout_DUT )
);

assign nreset = !btn[0];
assign next_cnt1 =  cnt1 +1;
always_ff@(posedge ready_env_uart_rx, negedge nreset)begin
    if(!nreset)begin 
        cnt1 <= 0;
        for(integer i_rst = 0; i_rst < 2*SIZE; i_rst++)
            IMPUT_A[i_rst] <= '{default:0};
        
    end
    else begin 
              cnt1 <= next_cnt1 ;
              if(!cnt1)begin 
                         IMPUT_A[0] = 0;
                         IMPUT_B[0] = 0;
              end
              else begin 
                         IMPUT_A[cnt1] <=data_rx_out; 
                         IMPUT_B[cnt1] <=data_rx_out; 
              end
    end 
end




ila_0 your_instance_name (
	.clk(clock), // input wire clk
	.probe0(IMPUT_A[0]), // input wire [7:0]  probe0  
	.probe1(IMPUT_A[1]), // input wire [7:0]  probe1 
	.probe2(IMPUT_A[2]), // input wire [7:0]  probe2 
	.probe3(IMPUT_A[3]), // input wire [7:0]  probe3 
	.probe4(IMPUT_A[4]), // input wire [7:0]  probe4 
	.probe5(IMPUT_A[5]), // input wire [7:0]  probe5 
	.probe6(IMPUT_A[6]), // input wire [7:0]  probe6 
	.probe7(IMPUT_A[7]), // input wire [7:0]  probe7 
	.probe8(IMPUT_A[8]), // input wire [7:0]  probe0  
	.probe9(IMPUT_A[9]), // input wire [7:0]  probe1 
	.probe10(IMPUT_A[10]), // input wire [7:0]  probe2 
	.probe11(IMPUT_A[11]), // input wire [7:0]  probe3 
	.probe12(IMPUT_A[12]), // input wire [7:0]  probe4 
	.probe13(IMPUT_A[13]), // input wire [7:0]  probe5 
	.probe14(IMPUT_A[14]), // input wire [7:0]  probe6 
    .probe15(IMPUT_A[15]), // input wire [7:0]  probe6 
	.probe16(IMPUT_B[0]), // input wire [7:0]  probe0  
	.probe17(IMPUT_B[1]), // input wire [7:0]  probe1 
	.probe18(IMPUT_B[2]), // input wire [7:0]  probe2 
	.probe19(IMPUT_B[3]), // input wire [7:0]  probe3 
	.probe20(IMPUT_B[4]), // input wire [7:0]  probe4 
	.probe21(IMPUT_B[5]), // input wire [7:0]  probe5 
	.probe22(IMPUT_B[7]), // input wire [7:0]  probe7 
	.probe23(IMPUT_B[6]), // input wire [7:0]  probe6 
	.probe24(IMPUT_B[8]), // input wire [7:0]  probe0  
	.probe25(IMPUT_B[9]), // input wire [7:0]  probe1 
	.probe26(IMPUT_B[10]), // input wire [7:0]  probe2 
	.probe27(IMPUT_B[11]), // input wire [7:0]  probe3 
	.probe28(IMPUT_B[12]), // input wire [7:0]  probe4 
	.probe29(IMPUT_B[13]), // input wire [7:0]  probe5 
	.probe30(IMPUT_B[14]), // input wire [7:0]  probe6 
    .probe31(IMPUT_B[15]), // input wire [7:0]  probe6 
	.probe32(cnt1), // input wire [3:0]  probe8 
	.probe33(next_cnt1), // input wire [0:0]  probe9
	.prob34(ready_env_uart_rx) // input wire [0:0]  probe10
);
//always_comb begin
//    case(cnt)
//        0:a = data_rx_out;
//        1:b = data_rx_out;
//    endcase
//end
//assign led = !btn[2] ?  data_rx_out[7:4]: data_rx_out[3:0];
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
