module unflatten(parameter WIDTH = 8, SIZE = 16)(
    input logic clock                    ,
    input logic nreset                   ,
    input logic [WIDTH-1:0] data_in      ,
    output logic [WIDTH-1:0] data_out_lin[SIZE-1:0]
);
logic [WIDTH-1:0] data_out [SIZE*SIZE-1:0];
always_ff@(posedge clock, negedge nreset)begin
    if(!nreset)begin
        data_out <= '{default:0};
    end else begin
        data_out <= data_in << WIDTH;
    end
end




endmodule