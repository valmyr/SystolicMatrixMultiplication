module unflatten#(parameter WIDTH = 8, SIZE = 16)(
    input logic clock                    ,
    input logic nreset                   ,
    input logic ena                      ,
    input logic [WIDTH-1:0] data_in      ,
    output logic [WIDTH-1:0] data_out_lin[SIZE-1:0][SIZE-1:0]
);
logic [$clog2(SIZE)-1:0] i_counter, j_counter;
logic [$clog2(SIZE)-1:0] next_i_counter, next_j_counter;
logic [2:0] ena_delay;

always_ff@(posedge clock, negedge nreset)begin
    if(!nreset)begin
        data_out_lin <= '{default:0};
        i_counter        <=0; 
        j_counter        <=0;
        ena_delay <= '{default:0};
    end else begin
        ena_delay[0] <= ena;
        ena_delay[1] <= ena_delay[0];
        ena_delay[2] <= ena_delay[1];
        data_out_lin[i_counter][j_counter] <= data_in;
        i_counter               <=  ena_delay[1] ? next_i_counter: 0;                                           ; 
        j_counter               <=  ena_delay[1] ? next_j_counter: 0;
    end
end


assign next_j_counter         =    (j_counter < SIZE   )   ? j_counter +1 : 0;
assign next_i_counter         =    (j_counter < SIZE -1)   ? i_counter:i_counter+1  ;

endmodule