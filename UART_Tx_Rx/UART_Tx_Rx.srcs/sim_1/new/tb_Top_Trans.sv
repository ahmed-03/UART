`timescale 1ns / 1ps

module tb_Top_Trans;
        logic clk,rst_n,load,Paritiy_Typer;
        logic [7:0]data_in;
        logic Tx;
        
    Top_Trans aa(
        .clk(clk),
        .rst_n(rst_n),
        .load(load),
        .Paritiy_Typer(Paritiy_Typer),
        .data_in(data_in),
        .Tx(Tx)
        );
        
        always #5 clk = ~clk;

    initial begin
        Paritiy_Typer=0;
        data_in=8'b0111_0101;
        load=0;
        clk=0;
        rst_n=1;#1
        
        rst_n=0;#1
        rst_n=1;#1
        @(negedge clk)
        @(negedge clk)
        load=1;
        @(negedge clk)
        load=0;
        @(negedge clk)
        
        @(negedge clk)
        @(negedge clk)
        @(negedge clk) 
//        data_in=8'b1000_0000;
        @(negedge clk)
        @(negedge clk)
        repeat(16) @(negedge clk);
     
        $finish;

    end
        
endmodule