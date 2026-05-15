`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2026 11:19:56 PM
// Design Name: 
// Module Name: onlyFPGA
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


module onlyFPGA(

        //input wire clock
        input wire clk_125mhz_p,
        input wire clk_125mhz_n,
        input wire rst_n_async
    );
    
 wire clock;
 /*IBUFDS #(
 .DIFF_TERM("TRUE"),
 .IBUF_LOW_PWR("FALSE")) ibufds_clk (
 .I (clk_125mhz_p),
 .IB(clk_125mhz_n),
 .O (clock))
 */
 
IBUFDS u2 (.I(clk_125mhz_p), .IB(clk_125mhz_n), .O(clock));
   

parameter WIDTHxSS = 4, SIZES = 16;
parameter BYTESIZESS = 2*WIDTHxSS *SIZES;
reg [31:0] cnt5;
wire [BYTESIZESS-1:0] dout_mem;
always@(posedge clock, negedge rst_n_async)begin
    if(!rst_n_async) cnt5 <= 0;
    else cnt5<= cnt5 ==52 ? 0:cnt5+1;
end 
matrix_in_memory u_mem_block (
  .clka(clock),    // input wire clka
  .ena(1),      // input wire ena
  .wea(0),      // input wire [0 : 0] wea
  .addra(cnt5),  // input wire [9 : 0] addra
  .dina(0),    // input wire [7 : 0] dina
  .douta(dout_mem)  // output wire [7 : 0] douta
);

ila_0 your_instance_name (
	.clk(clock), // input wire clk


	.probe0(dout_mem) // input wire [0:0] probe0
);


AXI_Stream_Systolic_Core #(.BYTESIZES(BYTESIZESS), .WIDTHx(WIDTHxSS),.SIZE(SIZES),.WIDTH(2*WIDTHxSS))Core0 (
        // Sinais de sistema
        .clock(clock),
        .resetn(rst_n_async),

        // Interface Slave AXI Stream (Entrada)
        .s_axis_tvalid(1),
        .s_axis_tready(),
        .s_axis_tdata(dout_mem),
        .s_axis_tlast(),
        // ... outros sinais opcionais como TUSER

        // Interface Master AXI Stream (Saída) 
        .m_axis_tvalid(),
        .m_axis_tready(1),
        .m_axis_tdata(),
        .m_axis_tlast()
        // ... outros sinais opcionais
);
    
    
    
endmodule
