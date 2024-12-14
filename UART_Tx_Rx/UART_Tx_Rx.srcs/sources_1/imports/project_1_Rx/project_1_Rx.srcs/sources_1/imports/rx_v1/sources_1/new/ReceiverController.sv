`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2024 01:04:15 PM
// Design Name: 
// Module Name: ReceiverController
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ReceiverController (
    input clk,
    input rst,

    input zero_detected,
    input aligned,
    input error,
    input data_done,

    output logic read_Tx,
    output logic count_clocks,
    output logic try_align,
    output logic fetch_data,
    output logic clear_clks_counter
);

  typedef enum logic [2:0] {
    IDLE,
    ALIGN,
    COUNT16,
    DATA_AND_PARITY,
    FETCH
  } state_t;
  state_t p_state;
  state_t n_state;

  //===================================next_state_logic===============================/

  always @(*) begin
    case (p_state)
        IDLE: begin
            if (zero_detected) n_state = ALIGN;
            else n_state = IDLE;
        end
        ALIGN: begin
            if (aligned) n_state = COUNT16;
            else n_state = ALIGN;
        end
        COUNT16: begin
          n_state = DATA_AND_PARITY;
        end
        DATA_AND_PARITY: begin
            if (data_done) begin
                if (error)
                    n_state = IDLE;
                else
                    n_state = FETCH;
            end else 
                n_state = DATA_AND_PARITY;
            end
        FETCH: begin
            n_state = IDLE;
        end
    endcase
end
  //=================================present_state_logic==============================/

  always @(posedge clk, negedge rst) begin
    if (!rst) p_state <= IDLE;
    else p_state <= n_state;
  end

  //====================================output_logic==================================/

  always @(p_state) begin
    case (p_state)
      IDLE: begin
        read_Tx = 1'b1;
        count_clocks = 1'b0;
        try_align = 1'b0;  // try_align and count_clocks are zeros so counters will reset
        fetch_data = 1'b0;
        clear_clks_counter = 1'b1;  // negedge clear signal
      end
      ALIGN: begin
        read_Tx = 1'b1;
        count_clocks = 1'b1;
        try_align = 1'b1;
        fetch_data = 1'b0;
//        clear_clks_counter = aligned  ? 1'b1 : 1'b0;  // negedge clear signal (if aligned then reset (clk_ctr=1, align=1, clear=0))
        clear_clks_counter = 1'b0;  // negedge clear signal
      end
      COUNT16: begin
        read_Tx = 1'b1; 
        count_clocks = 1'b1; 
        try_align = 1'b0; 
        clear_clks_counter = 1'b1;
      end
      DATA_AND_PARITY: begin
        read_Tx = 1'b1;
        count_clocks = 1'b1;
        try_align = 1'b0;
        fetch_data = 1'b0;
        clear_clks_counter = 1'b0;
      end
      FETCH: begin
        read_Tx = 1'b0;
        count_clocks = 1'b0;
        try_align = 1'b0;  // try_align and count_clocks are zeros so counters will reset
        fetch_data = 1'b1;
        clear_clks_counter = 1'b0;  // negedge clear signal

      end

    endcase
  end
endmodule