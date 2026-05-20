
module reg_bank#(


    parameter DATA_W   = 4,
    parameter N_LANES  = 3   // quantidade de regL*

)(
    input  logic clock              ,
    input  logic rst_n_async             ,
    input  logic              ena   ,

    input  logic [DATA_W-1:0] OP [N_LANES-1:0],
    output logic [DATA_W-1:0] OUT[N_LANES-1:0]
);
(* ram_style = "distributed" *)
logic [DATA_W-1:0] mem [N_LANES-1:0][2*(N_LANES-1)-1:0];

    generate 
        genvar i,j;
        for(j = 0; j < N_LANES; j++)begin
            for(i = 0; i < 2*(N_LANES-1)-1; i++)begin
            (*dont_touch = "true"*)
                ffd #(.WIDTH(DATA_W)) ffds (.clock(clock),.rst_n_async(rst_n_async),.ena(ena),.data_in(mem[j][i]),.data_out(mem[j][i+1]));
            end  
            (*dont_touch = "true"*)
            assign mem[j][0] = OP[j];
            (*dont_touch = "true"*)
            assign OUT[j] = mem[N_LANES-j-1][j];
        end
    endgenerate
endmodule

