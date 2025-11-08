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


module Arty7_top_sim(
    input  logic          clock           ,
    input  logic          uart_txd_in     ,
    output logic          uart_rxd_out    ,
    input  logic    [3:0] btn         
);
parameter  BYTESIZES = 8, OVERSAMPLING = 16, BAUDRATE = 115200,	COUNTER_CLOCK_INPUT = 100_000_000,CLOCK_REF=10_000_000;
parameter WIDTHx =4,SIZE = 4,WIDTH = 8;
parameter CLOCK_TRANSFER_PC= 10_000;
logic nreset;





//Pinout Systolic
//--------------------------------------------------------------------------------------------------
logic                   syst_clock                                   ;
logic                   syst_nreset                                  ;
logic                   syst_valid_i                                 ;
logic                   syst_rready_i                                ;
logic [SIZE*WIDTHx-1:0] syst_a_input                                 ;
logic [SIZE*WIDTHx-1:0] syst_b_input                                 ;
logic                   syst_ready_o                                 ;
logic                   syst_rvalid_o                                ;
logic [2*WIDTH-1:0]       syst_output_produc_a_b [SIZE-1:0][SIZE-1:0]  ;
//--------------------------------------------------------------------------------------------------
//Pinout MEMA
logic                  serial2mem_opa_clock                                 ;
logic                  serial2mem_opa_nreset                                ;
logic                  serial2mem_opa_rw                                    ;
logic                  serial2mem_opa_valid_i                               ;
logic                  serial2mem_opa_rready_i                              ;
logic                  serial2mem_opa_rvalid_o                              ;
logic                  serial2mem_opa_ready_o                               ;
logic [WIDTHx-1:0]      serial2mem_opa_in_data                               ;
logic [SIZE*WIDTHx-1:0] serial2mem_opa_out_data                              ;
//---------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------
logic                   serial2mem_opb_clock                                 ;
logic                   serial2mem_opb_nreset                                ;
logic                   serial2mem_opb_rw                                    ;
logic                   serial2mem_opb_valid_i                               ;
logic                   serial2mem_opb_rready_i                              ;
logic                   serial2mem_opb_ready_o                               ;
logic                   serial2mem_opb_rvalid_o                              ;
logic [WIDTHx-1:0]      serial2mem_opb_in_data                               ;
logic [SIZE*WIDTHx-1:0] serial2mem_opb_out_data                              ;
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
//Pinout UART
logic                   uart_clock                                      ;
logic                   uart_nreset                                     ;
 //pinout RX                                                       ;
logic                   uart_sdata_rx_in                                ;
logic                   uart_valid_rx_in                                ;
logic                   uart_ready_rx_out                               ;
logic   [BYTESIZES-1:0] uart_data_rx_out                                ;
 //pinout TX                                                       ;
logic                   uart_valid_tx_in                                ;
logic [BYTESIZES-1:0]   uart_data_tx_in                                 ;
logic                   uart_ready_tx_out                               ;
logic                   uart_sdata_tx_out                               ;
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
//Pinout MEM2SERIAL
logic             mem2serial_clock                                      ;
logic             mem2serial_nreset                                     ;
logic [WIDTH-1:0] mem2serial_pmatrix_in [SIZE-1:0][SIZE-1:0]            ;
logic             mem2serial_valid_i                                    ;
logic             mem2serial_rready_i                                   ;
logic             mem2serial_rvalid_o                                   ;
logic             mem2serial_ready_o                                    ;
logic  [WIDTH-1:0]mem2serial_smatrix_out                                ;
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
//Pinout SampleHatePC
logic ref_clock_in_clock                                                ;
logic ref_clock_nreset                                                  ;
logic ref_clock_out_clock_ref                                           ;
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
//Atribuição de clocks
assign syst_clock              = clock                                                ;
assign uart_clock              = clock                                                ;
assign mem2serial_clock        = ref_clock_out_clock_ref                              ;//A definir 5kHz
assign serial2mem_opa_clock    = !serial2mem_opa_rw ? uart_ready_rx_out : clock       ;
assign serial2mem_opb_clock    = !serial2mem_opb_rw ? uart_ready_rx_out : clock       ;

assign ref_clock_in_clock = clock                                       ;
//Atribuição de nreset
assign nreset                   = ~btn[0];
assign syst_nreset              = nreset                                       ;
assign uart_nreset              = nreset                                       ;
assign serial2mem_opa_nreset    = nreset                                       ;
assign serial2mem_opb_nreset    = nreset                                       ;
assign mem2serial_nreset        = nreset                                       ;
assign ref_clock_nreset         = nreset                                       ; 
//Atribuição UART
assign uart_sdata_rx_in = uart_txd_in                                   ;
assign uart_rxd_out     = uart_sdata_tx_out                             ;
assign uart_valid_rx_in =   1;//UART RX SEMPRE APTO A RECEBER DADOS.
assign uart_data_tx_in = mem2serial_smatrix_out;
//---------------------------------------------------------------------------------------------------------------------------------

// ATRIBUIÇÂO MEMORIA A/B
assign serial2mem_opa_in_data = (serial2mem_opa_valid_i & !serial2mem_opa_rw) ? uart_data_rx_out: 0;
assign serial2mem_opb_in_data = (serial2mem_opb_valid_i & !serial2mem_opb_rw) ? uart_data_rx_out: 0;
assign syst_a_input = (syst_valid_i & serial2mem_opa_rw) ? serial2mem_opa_out_data :0;
assign syst_b_input = (syst_valid_i & serial2mem_opb_rw) ? serial2mem_opb_out_data :0;
//assign mem2serial_pmatrix_in = syst_output_produc_a_b;
//---------------------------------------------------------------------------------------------------------------------------------
uart_top #(.BYTESIZES(BYTESIZES), .OVERSAMPLING(OVERSAMPLING), .BAUDRATE(BAUDRATE),	.COUNTER_CLOCK_INPUT(COUNTER_CLOCK_INPUT), .CLOCK_REF(CLOCK_REF)) uart1 (
    .clock             (uart_clock       )    ,
    .nreset            (uart_nreset      )    ,
    //pinout RX                                 
    .sdata_rx_in       (uart_sdata_rx_in )    ,
    .valid_rx_in       (uart_valid_rx_in )    ,
    .ready_rx_out      (uart_ready_rx_out)    ,
    .data_rx_out       (uart_data_rx_out )    ,  
    //pinout TX                                                  
    .valid_tx_in       (uart_valid_tx_in )    ,
    .data_tx_in        (uart_data_tx_in  )    ,
    .ready_tx_out      (uart_ready_tx_out)    ,
    .sdata_tx_out      (uart_sdata_tx_out)
);

systolicMatrixMultiply  #(.WIDTH(WIDTH),.WIDTHx(WIDTHx),.SIZE(SIZE)) DUT_MatrixMultiplyM0(
    .clock            (syst_clock              )                              ,
    .nreset           (syst_nreset             )                              ,
    .valid_i          (syst_valid_i            )                              ,
    .rready_i         (syst_rready_i           )                              ,
    .a_input          (syst_a_input            )                              ,
    .b_input          (syst_b_input            )                              ,
    .ready_o          (syst_ready_o            )                              ,
    .rvalid_o         (syst_rvalid_o           )                              ,
    .output_produc_a_b(syst_output_produc_a_b  )
);
serial2mem #(.WIDTH(WIDTHx), .SIZE(SIZE))serial2mem_opA(
  .clock   (serial2mem_opa_clock   )                                   ,  
  .nreset  (serial2mem_opa_nreset  )                                   ,// r=1,w=0
  .rw      (serial2mem_opa_rw      )                                   , //Dado válido na entrada
  .valid_i (serial2mem_opa_valid_i )                                   , //Dado válido na entrada
  .rready_i(serial2mem_opa_rready_i)                                   , //Pronto para receber uma resposta
  .rvalid_o(serial2mem_opa_rvalid_o)                                   , //Resposta Válida(Operação concluida)
  .ready_o (serial2mem_opa_ready_o )                                   , //Pronto para receber um dado valido na entrada
  .in_data (serial2mem_opa_in_data )                                   ,
  .out_data(serial2mem_opa_out_data) 
);

serial2mem #(.WIDTH(WIDTHx), .SIZE(SIZE))serial2mem_opB(
  .clock   (serial2mem_opb_clock   )                                   ,  
  .nreset  (serial2mem_opb_nreset  )                                   ,// r=1,w=0
  .rw      (serial2mem_opb_rw      )                                   , //Dado válido na entrada
  .valid_i (serial2mem_opb_valid_i )                                   , //Dado válido na entrada
  .rready_i(serial2mem_opb_rready_i)                                   , //Pronto para receber uma resposta
  .rvalid_o(serial2mem_opb_rvalid_o)                                   , //Resposta Válida(Operação concluida)
  .ready_o (serial2mem_opb_ready_o )                                   , //Pronto para receber um dado valido na entrada
  .in_data (serial2mem_opb_in_data )                                   ,
  .out_data(serial2mem_opb_out_data) 
);

mem2seriala #(.SIZE(SIZE),.WIDTH(BYTESIZES))mem2serial_transfer_pc(
    .clock            (mem2serial_clock       )                 ,
    .nreset           (mem2serial_nreset      )                 ,
    .pmatrix_in       (mem2serial_pmatrix_in  )                 ,
    .valid_i          (mem2serial_valid_i     )                 , //Dado válido na entrada
    .rready_i         (mem2serial_rready_i    )                 , //Pronto para receber uma resposta
    .rvalid_o         (mem2serial_rvalid_o    )                 , //Resposta Válida(Operação concluida)
    .ready_o          (mem2serial_ready_o     )                 , //Pronto para receber um dado valido na entrada
    .smatrix_out      (mem2serial_smatrix_out )                 
);


ref_clock#(.CLOCK_REF(CLOCK_TRANSFER_PC),.CLOCK_INPUT(COUNTER_CLOCK_INPUT))clock_hate_pc(
    .in_clock     (ref_clock_in_clock     ),
    .nreset       (ref_clock_nreset       ),
    .out_clock_ref(ref_clock_out_clock_ref)
);
enum {IDLE, WRITE_MEM,SYSTOLIC_READ_MEM,WRITE_MEM_OUT,DONE} fsm_unit_control, fsm_unit_control_next;
logic [3:0]cnt_load,cnt_load_next;
always_ff@(posedge clock, negedge nreset)begin
    if(!nreset)begin
        fsm_unit_control <= IDLE;
    end else begin
        fsm_unit_control <= fsm_unit_control_next;

    end
end
always_comb case(fsm_unit_control)
    IDLE:begin
        serial2mem_opa_valid_i        = 0;
        serial2mem_opb_valid_i        = 0;
        serial2mem_opa_rw             = 0;
        serial2mem_opb_rw             = 0;
        serial2mem_opa_rready_i       = 0;
        serial2mem_opb_rready_i       = 0;
        mem2serial_valid_i            = 0;
        mem2serial_rready_i           = 0;
        cnt_load_next                 = 0;
        uart_valid_tx_in              = 0;        
        syst_valid_i                  = 0;  
        syst_rready_i                 = 0;          
        fsm_unit_control_next         = uart_valid_rx_in ? WRITE_MEM :IDLE;


    end
    WRITE_MEM:begin
        serial2mem_opa_valid_i        = 1;
        serial2mem_opb_valid_i        = serial2mem_opa_rvalid_o? 1:0  ;
        serial2mem_opa_rw             = 0;  
        serial2mem_opb_rw             = 0; 
        serial2mem_opa_rready_i       = 0;
        serial2mem_opb_rready_i       = 0;    
        mem2serial_valid_i            = 0;
        mem2serial_rready_i           = 0;
        cnt_load_next                 = cnt_load +1;
        syst_valid_i                  = 0;          
        syst_rready_i                 = 0;  
        fsm_unit_control_next         = serial2mem_opa_rvalid_o && serial2mem_opb_rvalid_o ? SYSTOLIC_READ_MEM: WRITE_MEM;
        uart_valid_tx_in              = 0;


    end
    SYSTOLIC_READ_MEM:begin
        serial2mem_opa_valid_i        =  1;
        serial2mem_opb_valid_i        =  1;
        serial2mem_opa_rw             =  1;  
        serial2mem_opb_rw             =  1;  
        serial2mem_opa_rready_i       =  1;
        serial2mem_opb_rready_i       =  1;
        syst_valid_i                  =  1;          
        syst_rready_i                 =  1;  
        uart_valid_tx_in              =  0;
        mem2serial_valid_i            =  0;
        mem2serial_rready_i           =  0;
        fsm_unit_control_next         =  !syst_rvalid_o ? SYSTOLIC_READ_MEM : WRITE_MEM_OUT;
    end
    WRITE_MEM_OUT:begin
        serial2mem_opa_valid_i     =  0;
        serial2mem_opb_valid_i     =  0;
        serial2mem_opa_rw          =  1;  
        serial2mem_opb_rw          =  1;
        serial2mem_opa_rready_i    =  0;
        serial2mem_opb_rready_i    =  0;
        mem2serial_valid_i         =  1;
        mem2serial_rready_i        = 0;          
        syst_valid_i               =  0;
        syst_rready_i              =  0;  
        uart_valid_tx_in           =  1;
        fsm_unit_control_next      = mem2serial_rvalid_o  ? DONE: WRITE_MEM_OUT;
    end
    DONE:begin
        

    end
endcase
endmodule