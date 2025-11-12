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
uart_rx #(.BYTESIZES(BYTESIZES), .OVERSAMPLING(OVERSAMPLING), .BAUDRATE(BAUDRATE),	.COUNTER_CLOCK_INPUT(COUNTER_CLOCK_INPUT), .CLOCK_REF(CLOCK_REF)) uart_receiver(
    .clock          (clock                           )             ,
    .nreset         (nreset                          )             ,
    .sdata_rx_in    (sdata_rx_in                     )             ,
    .valid_rx_in    (valid_rx_in                     )             ,
    .ready_rx_out   (ready_rx_out                    )             ,
    .data_rx_out    (data_rx_out                     )       
);
uart_tx #(.BYTESIZES(BYTESIZES), .OVERSAMPLING(1), .BAUDRATE(BAUDRATE),	.COUNTER_CLOCK_INPUT(COUNTER_CLOCK_INPUT), .CLOCK_REF(CLOCK_REF)) uart_transmitter(
   .clock          (clock              )             ,
   .nreset         (nreset             )             ,
   .valid_tx_in    (valid_tx_in        )             ,
   .data_tx_in     (data_tx_in         )             ,
   .ready_tx_out   (ready_tx_out       )             ,
   .sdata_tx_out   (sdata_tx_out       )                
);
endmodule
