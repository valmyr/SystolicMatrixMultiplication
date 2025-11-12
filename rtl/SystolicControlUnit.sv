module systolicControlUnitTop(
    input  logic clock                   ,
    input  logic nreset                  ,
    input  logic uart_valid_rx_in        ,
    input  logic serial2mem_opa_rvalid_o ,
    input  logic serial2mem_opb_rvalid_o ,
    input  logic syst_rvalid_o           ,
    input  logic mem2serial_rvalid_o     ,

    output logic serial2mem_opa_valid_i  ,    
    output logic serial2mem_opb_valid_i  ,    
    output logic serial2mem_opa_rw       ,    
    output logic serial2mem_opb_rw       ,    
    output logic serial2mem_opa_rready_i ,    
    output logic serial2mem_opb_rready_i ,    
    output logic mem2serial_valid_i      ,    
    output logic mem2serial_rready_i     ,       
    output logic syst_valid_i            ,    
    output logic syst_rready_i           ,
    output logic uart_valid_tx_in        

);

enum {IDLE, WRITE_MEM,SYSTOLIC_READ_MEM,WRITE_MEM_OUT,DONE} fsm_unit_control, fsm_unit_control_next;
always_ff@(posedge clock, negedge nreset)begin
    if(!nreset)begin
        fsm_unit_control <= IDLE;
    end else begin
        fsm_unit_control <= fsm_unit_control_next;
    end
end
always_comb case(fsm_unit_control)
    IDLE:begin
        serial2mem_opa_valid_i        = 0;
        serial2mem_opb_valid_i        = 0;
        serial2mem_opa_rw             = 0;
        serial2mem_opb_rw             = 0;
        serial2mem_opa_rready_i       = 0;
        serial2mem_opb_rready_i       = 0;
        mem2serial_valid_i            = 0;
        mem2serial_rready_i           = 0;
        uart_valid_tx_in              = 0;        
        syst_valid_i                  = 0;  
        syst_rready_i                 = 0;          
        fsm_unit_control_next         = uart_valid_rx_in ? WRITE_MEM :IDLE;
    end
    WRITE_MEM:begin
        serial2mem_opa_valid_i        = 1;
        serial2mem_opb_valid_i        = serial2mem_opa_rvalid_o? 1:0  ;
        serial2mem_opa_rw             = 0;  
        serial2mem_opb_rw             = 0; 
        serial2mem_opa_rready_i       = 0;
        serial2mem_opb_rready_i       = 0;    
        mem2serial_valid_i            = 0;
        mem2serial_rready_i           = 0;
        syst_valid_i                  = 0;          
        syst_rready_i                 = 0;  
        fsm_unit_control_next         = serial2mem_opa_rvalid_o && serial2mem_opb_rvalid_o ? SYSTOLIC_READ_MEM: WRITE_MEM;
        uart_valid_tx_in              = 0;
    end
    SYSTOLIC_READ_MEM:begin
        serial2mem_opa_valid_i        =  1;
        serial2mem_opb_valid_i        =  1;
        serial2mem_opa_rw             =  1;  
        serial2mem_opb_rw             =  1;  
        serial2mem_opa_rready_i       =  1;
        serial2mem_opb_rready_i       =  1;
        syst_valid_i                  =  1;          
        syst_rready_i                 =  1;  
        uart_valid_tx_in              =  0;
        mem2serial_valid_i            =  0;
        mem2serial_rready_i           =  0;
        fsm_unit_control_next         =  !syst_rvalid_o ? SYSTOLIC_READ_MEM : WRITE_MEM_OUT;
    end
    WRITE_MEM_OUT:begin
        serial2mem_opa_valid_i     =  0;
        serial2mem_opb_valid_i     =  0;
        serial2mem_opa_rw          =  1;  
        serial2mem_opb_rw          =  1;
        serial2mem_opa_rready_i    =  0;
        serial2mem_opb_rready_i    =  0;
        mem2serial_valid_i         =  1;
        mem2serial_rready_i        = 0;          
        syst_valid_i               =  0;
        syst_rready_i              =  0;  
        uart_valid_tx_in           =  1;
        fsm_unit_control_next      = mem2serial_rvalid_o  ? IDLE: WRITE_MEM_OUT;
    end
    DONE:begin
        

    end
endcase

endmodule