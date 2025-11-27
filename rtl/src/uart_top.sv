//============================================================
// Nome do Bloco    : UART_TOP
// Versão           : 2.0
// Autor(a)         : Valmir Ferreira
// Data de Criação  : --/--/--
// Última Modificação: 10/08/2025
//
// Descrição:
//  Protocolo de Comunicação UART.
// 
//============================================================

module uart_top#(parameter  BYTESIZES = 8, OVERSAMPLING = 16, BAUDRATE = 115200,	COUNTER_CLOCK_INPUT = 100_000_000,CLOCK_REF=10_000_000)(

    (*dont_touch = "true"*) input      logic                  clock               ,
    (*dont_touch = "true"*) input      logic                  nreset              ,
    //pinout RX   
    (*dont_touch = "true"*) input      logic                  sdata_rx_in         ,
    (*dont_touch = "true"*) input      logic                  valid_rx_in         ,
    (*dont_touch = "true"*) output     logic                  ready_rx_out        ,
    (*dont_touch = "true"*) output     logic [BYTESIZES-1:0]  data_rx_out         ,
     //pinout TX
    (*dont_touch = "true"*) input      logic                  valid_tx_in         ,
    (*dont_touch = "true"*) input      logic [BYTESIZES-1:0]  data_tx_in          ,
    (*dont_touch = "true"*) output logic                 ready_tx_out        ,
    output     logic                  sdata_tx_out            
);
(*dont_touch = "true"*)
uart_rx #(.CLK_FRE(100), .BAUD_RATE(BAUDRATE)) uart_receiver(
    .clk           (clock                           )             ,
    .rst_n         (nreset                          )             ,
    .rx_pin        (sdata_rx_in                     )             ,
    .rx_data_valid (ready_rx_out                      )             ,
    .rx_data_ready (valid_rx_in                    )             ,
    .rx_data       (data_rx_out                     )       
);

uart_tx #(.CLK_FRE(100), .BAUD_RATE(BAUDRATE)) uart_transmitter(
   .clk             (clock              )             ,
   .rst_n           (nreset             )             ,
   .tx_data_valid   (valid_tx_in        )             ,
   .tx_data         (data_tx_in         )             ,
   .tx_data_ready   (ready_tx_out       )             ,
   .tx_pin          (sdata_tx_out       )                
);



endmodule
