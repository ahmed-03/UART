`timescale 1ns / 1ps

module Trans2 #(parameter width = 8)(
    input clk, rst_n,
    input load, en_shift,
    input [1:0] FSM,
    input Paritiy_Typer, // even=0 , odd=1
    input [width-1:0]data_in,
    output logic Finish_Tx,
    output logic Tx
    );

    logic w1;
    logic [3:0]w2;
    
    //flag 
//    logic Finish_Tx;
//    logic Tx;  
//    logic en_shift;

    Shift_Reg#(width) sa(
    .clk(clk), 
    .rst_n(rst_n),
    .en_shift(en_shift),
    .load(load),
    .right_left(1'b1),
    .data_in(data_in),
    .out(w1)
    );


    always @(*)begin 
        case (FSM)
            2'b00 :Tx = 1'b1 ;
            2'b01 :Tx = 1'b0;
            2'b10 :Tx = w1;
            2'b11 :Tx = (^data_in)^(Paritiy_Typer) ;
        endcase
    end

    Counter #(4) ca(
    .clk(clk),
    .rst_n(rst_n),
    .en(en_shift),
    .q(w2)
);

    assign Finish_Tx = (w2 >= 4'h08) ;
endmodule