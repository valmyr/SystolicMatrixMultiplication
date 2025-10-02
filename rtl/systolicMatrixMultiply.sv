//============================================================
// Nome do Bloco    : SystolicMatrixMultiply
// Versão           : 2.0
// Autor(a)         : Valmir Ferreira
// Data de Criação  : --/--/--
// Última Modificação: 20/09/2025
//
// Descrição:
//   Dada duas matrizes de ordem N, M1 e M2 cálcula a multplicação matricial. Serializando às matrizes de entrada;
//============================================================

module systolicMatrixMultiply#(
    parameter WIDTH = 4 , SIZE=2, WIDTHx = 8
)(
    input  logic                    clock                                  ,
    input  logic                    nreset                                 ,
    input  logic                    valid_i                                ,
    input  logic [WIDTHx*SIZE-1:0]  a_input                         	   ,
    input  logic [WIDTHx*SIZE-1:0]  b_input                         	   ,
    output logic                    ready_o                                ,
    output logic [WIDTH-1:0]        output_produc_a_b [SIZE-1:0][SIZE-1:0]
);


logic [$clog2(SIZE) :0]       counter_mult    , next_counter_mult             ;
logic [$clog2(SIZE) :0]       counter_concat  , next_counter_concat           ;
logic [WIDTH-1:0]                       produc_a_b      [SIZE-1:0][SIZE-1:0]            ;
logic [WIDTHx-1:0]                      a_vec           [SIZE:0][SIZE:0]                ;
logic [WIDTHx-1:0]                      b_vec           [SIZE:0][SIZE:0]                ;
logic [SIZE*WIDTHx-1:0]                 a_load                                          ;
logic [SIZE*WIDTHx-1:0]                 b_load                                          ;
logic                                   valid, next_valid, ena_cells, next_ena_cells    ;

enum {IDLE, LOAD_MULTI_MATRIX ,MULTI_MATRIX, READY} currentStateSystolicControlUnit, nextStateSystolicControlUnit;
generate 
    genvar i,j;
        for(i =0; i < SIZE;i++)begin:CELULA_ROWS
            assign a_vec[0][i] = a_load[(i+1)*WIDTHx-1:(i+1)*WIDTHx-WIDTHx];
            assign b_vec[0][i] = b_load[(i+1)*WIDTHx-1:(i+1)*WIDTHx-WIDTHx];
            for(j =0; j < SIZE;j++)begin:CELULA_COLUMNS
                accumulator_cells #(.WIDTH(WIDTH),.WIDTHx(WIDTHx)) MAC(    
                    .clock    (     clock                                              ),
                    .nreset   (     nreset                                             ),
                    .valid    (     valid                                              ),
                    .ena      (     ena_cells                                          ),
                    .a        (     a_vec[i][j]                                        ),
                    .b        (     b_vec[j][i]                                        ),
                    .x        (     a_vec[i+1][j]                                      ), //Ajuda de Ewerton
                    .y        (     b_vec[j+1][i]                                      ), //Ajuda de Ewerton
                    .z        (   produc_a_b[SIZE-j-1][SIZE-i-1]                      )
                );
            end
        end

endgenerate
always_ff@(posedge clock, negedge nreset)begin
    if(!nreset)begin
        currentStateSystolicControlUnit <= IDLE;
        counter_mult                    <=    0;
        counter_concat                  <=    0;
        valid                           <=    0;
        ena_cells                       <=    0;
        a_load                          <=    0;
        b_load                          <=    0;
        for(integer i_rst = 0; i_rst < SIZE; i_rst++)
            output_produc_a_b[i_rst] <= '{default:0};

    end else begin
        counter_concat                   <= next_counter_concat;
        output_produc_a_b               <= ready_o ? produc_a_b : output_produc_a_b                             ;
        valid                           <= next_valid                                                           ;
        currentStateSystolicControlUnit <= nextStateSystolicControlUnit                                         ;
        counter_mult                    <= next_counter_mult                                                    ; 
        ena_cells                       <= next_ena_cells                                                       ;
        a_load                          <= (currentStateSystolicControlUnit != MULTI_MATRIX) ? a_input : 0      ;
        b_load                          <= (currentStateSystolicControlUnit != MULTI_MATRIX) ? b_input : 0      ;
    end
end
always_comb begin
    case(currentStateSystolicControlUnit)
        IDLE:begin
            nextStateSystolicControlUnit = valid ? LOAD_MULTI_MATRIX : IDLE                                     ;
            next_counter_mult            = 0                                                                    ;
            next_ena_cells               = valid                                                                ;
            next_counter_concat          = 0;
        end
       LOAD_MULTI_MATRIX:begin
            nextStateSystolicControlUnit = (counter_concat < SIZE ) ? LOAD_MULTI_MATRIX :MULTI_MATRIX          ;
            next_counter_concat          = counter_concat  +    1                                              ;                  
            next_counter_mult            = 0                                                                   ;
            next_ena_cells               = 1                                                                   ;                                                                 
        end
        MULTI_MATRIX:begin
            nextStateSystolicControlUnit = (counter_mult < SIZE) ? MULTI_MATRIX : READY                        ;
            next_counter_concat          = 0                                                                   ;                  
            next_counter_mult            = counter_mult + 1'b1                                                 ;
            next_ena_cells               = 1                                                                   ;
        end
        READY:begin
            nextStateSystolicControlUnit = valid ? LOAD_MULTI_MATRIX :  IDLE                                   ;
            next_counter_mult            = 0                                                                   ;
            next_counter_concat          = 0                                                                   ;                  
            next_ena_cells               = valid                                                               ;
        end
        
    endcase
end
assign next_valid  = (valid_i) ? valid_i : valid;
assign ready_o     = currentStateSystolicControlUnit == READY;
endmodule