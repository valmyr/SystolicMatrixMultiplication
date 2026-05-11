module systolicControlUnitTop#(parameter SIZE=32,WIDTH=8,BYTESIZES =256)(
    input  logic       clock                        ,
    input  logic       nreset                       ,
    input  logic       uart_valid_rx_in             ,
    input  logic       uart_ready_rx                ,
    input  logic       u_im2row_module_ready_o      ,        
    input  logic       u_im2row_result_rvalid_o     ,
    input  logic       serial2mem_opa_rvalid_o      ,
    input  logic       serial2mem_opb_rvalid_o      ,
    input  logic       serial2mem_opa_ready_o       ,
    input  logic       serial2mem_opb_ready_o       ,
    input  logic       syst_rvalid_o                ,
    input  logic       mem2serial_rvalid_o          ,
    input  logic       read_done                    ,
    input  logic [7:0] uart_data_rx_out             ,
    output logic       serial2mem_opa_valid_i       ,    
    output logic       serial2mem_opb_valid_i       ,    
    output logic       serial2mem_opa_rw            ,    
    output logic       serial2mem_opb_rw            ,    
    output logic       serial2mem_opa_rready_i      ,    
    output logic       serial2mem_opb_rready_i      ,    
    output logic       mem2serial_valid_i           ,    
    output logic       mem2serial_rready_i          ,       
    output logic       syst_valid_i                 ,    
    output logic       syst_rready_i                ,
    output logic       uart_valid_tx_in             ,
    output logic       starting_frame_identified    ,
    output logic [31:0] frame_start                 ,
    input  logic [SIZE*WIDTH-1:0] axi_debug         ,
    output logic u_im2row_data_valid_i              ,      
    output logic u_im2row_downstream_ready_i        

);

                             


localparam MAX_COUNTER_STAGES=31;
logic       s_axis_tlast;
logic ena_mem_write_counter, ena_mem_read_systolic_counter, ena_send2host_counter;

logic [MAX_COUNTER_STAGES-1:0]counter_out_idle;
logic [MAX_COUNTER_STAGES-1:0]counter_out_opA ;
logic [MAX_COUNTER_STAGES-1:0]counter_out_opB ;
logic [MAX_COUNTER_STAGES-1:0]counter_out_systolic_read_mem;
logic [MAX_COUNTER_STAGES-1:0]counter_out_send_fpga2host;
logic [MAX_COUNTER_STAGES-1:0]counter_out_idle_pc;




enum {IDLE,WRITE_MEM,IMG2ROW,SYSTOLIC_READ_MEM,SEND_FPGA2HOST} fsm_unit_control, fsm_unit_control_next;
enum {IDLE_W,WRITE_P} fsm_pipeline_s1, fsm_pipeline_next_s1;
enum {IDLE_E,EXEC_P} fsm_pipeline_s2, fsm_pipeline_next_s2;
enum {IDLE_S,SEND2HOST_P} fsm_pipeline_s3, fsm_pipeline_next_s3;

logic handsheak;

logic clock_sample;


always_ff@(posedge clock, negedge nreset)begin
    if(!nreset)begin
        clock_sample <= 0;
    end else begin
        clock_sample <= ~clock_sample;
    
    end 
    
end


always_ff@(posedge clock, negedge nreset)begin
    if(!nreset)begin
        frame_start        <= 0;
        handsheak <= 0;

    end else begin
        handsheak <= uart_valid_rx_in && uart_ready_rx;
        frame_start[07:00] <= (uart_valid_rx_in && uart_ready_rx)  ? uart_data_rx_out  :frame_start[07:00];
        frame_start[15:08] <= (uart_valid_rx_in && uart_ready_rx)  ? frame_start[07:00]:frame_start[15:08];
        frame_start[23:16] <= (uart_valid_rx_in && uart_ready_rx)  ? frame_start[15:08]:frame_start[23:16];
        frame_start[31:24] <= (uart_valid_rx_in && uart_ready_rx)  ? frame_start[23:16]:frame_start[31:24];
    end
end



always_ff@(posedge clock, negedge nreset)begin
    if(!nreset)begin
        fsm_unit_control <= IDLE;
    end else begin
        fsm_unit_control <= fsm_unit_control_next;
    end
end
always_comb case(fsm_unit_control)
    IDLE:begin
       
        serial2mem_opa_rw             = 0;
        serial2mem_opb_rw             = 0;
        serial2mem_opa_rready_i       = 0;
        serial2mem_opb_rready_i       = 0;
        mem2serial_valid_i            = 0;
        mem2serial_rready_i           = 1;
        uart_valid_tx_in              = 0;        
        syst_valid_i                  = 0;  
        syst_rready_i                 = 1;          
        starting_frame_identified     = 1;
        s_axis_tlast =0;
        if(uart_valid_rx_in && uart_ready_rx && frame_start[15:0] == 16'hffff) begin
                fsm_unit_control_next    =WRITE_MEM;
                serial2mem_opb_valid_i   =0;
                serial2mem_opa_valid_i   =0;
                s_axis_tlast             =1;
        end else begin
                serial2mem_opb_valid_i  =0;
                fsm_unit_control_next   =IDLE;
                serial2mem_opa_valid_i  =0;
                s_axis_tlast            =1;
        end
        ena_mem_write_counter           =0;
        ena_mem_read_systolic_counter   =0;
        ena_send2host_counter           =0;
        fsm_pipeline_next_s3            =IDLE_S;    
        fsm_pipeline_next_s2            =IDLE_E;    
        fsm_pipeline_next_s1            =IDLE_W;    
    end
    WRITE_MEM:begin
        serial2mem_opa_valid_i        = !serial2mem_opa_rvalid_o;
        serial2mem_opb_valid_i        = serial2mem_opa_rvalid_o | counter_out_opA == SIZE;
        serial2mem_opa_rw             = 0;  
        serial2mem_opb_rw             = 0; 
        serial2mem_opa_rready_i       = 0;
        serial2mem_opb_rready_i       = 0;    
        mem2serial_valid_i            = 0;
        mem2serial_rready_i           = 0;
        syst_valid_i                  = 0;          
        syst_rready_i                 = serial2mem_opa_rvalid_o && serial2mem_opb_rvalid_o;  
        fsm_unit_control_next         = serial2mem_opa_rvalid_o && serial2mem_opb_rvalid_o &&  counter_out_opA >= 3*SIZE-1 +5?  SYSTOLIC_READ_MEM : WRITE_MEM;
        uart_valid_tx_in              = 0;
        starting_frame_identified     = 1;
        s_axis_tlast                  = serial2mem_opa_rvalid_o ? 1 : 0;
        ena_mem_write_counter         = 1;
        ena_mem_read_systolic_counter = 0;
        ena_send2host_counter         = 0;
        fsm_pipeline_next_s3          =IDLE_S; 
        fsm_pipeline_next_s2          =IDLE_E; 
        fsm_pipeline_next_s1          =WRITE_P;
        
        
    end
    IMG2ROW:begin
    
    end
    SYSTOLIC_READ_MEM:begin
        serial2mem_opa_valid_i        = !serial2mem_opa_rvalid_o;
        serial2mem_opb_valid_i        = serial2mem_opa_rvalid_o | counter_out_systolic_read_mem == SIZE+1;
        serial2mem_opa_rw             = 0;  
        serial2mem_opb_rw             = 0;  
        serial2mem_opa_rready_i       = counter_out_systolic_read_mem==0;
        serial2mem_opb_rready_i       = counter_out_systolic_read_mem==0;
        syst_valid_i                  = 1;          
        syst_rready_i                 = syst_rvalid_o &&  counter_out_systolic_read_mem >= 3*SIZE-1+5;  
        uart_valid_tx_in              = 0;
        mem2serial_valid_i            = 0;
        mem2serial_rready_i           = 0;
        fsm_unit_control_next         = syst_rvalid_o &&  counter_out_systolic_read_mem >= 3*SIZE-1+5? SEND_FPGA2HOST : SYSTOLIC_READ_MEM ;
        starting_frame_identified     = 0;
        s_axis_tlast                  = 1; 
        ena_mem_write_counter         = 0;
        ena_mem_read_systolic_counter = 1;
        ena_send2host_counter         = 0;
        fsm_pipeline_next_s3          = IDLE_S; 
        fsm_pipeline_next_s2          = EXEC_P; 
        fsm_pipeline_next_s1          = WRITE_P;    
    end
    SEND_FPGA2HOST:begin
        s_axis_tlast= 0;
        serial2mem_opa_valid_i        = !serial2mem_opa_rvalid_o;
        serial2mem_opb_valid_i        = serial2mem_opa_rvalid_o | counter_out_send_fpga2host == SIZE+1;
        serial2mem_opa_rw             = 0;  
        serial2mem_opb_rw             = 0;
        serial2mem_opa_rready_i       = counter_out_send_fpga2host ==0;
        serial2mem_opb_rready_i       = counter_out_send_fpga2host ==0;
        mem2serial_valid_i            = 1;
        mem2serial_rready_i           = mem2serial_rvalid_o && counter_out_send_fpga2host >= 3*SIZE-1 +5;          
        syst_valid_i                  = 1;
        syst_rready_i                 = syst_rvalid_o &&  counter_out_send_fpga2host >= 3*SIZE-1 +5;  
        uart_valid_tx_in              = 1;
        fsm_unit_control_next         = uart_valid_rx_in && uart_ready_rx && frame_start[15:0] == 16'heaea ? IDLE: fsm_unit_control;
        starting_frame_identified     = 0;
        ena_mem_write_counter         = 0;
        ena_mem_read_systolic_counter = 0;
        ena_send2host_counter         = 1;
        fsm_pipeline_next_s3          = SEND2HOST_P;
        fsm_pipeline_next_s2          = EXEC_P;
        fsm_pipeline_next_s1          = WRITE_P;
    end
    default:begin
        fsm_unit_control_next = IDLE;
        serial2mem_opa_valid_i        = 0;
        serial2mem_opb_valid_i        = 0;
        serial2mem_opa_rw             = 0;
        serial2mem_opb_rw             = 0;
        serial2mem_opa_rready_i       = 0;
        serial2mem_opb_rready_i       = 0;
        mem2serial_valid_i            = 0;
        mem2serial_rready_i           = 1;
        uart_valid_tx_in              = 0;        
        syst_valid_i                  = 0;  
        syst_rready_i                 = 0;          
        starting_frame_identified     = 1;
        s_axis_tlast = 1;
        fsm_pipeline_next_s3 =IDLE_S;    
        fsm_pipeline_next_s2 =IDLE_E;    
        fsm_pipeline_next_s1 =IDLE_W; 
    end
endcase


counter#(.MAX_COUNTER(MAX_COUNTER_STAGES)) counter_opA(

        .clock    (clock                               )                           ,
        .nreset   (nreset                              )                           ,
        .ena      (ena_mem_write_counter      )                           ,
        .counter  (counter_out_opA                     )                           ,
        .clear(1'b0            )
);

counter#(.MAX_COUNTER(MAX_COUNTER_STAGES)) counter_read_mem(

        .clock    (clock                                )                           ,
        .nreset   (nreset                               )                           ,
        .ena      (ena_mem_read_systolic_counter )                           ,
        .counter  (counter_out_systolic_read_mem       )                           ,
        .clear(1'b0            )
);


counter#(.MAX_COUNTER(MAX_COUNTER_STAGES)) counter_write_mem(

        .clock    (clock                                )                           ,
        .nreset   (nreset                               )                           ,
        .ena      (ena_send2host_counter     )                           ,
        .counter  (counter_out_send_fpga2host           ),
        .clear(counter_out_send_fpga2host >= 3*SIZE-1+6   )
);






always_ff@(posedge clock, negedge nreset)begin
    if(!nreset)begin
        fsm_pipeline_s3 <=IDLE_S;
        fsm_pipeline_s2 <=IDLE_E;
        fsm_pipeline_s1 <=IDLE_W;   
    end else begin
        fsm_pipeline_s3 <=fsm_pipeline_next_s3;      
        fsm_pipeline_s2 <=fsm_pipeline_next_s2;      
        fsm_pipeline_s1 <=fsm_pipeline_next_s1;  
    end
    
end

endmodule

