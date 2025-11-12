//============================================================
// Nome do Bloco    : UART_RX
// Versão           : 2.0
// Autor(a)         : Valmir Ferreira
// Data de Criação  : --/--/--
// Última Modificação: 10/08/2025
//
// Descrição:
//  Protocolo de Comunicação UART canal de recepcao (RX) valid_rx_inado em FPGA.
// 
//============================================================

module uart_rx#(parameter  BYTESIZES = 8, OVERSAMPLING = 16, BAUDRATE = 115200,	COUNTER_CLOCK_INPUT = 50_000_000,CLOCK_REF=5_000_000)(
    (*dont_touch = "true"*) input  logic                     clock              ,
    (*dont_touch = "true"*) input  logic                     nreset             ,
    (*dont_touch = "true"*) input  logic                     sdata_rx_in        ,
    (*dont_touch = "true"*) input  logic                     valid_rx_in        ,
    (*dont_touch = "true"*) output logic                     ready_rx_out       ,
    (*dont_touch = "true"*) output logic [BYTESIZES-1:0]     data_rx_out        
);

(*dont_touch = "true"*) enum logic [1:0]{IDLE=2'b00, START, R_DATA, STOPBIT} next_fsm, current_fsm      ;
(*dont_touch = "true"*) logic [OVERSAMPLING-1:0] counter_max_sampling                                   ;
(*dont_touch = "true"*) logic [BYTESIZES-1:0]    px_bit, next_px_bit                                    ;
(*dont_touch = "true"*) logic [BYTESIZES-1:0]    pdata_rx_out                                           ;
(*dont_touch = "true"*) logic [BYTESIZES-1:0]    next_pdata_rx_out                                      ;
(*dont_touch = "true"*) logic                    ena,ena_next, valid_rx_in_in, tmp_sdata_rx_in          ;  
(*dont_touch = "true"*) logic                    clock_out, sample_center_bit, bit_start, tran_bit_start;
(*dont_touch = "true"*)
baudRateGenerator #(.BAUDRATE(BAUDRATE),.OVERSAMPLING(OVERSAMPLING), .CLOCK_INPUT(COUNTER_CLOCK_INPUT),.CLOCK_REF(CLOCK_REF)) boudrategenerator_inst (
    (*dont_touch = "true"*) .nreset        (nreset        		    )     ,        
    (*dont_touch = "true"*) .ena           (ena         		    )     ,               
    (*dont_touch = "true"*) .clock         (clock         	        )     ,           
    (*dont_touch = "true"*) .clock_out     (clock_out     		    )     ,            
    (*dont_touch = "true"*) .counting_done2(sample_center_bit       )     
);
//(*dont_touch = "true"*) assign tran_bit_start =1;
(*dont_touch = "true"*) assign valid_rx_in_in = valid_rx_in;
assign next_pdata_rx_out = (current_fsm == R_DATA) ? sample_center_bit & tmp_sdata_rx_in :pdata_rx_out       ;
//assign tran_bit_start = (counter_max_sampling < OVERSAMPLING/2);

always_ff@(posedge clock, negedge nreset)begin
    if(!nreset)begin
        bit_start       <=    0 ;
        ena 	        <=    0 ;
    end else begin
    (*dont_touch = "true"*) bit_start <= (!sdata_rx_in & tmp_sdata_rx_in) & current_fsm == IDLE                           ;
        ena                     <= ena_next                                                                         ;
    end
end
(*dont_touch = "true"*)
always_ff@(posedge clock_out, negedge nreset) begin
    if(!nreset)begin 
        current_fsm     <= IDLE ;
        px_bit          <= 	  0 ;
        pdata_rx_out    <=    0;
        tmp_sdata_rx_in <=    1 ;
        data_rx_out     <=    0 ;
    end
    else begin                                            
        tmp_sdata_rx_in         <= sdata_rx_in                                                                      ;
	    current_fsm             <= next_fsm                                                                         ;
        px_bit                  <= next_px_bit                                                                      ;
		pdata_rx_out[px_bit]    <= (current_fsm == R_DATA) ? next_pdata_rx_out :     pdata_rx_out[px_bit]                                                           ;
        data_rx_out             <= ready_rx_out ?  pdata_rx_out: data_rx_out                                        ;
    end
end
(*dont_touch = "true"*)
always_comb case(current_fsm)
        IDLE:begin
            next_fsm 		= 	bit_start & valid_rx_in_in ? START :IDLE                        ;
            ena_next 		= 	bit_start & valid_rx_in_in			                            ;
            next_px_bit 	= 	0									                            ;
        end
		START:begin
            next_fsm 		=  sample_center_bit ? START:  R_DATA                               ;
            ena_next 		= 	1												                ;
            next_px_bit 	= 	0								    			                ;		  
		end
        R_DATA:begin
            next_px_bit 	= px_bit < BYTESIZES & sample_center_bit  ? px_bit + 1'b1: px_bit  ;
            next_fsm 	  	= px_bit == BYTESIZES-1 & sample_center_bit  ? STOPBIT : R_DATA     ;
            ena_next 		= 1                                                                 ;
        end
        STOPBIT:begin
            next_fsm 		= sample_center_bit ? IDLE :  STOPBIT                               ;
			ena_next 		= 1                                                                 ;
            next_px_bit 	= px_bit                                                                 ;                             
		end
		default:begin
            next_fsm = IDLE                                                                     ;
            ena_next 		= 	0									                            ;
            next_px_bit 	= 	0	                                                            ;
        end
		
endcase 
(*dont_touch = "true"*)
always_ff@(posedge clock)begin
    if(current_fsm == STOPBIT )    ready_rx_out <=1                               ;
    else                        ready_rx_out <= 0                              ;
end

endmodule