//============================================================
// Nome do Bloco    : UART_TX
// Versão           : 2.0
// Autor(a)         : Valmir Ferreira
// Data de Criação  : --/--/--
// Última Modificação: 10/08/2025
//
// Descrição:
//  Protocolo de Comunicação UART canal de envio (TX) valid_tx_inado em FPGA.
// 
//============================================================


module uart_tx#(parameter  BYTESIZES = 8, OVERSAMPLING = 1, BAUDRATE = 115200,	COUNTER_CLOCK_INPUT = 50_000_000,CLOCK_REF=5_000_000)(
    input  logic                     clock             ,
    input  logic                     nreset            ,
    input  logic                     valid_tx_in       ,
    input  logic  [BYTESIZES-1:0]    data_tx_in        ,
    output logic                     sdata_tx_out       ,
    output logic                     ready_tx_out        
);

logic clock_out;
logic bit_start,tmp_sdata;
logic [BYTESIZES-1:0]   px_bit;
logic [BYTESIZES-1+3:0] pframe_data;
enum bit [2:0]{FRAME_1,IDLE, START, S_DATA, STOPBIT} next_fsm,current_fsm;
baudRateGenerator #(.BAUDRATE(BAUDRATE),.OVERSAMPLING(OVERSAMPLING), .CLOCK_INPUT(COUNTER_CLOCK_INPUT),.CLOCK_REF(CLOCK_REF)) boudrategenerator_inst (
    .nreset        (nreset        		)     ,        
    .ena           (1'b1          		)     ,        
    .ena2          (1'b1          		)     ,        
    .clock         (clock         	    )     ,           
    .clock_out     (clock_out     		)     ,            
    .counting_done2(sample_center_bit)     
);


always_ff@(posedge clock_out, negedge nreset) begin
    if(!nreset)begin 
        bit_start            <= 0;
        px_bit               <= 0                                                  ;
        sdata_tx_out         <= 1                                                  ; 
        current_fsm          <= FRAME_1                                            ;
    end
    else begin      
          sdata_tx_out<= pframe_data[px_bit]                                      ;
          current_fsm <=   next_fsm                                               ;               
          bit_start   <= (!sdata_tx_out && tmp_sdata)    && current_fsm == IDLE   ;
          px_bit      <= (valid_tx_in && px_bit != BYTESIZES+2) ? px_bit+1 : 0    ;  
    end
end
always_comb begin
    case(current_fsm)
        FRAME_1 :next_fsm = px_bit < 1 ? FRAME_1 : IDLE                     ;
        IDLE    :next_fsm = START                                           ;
        START   :next_fsm = S_DATA                                          ;
        S_DATA  :next_fsm = (px_bit < BYTESIZES+2) ? S_DATA : STOPBIT       ;
        STOPBIT :next_fsm = FRAME_1                                         ;
        default :next_fsm = FRAME_1                                         ;
    endcase
end
assign ready_tx_out = current_fsm == STOPBIT ? 1'b1:1'b0;
assign pframe_data = valid_tx_in ? {1'b1,data_tx_in,3'b011}: 0;
endmodule