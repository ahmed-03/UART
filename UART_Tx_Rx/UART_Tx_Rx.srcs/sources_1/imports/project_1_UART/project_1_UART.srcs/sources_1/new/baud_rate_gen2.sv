`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2024 10:57:03
// Design Name: 
// Module Name: baud_rate_gen2
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


module baud_rate_gen2
// # (
//    parameter clk_speed = 100 * (10**6),
//    parameter desired_baud_rate = 9600
    // NOTE: actually, no need for these prameters because we used pre-calculated method using MUXes
//    ) 
    (
    input logic clk,
    input logic reset_n,
    input logic [2:0] baud_rate_selected,
    output logic new_clk,
    output logic baud  // x16_slower_new_clk
    );
    
    // user should enter which baud type desired with this fixed text"Baud_{desired_rate}" and write which desired_rate
    // example:   user (outer module) entered "Baud_14200" not "14200". he has to follow my speed-names ("Baud_9600", "Baud_14200" ... ) by writing which type 
    typedef enum logic [2:0] {
        Baud_9600,
        Baud_14200,
        Baud_38400,
        Baud_57600,
        Baud_115200
        } BaudRate_t;  // Tx_clk_speed
    integer counts;
    
    // Mux --> to get how many times we need to count the posedge of clk, to generate the new modified clock (only for Rx)
    always @ (posedge clk, negedge reset_n) begin
        if ( ! reset_n ) begin
             counts = 1;
        end else begin
            // assign pre-calculated (fixed) results of this cormula:
            // clk_speed / divisor = baud_rate  = -->  clk_speed / baud_rate  = divisor (or "counts_desired")
            case (baud_rate_selected)
                Baud_9600: counts = 10417 >> 5;    // 100MHz / 9600 = 10416.666666  (this is counts needed to be counted)
                Baud_14200: counts = 7042 >> 5;    // 7042.25352112676
                Baud_38400: counts = 2604 >> 5;    // 2604.1666 ....
                Baud_57600: counts = 1736 >> 5;    // 1736.1111 ...
                Baud_115200: counts = 868 >> 5;   // 868.055555 ....
                // NOTE: divide by 2 to have half of the cycle (HIGH and LOW), so we will trigger it every half cycle
            endcase
        end
    end
    
    // illustration ... 
    // Remeber: it's better to use shift-right (10417 >> 1) to divide by 2 instead of using DSP "counts = 10417 / 2"
    //                  but actually we also need to devided by 16 (i.e. 10417 / 16) to generate the Rx_clk_speed, which is
    //                  faster than Tx_clk_speed by 16 times   (Tx_clk * 16 = Rx_clk ---> so Rx faster than Tx)
    //  but there is a problem ... actually we can't increase the clk speed in general, but we can make it slower since
    // we use multiple clock-cycles (in the original clk) as single clock-cycle (in the new generated clock)
    //
    // so in conclusion, we have to generate the faster clk firstly (Rx_clk) then maniplated to generate the slower one (Tx_clk) by
    // shifting 4 times ( counts >> 4) to use less cycles as one cycle and then shifted one more (counts >> 1) to divide by 2 beacuse
    // every single cycle contains HIGH and LOW (apply one toggle)
    // thus, we have to apply this:   counts >> 5  to get the faster one use clk_divider to get the slower one
    
    // clk divider instance for generating Rx_clk
    clk_divider faster_clk(
        .clk( clk ),
        .reset_n( reset_n ),
        .counts_desired( counts ),   // it was fixed in previous labs
        .new_clk( new_clk )
        );
        
    // clk divider instance for generating Tx_clk (baud)
//    integer counts_for_slower = counts << 4;
    clk_divider slower_clk(
        .clk( clk ),
        .reset_n( reset_n ),
        .counts_desired( counts << 4 ),   // it was fixed in previous labs
        .new_clk( baud )
        );
    
endmodule
