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


module tb_cadence();
     
    


logic clock;
logic rst_n_async;

parameter WIDTHxSS = 4, SIZES = 8;
parameter BYTESIZESS = 2*WIDTHxSS *SIZES;
reg [31:0] cnt5;
logic  [BYTESIZESS/2-1:0]dout_mem[211:0];


initial begin
  clock = 0;
  rst_n_async =1;
  #1rst_n_async= 0;
  #1rst_n_async= 1;
  $readmemh("/home/valmir.silva/Desktop/im2col/git/SystolicCore/tb/mem8x8.hex",dout_mem);
end

always #1 clock = ~clock;
always@(posedge clock, negedge rst_n_async)begin
    if(!rst_n_async) cnt5 <= 0;
    else cnt5<= cnt5 ==15+6*SIZES-1 ? 1:cnt5+1;
end 




AXI_Stream_Systolic_Core #(.BYTESIZES(BYTESIZESS), .WIDTHx(WIDTHxSS),.SIZE(SIZES),.WIDTH(2*WIDTHxSS)) uut_systolic_tb (
        // Sinais de sistema
        .clock(clock),
        .resetn(rst_n_async),

        // Interface Slave AXI Stream (Entrada)
        .s_axis_tvalid('b1),
        .s_axis_tready(),
        .s_axis_tdata(dout_mem[cnt5]),
        .s_axis_tlast(),
        // ... outros sinais opcionais como TUSER

        // Interface Master AXI Stream (Saída) 
        .m_axis_tvalid(),
        .m_axis_tready('b1),
        .m_axis_tdata(),
        .m_axis_tlast()
        // ... outros sinais opcionais
);

    
    
    
endmodule
