module systolicControlUnitTop(
    input  logic       clock                        ,
    input  logic       nreset                       ,
    input  logic       uart_valid_rx_in             ,
    input  logic       uart_ready_rx                ,
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
    output logic [31:0] frame_start                 

);
logic       s_axis_tlast;
enum {IDLE,IDLE_PC, WRITE_MEMAAA,WRITE_MEMBBB,SYSTOLIC_READ_MEM,SEND_FPGA2HOST,DONE} fsm_unit_control, fsm_unit_control_next;

always_ff@(posedge clock, negedge nreset)begin
    if(!nreset)begin
        frame_start        <= 0;

    end else begin

        //frame_start[07:00] <=  (uart_ready_rx && !last_uart_ready_rx) ? uart_data_rx_out  : frame_start[07:00];
        //frame_start[15:08] <=  (uart_ready_rx && !last_uart_ready_rx) ? frame_start[07:00]: frame_start[15:08];
        //frame_start[23:16] <=  (uart_ready_rx && !last_uart_ready_rx) ? frame_start[15:08]: frame_start[23:16];
        //frame_start[31:24] <=  (uart_ready_rx && !last_uart_ready_rx) ? frame_start[23:16]: frame_start[31:24];

        frame_start[07:00] <= uart_valid_rx_in && uart_ready_rx ? uart_data_rx_out  :frame_start[07:00];
        frame_start[15:08] <= uart_valid_rx_in && uart_ready_rx ? frame_start[07:00]:frame_start[15:08];
        frame_start[23:16] <= uart_valid_rx_in && uart_ready_rx ? frame_start[15:08]:frame_start[23:16];
        frame_start[31:24] <= uart_valid_rx_in && uart_ready_rx ? frame_start[23:16]:frame_start[31:24];
    end
end


/*

ila_0 your_instance_name (
	.clk(clock), // input wire clk


	.probe0(frame_start), // input wire [31:0]  probe0  
	.probe1(fsm_unit_control), // input wire [2:0]  probe1 
	.probe2(s_axis_tlast), // input wire [0:0]  probe2 
	.probe3(uart_valid_rx_in && uart_ready_rx ), // input wire [0:0]  probe3 
	.probe4(mem2serial_valid_i), // input wire [0:0]  probe4 
	.probe5(uart_ready_rx), // input wire [0:0]  probe5 
	.probe6(mem2serial_valid_i), // input wire [0:0]  probe6 
	.probe7(uart_valid_rx_in && uart_ready_rx ), // input wire [0:0]  probe7 
	.probe8(uart_valid_tx_in), // input wire [0:0]  probe8 
	.probe9(1) // input wire [0:0]  probe9
);*/

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
        serial2mem_opa_rw             = 0;
        serial2mem_opb_rw             = 0;
        serial2mem_opa_rready_i       = 0;
        serial2mem_opb_rready_i       = 0;
        mem2serial_valid_i            = 0;
        mem2serial_rready_i           = 1;
        uart_valid_tx_in              = 0;        
        syst_valid_i                  = 0;  
        syst_rready_i                 = 1;          
        //fsm_unit_control_next         = uart_valid_rx_in && frame_start == 16'hffff ? WRITE_MEMAAA :IDLE;
        starting_frame_identified     = 1;
        s_axis_tlast =0;
        /*
        if(uart_valid_rx_in)begin
            if(frame_start[15:0] == 16'hffff & !serial2mem_opa_rvalid_o)begin
                fsm_unit_control_next =  WRITE_MEMAAA;
                serial2mem_opb_valid_i        =0;
            end
            else if(frame_start == 32'hffff_ffff)begin
                //ffff_ffff => Envio dos operandos em sequência
                //0000_ffff => Envio dos operandos em com atraso
                fsm_unit_control_next = (serial2mem_opb_ready_o) ? WRITE_MEMBBB : IDLE;
                serial2mem_opb_valid_i        = 0;
            end
            else begin
                serial2mem_opb_valid_i        =0;
                fsm_unit_control_next = IDLE;
            end
           endssssssssssss
         else begin
                serial2mem_opb_valid_i        =0;
                fsm_unit_control_next = IDLE;
         end
        */
         //casex({uart_valid_rx_in,frame_start[15:0] == 16'hffff & !serial2mem_opa_rvalid_o,frame_start[15:0] ==16'haaaa})
        casex({(uart_valid_rx_in && uart_ready_rx),frame_start[15:0] == 16'hffff & !serial2mem_opa_rvalid_o,{frame_start[23:0],uart_data_rx_out[7:0]} ==32'hadda_ffff})
            3'b11x:begin
                fsm_unit_control_next =  WRITE_MEMAAA;
                serial2mem_opb_valid_i        =0;
                s_axis_tlast    =1;
            end
            3'b1x1:begin
                fsm_unit_control_next = (serial2mem_opb_ready_o) ? WRITE_MEMBBB : IDLE;
                serial2mem_opb_valid_i        = 0;
                s_axis_tlast    =1;
            end
            3'bxxx:begin
                fsm_unit_control_next = IDLE;
                serial2mem_opb_valid_i        = 0;
                s_axis_tlast    =1;
            end
            default:begin
                serial2mem_opb_valid_i        =0;
                fsm_unit_control_next = IDLE;
                s_axis_tlast    =1;
            end
         endcase
    end
    WRITE_MEMAAA:begin
        serial2mem_opa_valid_i        = 1;
        serial2mem_opb_valid_i        = 0 ;
        serial2mem_opa_rw             = 0;  
        serial2mem_opb_rw             = 0; 
        serial2mem_opa_rready_i       = 0;
        serial2mem_opb_rready_i       = 0;    
        mem2serial_valid_i            = 0;
        mem2serial_rready_i           = 0;
        syst_valid_i                  = 0;          
        syst_rready_i                 = 0;  
        fsm_unit_control_next         = serial2mem_opa_rvalid_o ? IDLE : WRITE_MEMAAA;
        uart_valid_tx_in              = 0;
        //starting_frame_identified     = frame_start[15:0] == 16'hffff & serial2mem_opa_rvalid_o;
        starting_frame_identified     = 1;
        s_axis_tlast = serial2mem_opa_rvalid_o ? 1 : 0;
    end
    WRITE_MEMBBB:begin
        serial2mem_opa_valid_i        = 0;
        serial2mem_opb_valid_i        = 1;
        serial2mem_opa_rready_i       = 0;
        serial2mem_opb_rready_i       = 0;    
        mem2serial_valid_i            = 0;
        mem2serial_rready_i           = 0;        
        syst_rready_i                 = 0;  
        
        
        if({frame_start[7:0],uart_data_rx_out[7:0]}  == 16'hadda)begin
            fsm_unit_control_next         =  SYSTOLIC_READ_MEM;
            serial2mem_opa_rw             =  1;  
            serial2mem_opb_rw             =  1; 
            syst_valid_i                  =  1;
            s_axis_tlast = 1;  
        
        end else begin
            fsm_unit_control_next         = WRITE_MEMBBB;
            serial2mem_opa_rw             =  0;  
            serial2mem_opb_rw             =  0; 
            syst_valid_i                  = 0;  
            s_axis_tlast = 0;        
        
        end
       // fsm_unit_control_next         = serial2mem_opa_rvalid_o && serial2mem_opb_rvalid_o && frame_start == 32'hffff_ffff ? SYSTOLIC_READ_MEM: WRITE_MEMBBB;
        uart_valid_tx_in              = 0;
        //starting_frame_identified     = frame_start == 32'hffff_ffff & serial2mem_opb_rvalid_o;
        starting_frame_identified     = 1;
    end
    SYSTOLIC_READ_MEM:begin
        serial2mem_opa_valid_i        =  1;
        serial2mem_opb_valid_i        =  1;
        serial2mem_opa_rw             =  1;  
        serial2mem_opb_rw             =  1;  
        serial2mem_opa_rready_i       =  ~read_done;
        serial2mem_opb_rready_i       =  ~read_done;
        syst_valid_i                  =  ~read_done;          
        syst_rready_i                 =  0;  
        uart_valid_tx_in              =  0;//Padrão 0
        mem2serial_valid_i            =  0;
        mem2serial_rready_i           =  0;
        fsm_unit_control_next         =  !syst_rvalid_o ? SYSTOLIC_READ_MEM : IDLE_PC;
        starting_frame_identified     = 0;
        s_axis_tlast    =1; 
    end
    IDLE_PC:begin
       //if((uart_valid_rx_in && uart_ready_rx)&&{frame_start[23:0],uart_data_rx_out} == 32'hadda_eaea)begin
        if((uart_valid_rx_in && uart_ready_rx)&&{frame_start[7:0],uart_data_rx_out} == 16'heaea)begin
            fsm_unit_control_next   = SEND_FPGA2HOST             ;            
            uart_valid_tx_in        =  1                        ;
            syst_rready_i           =  0                        ;
            mem2serial_valid_i      =  1                        ;
            s_axis_tlast <= 1;
        end
        else begin
            fsm_unit_control_next = IDLE_PC                     ; 
            uart_valid_tx_in      =  1                          ;
            syst_rready_i         =  0                          ;
            mem2serial_valid_i    =  0                          ;
            s_axis_tlast = 0;

        end
        mem2serial_rready_i           =  0         ;
        serial2mem_opa_valid_i        =  0         ;
        serial2mem_opb_valid_i        =  0         ;
        serial2mem_opa_rw             =  serial2mem_opa_rw        ;  
        serial2mem_opb_rw             =  serial2mem_opb_rw        ;  
        serial2mem_opa_rready_i       =  serial2mem_opa_rready_i  ;
        serial2mem_opb_rready_i       =  serial2mem_opb_rready_i  ;
        starting_frame_identified     =  starting_frame_identified;
        syst_valid_i                  =  0;          

    end
    SEND_FPGA2HOST:begin
        s_axis_tlast= 0;
        serial2mem_opa_valid_i     =  0;
        serial2mem_opb_valid_i     =  0;
        serial2mem_opa_rw          =  1;  
        serial2mem_opb_rw          =  1;
        serial2mem_opa_rready_i    =  1;
        serial2mem_opb_rready_i    =  1;
        mem2serial_valid_i         =  1;
        mem2serial_rready_i        =  0;          
        syst_valid_i               =  0;
        syst_rready_i              =  0;  
        uart_valid_tx_in           =  1;
        fsm_unit_control_next      = mem2serial_rvalid_o  ? IDLE: SEND_FPGA2HOST;
        starting_frame_identified  = 0;
    end
    default:begin
        fsm_unit_control_next = IDLE;
        serial2mem_opa_valid_i        = 0;
        serial2mem_opb_valid_i        =  0;
        serial2mem_opa_rw             = 0;
        serial2mem_opb_rw             = 0;
        serial2mem_opa_rready_i       = 0;
        serial2mem_opb_rready_i       = 0;
        mem2serial_valid_i            = 0;
        mem2serial_rready_i           = 1;
        uart_valid_tx_in              = 0;        
        syst_valid_i                  = 0;  
        syst_rready_i                 = 0;          
        //fsm_unit_control_next         = uart_valid_rx_in && frame_start == 16'hffff ? WRITE_MEMAAA :IDLE;
        starting_frame_identified     = 1;
        s_axis_tlast = 1;
    end
endcase

logic [32:0]counter_out_idle        ;
logic [32:0]counter_out_opA         ;
logic [32:0]counter_out_opB         ;
logic [32:0]counter_out_systolic_read_mem    ;
logic [32:0]counter_out_send_fpga2host   ;
logic [32:0]counter_out_idle_pc ;

counter#(.MAX_COUNTER(32)) counter_idle(

        .clock    (clock                              )                           ,
        .nreset   (nreset                             )                           ,
        .ena      (fsm_unit_control==IDLE_PC          )                           ,
        .counter  (counter_out_idle                   )                           ,
        .clear    ((uart_valid_rx_in && uart_ready_rx) &&frame_start[15:0] == 16'hffff & !serial2mem_opa_rvalid_o             )


);

counter#(.MAX_COUNTER(32)) counter_opA(

        .clock    (clock                               )                           ,
        .nreset   (nreset                              )                           ,
        .ena      (fsm_unit_control==WRITE_MEMAAA      )                           ,
        .counter  (counter_out_opA                     )                           ,
        .clear((uart_valid_rx_in && uart_ready_rx) &&frame_start[15:0] == 16'hffff & !serial2mem_opa_rvalid_o             )
);

counter#(.MAX_COUNTER(32)) counter_opB(

        .clock    (clock                                )                           ,
        .nreset   (nreset                               )                           ,
        .ena      (fsm_unit_control==WRITE_MEMBBB       )                           ,
        .counter  (counter_out_opB                      )                           ,
        .clear((uart_valid_rx_in && uart_ready_rx) &&frame_start[15:0] == 16'hffff & !serial2mem_opa_rvalid_o             )
);

counter#(.MAX_COUNTER(32)) counter_read_mem(

        .clock    (clock                                )                           ,
        .nreset   (nreset                               )                           ,
        .ena      (fsm_unit_control==SYSTOLIC_READ_MEM  )                           ,
        .counter  (counter_out_systolic_read_mem       )                           ,
        .clear((uart_valid_rx_in && uart_ready_rx) &&frame_start[15:0] == 16'hffff & !serial2mem_opa_rvalid_o             )
);


counter#(.MAX_COUNTER(32)) counter_write_mem(

        .clock    (clock                                )                           ,
        .nreset   (nreset                               )                           ,
        .ena      (fsm_unit_control==SEND_FPGA2HOST     )                           ,
        .counter  (counter_out_send_fpga2host           ),
        .clear(0   )
);


counter#(.MAX_COUNTER(32)) counter_idle_pc(

        .clock    (clock                               )                           ,
        .nreset   (nreset                              )                           ,
        .ena      (fsm_unit_control==IDLE_PC           )                           ,
        .counter  (counter_out_idle_pc                 ),
        .clear((uart_valid_rx_in && uart_ready_rx) &&frame_start[15:0] == 16'hffff & !serial2mem_opa_rvalid_o             )
);


ila_4 contadores_de_ciclo (
	.clk(clock), // input wire clk


	.probe0(counter_out_idle), // input wire [31:0]  probe0  
	.probe1(counter_out_opA), // input wire [31:0]  probe1 
	.probe2(counter_out_opB), // input wire [31:0]  probe2 
	.probe3(counter_out_systolic_read_mem), // input wire [31:0]  probe3 
	.probe4(counter_out_send_fpga2host), // input wire [31:0]  probe4 
	.probe5(counter_out_idle_pc) // input wire [31:0]  probe5
);


endmodule


