module ffd#(parameter WIDTH = 8)(

    input  logic clock,
    input  logic nreset,
    input  logic ena    ,
    input  logic [WIDTH-1:0] data_in,
    output logic [WIDTH-1:0] data_out
);


always_ff@(posedge clock, negedge nreset)begin
    if(!nreset)begin
        data_out <= 0;
    end else begin
        data_out<= ena ? data_in : 0;
    end
end

endmodule