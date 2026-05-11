module ffd#(parameter WIDTH = 8)(

    input  logic clock,
    input  logic rst_n_async,
    input  logic ena    ,
    input  logic [WIDTH-1:0] data_in,
    output logic [WIDTH-1:0] data_out
);


always_ff@(posedge clock, negedge rst_n_async)begin
    if(!rst_n_async)begin
        data_out <= 0;
    end else begin
        data_out<= ena ? data_in : 0;
    end
end

endmodule