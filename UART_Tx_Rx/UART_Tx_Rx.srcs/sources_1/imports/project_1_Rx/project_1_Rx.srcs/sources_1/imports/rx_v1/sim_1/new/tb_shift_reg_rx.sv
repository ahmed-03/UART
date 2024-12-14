`timescale 1ns / 1ps


module tb_shift_reg_rx;
    logic clk,rst_n,en_shift,fetch,right_left,data_in;
    logic [7:0]data_out;

    Shift_Reg_Rx #(8) shif1(
        .clk(clk), 
        .rst_n(rst_n),
        .en_shift(en_shift),
        .fetch(fetch),
        .right_left(right_left),
        .data_in(data_in),
        .data_out(data_out) //parallel out
        );

        always #5 clk = ~clk;

        initial begin 
        clk=0;
        en_shift=0;
        fetch=0;
        right_left=1;
        data_in=0;
        rst_n=1;#1
        rst_n=0;#1
        rst_n=1;#1
        @(negedge clk)
        en_shift=1;
        data_in=1;
        @(negedge clk)
        data_in=0;
        @(negedge clk)
        data_in=1;
        @(negedge clk)
        data_in=1;
        @(negedge clk)
        data_in=0;
        @(negedge clk)
        data_in=1;
        @(negedge clk)
        data_in=1;
        @(negedge clk)
        data_in=0;
        @(negedge clk)
        fetch=1;#5
        @(negedge clk)
        $finish;
        end
endmodule
