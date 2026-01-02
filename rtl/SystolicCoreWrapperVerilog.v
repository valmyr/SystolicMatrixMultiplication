`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Valmir F. Silva
// 
// Create Date: 10/20/2025 09:23:21 AM
// Design Name: 
// Module Name: SystoliCore
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: UART, SYSTOLICMATRIXMILTIPLY, SERIAL2MEM, SYSTOLICCONTROLUNIT,CLOCKHATE
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SystolicCoreWrapperVerilogGlobal#(
    parameter  BYTESIZES = 8, WIDTHx = 4,SIZE = 16,WIDTH =8
)(
    input  wire                    clk                     ,
    input  wire                    nrst                    ,
    input wire [15:0 ]             gpio_input,
    output wire [15:0]             gpio_output
);


wire [7:0] uart_data_rx_out;
wire [7:0] uart_data_tx_in;

wire uart_ready_rx_out;
wire uart_valid_rx_in;
wire uart_valid_tx_in;
GPIOinput u_gpio_i(
            .clk              (clk              ),
            .nreset           (nrst           ),
            .GPIO_0_tri_o     (gpio_input       ),
            .reg_valid_data   (uart_ready_rx_out),
            .data             (uart_data_rx_out )
);


GPIOoutput u_gpio_o(
            .clk             (clk               )   ,
            .nreset          (nrst            )   ,
            .uart_valid_tx_in(uart_valid_tx_in  )   ,          
            .GPIO_0_tri_i    (gpio_output       )   ,
            .uart_data_tx_in (uart_data_tx_in   )
);
SystolicCoreTop #(
   .BYTESIZES(BYTESIZES),.WIDTHx(WIDTHx),.SIZE(SIZE),.WIDTH(WIDTH)
)   SystolicCore0(
        .clock               (clk               )      ,// input
        .nreset              (nrst              )      ,// input 
        .uart_data_rx_out    (uart_data_rx_out  )      ,// input 8 Bits / 1 Byte
        .uart_data_tx_in     (uart_data_tx_in   )      ,// output 8 Bits
        .uart_valid_rx_in    (uart_valid_rx_in  )      ,// input
        .uart_valid_tx_in    (uart_valid_tx_in )      ,//  output 
        .uart_ready_tx_out   (clk               )      ,// input
        .uart_ready_rx_out   (uart_ready_rx_out )       // input
  
);
  ila_0 your_instance_name (
  	.clk(clk), // input wire clk
  	.probe0(uart_data_rx_out), // input wire [31:0]  probe0  
  	.probe1(uart_ready_rx_out), // input wire [0:0]  probe1 
  	.probe2(enable_write), // input wire [0:0]  probe2 
  	.probe3(reg_valid_data) // input wire [0:0]  probe3
  );
  ila_0 your_instance_name1 (
  	.clk(clk), // input wire clk
  	.probe0(uart_data_tx_in), // input wire [31:0]  probe0  
  	.probe1(uart_valid_tx_in), // input wire [0:0]  probe1 
  	.probe2(enable_write), // input wire [0:0]  probe2 
  	.probe3(reg_valid_data) // input wire [0:0]  probe3
  );
endmodule