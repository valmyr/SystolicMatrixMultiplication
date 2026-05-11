//============================================================
// Nome do Bloco    : Contador
// Versão           : 1.0
// Autor(a)         : Valmir Ferreira
// Data de Criação  : --/--/--
// Última Modificação: 16/07/2025
//
// Descrição:
//   Contador utilizado no funcionamento nas estimativas de tempo
// 
//============================================================

module counter#(parameter MAX_COUNTER = 32)(

        input  logic clock           ,
        input  logic rst_n_async          ,
        input  logic ena             ,
        input  logic clean           ,
        output logic [(MAX_COUNTER)-1:0] counter

);
    logic [(MAX_COUNTER)-1:0]  next_counter;
    always_ff@(posedge clock, negedge rst_n_async)begin
        if(!rst_n_async)counter <=0;
        else       counter <=next_counter;
    end

    always_comb begin
        case({ena,clean})
            2'b00: next_counter = counter           ;
            2'b10: next_counter = counter + 1       ;
            2'b01: next_counter = 0;
            2'b11: next_counter = 0;
        endcase 
    end
endmodule