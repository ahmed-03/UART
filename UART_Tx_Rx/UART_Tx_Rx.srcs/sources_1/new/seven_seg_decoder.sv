`timescale 1ns / 1ps

module seven_seg_decoder(
    input  wire [3:0] bin,      // 4-binit bininary input (0–F)
    output reg  [6:0] seg       // 7-binit output for segments a-g
);

// Add your code here -----------------------------------
assign seg[0] = ((~bin[3] & ~bin[2] & ~bin[1] & bin[0]) | (bin[2] & ~bin[1] & ~bin[0]) | (bin[3] & ~bin[2] & bin[1] & bin[0]) | (bin[3] & bin[2] & ~bin[1]));
assign seg[1] =  ((~bin[3] & bin[2] & ~bin[1] & bin[0]) | (bin[2] & bin[1] & ~bin[0]) | (bin[3] & bin[1] & bin[0]) | (bin[3] & bin[2] & ~bin[0]));
assign seg[2] =  ((~bin[3] & ~bin[2] & bin[1] & ~bin[0]) | (bin[3] & bin[2] & ~bin[0]) | (bin[3] & bin[2] & bin[1]));
assign seg[3] =   ((~bin[2] & ~bin[1] & bin[0]) | (~bin[3] & bin[2] & ~bin[1] & ~bin[0]) | (bin[2] & bin[1] & bin[0]) | (bin[3] & ~bin[2] & bin[1] & ~bin[0]));
assign seg[4]= ((~bin[3] & bin[0]) | (~bin[3] & bin[2] & ~bin[1]) | (~bin[2] & ~bin[1] & bin[0]));
assign seg[5]= ((~bin[3] & ~bin[2] & bin[0]) | (~bin[3] & ~bin[2] & bin[1]) | (~bin[3] & bin[1] & bin[0]) | (bin[3] & bin[2] & ~bin[1]));
assign seg[6] = ((~bin[3] & ~bin[2] & ~bin[1]) | (~bin[3] & bin[2] & bin[1] & bin[0]));
// Add your code here -----------------------------------



    
endmodule