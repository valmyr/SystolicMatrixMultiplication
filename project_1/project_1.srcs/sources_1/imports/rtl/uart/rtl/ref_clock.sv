module ref_clock#(parameter CLOCK_REF=5_000_000,CLOCK_INPUT=50_000_000)(

    input logic in_clock,
    input logic nreset,
    output logic out_clock_ref
);
logic done;
localparam STOPCOUNTER = CLOCK_INPUT/(2*CLOCK_REF);
counter #(.MOD(STOPCOUNTER)) counter_base(
    .clock(in_clock),
    .nreset(nreset),
    .ena(1'b1),
    .counting_done(done)
);
always_ff@(posedge done,negedge nreset)begin
    if(!nreset)out_clock_ref<=0;
    else out_clock_ref<=~out_clock_ref;
end

endmodule 