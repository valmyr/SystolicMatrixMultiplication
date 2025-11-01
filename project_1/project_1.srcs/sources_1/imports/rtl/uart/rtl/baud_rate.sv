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
    input  logic nreset                  ,
    input  logic ena                     ,
    input  logic ena2                    ,
    input  logic clock                   ,
    output logic clock_out               ,
    output logic counting_done2          
);

    parameter STOPCOUNTER = CLOCK_REF/(2*BAUDRATE*OVERSAMPLING)+1;
    parameter WIDTH=$clog2(STOPCOUNTER);

    logic base_clock;
    logic sampling;


// Ajustar o clock do baudrate
    ref_clock #(.CLOCK_REF(CLOCK_REF),.CLOCK_INPUT(CLOCK_INPUT)) clock_base_ref(
        .in_clock(clock),
        .nreset(nreset),
        .out_clock_ref(clock_out_refp)
    );

    counter #(.MOD(STOPCOUNTER)) base_clock_counter( //Contador que gera a base de tempo stop_counter(clock_input,baundrate,oversampling)
        
        .clock          (clock_out_refp       ),
        .ena            (1'b1            ),
        .nreset         (nreset          ),
        .counting_done  (base_clock      )
    );
    
    counter #(.MOD(OVERSAMPLING)) sampling_counter( //Contador gerador de amostragem

        .clock          (clock_out ),
        .ena            (ena            ),
        .nreset         (nreset         ),
        .counting_done  (counting_done2 ),
        .counter1       (               )
    );
    
    always_ff@(posedge base_clock, negedge nreset)
        if(!nreset)         clock_out <= 0          ;
        else                clock_out <= ~clock_out;

endmodule