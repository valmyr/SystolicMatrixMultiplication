//============================================================
// Nome do Bloco    : SystolicMatrixMultiply
// Versão           : 1.0
// Autor(a)         : Valmir Ferreira
// Data de Criação  : --/--/--
// Última Modificação: 20/09/2025
//
// Descrição:
//   Dada duas matrizes de ordem N, M1 e M2 cálcula a multplicação matricial delas
//============================================================

module systolicMatrixMultiply#(
    parameter WIDTH = 16, SIZE=3, WIDTHx = 4
)(
    input  logic                  clock                                  ,
    input  logic                  nreset                                 ,
    input  logic                  valid_i                                  ,
    input  logic [WIDTHx-1:0]     a_input [SIZE-1:0][SIZE-1:0]           ,
    input  logic [WIDTHx-1:0]     b_input [SIZE-1:0][SIZE-1:0]           ,
    output logic                  ready                                  ,
    output logic [WIDTH-1:0]      output_produc_a_b [SIZE-1:0][SIZE-1:0]
);

logic [SIZE*WIDTHx-1:0] a,b;
logic [WIDTH-1:0] a_vec[SIZE:0][SIZE:0];
logic [WIDTH-1:0] b_vec[SIZE:0][SIZE:0];
logic [WIDTH-1:0] counter, next_counter;
logic [WIDTHx-1:0] b_input_transpost [SIZE-1:0][SIZE-1:0];
logic valid;
generate 
    genvar i_trs, j_trs;
    for(i_trs =0; i_trs < SIZE; i_trs++)
        for(j_trs =0; j_trs < SIZE; j_trs++)
            assign b_input_transpost[i_trs][j_trs] = b_input[j_trs][i_trs];
endgenerate


    shiftMatrix #(.WIDTH(WIDTHx),.SIZE(SIZE))aa_shiftM(
                                                .nreset(nreset)     ,
                                                .clock(clock)       ,
                                                .valid_i(valid)       ,
                                                .Min(a_input)       ,
                                                .shiftMatrixOut(a)  
    );  

    shiftMatrix #(.WIDTH(WIDTHx),.SIZE(SIZE))bb_shiftM(
                                                .nreset(nreset)         ,
                                                .clock(clock)           ,
                                                .valid_i(valid)       ,
                                                .Min(b_input_transpost) ,
                                                .shiftMatrixOut(b)      
    );  

//Assigment initials
//assign a_vec[0][0] = {{WIDTH{1'b0}},a[3    :0]};
//assign a_vec[0][1] = {{WIDTH{1'b0}},a[7    :4]};
//assign a_vec[0][2] = {{WIDTH{1'b0}},a[11   :8]};
//assign b_vec[0][0] = {{WIDTH{1'b0}},b[3    :0]};
//assign b_vec[0][1] = {{WIDTH{1'b0}},b[7    :4]};
//assign b_vec[0][2] = {{WIDTH{1'b0}},b[11   :8]};

generate 
    genvar i,j;
        for(i =0; i < SIZE;i++)begin:CELULA_ROWS
            assign a_vec[0][i] = {{WIDTH{1'b0}},a[(i+1)*WIDTHx-1:(i+1)*WIDTHx-WIDTHx]};
            assign b_vec[0][i] = {{WIDTH{1'b0}},b[(i+1)*WIDTHx-1:(i+1)*WIDTHx-WIDTHx]};
            for(j =0; j < SIZE;j++)begin:CELULA_COLUMNS
                accumulator_cells #(.WIDTH(WIDTH)) cells_accs(    
                    .clock    (     clock                                          ),
                    .nreset   (     nreset                                         ),
                    .valid_i  (     valid                                          ),
                    .a        (     a_vec[i][j]                                    ),
                    .b        (     b_vec[j][i]                                    ),
                    .x        (     a_vec[i+1][j]                                  ), //Ajuda de Ewerton
                    .y        (     b_vec[j+1][i]                                  ), //Ajuda de Ewerton
                    .z        (     output_produc_a_b[SIZE-j-1][SIZE-i-1]          )
                );
            end
        end

endgenerate

always_ff@(posedge clock, negedge nreset ) begin
    if(!nreset)begin counter <=0 ;
                     valid <=0;
    end
    else begin  counter <= next_counter;
                valid   <= valid_i ? valid_i : valid;
    end
end
assign next_counter = (valid & !ready) ? counter + 1'b1 : 1'b0;
assign ready = counter == 3*SIZE -1;
endmodule