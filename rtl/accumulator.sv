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

module accumulator_cells#(
    parameter WIDTH = 16
)(

    input  logic             clock   ,
    input  logic             nreset  ,
    input  logic [WIDTH-1:0] a       ,
    input  logic [WIDTH-1:0] b       ,
    output logic [WIDTH-1:0] x       ,
    output logic [WIDTH-1:0] y       ,
    output logic [WIDTH-1:0] z       
);
    logic [WIDTH-1:0] accumulator, product, sum_product; 

    assign product = a * b;
    assign sum_product = product + accumulator;
    always_ff@(negedge nreset, posedge clock)begin
        if(!nreset)begin
            x <= 0;
            y <= 0;
            accumulator <= 0;
        end else begin
            x <= a;
            y <= b;
            accumulator <= sum_product;
        end
    end
    assign z = accumulator;
endmodule