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
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SystolicCoreTop#(
    parameter  BYTESIZES = 8, WIDTHx = 4,SIZE = 16,WIDTH =8
)(
    input  logic                    clock                     ,
    input  logic                    rst_n_async               ,
    input  logic [BYTESIZES-1:0]    uart_data_rx_out          ,
    output logic [BYTESIZES-1:0]    uart_data_tx_in           ,
    output logic                    uart_ready_rx_out         ,
    input  logic                    uart_ready_tx_out         ,
    output logic                    uart_valid_tx_in          ,
    input logic                     uart_valid_rx_in          ,
    input logic                     s_axis_tlast              ,
    output logic                    m_axis_tlast
);

localparam SIZE_WINDOW = 6;
localparam SIZE_KER = 3;
localparam OUT_SIZE = SIZE_WINDOW - SIZE_KER + 1;
localparam OUT_SIZE_NORM = 16;

//Pinout Unidade de Controle.
//-------------------------------------------------------------------------------------------------
logic                   systolicControlUnit_clock                                                               ;
logic                   systolicControlUnit_rst_n_async                                                         ;
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
logic                   systolicControlUnit_s_axis_tlast                                                        ;
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
//Pinout Systolic
//--------------------------------------------------------------------------------------------------
logic                     syst_clock                                                                            ;
logic                     syst_rst_n_async                                                                      ;
logic                     syst_valid_i                                                                          ;
logic                     syst_rready_i                                                                         ;
logic [WIDTHx-1:0]   syst_a_input [SIZE-1:0]                                                                    ;
logic [WIDTHx-1:0]   syst_b_input [SIZE-1:0]                                                                    ;
logic                     syst_ready_o                                                                          ;
logic                     syst_rvalid_o                                                                         ;
(*dont_touch = "true"*) 
logic [WIDTH-1:0]         syst_output_produc_a_b [SIZE-1:0][SIZE-1:0]                                           ;
logic                     syst_read_done                                                                        ;
//--------------------------------------------------------------------------------------------------
//Pinout MEMA
logic                   serial2mem_opa_clock                                                                    ;
logic                   serial2mem_opa_rst_n_async                                                              ;
logic                   serial2mem_opa_rw                                                                       ;
logic                   serial2mem_opa_valid_i                                                                  ;
logic                   serial2mem_opa_rready_i                                                                 ;
logic                   serial2mem_opa_rvalid_o                                                                 ;
logic                   serial2mem_opa_ready_o                                                                  ;
logic [WIDTHx*SIZE-1:0] serial2mem_opa_in_data                                                                  ;
logic [WIDTHx-1:0]      serial2mem_opa_out_data [SIZE_WINDOW-1:0][SIZE_WINDOW-1:0]                                            ;
logic [WIDTHx-1:0]      serial2mem_opa_buf_data [SIZE_WINDOW-1:0][SIZE_WINDOW-1:0]                                            ;
logic                   syst_ena_mac                                                                            ;
//---------------------------------------------------------------------------------------------------
//-----Pinout Bank Register Flow Data Time Structure---------------------------------------------
logic [WIDTHx-1:0] flow_data_time_structure_OPA [SIZE-1:0];
logic [WIDTHx-1:0] flow_data_time_structure_OPB [SIZE-1:0];
logic [WIDTHx-1:0] flow_data_time_structure_OUTA[SIZE-1:0];
logic [WIDTHx-1:0] flow_data_time_structure_OUTB[SIZE-1:0];

logic shiftdata_clock;
logic shiftdata_rst_n_async;
logic img2row_clock;
logic img2row_rst_n_sync;
logic flow_data_time_structure_rst_n_async;


//--------------------------------------------------------------------------------------------------
logic                   serial2mem_opb_clock                                                                    ;
logic                   serial2mem_opb_rst_n_async                                                              ;
logic                   serial2mem_opb_rw                                                                       ;
logic                   serial2mem_opb_valid_i                                                                  ;
logic                   serial2mem_opb_rready_i                                                                 ;
logic                   serial2mem_opb_ready_o                                                                  ;
logic                   serial2mem_opb_rvalid_o                                                                 ;
logic [WIDTHx*SIZE-1:0] serial2mem_opb_in_data                                                                  ;
logic [WIDTHx-1:0]      serial2mem_opb_out_data [SIZE_WINDOW-1:0][SIZE_WINDOW-1:0]                                            ;
logic [WIDTHx-1:0]      serial2mem_opb_buf_data [SIZE_WINDOW-1:0][SIZE_WINDOW-1:0]                                            ;

//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
//Pinout MEM2SERIAL
logic                   mem2serial_clock                                                                        ;
logic                   mem2serial_rst_n_async                                                                  ;
(*dont_touch = "true"*) 
logic [WIDTH-1:0]       mem2serial_pmatrix_in [SIZE-1:0][SIZE-1:0]                                              ;
logic                   mem2serial_valid_i                                                                      ;
logic                   mem2serial_rready_i                                                                     ;
logic                   mem2serial_rvalid_o                                                                     ;
logic                   mem2serial_ready_o                                                                      ;
logic  [BYTESIZES-1:0]  mem2serial_smatrix_out                                                                  ;
logic                   mem2serial_m_axis_tlast                                                                 ;
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
//Pinout SampleHatePC
logic ref_clock_in_clock                                                                                        ;
logic ref_clock_rst_n_async                                                                                     ;
logic ref_clock_out_clock_ref                                                                                   ;
//---------------------------------------------------------------------------------------------------


//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
//Pinout img2row


logic u_im2row_clock;
logic u_im2row_rst_n_sync;
logic u_im2row_data_valid_i;
logic u_im2row_module_ready_o;
logic u_im2row_result_rvalid_o;
logic u_im2row_downstream_ready_i;
logic [WIDTHx-1:0] u_im2row_input_a_image[SIZE_WINDOW-1:0][SIZE_WINDOW-1:0];
logic [WIDTHx-1:0] u_im2row_input_b_image[SIZE_WINDOW-1:0][SIZE_WINDOW-1:0];
logic [WIDTHx-1:0] u_im2row_col_a_matrix[OUT_SIZE_NORM-1:0][OUT_SIZE_NORM-1:0];
logic [WIDTHx-1:0] u_im2row_col_b_matrix_transpose[OUT_SIZE_NORM-1:0][OUT_SIZE_NORM-1:0];
logic [WIDTHx-1:0] u_im2row_col_b_matrix[OUT_SIZE_NORM-1:0][OUT_SIZE_NORM-1:0];

//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------------------------------
//AXI
assign uart_ready_rx_out =1;
assign m_axis_tlast = mem2serial_m_axis_tlast;
//---------------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------
//Atribuição de clocks
assign syst_clock                = clock                                                                        ;
assign uart_clock                = clock                                                                        ;
assign mem2serial_clock          = clock                                                                        ;//A definir 5kHz
assign serial2mem_opa_clock      = clock                                                                        ;
assign serial2mem_opb_clock      = clock                                                                        ;
assign systolicControlUnit_clock = clock                                                                        ;
assign ref_clock_in_clock        = clock                                                                        ;
assign shiftdata_clock = clock;
assign u_im2row_clock =clock;
assign u_im2row_rst_n_sync=rst_n_async;
//Atribuição de rst_n_async

assign syst_rst_n_async                = rst_n_async                                                                      ;
assign uart_rst_n_async                = rst_n_async                                                                      ;
assign serial2mem_opa_rst_n_async      = rst_n_async                                                                      ;
assign serial2mem_opb_rst_n_async      = rst_n_async                                                                      ;
assign mem2serial_rst_n_async          = rst_n_async                                                                      ;
assign ref_clock_rst_n_async           = rst_n_async                                                                      ; 
assign systolicControlUnit_rst_n_async = rst_n_async                                                                      ;
assign shiftdata_rst_n_async           = rst_n_async                                                                      ;
assign img2row_rst_n_sync              = rst_n_async                                                                      ;                                                                
assign uart_data_tx_in                 = mem2serial_smatrix_out                                                           ;


//---------------------------------------------------------------------------------------------------------------------------------

// ATRIBUIÇÂO MEMORIA A/B           
assign serial2mem_opa_in_data = uart_data_rx_out;//: 0            ;
assign serial2mem_opb_in_data = uart_data_rx_out;//: 0            ;
assign syst_a_input =  flow_data_time_structure_OUTA                            ;
assign syst_b_input =  flow_data_time_structure_OUTB ;
(*dont_touch = "true"*) 
assign mem2serial_pmatrix_in = syst_output_produc_a_b;
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
assign systolicControlUnit_read_done               =  syst_read_done                                            ;
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
assign systolicControlUnit_uart_ready_rx           =  uart_ready_rx_out;
assign systolicControlUnit_uart_valid_rx_in        =  uart_valid_rx_in;
systolicMatrixMultiply  #(.WIDTH(WIDTH),.WIDTHx(WIDTHx),.SIZE(SIZE)) u_systolic_matrix_mul_unit(
    .rst_n_async                (syst_rst_n_async                           )                  ,
    .valid_i                    (syst_valid_i                               )                  ,
    .rready_i                   (syst_rready_i                              )                  ,
    .a_input                    (syst_a_input                               )                  ,
    .b_input                    (syst_b_input                               )                  ,
    .ready_o                    (syst_ready_o                               )                  ,
    .rvalid_o                   (syst_rvalid_o                              )                  ,
    .clock                      (syst_clock                                 )                  ,
    .output_produc_a_b          (syst_output_produc_a_b                     )                  ,
    .read_done                  (syst_read_done                             )                  ,
    .ena_mac                    (syst_ena_mac                               )
);
(*dont_touch = "true"*) 
serial2mem #(.WIDTH(WIDTHx), .SIZE(SIZE_WINDOW))u_serial2mem_opa_unit(
    .clock                      (serial2mem_opa_clock                       )                 ,  
    .rst_n_async                (serial2mem_opa_rst_n_async                 )                 ,// r=1,w=0
    .rw                         (serial2mem_opa_rw                          )                 , //Dado válido na entrada
    .valid_i                    (serial2mem_opa_valid_i                     )                 , //Dado válido na entrada
    .rready_i                   (serial2mem_opa_rready_i                    )                 , //Pronto para receber uma resposta
    .rvalid_o                   (serial2mem_opa_rvalid_o                    )                 , //Resposta Válida(Operação concluida)
    .ready_o                    (serial2mem_opa_ready_o                     )                 , //Pronto para receber um dado valido na entrada
    .in_data                    (serial2mem_opa_in_data                     )                 ,
    .out_data                   (serial2mem_opa_out_data                    )                 ,
    .single_port_ram_di         (                                           )                 ,
    .uart_ready_rx_out          (uart_ready_rx_out && uart_valid_rx_in      )                 

);
(*dont_touch = "true"*) 
serial2mem #(.WIDTH(WIDTHx), .SIZE(SIZE_WINDOW))u_serial2mem_opb_unit(
    .clock                      (serial2mem_opb_clock                       )                 ,  
    .rst_n_async                (serial2mem_opb_rst_n_async                 )                 ,// r=1,w=0
    .rw                         (serial2mem_opb_rw                          )                 , //Dado válido na entrada
    .valid_i                    (serial2mem_opb_valid_i                     )                 , //Dado válido na entrada
    .rready_i                   (serial2mem_opb_rready_i                    )                 , //Pronto para receber uma resposta
    .rvalid_o                   (serial2mem_opb_rvalid_o                    )                 , //Resposta Válida(Operação concluida)
    .ready_o                    (serial2mem_opb_ready_o                     )                 , //Pronto para receber um dado valido na entrada
    .in_data                    (serial2mem_opb_in_data                     )                 ,
    .out_data                   (serial2mem_opb_out_data                    )                 ,
    .single_port_ram_di         (                                           )                 ,
    .uart_ready_rx_out          (uart_ready_rx_out && uart_valid_rx_in      )
    //.fifo_d(fifo_d_b)
);
(*dont_touch = "true"*) 
mem2seriala #(.SIZE(SIZE),.WIDTH(WIDTH),.BYTESIZES(BYTESIZES)) u_mem2serial_unit(
    .clock                      (mem2serial_clock                           )                 ,
    .rst_n_async                (mem2serial_rst_n_async                     )                 ,
    .pmatrix_in                 (mem2serial_pmatrix_in                      )                 ,
    .valid_i                    (mem2serial_valid_i                         )                 , //Dado válido na entrada
    .rready_i                   (mem2serial_rready_i                        )                 , //Pronto para receber uma resposta
    .rvalid_o                   (mem2serial_rvalid_o                        )                 , //Resposta Válida(Operação concluida)
    .ready_o                    (mem2serial_ready_o                         )                 , //Pronto para receber um dado valido na entrada
    .smatrix_out                (mem2serial_smatrix_out                     )                 ,
    .m_axis_tlast               (mem2serial_m_axis_tlast                    )                 ,
    .event_send_data            (uart_ready_tx_out                          )                 ,    //Avaliação 1.1
    .uart_valid_tx_in           (uart_valid_tx_in)
);

(*dont_touch = "true"*) 
systolicControlUnitTop #(.SIZE(SIZE),.WIDTH(WIDTH),.BYTESIZES(BYTESIZES))u_systolic_control_unit(
    .clock                      (systolicControlUnit_clock                      )                ,
    .rst_n_async                (systolicControlUnit_rst_n_async                )                ,
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
    .uart_data_rx_out           (uart_data_rx_out[7:0]                          )                ,
    .starting_frame_identified  (systolicControlUnit_starting_frame_identified  )                ,
    .uart_ready_rx              (systolicControlUnit_uart_ready_rx              )                ,
    .serial2mem_opa_ready_o     (systolicControlUnit_serial2mem_opa_ready_o     )                ,
    .serial2mem_opb_ready_o     (systolicControlUnit_serial2mem_opb_ready_o     )                ,
    .read_done                  (systolicControlUnit_read_done                  )                ,
    .frame_start                (systolicControlUnit_frame_start                )                ,
    .axi_debug                  (uart_data_rx_out                               )                ,
    .u_im2row_data_valid_i      (u_im2row_data_valid_i                          )                , 
    .u_im2row_module_ready_o    (u_im2row_module_ready_o                        )                ,
    .u_im2row_result_rvalid_o   (u_im2row_result_rvalid_o                       )                ,
    .u_im2row_downstream_ready_i(u_im2row_downstream_ready_i                    )                
);

shiftdata #(.WIDTHx(WIDTHx),.SIZE(SIZE)) u_shiftdata_unit(
    .clock(shiftdata_clock),
    .rst_n_async(shiftdata_rst_n_async),
    .ena_shift(syst_ena_mac),
    .opa_out_data(u_im2row_col_a_matrix),
    .opb_out_data(u_im2row_col_b_matrix),
    .flow_data_time_structure_OUTA(flow_data_time_structure_OUTA),
    .flow_data_time_structure_OUTB(flow_data_time_structure_OUTB) 
);

assign u_im2row_input_a_image = serial2mem_opb_out_data;
assign u_im2row_input_b_image = serial2mem_opa_out_data;

img2row #(.WIDTH(WIDTHx),.SIZE_KER(SIZE_KER),.SIZE_WINDOW(SIZE_WINDOW),.STRIDE(1))u_img2col_b_unit (
    .clk         (u_im2row_clock),
    .rst_n_sync  (u_im2row_rst_n_sync),
    .valid_i     (u_im2row_data_valid_i),
    .ready_o     (u_im2row_module_ready_o),
    .rvalid_o    (u_im2row_result_rvalid_o),
    .rready_i    (u_im2row_downstream_ready_i),
    .img         (u_im2row_input_a_image),
    .colout      (),
    .colout_tsnp (u_im2row_col_a_matrix)
);


img2row #(.WIDTH(WIDTHx),.SIZE_KER(SIZE_KER),.SIZE_WINDOW(SIZE_WINDOW),.STRIDE(3))u_ker2col_a_unit (
    .clk         (u_im2row_clock),
    .rst_n_sync  (u_im2row_rst_n_sync),
    .valid_i     (u_im2row_data_valid_i),
    .ready_o     (                     ),
    .rvalid_o    (                      ),
    .rready_i    (u_im2row_downstream_ready_i),
    .img         (u_im2row_input_b_image),
    .colout      (),
    .colout_tsnp (u_im2row_col_b_matrix)

);

endmodule



