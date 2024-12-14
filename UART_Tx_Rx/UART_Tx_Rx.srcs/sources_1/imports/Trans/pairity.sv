`timescale 1ns / 1ps


module pairity(
    input clk,rst,
    input out,
    output logic p
    );
    logic w1,w2,w3;
    
    
//    assign p = (^out);

//    //
//    assign w1 = clk & out;
//    //
//    Register #(1
//    ) raa(
//    .clk(w1),
//    .rst_n(rst),
//    .en(1'b1),
//    .d(~p),
//    .q(p)
//    );
    
    
    
//    //
    
    Register #(1
    ) ra1(
    .clk(clk),
    .rst_n(rst),
    .en(1'b1),
    .d(w2),
    .q(w3)
    );
    
    assign w2 = out ^ w3;
    assign p = w2;
    
//    //
//    assign w3 = out ^ w2;
//    Register #(1
//    ) ra2(
//    .clk(clk),
//    .rst_n(rst),
//    .en(1'b1),
//    .d(w3),
//    .q(w2)
//    );
//    assign p = w2;
//    //
    
endmodule
