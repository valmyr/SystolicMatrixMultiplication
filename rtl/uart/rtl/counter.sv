//============================================================
// Nome do Bloco    : Contador
// Versão           : 1.0
// Autor(a)         : Valmir Ferreira
// Data de Criação  : --/--/--
// Última Modificação: 16/07/2025
//
// Descrição:
//   Contador utilizado no funcionamento da UART
// 
//============================================================

module counter#(parameter MOD = 16)(
    (*dont_touch = "true"*) input  logic clock           ,
    (*dont_touch = "true"*) input  logic nreset          ,
    (*dont_touch = "true"*) input  logic ena             ,
    (*dont_touch = "true"*) output logic [$clog2(MOD)-1:0] counter1,
    (*dont_touch = "true"*) output logic counting_done

);
 (*dont_touch = "true"*)   logic [$clog2(MOD)-1:0]  counter;
    always_ff@(posedge clock, negedge nreset)begin
        if(!nreset)counter <=0;
        else       counter <= counter == MOD - 1 || !ena ? 0 : counter +1 ;
    end


    always_ff@(posedge clock, negedge nreset)begin
        if(!nreset) counting_done <= 0;
        else counting_done <= counter == MOD - 1 &&  ena;
    end
    assign counter1 = counter;
endmodule