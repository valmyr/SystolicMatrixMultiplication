//============================================================
// Nome do Bloco    : UART_Top
// Versão           : 0.1
// Autor(a)         : Tulio Tavares
// Data de Criação  : 16/07/2025
// Última Modificação: 16/07/2025
//
// Descrição:
//  Modulo para instanciar e encapsular o protocolo UART e 
//  realizar a comunicacao com o restante do sistema
//============================================================

module uart_wrapper #(
  parameter ADDR_WIDTH = 6, // 64 bytes reg space
  parameter DATA_WIDTH = 32,
  parameter FIFO_DEPTH = 64
)(
  input  logic                 clk,
  input  logic                 rst_n,

  // Wishbone-lite slave (32-bit)
  input  logic [ADDR_WIDTH-1:0] wb_adr_i,
  input  logic [DATA_WIDTH-1:0] wb_dat_i,
  output logic [DATA_WIDTH-1:0] wb_dat_o,
  input  logic [3:0]           wb_sel_i,
  input  logic                 wb_we_i,
  input  logic                 wb_stb_i,
  input  logic                 wb_cyc_i,
  output logic                 wb_ack_o,

  // UART pins
  input  logic                 uart_rx_pin,
  output logic                 uart_tx_pin,

  // Generic DMA interface (simple handshake)
  output logic                 dma_req,
  input  logic                 dma_ack,
  output logic                 dma_dir,   // 0: DMA reads from wrapper (TX), 1: DMA writes to wrapper (RX)
  output logic [31:0]          dma_addr,
  output logic [15:0]          dma_len,
  input  logic                 dma_valid,
  input  logic [31:0]          dma_rdata, // data from DMA (write to peripheral)
  output logic                 dma_ready,
  output logic [31:0]         dma_wdata, // data to DMA (read from peripheral)

  output logic                 irq_UART
);

  // ---- internal registers ----
  logic [31:0] ctrl;
  logic [31:0] baud_div;
  logic [7:0]  tx_thresh, rx_thresh;
  logic [31:0] status;
  logic [31:0] irq_status;
  logic [31:0] dma_ctrl, dma_addr_reg;

  // Wishbone simple register file (read/write)
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      ctrl <= 32'd0;
      baud_div <= 32'd0;
      tx_thresh <= 8'd4;
      rx_thresh <= 8'd4;
      irq_status <= 32'd0;
      dma_ctrl <= 0;
      dma_addr_reg <= 32'd0;
    end else begin
      wb_ack_o <= 1'b0;
      if (wb_cyc_i && wb_stb_i && !wb_ack_o) begin
        wb_ack_o <= 1'b1; // single-cycle ack (wishbone-lite style)
        if (wb_we_i) begin
          case (wb_adr_i)
            6'h00: ctrl <= wb_dat_i;
            6'h01: baud_div <= wb_dat_i;
            6'h02: {24'd0, tx_thresh} <= wb_dat_i;
            6'h03: {24'd0, rx_thresh} <= wb_dat_i;
            6'h06: irq_status <= irq_status & ~wb_dat_i; // write-1-to-clear
            6'h08: dma_ctrl <= wb_dat_i;
            6'h09: dma_addr_reg <= wb_dat_i;
            6'h04: ; // reserved
            6'h05: begin
              // TX_DATA
              // handle write to TX FIFO (see below)
            end
            default: ;
          endcase
        end else begin
          case (wb_adr_i)
            6'h00: wb_dat_o <= ctrl;
            6'h01: wb_dat_o <= baud_div;
            6'h02: wb_dat_o <= {24'd0, tx_thresh};
            6'h03: wb_dat_o <= {24'd0, rx_thresh};
            6'h04: wb_dat_o <= status;
            6'h05: wb_dat_o <= 32'h0; // TX_DATA read not used
            6'h06: wb_dat_o <= irq_status;
            6'h07: wb_dat_o <= 32'h0; // RX_DATA: handled separately
            6'h08: wb_dat_o <= dma_ctrl;
            6'h09: wb_dat_o <= dma_addr_reg;
            default: wb_dat_o <= 32'd0;
          endcase
        end
      end
    end
  end

  // ---- FIFOs (simple behavioral) ----
  logic [7:0] tx_fifo [0:FIFO_DEPTH-1];
  logic [7:0] rx_fifo [0:FIFO_DEPTH-1];
  integer tx_wr_ptr, tx_rd_ptr, tx_cnt;
  integer rx_wr_ptr, rx_rd_ptr, rx_cnt;

  // instantiate your uart tx/rx cores and connect to FIFOs (abstracted)
  uart_tx tx_inst (.clk(clk), .rst_n(rst_n), .tx_pin(uart_tx_pin), .data_in(...), .valid(...), .ready(...));
  uart_rx rx_inst (.clk(clk), .rst_n(rst_n), .rx_pin(uart_rx_pin), .data_out(...), .valid(...), .ready(...));

  // ---- DMA handshake logic (simplified) ----
  // Example: when rx_cnt >= rx_thresh and dma not busy, raise dma_req with dir=1
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      dma_req <= 1'b0;
      dma_dir <= 1'b0;
      dma_addr <= 32'd0;
      dma_len <= 16'd0;
      dma_ready <= 1'b0;
      dma_wdata <= 32'd0;
    end else begin
      // Request DMA for RX -> MEM
      if (!dma_req && (rx_cnt >= rx_thresh) && (ctrl[1]) /* RX enable */ && (dma_ctrl[0])) begin
        dma_req <= 1'b1;
        dma_dir <= 1'b1; // write to memory
        dma_addr <= dma_addr_reg; // simple model
        dma_len <= rx_cnt;
      end

      if (dma_req && dma_ack) begin
        // DMA accepted, start streaming rx_fifo -> dma_wdata when dma_valid/dma_ready handshakes occur
        dma_req <= 1'b0;
        // actual streaming state-machine not shown (to implement)
      end
    end
  end

  // IRQ aggregation
  always_comb begin
    irq = 1'b0;
    if (irq_status != 32'd0 && ctrl[3]) irq = 1'b1;
  end

  
endmodule
