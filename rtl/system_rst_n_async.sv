module system_rst_n_asysnc(
    input logic rst_n_async,
    input logic ena_rst_n_sync,
    output logic system_rst_n_sync,
    input logic clock   
);

    always_ff(posdge clock, negedge rst_n_async)begin
        if(!rst_n_async)begin
            system_rst_n_sync <= 0;
        end 
        else system_rst_n_sync <= !ena_rst_n_sync;

    end
endmodule