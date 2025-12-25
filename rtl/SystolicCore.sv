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


module SystolicCoreTop#(
    parameter  BYTESIZES = 8, OVERSAMPLING = 16, BAUDRATE = 115200,	COUNTER_CLOCK_INPUT = 100_000_000,CLOCK_REF=10_000_000, WIDTHx = 4,SIZE = 8,WIDTH =8, CLOCK_TRANSFER_PC= 10_000
)(
    input  logic                    clock                     ,
    input  logic                    nreset                    ,
    input  logic [BYTESIZES-1:0]    uart_data_rx_out          ,
    output logic [BYTESIZES-1:0]    uart_data_tx_in           ,
    input  logic                    uart_ready_rx_out         ,
    input  logic                    uart_ready_tx_out         ,
    output logic                    uart_valid_tx_in          ,
    output logic                    uart_valid_rx_in
);

//Pinout Unidade de Controle.
//-------------------------------------------------------------------------------------------------
logic                   systolicControlUnit_clock                                                               ;
logic                   systolicControlUnit_nreset                                                              ;
(*dont_touch = "true"*)
logic                   systolicControlUnit_uart_valid_rx_in                                                    ;
logic                   systolicControlUnit_serial2mem_opa_rvalid_o                                             ;
logic                   systolicControlUnit_serial2mem_opb_rvalid_o                                             ;
logic                   systolicControlUnit_syst_rvalid_o                                                       ;
logic                   systolicControlUnit_mem2serial_rvalid_o                                                 ;
logic                   systolicControlUnit_serial2mem_opa_valid_i                                              ;
logic                   systolicControlUnit_serial2mem_opb_valid_i                                              ;
logic                   systolicControlUnit_serial2mem_opa_rw                                                   ;
logic                   systolicControlUnit_serial2mem_opb_rw                                                   ;
logic                   systolicControlUnit_serial2mem_opa_rready_i                                             ;
logic                   systolicControlUnit_serial2mem_opb_rready_i                                             ;
logic                   systolicControlUnit_mem2serial_valid_i                                                  ;
logic                   systolicControlUnit_mem2serial_rready_i                                                 ;
logic                   systolicControlUnit_uart_valid_tx_in                                                    ;
logic                   systolicControlUnit_syst_valid_i                                                        ;
logic                   systolicControlUnit_syst_rready_i                                                       ;
logic                   systolicControlUnit_starting_frame_identified                                           ;
logic                   systolicControlUnit_uart_ready_rx                                                       ;
logic                   systolicControlUnit_serial2mem_opa_ready_o                                              ;
logic                   systolicControlUnit_serial2mem_opb_ready_o                                              ;
logic                   systolicControlUnit_read_done                                                           ;
logic             [31:0]systolicControlUnit_frame_start                                                         ;
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
//Pinout Systolic
//--------------------------------------------------------------------------------------------------
logic                     syst_clock                                                                            ;
logic                     syst_nreset                                                                           ;
logic                     syst_valid_i                                                                          ;
logic                     syst_rready_i                                                                         ;
logic [SIZE*WIDTHx-1:0]   syst_a_input                                                                          ;
logic [SIZE*WIDTHx-1:0]   syst_b_input                                                                          ;
logic                     syst_ready_o                                                                          ;
logic                     syst_rvalid_o                                                                         ;
(*dont_touch = "true"*) 
logic [WIDTH-1:0]         syst_output_produc_a_b [SIZE-1:0][SIZE-1:0]                   ;

logic                     syst_read_done                                                                        ;
//--------------------------------------------------------------------------------------------------
//Pinout MEMA
logic                   serial2mem_opa_clock                                                                    ;
logic                   serial2mem_opa_nreset                                                                   ;
logic                   serial2mem_opa_rw                                                                       ;
logic                   serial2mem_opa_valid_i                                                                  ;
logic                   serial2mem_opa_rready_i                                                                 ;
logic                   serial2mem_opa_rvalid_o                                                                 ;
logic                   serial2mem_opa_ready_o                                                                  ;
logic [WIDTHx-1:0]      serial2mem_opa_in_data                                                                  ;
logic [SIZE*WIDTHx-1:0] serial2mem_opa_out_data                                                                 ;
logic [SIZE*WIDTHx-1:0] serial2mem_opa_buf_data                                                                 ;
//---------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------
logic                   serial2mem_opb_clock                                                                    ;
logic                   serial2mem_opb_nreset                                                                   ;
logic                   serial2mem_opb_rw                                                                       ;
logic                   serial2mem_opb_valid_i                                                                  ;
logic                   serial2mem_opb_rready_i                                                                 ;
logic                   serial2mem_opb_ready_o                                                                  ;
logic                   serial2mem_opb_rvalid_o                                                                 ;
logic [WIDTHx-1:0]      serial2mem_opb_in_data                                                                  ;
logic [SIZE*WIDTHx-1:0] serial2mem_opb_out_data                                                                 ;
logic [SIZE*WIDTHx-1:0] serial2mem_opb_buf_data                                                                 ;

//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
//Pinout MEM2SERIAL
logic                   mem2serial_clock                                                                        ;
logic                   mem2serial_nreset                                                                       ;
(*dont_touch = "true"*) 
logic [WIDTH-1:0]       mem2serial_pmatrix_in [SIZE-1:0][SIZE-1:0]                                              ;
logic                   mem2serial_valid_i                                                                      ;
logic                   mem2serial_rready_i                                                                     ;
logic                   mem2serial_rvalid_o                                                                     ;
logic                   mem2serial_ready_o                                                                      ;
logic  [WIDTH-1:0]      mem2serial_smatrix_out                                                                  ;
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
//Pinout SampleHatePC
logic ref_clock_in_clock                                                                                        ;
logic ref_clock_nreset                                                                                          ;
logic ref_clock_out_clock_ref                                                                                   ;
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
//Atribuição de clocks
assign syst_clock                = clock                                                                        ;
assign uart_clock                = clock                                                                        ;
assign mem2serial_clock          = uart_ready_tx_out                                                      ;//A definir 5kHz
assign serial2mem_opa_clock      = clock           ;
assign serial2mem_opb_clock      = clock           ;
assign systolicControlUnit_clock = clock                                                                        ;
assign ref_clock_in_clock        = clock                                                                        ;
//Atribuição de nreset

assign syst_nreset                = nreset                                                                      ;
assign uart_nreset                = nreset                                                                      ;
assign serial2mem_opa_nreset      = nreset                                                                      ;
assign serial2mem_opb_nreset      = nreset                                                                      ;
assign mem2serial_nreset          = nreset                                                                      ;
assign ref_clock_nreset           = nreset                                                                      ; 
assign systolicControlUnit_nreset = nreset                                                                      ;

// assign uart_data_tx_in = systolicControlUnit_mem2serial_valid_i?  mem2serial_smatrix_out : 8'haf;                                                                 ;
(*dont_touch = "true"*) 
always_comb casex({systolicControlUnit_mem2serial_valid_i,mem2serial_rvalid_o})
    2'b10:
        uart_data_tx_in = mem2serial_smatrix_out;
    2'b01:
        uart_data_tx_in = 8'hef;
    default:
        uart_data_tx_in = 8'hef;

endcase



//---------------------------------------------------------------------------------------------------------------------------------

// ATRIBUIÇÂO MEMORIA A/B
//assign serial2mem_opa_in_data = (systolicControlUnit_serial2mem_opa_valid_i & !systolicControlUnit_serial2mem_opa_rw) ? uart_data_rx_out: 0             ;
//assign serial2mem_opb_in_data = (systolicControlUnit_serial2mem_opb_valid_i & !systolicControlUnit_serial2mem_opb_rw) ? uart_data_rx_out: 0             ;
assign serial2mem_opa_in_data = uart_data_rx_out;//: 0            ;
assign serial2mem_opb_in_data = uart_data_rx_out;//: 0            ;
assign syst_a_input = (systolicControlUnit_syst_valid_i & systolicControlUnit_serial2mem_opa_rw) ? serial2mem_opa_out_data :0                           ;
assign syst_b_input = (systolicControlUnit_syst_valid_i & systolicControlUnit_serial2mem_opb_rw) ? serial2mem_opb_out_data :0                           ;
(*dont_touch = "true"*) 
assign mem2serial_pmatrix_in = syst_output_produc_a_b;
//assign mem2serial_pmatrix_in[0][0] = 8'd11;
//assign mem2serial_pmatrix_in[0][1] = 8'd12;
//assign mem2serial_pmatrix_in[0][2] = 8'd13;
//assign mem2serial_pmatrix_in[0][3] = 8'd14;
//assign mem2serial_pmatrix_in[1][0] = 8'd15;
//assign mem2serial_pmatrix_in[1][1] = 8'd16;
//assign mem2serial_pmatrix_in[1][2] = 8'd17;
//assign mem2serial_pmatrix_in[1][3] = 8'd118;
//assign mem2serial_pmatrix_in[2][0] = 8'd119;
//assign mem2serial_pmatrix_in[2][1] = 8'd111;
//assign mem2serial_pmatrix_in[2][2] = 8'd112;
//assign mem2serial_pmatrix_in[2][3] = 8'd113;
//assign mem2serial_pmatrix_in[3][0] = 8'd114;
//assign mem2serial_pmatrix_in[3][1] = 8'd115;
//assign mem2serial_pmatrix_in[3][2] = 8'd116;
//assign mem2serial_pmatrix_in[3][3] = 8'd117;
//[[1,2,3,4],[4,3,2,1],[9,8,7,6],[7,8,9,0]];
assign systolicControlUnit_serial2mem_opa_ready_o = serial2mem_opa_ready_o ;
assign systolicControlUnit_serial2mem_opb_ready_o = serial2mem_opb_ready_o ;
//---------------------------------------------------------------------------------------------------------------------------------

//Atribuições unidade de Controle
//---------------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------------------------------
assign systolicControlUnit_serial2mem_opa_rvalid_o =  serial2mem_opa_rvalid_o                                   ;
assign systolicControlUnit_serial2mem_opb_rvalid_o =  serial2mem_opb_rvalid_o                                   ;
assign systolicControlUnit_syst_rvalid_o           =  syst_rvalid_o                                             ;
assign systolicControlUnit_mem2serial_rvalid_o     =  mem2serial_rvalid_o                                       ;
assign systolicControlUnit_read_done               = syst_read_done                                             ;

assign serial2mem_opa_valid_i                      =  systolicControlUnit_serial2mem_opa_valid_i                ;
assign serial2mem_opb_valid_i                      =  systolicControlUnit_serial2mem_opb_valid_i                ;
assign serial2mem_opa_rw                           =  systolicControlUnit_serial2mem_opa_rw                     ;
assign serial2mem_opb_rw                           =  systolicControlUnit_serial2mem_opb_rw                     ;
assign serial2mem_opa_rready_i                     =  systolicControlUnit_serial2mem_opa_rready_i               ;
assign serial2mem_opb_rready_i                     =  systolicControlUnit_serial2mem_opb_rready_i               ;
assign mem2serial_valid_i                          =  systolicControlUnit_mem2serial_valid_i                    ;
assign mem2serial_rready_i                         =  systolicControlUnit_mem2serial_rready_i                   ;
assign syst_valid_i                                =  systolicControlUnit_syst_valid_i                          ;
assign syst_rready_i                               =  systolicControlUnit_syst_rready_i                         ;  
assign uart_valid_tx_in                            =  systolicControlUnit_uart_valid_tx_in                      ;
assign systolicControlUnit_uart_ready_rx           = uart_ready_rx_out;
(*dont_touch = "true"*) 
assign systolicControlUnit_uart_valid_rx_in        =  1                                          ; 
//---------------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------------------------------


//logic [111:0]fifo_d_a;
//logic [111:0]fifo_d_b;
(*dont_touch = "true"*) 
systolicMatrixMultiply  #(.WIDTH(WIDTH),.WIDTHx(WIDTHx),.SIZE(SIZE)) DUT_MatrixMultiplyM0(
    .nreset                     (syst_nreset                                )                  ,
    .valid_i                    (syst_valid_i                               )                  ,
    .rready_i                   (syst_rready_i                              )                  ,
    .a_input                    (syst_a_input                               )                  ,
    .b_input                    (syst_b_input                               )                  ,
    .ready_o                    (syst_ready_o                               )                  ,
    .rvalid_o                   (syst_rvalid_o                              )                  ,
    .clock                      (syst_clock                                 )                  ,
    .output_produc_a_b          (syst_output_produc_a_b                     )                  ,
    .read_done                  (syst_read_done                             )
);
(*dont_touch = "true"*) 
serial2mem #(.WIDTH(WIDTHx), .SIZE(SIZE))serial2mem_opA(
    .clock                      (serial2mem_opa_clock                       )                 ,  
    .nreset                     (serial2mem_opa_nreset                      )                 ,// r=1,w=0
    .rw                         (serial2mem_opa_rw                          )                 , //Dado válido na entrada
    .valid_i                    (serial2mem_opa_valid_i                     )                 , //Dado válido na entrada
    .rready_i                   (serial2mem_opa_rready_i                    )                 , //Pronto para receber uma resposta
    .rvalid_o                   (serial2mem_opa_rvalid_o                    )                 , //Resposta Válida(Operação concluida)
    .ready_o                    (serial2mem_opa_ready_o                     )                 , //Pronto para receber um dado valido na entrada
    .in_data                    (serial2mem_opa_in_data                     )                 ,
    .out_data                   (serial2mem_opa_out_data                    )                 ,
    .single_port_ram_di         (serial2mem_opa_buf_data                    ),
    .uart_ready_rx_out          (uart_ready_rx_out                          )
    //.fifo_d(fifo_d_a)

);
(*dont_touch = "true"*) 
serial2mem #(.WIDTH(WIDTHx), .SIZE(SIZE))serial2mem_opB(
    .clock                      (serial2mem_opb_clock                       )                 ,  
    .nreset                     (serial2mem_opb_nreset                      )                 ,// r=1,w=0
    .rw                         (serial2mem_opb_rw                          )                 , //Dado válido na entrada
    .valid_i                    (serial2mem_opb_valid_i                     )                 , //Dado válido na entrada
    .rready_i                   (serial2mem_opb_rready_i                    )                 , //Pronto para receber uma resposta
    .rvalid_o                   (serial2mem_opb_rvalid_o                    )                 , //Resposta Válida(Operação concluida)
    .ready_o                    (serial2mem_opb_ready_o                     )                 , //Pronto para receber um dado valido na entrada
    .in_data                    (serial2mem_opb_in_data                     )                 ,
    .out_data                   (serial2mem_opb_out_data                    )                 ,
    .single_port_ram_di         (serial2mem_opb_buf_data                    )                 ,
    .uart_ready_rx_out          (uart_ready_rx_out                          )
    //.fifo_d(fifo_d_b)
);
(*dont_touch = "true"*) 
mem2seriala #(.SIZE(SIZE),.WIDTH(BYTESIZES))mem2serial_transfer_pc(
    .clock                      (mem2serial_clock                           )                 ,
    .nreset                     (mem2serial_nreset                          )                 ,
    .pmatrix_in                 (mem2serial_pmatrix_in                      )                 ,
    .valid_i                    (mem2serial_valid_i                         )                 , //Dado válido na entrada
    .rready_i                   (mem2serial_rready_i                        )                 , //Pronto para receber uma resposta
    .rvalid_o                   (mem2serial_rvalid_o                        )                 , //Resposta Válida(Operação concluida)
    .ready_o                    (mem2serial_ready_o                         )                 , //Pronto para receber um dado valido na entrada
    (*dont_touch = "true"*) 
    .smatrix_out                (mem2serial_smatrix_out                     )                 
);

(*dont_touch = "true"*) 
systolicControlUnitTop systolicControlUnit_Global(
    .clock                      (systolicControlUnit_clock                      )                ,
    .nreset                     (systolicControlUnit_nreset                     )                ,
    .uart_valid_rx_in           (systolicControlUnit_uart_valid_rx_in           )                ,
    .serial2mem_opa_rvalid_o    (systolicControlUnit_serial2mem_opa_rvalid_o    )                ,
    .serial2mem_opb_rvalid_o    (systolicControlUnit_serial2mem_opb_rvalid_o    )                ,
    .syst_rvalid_o              (systolicControlUnit_syst_rvalid_o              )                ,
    .mem2serial_rvalid_o        (systolicControlUnit_mem2serial_rvalid_o        )                ,
    .serial2mem_opa_valid_i     (systolicControlUnit_serial2mem_opa_valid_i     )                ,    
    .serial2mem_opb_valid_i     (systolicControlUnit_serial2mem_opb_valid_i     )                ,    
    .serial2mem_opa_rw          (systolicControlUnit_serial2mem_opa_rw          )                ,    
    .serial2mem_opb_rw          (systolicControlUnit_serial2mem_opb_rw          )                ,    
    .serial2mem_opa_rready_i    (systolicControlUnit_serial2mem_opa_rready_i    )                ,    
    .serial2mem_opb_rready_i    (systolicControlUnit_serial2mem_opb_rready_i    )                ,    
    .mem2serial_valid_i         (systolicControlUnit_mem2serial_valid_i         )                ,    
    .mem2serial_rready_i        (systolicControlUnit_mem2serial_rready_i        )                ,    
    .uart_valid_tx_in           (systolicControlUnit_uart_valid_tx_in           )                ,    
    .syst_valid_i               (systolicControlUnit_syst_valid_i               )                ,    
    .syst_rready_i              (systolicControlUnit_syst_rready_i              )                ,
    .uart_data_rx_out           (uart_data_rx_out                               )                ,
    .starting_frame_identified  (systolicControlUnit_starting_frame_identified  )                ,
    .uart_ready_rx              (systolicControlUnit_uart_ready_rx              )                ,
    .serial2mem_opa_ready_o     (systolicControlUnit_serial2mem_opa_ready_o     )                ,
    .serial2mem_opb_ready_o     (systolicControlUnit_serial2mem_opb_ready_o     )                ,
    .read_done                  (systolicControlUnit_read_done                  )                ,
    .frame_start                (systolicControlUnit_frame_start                )
);
(*dont_touch = "true"*) 
ref_clock #(.CLOCK_REF(CLOCK_TRANSFER_PC),.CLOCK_INPUT(COUNTER_CLOCK_INPUT))clock_rate_pc(
    .in_clock     (ref_clock_in_clock                                   )                ,
    .nreset       (ref_clock_nreset                                     )                ,
    .out_clock_ref(ref_clock_out_clock_ref                              )                
);

ila_3 your_instance_name (
	.clk(clock), // input wire clk


	.probe0(probe0), // input wire [0:0]  probe0  
	.probe1(probe1) // input wire [0:0]  probe1
);
/*
(*dont_touch = "true"*) 
ila_0 ILA (
	.clk(clock                                              ), // input wire clk
    .probe0 (serial2mem_opa_buf_data                        ), // input wire [7:0]  probe0  
	.probe1 (serial2mem_opb_buf_data                        ), // input wire [7:0]  probe1 
	.probe2 (serial2mem_opa_out_data                        ), // input wire [7:0]  probe2 
	.probe3 (serial2mem_opb_out_data                        ), // input wire [7:0]  probe3 
	.probe4 (uart_data_rx_out                               ), // input wire [7:0]  probe4 
	.probe5 (syst_output_produc_a_b[01][01]                 ), // input wire [7:0]  probe5 
	.probe6 (syst_output_produc_a_b[01][02]                 ), // input wire [7:0]  probe6 
	.probe7 (syst_output_produc_a_b[01][03]                 ), // input wire [7:0]  probe7 
	.probe8 (syst_output_produc_a_b[02][00]                 ), // input wire [0:0]  probe8 
	.probe9 (syst_output_produc_a_b[02][01]                 ), // input wire [0:0]  probe9 
	.probe10(syst_output_produc_a_b[02][02]                 ), // input wire [0:0]  probe10 
	.probe11(syst_output_produc_a_b[02][03]                 ), // input wire [0:0]  probe11 
	.probe12(syst_output_produc_a_b[03][00]                 ), // input wire [0:0]  probe12 
	.probe13(systolicControlUnit_frame_start[07:00]         ), // input wire [0:0]  probe13 
	.probe14(systolicControlUnit_frame_start[15:08]         ), // input wire [0:0]  probe14 
	.probe15(systolicControlUnit_frame_start[23:16]         ), // input wire [0:0]  probe15
	.probe16(systolicControlUnit_frame_start[31:24]         ),
	.probe17(uart_sdata_rx_in                               ),
	.probe18(serial2mem_opa_clock                        )
	
);*/
/*
clk_wiz_0  clock_pll
 (
  // Clock out ports
  .clk_out1(clock_sync_data),
  // Status and control signals
  .reset(~nreset),
  .locked(),
 // Clock in ports
  .clk_in1(uart_ready_rx_out)
 );*/
 /*
 
 ila_0 your_instance_name (
	.clk(clock), // input wire clk


	.probe0(serial2mem_opa_buf_data), // input wire [15:0]  probe0  
	.probe1(serial2mem_opb_buf_data), // input wire [15:0]  probe1 
	.probe2(fifo_d_a), // input wire [15:0]  probe2 
	.probe3(fifo_d_b), // input wire [7:0]  probe3 
	.probe4(serial2mem_opa_ready_o), // input wire [7:0]  probe4 
	.probe5(serial2mem_opb_ready_o), // input wire [0:0]  probe5 
	.probe6(serial2mem_opa_rvalid_o), // input wire [0:0]  probe6 
	.probe7(serial2mem_opb_rvalid_o), // input wire [0:0]  probe7 
	.probe8(uart_data_rx_out), // input wire [0:0]  probe8 
	.probe9(systolicControlUnit_clock) // input wire [0:0]  probe9
);*/
endmodule