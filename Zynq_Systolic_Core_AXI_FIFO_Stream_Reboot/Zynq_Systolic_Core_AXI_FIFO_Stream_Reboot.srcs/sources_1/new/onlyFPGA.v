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
        input wire nreset,
        input wire clock
    );
    
reg [31:0] cnt5;
wire [31:0] dout_mem;
always@(posedge clock, negedge nreset)begin
    if(!nreset) cnt5 <= 0;
    else cnt5<= cnt5 ==1312 ? cnt5:cnt5+1;
end 
matrix_in_memeory your_instance_name (
  .clka(clock),    // input wire clka
  .ena(1),      // input wire ena
  .wea(0),      // input wire [0 : 0] wea
  .addra(cnt5),  // input wire [9 : 0] addra
  .dina(0),    // input wire [7 : 0] dina
  .douta(dout_mem)  // output wire [7 : 0] douta
);

AXI_Stream_Systolic_Core Core0 (
        // Sinais de sistema
        .clock(clock),
        .resetn(nreset),

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
