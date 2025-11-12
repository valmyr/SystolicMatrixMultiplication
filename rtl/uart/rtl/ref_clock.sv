module ref_clock#(parameter CLOCK_REF=5_000_000,CLOCK_INPUT=50_000_000)(

     (*dont_touch = "true"*) input logic in_clock,
     (*dont_touch = "true"*) input logic nreset,
     (*dont_touch = "true"*) output logic out_clock_ref
);
(*dont_touch = "true"*) logic done,out_clock_ref_next;
localparam STOPCOUNTER = CLOCK_INPUT/(2*CLOCK_REF);
(*dont_touch = "true"*) logic enab_ref_clock;
(*dont_touch = "true"*) assign enab_ref_clock = 1;

(*dont_touch = "true"*)  counter #(.MOD(STOPCOUNTER)) counter_base(
   (*dont_touch = "true"*) .clock(in_clock),
   (*dont_touch = "true"*) .nreset(nreset),
 (*dont_touch = "true"*)   .ena(enab_ref_clock),
   (*dont_touch = "true"*) .counting_done(done)
);
always_ff@(posedge done,negedge nreset)begin
    if(!nreset)out_clock_ref<=0;
    else out_clock_ref<=out_clock_ref_next;
end

(*dont_touch = "true"*) assign out_clock_ref_next = ~out_clock_ref;

endmodule 