`timescale 1ns / 1ps

module Top_Trans(
    input clk,rst_n,load,Paritiy_Typer,
    input [7:0]data_in,
    output Tx
    );
    
    logic Finish_Tx,en_shift;
    logic [1:0]FSM;
    
    TransmitionController a1(
    .clk(clk),
    .rst_n(rst_n),
    .load(load),
    .finish_Tx(Finish_Tx),
    .En_shift(en_shift),
    .FSM(FSM)
    );
    
    Trans2 #(8) aa(
    .clk(clk), 
    .rst_n(rst_n),
    .load(load),
    .en_shift(en_shift),
    .FSM(FSM),
    .Paritiy_Typer(Paritiy_Typer),
    .data_in(data_in),
    .Finish_Tx(Finish_Tx),
    .Tx(Tx)
    );
    
endmodule