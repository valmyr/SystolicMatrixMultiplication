module handshake(

    input logic in_valid_i,
    input logic out_ready_i,
    output logic in_valid_o,
    output logic out_valid_o
);

    enum logic {IDLE,READY,DONE} current_fsm, next_fsm;


    always_comb case(current_fsm)
        IDLE:begin
            next_fsm        = in_valid_i ? READY: IDLE;
            in_valid_o_next = in_valid_i; 
        end
        READY:begin
            next_fsm = 
        end
    endcase

endmodule