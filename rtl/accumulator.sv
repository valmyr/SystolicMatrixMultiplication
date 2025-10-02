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
    parameter WIDTH = 16,
    parameter WIDTHx = 8
)(

    input  logic             clock   ,
    input  logic             nreset  ,
    input  logic             ena     ,
    input  logic             valid   ,
    input  logic [WIDTHx-1:0] a      ,
    input  logic [WIDTHx-1:0] b      ,
    output logic [WIDTHx-1:0] x      ,
    output logic [WIDTHx-1:0] y      ,
    output logic [WIDTH-1:0]  z       
);
    logic [WIDTH-1:0] accumulator, product, sum_product;
    always_ff@(negedge nreset, posedge clock)begin
        if(!nreset)begin
            x           <= 0;
            y           <= 0;
            accumulator <= 0;
        end else begin
            x           <= a;
            y           <= b;
            accumulator <= sum_product;
        end
    end
    assign z = accumulator;
    always_comb case({ena,valid})
        2'b11:begin
            product      = a * b                ;
            sum_product  = product + accumulator;
        end
        2'b01:begin
            product     = 0                     ;
            sum_product = accumulator           ;
        end
        default:begin
            product     = 0                     ;
            sum_product = 0                     ;
        end
    endcase
endmodule