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


module AXI_Stream_Systolic_Core#(parameter  BYTESIZES = 128, WIDTHx = 4,SIZE = 32,WIDTH =8)(
        // Sinais de sistema
        input wire          clock,
        input wire          resetn,

        // Interface Slave AXI Stream (Entrada)
        input wire          s_axis_tvalid,
        output wire         s_axis_tready,
        input wire [63:0]   s_axis_tdata,
        input wire          s_axis_tlast,
        // ... outros sinais opcionais como TUSER

        // Interface Master AXI Stream (Saída) 
        output wire          m_axis_tvalid,
        input wire          m_axis_tready,
        output wire [63:0]   m_axis_tdata,
        output wire          m_axis_tlast
        // ... outros sinais opcionais
);
//Update 66

//assign m_axis_tdata =6764553;
//assign m_axis_tvalid  =1;
//assign  m_axis_tlast = m_axis_tvalid && m_axis_tready;

SystolicCoreTop #(
   .BYTESIZES(BYTESIZES),.WIDTHx(WIDTHx),.SIZE(SIZE),.WIDTH(WIDTH)
)   SystolicCore0(
        .clock               (clock                           )      ,// input
        .nreset              (resetn                          )      ,// input 


        .uart_valid_rx_in    (s_axis_tvalid                   )      ,//  input
        .uart_ready_rx_out   (s_axis_tready                   )      , // output
        .s_axis_tlast        (s_axis_tlast                    )      ,//  output
        .uart_data_rx_out    (s_axis_tdata                    )      ,//  input 8 Bits / 1 Byte
        
        .uart_data_tx_in     (m_axis_tdata                    )      ,// output 8 Bits
        .uart_valid_tx_in    (m_axis_tvalid                   )      ,// output
        .uart_ready_tx_out   (m_axis_tready                   )      ,// input
        .m_axis_tlast        (m_axis_tlast                    )       // output
  
);



endmodule
