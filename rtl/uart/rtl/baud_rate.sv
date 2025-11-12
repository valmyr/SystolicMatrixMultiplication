//============================================================
// Nome do Bloco    : baudRateGenerator
// Versão           : 1.0
// Autor(a)         : Valmir Ferreira
// Data de Criação  : --/--/--
// Última Modificação: 16/07/2025
//
// Descrição:
//  Gerador de BaudRate para funcionamento do protocolo UART
// 
//============================================================

module baudRateGenerator#(parameter BAUDRATE = 9600,OVERSAMPLING  = 8, CLOCK_INPUT = 50_000_000,CLOCK_REF=5_000_000) (
       (*dont_touch = "true"*)  input  logic nreset                  ,
       (*dont_touch = "true"*)  input  logic ena                     ,
       (*dont_touch = "true"*)  input  logic clock                   ,
       (*dont_touch = "true"*)  output logic clock_out               ,
       (*dont_touch = "true"*)  output logic counting_done2          
);

    localparam   STOPCOUNTER = CLOCK_REF/(2*BAUDRATE*OVERSAMPLING)+1;
    localparam WIDTH=$clog2(STOPCOUNTER);

(*dont_touch = "true"*)     logic base_clock;
(*dont_touch = "true"*)     logic sampling;
(*dont_touch = "true"*)     logic ena_base_clock_counter;

(*dont_touch = "true"*) logic clock_out_refp;
// Ajustar o clock do baudrate
(*dont_touch = "true"*) 
    ref_clock #(.CLOCK_REF(CLOCK_REF),.CLOCK_INPUT(CLOCK_INPUT)) clock_base_ref(
        (*dont_touch = "true"*) .in_clock(clock),
        (*dont_touch = "true"*) .nreset(nreset),
        (*dont_touch = "true"*) .out_clock_ref(clock_out_refp)
    );
    assign ena_base_clock_counter =1;
(*dont_touch = "true"*) 
    counter #(.MOD(STOPCOUNTER)) base_clock_counter( //Contador que gera a base de tempo stop_counter(clock_input,baundrate,oversampling)
        
        (*dont_touch = "true"*)  .clock          (clock_out_refp       ),
        (*dont_touch = "true"*)  .ena            (ena_base_clock_counter            ),
        (*dont_touch = "true"*)  .nreset         (nreset          ),
        (*dont_touch = "true"*)  .counting_done  (base_clock      )
    );
(*dont_touch = "true"*)     
    counter #(.MOD(OVERSAMPLING)) sampling_counter( //Contador gerador de amostragem

        (*dont_touch = "true"*) .clock          (clock_out ),
        (*dont_touch = "true"*) .ena            (ena            ),
        (*dont_touch = "true"*) .nreset         (nreset         ),
        (*dont_touch = "true"*) .counting_done  (counting_done2 ),
        (*dont_touch = "true"*) .counter1       (               )
    );
  (*dont_touch = "true"*)   
    always_ff@(posedge base_clock, negedge nreset)
        if(!nreset)         clock_out <= 0          ;
        else                clock_out <= ~clock_out;

endmodule