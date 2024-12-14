`timescale 1ns / 1ps
module TOP(
    input wire CLK100MHZ,       // System clock input
    input wire CPU_RESETN,      // Active-low reset input
    input wire [7:0] SW,        // Switches for input data
    input wire BTNC,            // Button input
    output wire CA, CB, CC, CD, CE, CF, CG, DP,  // Seven-segment outputs
    output wire [7:0] AN        // Anode enable signals
    );

    // Internal Signals
    logic clk;                  // System clock
    logic rst_n;                // Synchronized reset signal
    logic btn;                  // Button input
    wire [7:0] out;             // UART output
    wire [6:0] Seg;             // Segment control signals
    wire [3:0] digits[0:7];     // Digits for seven-segment display

    // Assignments for internal signals
    assign clk   = CLK100MHZ;    // Assign system clock
    assign rst_n = CPU_RESETN;   // Assign reset signal
    assign btn   = BTNC;         // Assign button signal

    /*--------------------------------------------------------------*/
    // Button Edge Detection and Load Pulse Generation
    logic btn_sync1, btn_sync2, btn_rising_edge;
    logic load;

    // Button Synchronizer
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            btn_sync1 <= 0;
            btn_sync2 <= 0;
        end else begin
            btn_sync1 <= btn;    // Synchronize button signal to clock domain
            btn_sync2 <= btn_sync1;
        end
    end

    // Rising Edge Detector
    assign btn_rising_edge = btn_sync1 & ~btn_sync2;

    // Generate One-Cycle Load Pulse
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            load <= 1'b0;
        else if (btn_rising_edge)
            load <= 1'b1;       // Set load high for one clock cycle
        else
            load <= 1'b0;       // Automatically clear load
    end
    /*--------------------------------------------------------------*/

    // Instantiate UART Module
    top_UART # (
        .baud_used(2'b00),
        .pairity_type(1'b0),
        .data_width(8)
    ) uart_instance (
        .clk(clk),
        .rst_n(rst_n),
        .data_in(SW),
        .load(load),           // Connect load pulse signal here
        .data_out(out)
    );

    // Map UART output to digits for seven-segment display
    assign digits[0] = out[3:0];  // Lower nibble
    assign digits[1] = out[7:4];  // Upper nibble
    assign digits[2] = 4'b1111;   // Unused digits
    assign digits[3] = 4'b1111;
    assign digits[4] = 4'b1111;
    assign digits[5] = 4'b1111;
    assign digits[6] = 4'b1111;
    assign digits[7] = 4'b1111;

    // Instantiate Seven-Segment Controller
    sev_seg_controller ssc (
        .clk(clk),
        .resetn(rst_n),
        .digits(digits),
        .Seg(Seg),
        .AN(AN)
    );

    // Connect Segment Outputs to Seven-Segment Display
    assign CA = Seg[0];
    assign CB = Seg[1];
    assign CC = Seg[2];
    assign CD = Seg[3];
    assign CE = Seg[4];
    assign CF = Seg[5];
    assign CG = Seg[6];
    assign DP = 1'b1;          // Turn off the dot point on the display

endmodule
