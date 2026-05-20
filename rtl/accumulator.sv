//============================================================
// Nome do Bloco    : Accumulator_Cells
// Versão           : 1.0
// Autor(a)         : Valmir Ferreira
// Data de Criação  : --/--/--
// Última Modificação: 20/09/2025
//
// Descrição:
//   Acumulador de Multiplicações 
    
//============================================================

(* use_dsp = "yes" *)
module accumulator_cells#(
    parameter WIDTH = 16, WIDTHx=4
)(

    input  logic             clock   ,
    input  logic             rst_n_async  ,
    input  logic             ena     ,
    input  logic [WIDTHx-1:0] a       ,
    input  logic [WIDTHx-1:0] b       ,
    output logic [WIDTHx-1:0] x       ,
    output logic [WIDTHx-1:0] y       ,
    output logic [WIDTH-1:0] z       
);
    logic [2*WIDTH-1:0] accumulator, product, sum_product;
    //(* use_dsp = "yes" *) 
    assign product      =  (a * b)                   ;
   // (* use_dsp = "yes" *) 
    assign sum_product  = (product + accumulator)  ;
    always_ff@(negedge rst_n_async, posedge clock)begin
        if(!rst_n_async)begin
            x           <= 0;
            y           <= 0;
            accumulator <= 0;
        end else begin
            x           <= a;
            y           <= b;
            accumulator <= ena ?   sum_product : 0;
        end
    end
    assign z = accumulator;
endmodule