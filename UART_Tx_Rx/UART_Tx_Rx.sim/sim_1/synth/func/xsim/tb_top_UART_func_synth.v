// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sat Dec 14 17:03:27 2024
// Host        : IT-RDIA running 64-bit Ubuntu 24.04.1 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/it/Desktop/Backloop/UART_Tx_Rx/UART_Tx_Rx.sim/sim_1/synth/func/xsim/tb_top_UART_func_synth.v
// Design      : TOP
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Counter
   (Q,
    \q_reg[3]_0 ,
    CLK,
    \q_reg[0]_0 );
  output [0:0]Q;
  input [0:0]\q_reg[3]_0 ;
  input CLK;
  input \q_reg[0]_0 ;

  wire CLK;
  wire [0:0]Q;
  wire [3:0]p_0_in;
  wire \q_reg[0]_0 ;
  wire [0:0]\q_reg[3]_0 ;
  wire \q_reg_n_0_[0] ;
  wire \q_reg_n_0_[1] ;
  wire \q_reg_n_0_[2] ;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \q[0]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q[1]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q[2]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q_reg_n_0_[2] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q[3]_i_1 
       (.I0(\q_reg_n_0_[1] ),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[2] ),
        .I3(Q),
        .O(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(\q_reg[3]_0 ),
        .CLR(\q_reg[0]_0 ),
        .D(p_0_in[0]),
        .Q(\q_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(\q_reg[3]_0 ),
        .CLR(\q_reg[0]_0 ),
        .D(p_0_in[1]),
        .Q(\q_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(\q_reg[3]_0 ),
        .CLR(\q_reg[0]_0 ),
        .D(p_0_in[2]),
        .Q(\q_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(\q_reg[3]_0 ),
        .CLR(\q_reg[0]_0 ),
        .D(p_0_in[3]),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_1
   (\FSM_onehot_p_state_reg[3] ,
    data_done,
    Q,
    Error,
    E,
    CLK,
    \q_reg[0]_0 );
  output [1:0]\FSM_onehot_p_state_reg[3] ;
  output data_done;
  input [1:0]Q;
  input Error;
  input [0:0]E;
  input CLK;
  input \q_reg[0]_0 ;

  wire CLK;
  wire [0:0]E;
  wire Error;
  wire [1:0]\FSM_onehot_p_state_reg[3] ;
  wire [1:0]Q;
  wire data_done;
  wire [3:0]p_0_in__1;
  wire [3:0]q_reg;
  wire \q_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_onehot_n_state_reg[0]_i_3 
       (.I0(q_reg[2]),
        .I1(q_reg[1]),
        .I2(q_reg[3]),
        .I3(q_reg[0]),
        .O(data_done));
  LUT6 #(
    .INIT(64'hFEFFFFFFAAAAAAAA)) 
    \FSM_onehot_n_state_reg[3]_i_1 
       (.I0(Q[0]),
        .I1(q_reg[2]),
        .I2(q_reg[1]),
        .I3(q_reg[3]),
        .I4(q_reg[0]),
        .I5(Q[1]),
        .O(\FSM_onehot_p_state_reg[3] [0]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \FSM_onehot_n_state_reg[4]_i_1 
       (.I0(Q[1]),
        .I1(Error),
        .I2(q_reg[2]),
        .I3(q_reg[1]),
        .I4(q_reg[3]),
        .I5(q_reg[0]),
        .O(\FSM_onehot_p_state_reg[3] [1]));
  LUT1 #(
    .INIT(2'h1)) 
    \q[0]_i_1__1 
       (.I0(q_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q[1]_i_1__1 
       (.I0(q_reg[0]),
        .I1(q_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q[2]_i_1__0 
       (.I0(q_reg[0]),
        .I1(q_reg[1]),
        .I2(q_reg[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q[3]_i_1__1 
       (.I0(q_reg[1]),
        .I1(q_reg[0]),
        .I2(q_reg[2]),
        .I3(q_reg[3]),
        .O(p_0_in__1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\q_reg[0]_0 ),
        .D(p_0_in__1[0]),
        .Q(q_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\q_reg[0]_0 ),
        .D(p_0_in__1[1]),
        .Q(q_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\q_reg[0]_0 ),
        .D(p_0_in__1[2]),
        .Q(q_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\q_reg[0]_0 ),
        .D(p_0_in__1[3]),
        .Q(q_reg[3]));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_2
   (\FSM_onehot_p_state_reg[1] ,
    aligned,
    E,
    Q,
    try_align,
    \q_reg[0]_0 ,
    CLK,
    \q_reg[3]_0 );
  output [0:0]\FSM_onehot_p_state_reg[1] ;
  output aligned;
  output [0:0]E;
  input [0:0]Q;
  input try_align;
  input [0:0]\q_reg[0]_0 ;
  input CLK;
  input \q_reg[3]_0 ;

  wire CLK;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_p_state_reg[1] ;
  wire [0:0]Q;
  wire aligned;
  wire [3:0]out_count1;
  wire [3:0]p_0_in__0;
  wire \q[2]_i_1__1_n_0 ;
  wire [0:0]\q_reg[0]_0 ;
  wire \q_reg[3]_0 ;
  wire try_align;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \FSM_onehot_n_state_reg[1]_i_2 
       (.I0(out_count1[1]),
        .I1(out_count1[2]),
        .I2(try_align),
        .I3(out_count1[0]),
        .I4(out_count1[3]),
        .O(aligned));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \FSM_onehot_n_state_reg[2]_i_1 
       (.I0(Q),
        .I1(out_count1[3]),
        .I2(out_count1[0]),
        .I3(try_align),
        .I4(out_count1[2]),
        .I5(out_count1[1]),
        .O(\FSM_onehot_p_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \out[8]_i_1 
       (.I0(out_count1[1]),
        .I1(out_count1[0]),
        .I2(out_count1[3]),
        .I3(out_count1[2]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \q[0]_i_1__0 
       (.I0(out_count1[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q[1]_i_1__0 
       (.I0(out_count1[0]),
        .I1(out_count1[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q[2]_i_1__1 
       (.I0(out_count1[1]),
        .I1(out_count1[0]),
        .I2(out_count1[2]),
        .O(\q[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q[3]_i_1__0 
       (.I0(out_count1[0]),
        .I1(out_count1[1]),
        .I2(out_count1[2]),
        .I3(out_count1[3]),
        .O(p_0_in__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(\q_reg[0]_0 ),
        .CLR(\q_reg[3]_0 ),
        .D(p_0_in__0[0]),
        .Q(out_count1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(\q_reg[0]_0 ),
        .CLR(\q_reg[3]_0 ),
        .D(p_0_in__0[1]),
        .Q(out_count1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(\q_reg[0]_0 ),
        .CLR(\q_reg[3]_0 ),
        .D(\q[2]_i_1__1_n_0 ),
        .Q(out_count1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(\q_reg[0]_0 ),
        .CLR(\q_reg[3]_0 ),
        .D(p_0_in__0[3]),
        .Q(out_count1[3]));
endmodule

module ReceiverController
   (E,
    try_align,
    Q,
    \FSM_onehot_p_state_reg[4]_0 ,
    \SW[2] ,
    \SW[6] ,
    CPU_RESETN,
    w1,
    D,
    \FSM_onehot_p_state_reg[0]_0 ,
    aligned,
    SW_IBUF,
    CPU_RESETN_IBUF,
    CLK,
    \FSM_onehot_p_state_reg[4]_1 ,
    \FSM_onehot_p_state_reg[4]_2 );
  output [0:0]E;
  output try_align;
  output [2:0]Q;
  output \FSM_onehot_p_state_reg[4]_0 ;
  output \SW[2] ;
  output \SW[6] ;
  output CPU_RESETN;
  input w1;
  input [0:0]D;
  input \FSM_onehot_p_state_reg[0]_0 ;
  input aligned;
  input [7:0]SW_IBUF;
  input CPU_RESETN_IBUF;
  input CLK;
  input \FSM_onehot_p_state_reg[4]_1 ;
  input [2:0]\FSM_onehot_p_state_reg[4]_2 ;

  wire CLK;
  wire CPU_RESETN;
  wire CPU_RESETN_IBUF;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_n_state_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_n_state_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_n_state_reg_n_0_[0] ;
  wire \FSM_onehot_n_state_reg_n_0_[1] ;
  wire \FSM_onehot_n_state_reg_n_0_[2] ;
  wire \FSM_onehot_n_state_reg_n_0_[3] ;
  wire \FSM_onehot_n_state_reg_n_0_[4] ;
  wire \FSM_onehot_p_state_reg[0]_0 ;
  wire \FSM_onehot_p_state_reg[4]_0 ;
  wire \FSM_onehot_p_state_reg[4]_1 ;
  wire [2:0]\FSM_onehot_p_state_reg[4]_2 ;
  wire \FSM_onehot_p_state_reg_n_0_[0] ;
  wire \FSM_onehot_p_state_reg_n_0_[4] ;
  wire [2:0]Q;
  wire \SW[2] ;
  wire \SW[6] ;
  wire [7:0]SW_IBUF;
  wire aligned;
  wire clear_clks_counter;
  wire clear_clks_counter_reg_i_1_n_0;
  wire count_clocks_reg_i_1_n_0;
  wire fetch_data_reg_i_1_n_0;
  wire n_state__0;
  wire read_Tx;
  wire read_Tx_reg_i_1_n_0;
  wire try_align;
  wire w1;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_n_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_n_state_reg[0]_i_1_n_0 ),
        .G(n_state__0),
        .GE(1'b1),
        .Q(\FSM_onehot_n_state_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAAAEA)) 
    \FSM_onehot_n_state_reg[0]_i_1 
       (.I0(\FSM_onehot_p_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_p_state_reg_n_0_[0] ),
        .I2(read_Tx),
        .I3(w1),
        .I4(D),
        .I5(\FSM_onehot_p_state_reg[0]_0 ),
        .O(\FSM_onehot_n_state_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_n_state_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_n_state_reg[1]_i_1_n_0 ),
        .G(n_state__0),
        .GE(1'b1),
        .Q(\FSM_onehot_n_state_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'h4F00FFFF4F004F00)) 
    \FSM_onehot_n_state_reg[1]_i_1 
       (.I0(D),
        .I1(w1),
        .I2(read_Tx),
        .I3(\FSM_onehot_p_state_reg_n_0_[0] ),
        .I4(aligned),
        .I5(Q[0]),
        .O(\FSM_onehot_n_state_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_n_state_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_p_state_reg[4]_2 [0]),
        .G(n_state__0),
        .GE(1'b1),
        .Q(\FSM_onehot_n_state_reg_n_0_[2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_n_state_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_p_state_reg[4]_2 [1]),
        .G(n_state__0),
        .GE(1'b1),
        .Q(\FSM_onehot_n_state_reg_n_0_[3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_n_state_reg[4] 
       (.CLR(1'b0),
        .D(\FSM_onehot_p_state_reg[4]_2 [2]),
        .G(n_state__0),
        .GE(1'b1),
        .Q(\FSM_onehot_n_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "ALIGN:00010,COUNT16:00100,DATA_AND_PARITY:01000,FETCH:10000,IDLE:00001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_p_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_n_state_reg_n_0_[0] ),
        .PRE(\FSM_onehot_p_state_reg[4]_1 ),
        .Q(\FSM_onehot_p_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "ALIGN:00010,COUNT16:00100,DATA_AND_PARITY:01000,FETCH:10000,IDLE:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_p_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_p_state_reg[4]_1 ),
        .D(\FSM_onehot_n_state_reg_n_0_[1] ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "ALIGN:00010,COUNT16:00100,DATA_AND_PARITY:01000,FETCH:10000,IDLE:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_p_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_p_state_reg[4]_1 ),
        .D(\FSM_onehot_n_state_reg_n_0_[2] ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "ALIGN:00010,COUNT16:00100,DATA_AND_PARITY:01000,FETCH:10000,IDLE:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_p_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_p_state_reg[4]_1 ),
        .D(\FSM_onehot_n_state_reg_n_0_[3] ),
        .Q(Q[2]));
  (* FSM_ENCODED_STATES = "ALIGN:00010,COUNT16:00100,DATA_AND_PARITY:01000,FETCH:10000,IDLE:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_p_state_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_p_state_reg[4]_1 ),
        .D(\FSM_onehot_n_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_p_state_reg_n_0_[4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    clear_clks_counter_reg
       (.CLR(1'b0),
        .D(clear_clks_counter_reg_i_1_n_0),
        .G(n_state__0),
        .GE(1'b1),
        .Q(clear_clks_counter));
  LUT2 #(
    .INIT(4'hE)) 
    clear_clks_counter_reg_i_1
       (.I0(\FSM_onehot_p_state_reg_n_0_[0] ),
        .I1(Q[1]),
        .O(clear_clks_counter_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    count_clocks_reg
       (.CLR(1'b0),
        .D(count_clocks_reg_i_1_n_0),
        .G(n_state__0),
        .GE(1'b1),
        .Q(E));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    count_clocks_reg_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(count_clocks_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    fetch_data_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_p_state_reg_n_0_[4] ),
        .G(fetch_data_reg_i_1_n_0),
        .GE(1'b1),
        .Q(\FSM_onehot_p_state_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    fetch_data_reg_i_1
       (.I0(\FSM_onehot_p_state_reg_n_0_[4] ),
        .I1(Q[2]),
        .I2(\FSM_onehot_p_state_reg_n_0_[0] ),
        .I3(Q[0]),
        .O(fetch_data_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    \q[0]_i_2 
       (.I0(SW_IBUF[2]),
        .I1(SW_IBUF[3]),
        .I2(SW_IBUF[0]),
        .I3(SW_IBUF[1]),
        .O(\SW[2] ));
  LUT4 #(
    .INIT(16'h6996)) 
    \q[0]_i_3 
       (.I0(SW_IBUF[6]),
        .I1(SW_IBUF[7]),
        .I2(SW_IBUF[4]),
        .I3(SW_IBUF[5]),
        .O(\SW[6] ));
  LUT4 #(
    .INIT(16'hDDD5)) 
    \q[3]_i_2 
       (.I0(CPU_RESETN_IBUF),
        .I1(clear_clks_counter),
        .I2(E),
        .I3(try_align),
        .O(CPU_RESETN));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    read_Tx_reg
       (.CLR(1'b0),
        .D(read_Tx_reg_i_1_n_0),
        .G(n_state__0),
        .GE(1'b1),
        .Q(read_Tx));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    read_Tx_reg_i_1
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\FSM_onehot_p_state_reg_n_0_[0] ),
        .I3(Q[0]),
        .O(read_Tx_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    read_Tx_reg_i_2
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\FSM_onehot_p_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_p_state_reg_n_0_[4] ),
        .I4(Q[1]),
        .O(n_state__0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    try_align_reg
       (.CLR(1'b0),
        .D(Q[0]),
        .G(n_state__0),
        .GE(1'b1),
        .Q(try_align));
endmodule

module Register
   (w1,
    D,
    CLK,
    \q_reg[0]_0 );
  output w1;
  input [0:0]D;
  input CLK;
  input \q_reg[0]_0 ;

  wire CLK;
  wire [0:0]D;
  wire \q_reg[0]_0 ;
  wire w1;

  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\q_reg[0]_0 ),
        .D(D),
        .Q(w1));
endmodule

module Shift_Reg
   (w1,
    CLK,
    \data_out_reg[6]_0 ,
    SW_IBUF,
    load,
    out_reg_0,
    E);
  output w1;
  input CLK;
  input \data_out_reg[6]_0 ;
  input [7:0]SW_IBUF;
  input load;
  input [1:0]out_reg_0;
  input [0:0]E;

  wire CLK;
  wire [0:0]E;
  wire [7:0]SW_IBUF;
  wire [7:0]data_out;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[7]_i_2_n_0 ;
  wire \data_out_reg[6]_0 ;
  wire load;
  wire out_i_1_n_0;
  wire [1:0]out_reg_0;
  wire w1;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[0]_i_1 
       (.I0(SW_IBUF[0]),
        .I1(load),
        .I2(data_out[1]),
        .O(\data_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[1]_i_1 
       (.I0(SW_IBUF[1]),
        .I1(load),
        .I2(data_out[2]),
        .O(\data_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[2]_i_1 
       (.I0(SW_IBUF[2]),
        .I1(load),
        .I2(data_out[3]),
        .O(\data_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[3]_i_1 
       (.I0(SW_IBUF[3]),
        .I1(load),
        .I2(data_out[4]),
        .O(\data_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[4]_i_1 
       (.I0(SW_IBUF[4]),
        .I1(load),
        .I2(data_out[5]),
        .O(\data_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[5]_i_1 
       (.I0(SW_IBUF[5]),
        .I1(load),
        .I2(data_out[6]),
        .O(\data_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[6]_i_1 
       (.I0(SW_IBUF[6]),
        .I1(load),
        .I2(data_out[7]),
        .O(\data_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[7]_i_2 
       (.I0(load),
        .I1(SW_IBUF[7]),
        .O(\data_out[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\data_out_reg[6]_0 ),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(data_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\data_out_reg[6]_0 ),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(data_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\data_out_reg[6]_0 ),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(data_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\data_out_reg[6]_0 ),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(data_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(\data_out_reg[6]_0 ),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(data_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(\data_out_reg[6]_0 ),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(data_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(\data_out_reg[6]_0 ),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(data_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(\data_out_reg[6]_0 ),
        .D(\data_out[7]_i_2_n_0 ),
        .Q(data_out[7]));
  LUT5 #(
    .INIT(32'hFFEB0028)) 
    out_i_1
       (.I0(data_out[0]),
        .I1(out_reg_0[1]),
        .I2(out_reg_0[0]),
        .I3(load),
        .I4(w1),
        .O(out_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    out_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\data_out_reg[6]_0 ),
        .D(out_i_1_n_0),
        .Q(w1));
endmodule

module Shift_Reg_Rx
   (\FSM_onehot_p_state_reg[3] ,
    Error,
    \out_reg[7]_0 ,
    Q,
    \FSM_onehot_n_state_reg[0]_i_1 ,
    data_done,
    E,
    D,
    CLK,
    \out_reg[8]_0 );
  output \FSM_onehot_p_state_reg[3] ;
  output Error;
  output [7:0]\out_reg[7]_0 ;
  input [0:0]Q;
  input \FSM_onehot_n_state_reg[0]_i_1 ;
  input data_done;
  input [0:0]E;
  input [0:0]D;
  input CLK;
  input \out_reg[8]_0 ;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire Error;
  wire \FSM_onehot_n_state_reg[0]_i_1 ;
  wire \FSM_onehot_n_state_reg[4]_i_3_n_0 ;
  wire \FSM_onehot_n_state_reg[4]_i_4_n_0 ;
  wire \FSM_onehot_p_state_reg[3] ;
  wire [0:0]Q;
  wire data_done;
  wire [8:8]out;
  wire [7:0]\out_reg[7]_0 ;
  wire \out_reg[8]_0 ;

  LUT6 #(
    .INIT(64'h802A2A8000000000)) 
    \FSM_onehot_n_state_reg[0]_i_2 
       (.I0(Q),
        .I1(out),
        .I2(\FSM_onehot_n_state_reg[0]_i_1 ),
        .I3(\FSM_onehot_n_state_reg[4]_i_3_n_0 ),
        .I4(\FSM_onehot_n_state_reg[4]_i_4_n_0 ),
        .I5(data_done),
        .O(\FSM_onehot_p_state_reg[3] ));
  LUT4 #(
    .INIT(16'h8778)) 
    \FSM_onehot_n_state_reg[4]_i_2 
       (.I0(out),
        .I1(\FSM_onehot_n_state_reg[0]_i_1 ),
        .I2(\FSM_onehot_n_state_reg[4]_i_3_n_0 ),
        .I3(\FSM_onehot_n_state_reg[4]_i_4_n_0 ),
        .O(Error));
  LUT5 #(
    .INIT(32'h60909060)) 
    \FSM_onehot_n_state_reg[4]_i_3 
       (.I0(\out_reg[7]_0 [2]),
        .I1(\out_reg[7]_0 [3]),
        .I2(\FSM_onehot_n_state_reg[0]_i_1 ),
        .I3(\out_reg[7]_0 [0]),
        .I4(\out_reg[7]_0 [1]),
        .O(\FSM_onehot_n_state_reg[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h60909060)) 
    \FSM_onehot_n_state_reg[4]_i_4 
       (.I0(\out_reg[7]_0 [6]),
        .I1(\out_reg[7]_0 [7]),
        .I2(\FSM_onehot_n_state_reg[0]_i_1 ),
        .I3(\out_reg[7]_0 [4]),
        .I4(\out_reg[7]_0 [5]),
        .O(\FSM_onehot_n_state_reg[4]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\out_reg[8]_0 ),
        .D(\out_reg[7]_0 [1]),
        .Q(\out_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\out_reg[8]_0 ),
        .D(\out_reg[7]_0 [2]),
        .Q(\out_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\out_reg[8]_0 ),
        .D(\out_reg[7]_0 [3]),
        .Q(\out_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\out_reg[8]_0 ),
        .D(\out_reg[7]_0 [4]),
        .Q(\out_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(\out_reg[8]_0 ),
        .D(\out_reg[7]_0 [5]),
        .Q(\out_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(\out_reg[8]_0 ),
        .D(\out_reg[7]_0 [6]),
        .Q(\out_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(\out_reg[8]_0 ),
        .D(\out_reg[7]_0 [7]),
        .Q(\out_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(\out_reg[8]_0 ),
        .D(out),
        .Q(\out_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(\out_reg[8]_0 ),
        .D(D),
        .Q(out));
endmodule

(* NotValidForBitStream *)
module TOP
   (CLK100MHZ,
    CPU_RESETN,
    SW,
    BTNC,
    CA,
    CB,
    CC,
    CD,
    CE,
    CF,
    CG,
    DP,
    AN);
  input CLK100MHZ;
  input CPU_RESETN;
  input [7:0]SW;
  input BTNC;
  output CA;
  output CB;
  output CC;
  output CD;
  output CE;
  output CF;
  output CG;
  output DP;
  output [7:0]AN;

  wire [7:0]AN;
  wire [7:0]AN_OBUF;
  wire BTNC;
  wire BTNC_IBUF;
  wire CA;
  wire CA_OBUF;
  wire CB;
  wire CB_OBUF;
  wire CC;
  wire CC_OBUF;
  wire CD;
  wire CD_OBUF;
  wire CE;
  wire CE_OBUF;
  wire CF;
  wire CF_OBUF;
  wire CG;
  wire CG_OBUF;
  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN;
  wire CPU_RESETN_IBUF;
  wire DP;
  wire \Rx/fetch_data ;
  wire [7:0]SW;
  wire [7:0]SW_IBUF;
  wire btn_rising_edge;
  wire btn_sync1;
  wire btn_sync2;
  wire clear;
  wire load;
  wire [7:0]out;

  OBUF \AN_OBUF[0]_inst 
       (.I(AN_OBUF[0]),
        .O(AN[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(AN_OBUF[1]),
        .O(AN[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(AN_OBUF[2]),
        .O(AN[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(AN_OBUF[3]),
        .O(AN[3]));
  OBUF \AN_OBUF[4]_inst 
       (.I(AN_OBUF[4]),
        .O(AN[4]));
  OBUF \AN_OBUF[5]_inst 
       (.I(AN_OBUF[5]),
        .O(AN[5]));
  OBUF \AN_OBUF[6]_inst 
       (.I(AN_OBUF[6]),
        .O(AN[6]));
  OBUF \AN_OBUF[7]_inst 
       (.I(AN_OBUF[7]),
        .O(AN[7]));
  IBUF BTNC_IBUF_inst
       (.I(BTNC),
        .O(BTNC_IBUF));
  OBUF CA_OBUF_inst
       (.I(CA_OBUF),
        .O(CA));
  OBUF CB_OBUF_inst
       (.I(CB_OBUF),
        .O(CB));
  OBUF CC_OBUF_inst
       (.I(CC_OBUF),
        .O(CC));
  OBUF CD_OBUF_inst
       (.I(CD_OBUF),
        .O(CD));
  OBUF CE_OBUF_inst
       (.I(CE_OBUF),
        .O(CE));
  OBUF CF_OBUF_inst
       (.I(CF_OBUF),
        .O(CF));
  OBUF CG_OBUF_inst
       (.I(CG_OBUF),
        .O(CG));
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  IBUF CPU_RESETN_IBUF_inst
       (.I(CPU_RESETN),
        .O(CPU_RESETN_IBUF));
  OBUF DP_OBUF_inst
       (.I(1'b1),
        .O(DP));
  IBUF \SW_IBUF[0]_inst 
       (.I(SW[0]),
        .O(SW_IBUF[0]));
  IBUF \SW_IBUF[1]_inst 
       (.I(SW[1]),
        .O(SW_IBUF[1]));
  IBUF \SW_IBUF[2]_inst 
       (.I(SW[2]),
        .O(SW_IBUF[2]));
  IBUF \SW_IBUF[3]_inst 
       (.I(SW[3]),
        .O(SW_IBUF[3]));
  IBUF \SW_IBUF[4]_inst 
       (.I(SW[4]),
        .O(SW_IBUF[4]));
  IBUF \SW_IBUF[5]_inst 
       (.I(SW[5]),
        .O(SW_IBUF[5]));
  IBUF \SW_IBUF[6]_inst 
       (.I(SW[6]),
        .O(SW_IBUF[6]));
  IBUF \SW_IBUF[7]_inst 
       (.I(SW[7]),
        .O(SW_IBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    btn_sync1_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clear),
        .D(BTNC_IBUF),
        .Q(btn_sync1));
  FDCE #(
    .INIT(1'b0)) 
    btn_sync2_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clear),
        .D(btn_sync1),
        .Q(btn_sync2));
  LUT2 #(
    .INIT(4'h2)) 
    load_i_1
       (.I0(btn_sync1),
        .I1(btn_sync2),
        .O(btn_rising_edge));
  FDCE #(
    .INIT(1'b0)) 
    load_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clear),
        .D(btn_rising_edge),
        .Q(load));
  sev_seg_controller ssc
       (.AN_OBUF(AN_OBUF),
        .CA_OBUF(CA_OBUF),
        .CB_OBUF(CB_OBUF),
        .CC_OBUF(CC_OBUF),
        .CD_OBUF(CD_OBUF),
        .CE_OBUF(CE_OBUF),
        .CF_OBUF(CF_OBUF),
        .CG_OBUF(CG_OBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .Q(out),
        .clear(clear),
        .fetch_data(\Rx/fetch_data ));
  top_UART uart_instance
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .Q(out),
        .SW_IBUF(SW_IBUF),
        .clear(clear),
        .fetch_data(\Rx/fetch_data ),
        .load(load));
endmodule

module Top_Rx
   (\FSM_onehot_p_state_reg[4] ,
    \SW[2] ,
    \SW[6] ,
    Q,
    D,
    CLK,
    \out_reg[8] ,
    SW_IBUF,
    CPU_RESETN_IBUF);
  output \FSM_onehot_p_state_reg[4] ;
  output \SW[2] ;
  output \SW[6] ;
  output [7:0]Q;
  input [0:0]D;
  input CLK;
  input \out_reg[8] ;
  input [7:0]SW_IBUF;
  input CPU_RESETN_IBUF;

  wire CLK;
  wire CPU_RESETN_IBUF;
  wire [0:0]D;
  wire FSM_Rx_n_2;
  wire FSM_Rx_n_3;
  wire FSM_Rx_n_4;
  wire FSM_Rx_n_8;
  wire \FSM_onehot_p_state_reg[4] ;
  wire [7:0]Q;
  wire Rx_n_1;
  wire Rx_n_2;
  wire Rx_n_3;
  wire Rx_n_4;
  wire \SW[2] ;
  wire \SW[6] ;
  wire [7:0]SW_IBUF;
  wire aligned;
  wire count_clocks;
  wire \out_reg[8] ;
  wire try_align;
  wire w1;

  ReceiverController FSM_Rx
       (.CLK(CLK),
        .CPU_RESETN(FSM_Rx_n_8),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .D(D),
        .E(count_clocks),
        .\FSM_onehot_p_state_reg[0]_0 (Rx_n_1),
        .\FSM_onehot_p_state_reg[4]_0 (\FSM_onehot_p_state_reg[4] ),
        .\FSM_onehot_p_state_reg[4]_1 (\out_reg[8] ),
        .\FSM_onehot_p_state_reg[4]_2 ({Rx_n_2,Rx_n_3,Rx_n_4}),
        .Q({FSM_Rx_n_2,FSM_Rx_n_3,FSM_Rx_n_4}),
        .\SW[2] (\SW[2] ),
        .\SW[6] (\SW[6] ),
        .SW_IBUF(SW_IBUF),
        .aligned(aligned),
        .try_align(try_align),
        .w1(w1));
  UART_Receiver Rx
       (.CLK(CLK),
        .D(D),
        .E(count_clocks),
        .\FSM_onehot_n_state_reg[0]_i_1 (\FSM_onehot_p_state_reg[4] ),
        .\FSM_onehot_p_state_reg[3] (Rx_n_1),
        .\FSM_onehot_p_state_reg[3]_0 ({Rx_n_2,Rx_n_3,Rx_n_4}),
        .Q({FSM_Rx_n_2,FSM_Rx_n_3,FSM_Rx_n_4}),
        .aligned(aligned),
        .\out_reg[7] (Q),
        .\out_reg[8] (\out_reg[8] ),
        .\q_reg[3] (FSM_Rx_n_8),
        .try_align(try_align),
        .w1(w1));
endmodule

module Top_Trans
   (D,
    CLK,
    \data_out_reg[6] ,
    load,
    \out_reg[8] ,
    \out_reg[8]_0 ,
    SW_IBUF);
  output [0:0]D;
  input CLK;
  input \data_out_reg[6] ;
  input load;
  input \out_reg[8] ;
  input \out_reg[8]_0 ;
  input [7:0]SW_IBUF;

  wire CLK;
  wire [0:0]D;
  wire [1:0]FSM;
  wire Finish_Tx;
  wire [7:0]SW_IBUF;
  wire a1_n_0;
  wire \data_out_reg[6] ;
  wire load;
  wire [1:1]n_state;
  wire \out_reg[8] ;
  wire \out_reg[8]_0 ;
  wire w1;

  TransmitionController a1
       (.CLK(CLK),
        .D(D),
        .E(a1_n_0),
        .\FSM_sequential_p_state_reg[0]_0 (n_state),
        .\FSM_sequential_p_state_reg[0]_1 (Finish_Tx),
        .\FSM_sequential_p_state_reg[0]_2 (\data_out_reg[6] ),
        .Q(FSM),
        .load(load),
        .\out_reg[8] (\out_reg[8] ),
        .\out_reg[8]_0 (\out_reg[8]_0 ),
        .w1(w1));
  Trans2 aa
       (.CLK(CLK),
        .E(a1_n_0),
        .Q(Finish_Tx),
        .SW_IBUF(SW_IBUF),
        .\data_out_reg[6] (\data_out_reg[6] ),
        .load(load),
        .out_reg(FSM),
        .\q_reg[3] (n_state),
        .w1(w1));
endmodule

module Trans2
   (w1,
    Q,
    CLK,
    \data_out_reg[6] ,
    SW_IBUF,
    load,
    out_reg,
    E,
    \q_reg[3] );
  output w1;
  output [0:0]Q;
  input CLK;
  input \data_out_reg[6] ;
  input [7:0]SW_IBUF;
  input load;
  input [1:0]out_reg;
  input [0:0]E;
  input [0:0]\q_reg[3] ;

  wire CLK;
  wire [0:0]E;
  wire [0:0]Q;
  wire [7:0]SW_IBUF;
  wire \data_out_reg[6] ;
  wire load;
  wire [1:0]out_reg;
  wire [0:0]\q_reg[3] ;
  wire w1;

  Counter ca
       (.CLK(CLK),
        .Q(Q),
        .\q_reg[0]_0 (\data_out_reg[6] ),
        .\q_reg[3]_0 (\q_reg[3] ));
  Shift_Reg sa
       (.CLK(CLK),
        .E(E),
        .SW_IBUF(SW_IBUF),
        .\data_out_reg[6]_0 (\data_out_reg[6] ),
        .load(load),
        .out_reg_0(out_reg),
        .w1(w1));
endmodule

module TransmitionController
   (E,
    Q,
    \FSM_sequential_p_state_reg[0]_0 ,
    D,
    load,
    \FSM_sequential_p_state_reg[0]_1 ,
    \out_reg[8] ,
    \out_reg[8]_0 ,
    w1,
    CLK,
    \FSM_sequential_p_state_reg[0]_2 );
  output [0:0]E;
  output [1:0]Q;
  output [0:0]\FSM_sequential_p_state_reg[0]_0 ;
  output [0:0]D;
  input load;
  input [0:0]\FSM_sequential_p_state_reg[0]_1 ;
  input \out_reg[8] ;
  input \out_reg[8]_0 ;
  input w1;
  input CLK;
  input \FSM_sequential_p_state_reg[0]_2 ;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_p_state_reg[0]_0 ;
  wire [0:0]\FSM_sequential_p_state_reg[0]_1 ;
  wire \FSM_sequential_p_state_reg[0]_2 ;
  wire [1:0]Q;
  wire load;
  wire [0:0]n_state;
  wire \out_reg[8] ;
  wire \out_reg[8]_0 ;
  wire w1;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \FSM_sequential_p_state[0]_i_1 
       (.I0(load),
        .I1(Q[1]),
        .I2(\FSM_sequential_p_state_reg[0]_1 ),
        .I3(Q[0]),
        .O(n_state));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_p_state[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_sequential_p_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Start:01,Transmit:10,Stop:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_p_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_sequential_p_state_reg[0]_2 ),
        .D(n_state),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "Idle:00,Start:01,Transmit:10,Stop:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_p_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_sequential_p_state_reg[0]_2 ),
        .D(\FSM_sequential_p_state_reg[0]_0 ),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \data_out[7]_i_1 
       (.I0(load),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h6F600F0F)) 
    \q[0]_i_1__2 
       (.I0(\out_reg[8] ),
        .I1(\out_reg[8]_0 ),
        .I2(Q[0]),
        .I3(w1),
        .I4(Q[1]),
        .O(D));
endmodule

module UART_Receiver
   (w1,
    \FSM_onehot_p_state_reg[3] ,
    \FSM_onehot_p_state_reg[3]_0 ,
    aligned,
    \out_reg[7] ,
    D,
    CLK,
    \out_reg[8] ,
    Q,
    \FSM_onehot_n_state_reg[0]_i_1 ,
    try_align,
    E,
    \q_reg[3] );
  output w1;
  output \FSM_onehot_p_state_reg[3] ;
  output [2:0]\FSM_onehot_p_state_reg[3]_0 ;
  output aligned;
  output [7:0]\out_reg[7] ;
  input [0:0]D;
  input CLK;
  input \out_reg[8] ;
  input [2:0]Q;
  input \FSM_onehot_n_state_reg[0]_i_1 ;
  input try_align;
  input [0:0]E;
  input \q_reg[3] ;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire Error;
  wire \FSM_onehot_n_state_reg[0]_i_1 ;
  wire \FSM_onehot_p_state_reg[3] ;
  wire [2:0]\FSM_onehot_p_state_reg[3]_0 ;
  wire [2:0]Q;
  wire aligned;
  wire data_done;
  wire [7:0]\out_reg[7] ;
  wire \out_reg[8] ;
  wire \q_reg[3] ;
  wire sel;
  wire try_align;
  wire w1;

  Counter_1 bits_counter
       (.CLK(CLK),
        .E(sel),
        .Error(Error),
        .\FSM_onehot_p_state_reg[3] (\FSM_onehot_p_state_reg[3]_0 [2:1]),
        .Q(Q[2:1]),
        .data_done(data_done),
        .\q_reg[0]_0 (\q_reg[3] ));
  Counter_2 clks_counter
       (.CLK(CLK),
        .E(sel),
        .\FSM_onehot_p_state_reg[1] (\FSM_onehot_p_state_reg[3]_0 [0]),
        .Q(Q[0]),
        .aligned(aligned),
        .\q_reg[0]_0 (E),
        .\q_reg[3]_0 (\q_reg[3] ),
        .try_align(try_align));
  Register reg1
       (.CLK(CLK),
        .D(D),
        .\q_reg[0]_0 (\out_reg[8] ),
        .w1(w1));
  Shift_Reg_Rx shift
       (.CLK(CLK),
        .D(D),
        .E(sel),
        .Error(Error),
        .\FSM_onehot_n_state_reg[0]_i_1 (\FSM_onehot_n_state_reg[0]_i_1 ),
        .\FSM_onehot_p_state_reg[3] (\FSM_onehot_p_state_reg[3] ),
        .Q(Q[2]),
        .data_done(data_done),
        .\out_reg[7]_0 (\out_reg[7] ),
        .\out_reg[8]_0 (\out_reg[8] ));
endmodule

module baud_rate_gen2
   (CPU_RESETN,
    CLK,
    trigger_reg,
    CLK100MHZ_IBUF_BUFG,
    CPU_RESETN_IBUF);
  output CPU_RESETN;
  output CLK;
  output trigger_reg;
  input CLK100MHZ_IBUF_BUFG;
  input CPU_RESETN_IBUF;

  wire CLK;
  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN;
  wire CPU_RESETN_IBUF;
  wire [12:12]counts_desired;
  wire trigger_reg;

  FDCE #(
    .INIT(1'b0)) 
    \counts_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CPU_RESETN),
        .D(1'b1),
        .Q(counts_desired));
  clk_divider faster_clk
       (.CLK(CLK),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN(CPU_RESETN),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .counts_desired(counts_desired));
  clk_divider_0 slower_clk
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .counts_desired(counts_desired),
        .trigger_reg_0(trigger_reg),
        .trigger_reg_1(CPU_RESETN));
endmodule

module clk_divider
   (CPU_RESETN,
    CLK,
    CLK100MHZ_IBUF_BUFG,
    counts_desired,
    CPU_RESETN_IBUF);
  output CPU_RESETN;
  output CLK;
  input CLK100MHZ_IBUF_BUFG;
  input [0:0]counts_desired;
  input CPU_RESETN_IBUF;

  wire CLK;
  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN;
  wire CPU_RESETN_IBUF;
  wire counter1_carry__0_i_1_n_0;
  wire counter1_carry__0_n_3;
  wire counter1_carry_i_1_n_0;
  wire counter1_carry_i_2_n_0;
  wire counter1_carry_i_3_n_0;
  wire counter1_carry_i_4__0_n_0;
  wire counter1_carry_n_0;
  wire counter1_carry_n_1;
  wire counter1_carry_n_2;
  wire counter1_carry_n_3;
  wire [13:1]counter2;
  wire counter2_carry__0_n_0;
  wire counter2_carry__0_n_1;
  wire counter2_carry__0_n_2;
  wire counter2_carry__0_n_3;
  wire counter2_carry__1_n_0;
  wire counter2_carry__1_n_1;
  wire counter2_carry__1_n_2;
  wire counter2_carry__1_n_3;
  wire counter2_carry_n_0;
  wire counter2_carry_n_1;
  wire counter2_carry_n_2;
  wire counter2_carry_n_3;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [13:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [0:0]counts_desired;
  wire trigger_i_1_n_0;
  wire [3:0]NLW_counter1_carry_O_UNCONNECTED;
  wire [3:1]NLW_counter1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_counter2_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_counter2_carry__2_O_UNCONNECTED;
  wire [3:1]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[12]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_p_state[1]_i_2 
       (.I0(CPU_RESETN_IBUF),
        .O(CPU_RESETN));
  CARRY4 counter1_carry
       (.CI(1'b0),
        .CO({counter1_carry_n_0,counter1_carry_n_1,counter1_carry_n_2,counter1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry_O_UNCONNECTED[3:0]),
        .S({counter1_carry_i_1_n_0,counter1_carry_i_2_n_0,counter1_carry_i_3_n_0,counter1_carry_i_4__0_n_0}));
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({NLW_counter1_carry__0_CO_UNCONNECTED[3:1],counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,counter1_carry__0_i_1_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__0_i_1
       (.I0(counter2[12]),
        .I1(counter2[13]),
        .O(counter1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry_i_1
       (.I0(counter2[11]),
        .I1(counter2[10]),
        .I2(counter2[9]),
        .O(counter1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2001)) 
    counter1_carry_i_2
       (.I0(counter2[6]),
        .I1(counter2[7]),
        .I2(counts_desired),
        .I3(counter2[8]),
        .O(counter1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry_i_3
       (.I0(counter2[5]),
        .I1(counter2[4]),
        .I2(counter2[3]),
        .O(counter1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h0041)) 
    counter1_carry_i_4__0
       (.I0(counter2[1]),
        .I1(counts_desired),
        .I2(counter2[2]),
        .I3(counter_reg[0]),
        .O(counter1_carry_i_4__0_n_0));
  CARRY4 counter2_carry
       (.CI(1'b0),
        .CO({counter2_carry_n_0,counter2_carry_n_1,counter2_carry_n_2,counter2_carry_n_3}),
        .CYINIT(counter_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter2[4:1]),
        .S(counter_reg[4:1]));
  CARRY4 counter2_carry__0
       (.CI(counter2_carry_n_0),
        .CO({counter2_carry__0_n_0,counter2_carry__0_n_1,counter2_carry__0_n_2,counter2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter2[8:5]),
        .S(counter_reg[8:5]));
  CARRY4 counter2_carry__1
       (.CI(counter2_carry__0_n_0),
        .CO({counter2_carry__1_n_0,counter2_carry__1_n_1,counter2_carry__1_n_2,counter2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter2[12:9]),
        .S(counter_reg[12:9]));
  CARRY4 counter2_carry__2
       (.CI(counter2_carry__1_n_0),
        .CO(NLW_counter2_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter2_carry__2_O_UNCONNECTED[3:1],counter2[13]}),
        .S({1'b0,1'b0,1'b0,counter_reg[13]}));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_3 
       (.I0(counter_reg[3]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_4 
       (.I0(counter_reg[2]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_5 
       (.I0(counter_reg[1]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_6 
       (.I0(counter_reg[0]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_2 
       (.I0(counter_reg[13]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_3 
       (.I0(counter_reg[12]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_2 
       (.I0(counter_reg[7]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_3 
       (.I0(counter_reg[6]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_4 
       (.I0(counter_reg[5]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_5 
       (.I0(counter_reg[4]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_2 
       (.I0(counter_reg[11]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_3 
       (.I0(counter_reg[10]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_4 
       (.I0(counter_reg[9]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_5 
       (.I0(counter_reg[8]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CPU_RESETN),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]));
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_2_n_0 }),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({\counter[0]_i_3_n_0 ,\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 ,\counter[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CPU_RESETN),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CPU_RESETN),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CPU_RESETN),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [3:1],\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[12]_i_1_O_UNCONNECTED [3:2],\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CPU_RESETN),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CPU_RESETN),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CPU_RESETN),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CPU_RESETN),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CPU_RESETN),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CPU_RESETN),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CPU_RESETN),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CPU_RESETN),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CPU_RESETN),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CPU_RESETN),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]));
  LUT2 #(
    .INIT(4'h6)) 
    trigger_i_1
       (.I0(counter1_carry__0_n_3),
        .I1(CLK),
        .O(trigger_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    trigger_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CPU_RESETN),
        .D(trigger_i_1_n_0),
        .Q(CLK));
endmodule

(* ORIG_REF_NAME = "clk_divider" *) 
module clk_divider_0
   (trigger_reg_0,
    CLK100MHZ_IBUF_BUFG,
    trigger_reg_1,
    counts_desired);
  output trigger_reg_0;
  input CLK100MHZ_IBUF_BUFG;
  input trigger_reg_1;
  input [0:0]counts_desired;

  wire CLK100MHZ_IBUF_BUFG;
  wire counter1_carry__0_i_1__0_n_0;
  wire counter1_carry__0_i_2_n_7;
  wire counter1_carry__0_n_3;
  wire counter1_carry_i_1__0_n_0;
  wire counter1_carry_i_2__0_n_0;
  wire counter1_carry_i_3__0_n_0;
  wire counter1_carry_i_4_n_0;
  wire counter1_carry_i_5_n_0;
  wire counter1_carry_i_5_n_1;
  wire counter1_carry_i_5_n_2;
  wire counter1_carry_i_5_n_3;
  wire counter1_carry_i_5_n_4;
  wire counter1_carry_i_5_n_5;
  wire counter1_carry_i_5_n_6;
  wire counter1_carry_i_5_n_7;
  wire counter1_carry_i_6_n_0;
  wire counter1_carry_i_6_n_1;
  wire counter1_carry_i_6_n_2;
  wire counter1_carry_i_6_n_3;
  wire counter1_carry_i_6_n_4;
  wire counter1_carry_i_6_n_5;
  wire counter1_carry_i_6_n_6;
  wire counter1_carry_i_6_n_7;
  wire counter1_carry_i_7_n_0;
  wire counter1_carry_i_7_n_1;
  wire counter1_carry_i_7_n_2;
  wire counter1_carry_i_7_n_3;
  wire counter1_carry_i_7_n_4;
  wire counter1_carry_i_7_n_5;
  wire counter1_carry_i_7_n_6;
  wire counter1_carry_i_7_n_7;
  wire counter1_carry_n_0;
  wire counter1_carry_n_1;
  wire counter1_carry_n_2;
  wire counter1_carry_n_3;
  wire \counter[0]_i_2__0_n_0 ;
  wire \counter[0]_i_3__0_n_0 ;
  wire \counter[0]_i_4__0_n_0 ;
  wire \counter[0]_i_5__0_n_0 ;
  wire \counter[0]_i_6__0_n_0 ;
  wire \counter[12]_i_2__0_n_0 ;
  wire \counter[12]_i_3__0_n_0 ;
  wire \counter[4]_i_2__0_n_0 ;
  wire \counter[4]_i_3__0_n_0 ;
  wire \counter[4]_i_4__0_n_0 ;
  wire \counter[4]_i_5__0_n_0 ;
  wire \counter[8]_i_2__0_n_0 ;
  wire \counter[8]_i_3__0_n_0 ;
  wire \counter[8]_i_4__0_n_0 ;
  wire \counter[8]_i_5__0_n_0 ;
  wire [13:0]counter_reg;
  wire \counter_reg[0]_i_1__0_n_0 ;
  wire \counter_reg[0]_i_1__0_n_1 ;
  wire \counter_reg[0]_i_1__0_n_2 ;
  wire \counter_reg[0]_i_1__0_n_3 ;
  wire \counter_reg[0]_i_1__0_n_4 ;
  wire \counter_reg[0]_i_1__0_n_5 ;
  wire \counter_reg[0]_i_1__0_n_6 ;
  wire \counter_reg[0]_i_1__0_n_7 ;
  wire \counter_reg[12]_i_1__0_n_3 ;
  wire \counter_reg[12]_i_1__0_n_6 ;
  wire \counter_reg[12]_i_1__0_n_7 ;
  wire \counter_reg[4]_i_1__0_n_0 ;
  wire \counter_reg[4]_i_1__0_n_1 ;
  wire \counter_reg[4]_i_1__0_n_2 ;
  wire \counter_reg[4]_i_1__0_n_3 ;
  wire \counter_reg[4]_i_1__0_n_4 ;
  wire \counter_reg[4]_i_1__0_n_5 ;
  wire \counter_reg[4]_i_1__0_n_6 ;
  wire \counter_reg[4]_i_1__0_n_7 ;
  wire \counter_reg[8]_i_1__0_n_0 ;
  wire \counter_reg[8]_i_1__0_n_1 ;
  wire \counter_reg[8]_i_1__0_n_2 ;
  wire \counter_reg[8]_i_1__0_n_3 ;
  wire \counter_reg[8]_i_1__0_n_4 ;
  wire \counter_reg[8]_i_1__0_n_5 ;
  wire \counter_reg[8]_i_1__0_n_6 ;
  wire \counter_reg[8]_i_1__0_n_7 ;
  wire [0:0]counts_desired;
  wire trigger_i_1__0_n_0;
  wire trigger_reg_0;
  wire trigger_reg_1;
  wire [3:0]NLW_counter1_carry_O_UNCONNECTED;
  wire [3:1]NLW_counter1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__0_i_2_CO_UNCONNECTED;
  wire [3:1]NLW_counter1_carry__0_i_2_O_UNCONNECTED;
  wire [3:1]\NLW_counter_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[12]_i_1__0_O_UNCONNECTED ;

  CARRY4 counter1_carry
       (.CI(1'b0),
        .CO({counter1_carry_n_0,counter1_carry_n_1,counter1_carry_n_2,counter1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry_O_UNCONNECTED[3:0]),
        .S({counter1_carry_i_1__0_n_0,counter1_carry_i_2__0_n_0,counter1_carry_i_3__0_n_0,counter1_carry_i_4_n_0}));
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({NLW_counter1_carry__0_CO_UNCONNECTED[3:1],counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,counter1_carry__0_i_1__0_n_0}));
  LUT3 #(
    .INIT(8'h09)) 
    counter1_carry__0_i_1__0
       (.I0(counter1_carry_i_5_n_4),
        .I1(counts_desired),
        .I2(counter1_carry__0_i_2_n_7),
        .O(counter1_carry__0_i_1__0_n_0));
  CARRY4 counter1_carry__0_i_2
       (.CI(counter1_carry_i_5_n_0),
        .CO(NLW_counter1_carry__0_i_2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter1_carry__0_i_2_O_UNCONNECTED[3:1],counter1_carry__0_i_2_n_7}),
        .S({1'b0,1'b0,1'b0,counter_reg[13]}));
  LUT4 #(
    .INIT(16'h0041)) 
    counter1_carry_i_1__0
       (.I0(counter1_carry_i_5_n_5),
        .I1(counts_desired),
        .I2(counter1_carry_i_5_n_6),
        .I3(counter1_carry_i_5_n_7),
        .O(counter1_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0009)) 
    counter1_carry_i_2__0
       (.I0(counter1_carry_i_6_n_6),
        .I1(counts_desired),
        .I2(counter1_carry_i_6_n_4),
        .I3(counter1_carry_i_6_n_5),
        .O(counter1_carry_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    counter1_carry_i_3__0
       (.I0(counter1_carry_i_6_n_7),
        .I1(counter1_carry_i_7_n_4),
        .I2(counter1_carry_i_7_n_5),
        .O(counter1_carry_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    counter1_carry_i_4
       (.I0(counter_reg[0]),
        .I1(counter1_carry_i_7_n_6),
        .I2(counter1_carry_i_7_n_7),
        .O(counter1_carry_i_4_n_0));
  CARRY4 counter1_carry_i_5
       (.CI(counter1_carry_i_6_n_0),
        .CO({counter1_carry_i_5_n_0,counter1_carry_i_5_n_1,counter1_carry_i_5_n_2,counter1_carry_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter1_carry_i_5_n_4,counter1_carry_i_5_n_5,counter1_carry_i_5_n_6,counter1_carry_i_5_n_7}),
        .S(counter_reg[12:9]));
  CARRY4 counter1_carry_i_6
       (.CI(counter1_carry_i_7_n_0),
        .CO({counter1_carry_i_6_n_0,counter1_carry_i_6_n_1,counter1_carry_i_6_n_2,counter1_carry_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter1_carry_i_6_n_4,counter1_carry_i_6_n_5,counter1_carry_i_6_n_6,counter1_carry_i_6_n_7}),
        .S(counter_reg[8:5]));
  CARRY4 counter1_carry_i_7
       (.CI(1'b0),
        .CO({counter1_carry_i_7_n_0,counter1_carry_i_7_n_1,counter1_carry_i_7_n_2,counter1_carry_i_7_n_3}),
        .CYINIT(counter_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter1_carry_i_7_n_4,counter1_carry_i_7_n_5,counter1_carry_i_7_n_6,counter1_carry_i_7_n_7}),
        .S(counter_reg[4:1]));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_2__0 
       (.I0(counter_reg[0]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[0]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_3__0 
       (.I0(counter_reg[3]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[0]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_4__0 
       (.I0(counter_reg[2]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[0]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_5__0 
       (.I0(counter_reg[1]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[0]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_6__0 
       (.I0(counter_reg[0]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[0]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_2__0 
       (.I0(counter_reg[13]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[12]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_3__0 
       (.I0(counter_reg[12]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[12]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_2__0 
       (.I0(counter_reg[7]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_3__0 
       (.I0(counter_reg[6]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_4__0 
       (.I0(counter_reg[5]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_5__0 
       (.I0(counter_reg[4]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[4]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_2__0 
       (.I0(counter_reg[11]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[8]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_3__0 
       (.I0(counter_reg[10]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[8]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_4__0 
       (.I0(counter_reg[9]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[8]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_5__0 
       (.I0(counter_reg[8]),
        .I1(counter1_carry__0_n_3),
        .O(\counter[8]_i_5__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(trigger_reg_1),
        .D(\counter_reg[0]_i_1__0_n_7 ),
        .Q(counter_reg[0]));
  CARRY4 \counter_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1__0_n_0 ,\counter_reg[0]_i_1__0_n_1 ,\counter_reg[0]_i_1__0_n_2 ,\counter_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_2__0_n_0 }),
        .O({\counter_reg[0]_i_1__0_n_4 ,\counter_reg[0]_i_1__0_n_5 ,\counter_reg[0]_i_1__0_n_6 ,\counter_reg[0]_i_1__0_n_7 }),
        .S({\counter[0]_i_3__0_n_0 ,\counter[0]_i_4__0_n_0 ,\counter[0]_i_5__0_n_0 ,\counter[0]_i_6__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(trigger_reg_1),
        .D(\counter_reg[8]_i_1__0_n_5 ),
        .Q(counter_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(trigger_reg_1),
        .D(\counter_reg[8]_i_1__0_n_4 ),
        .Q(counter_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(trigger_reg_1),
        .D(\counter_reg[12]_i_1__0_n_7 ),
        .Q(counter_reg[12]));
  CARRY4 \counter_reg[12]_i_1__0 
       (.CI(\counter_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_counter_reg[12]_i_1__0_CO_UNCONNECTED [3:1],\counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[12]_i_1__0_O_UNCONNECTED [3:2],\counter_reg[12]_i_1__0_n_6 ,\counter_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,\counter[12]_i_2__0_n_0 ,\counter[12]_i_3__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(trigger_reg_1),
        .D(\counter_reg[12]_i_1__0_n_6 ),
        .Q(counter_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(trigger_reg_1),
        .D(\counter_reg[0]_i_1__0_n_6 ),
        .Q(counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(trigger_reg_1),
        .D(\counter_reg[0]_i_1__0_n_5 ),
        .Q(counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(trigger_reg_1),
        .D(\counter_reg[0]_i_1__0_n_4 ),
        .Q(counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(trigger_reg_1),
        .D(\counter_reg[4]_i_1__0_n_7 ),
        .Q(counter_reg[4]));
  CARRY4 \counter_reg[4]_i_1__0 
       (.CI(\counter_reg[0]_i_1__0_n_0 ),
        .CO({\counter_reg[4]_i_1__0_n_0 ,\counter_reg[4]_i_1__0_n_1 ,\counter_reg[4]_i_1__0_n_2 ,\counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__0_n_4 ,\counter_reg[4]_i_1__0_n_5 ,\counter_reg[4]_i_1__0_n_6 ,\counter_reg[4]_i_1__0_n_7 }),
        .S({\counter[4]_i_2__0_n_0 ,\counter[4]_i_3__0_n_0 ,\counter[4]_i_4__0_n_0 ,\counter[4]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(trigger_reg_1),
        .D(\counter_reg[4]_i_1__0_n_6 ),
        .Q(counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(trigger_reg_1),
        .D(\counter_reg[4]_i_1__0_n_5 ),
        .Q(counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(trigger_reg_1),
        .D(\counter_reg[4]_i_1__0_n_4 ),
        .Q(counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(trigger_reg_1),
        .D(\counter_reg[8]_i_1__0_n_7 ),
        .Q(counter_reg[8]));
  CARRY4 \counter_reg[8]_i_1__0 
       (.CI(\counter_reg[4]_i_1__0_n_0 ),
        .CO({\counter_reg[8]_i_1__0_n_0 ,\counter_reg[8]_i_1__0_n_1 ,\counter_reg[8]_i_1__0_n_2 ,\counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__0_n_4 ,\counter_reg[8]_i_1__0_n_5 ,\counter_reg[8]_i_1__0_n_6 ,\counter_reg[8]_i_1__0_n_7 }),
        .S({\counter[8]_i_2__0_n_0 ,\counter[8]_i_3__0_n_0 ,\counter[8]_i_4__0_n_0 ,\counter[8]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(trigger_reg_1),
        .D(\counter_reg[8]_i_1__0_n_6 ),
        .Q(counter_reg[9]));
  LUT2 #(
    .INIT(4'h6)) 
    trigger_i_1__0
       (.I0(counter1_carry__0_n_3),
        .I1(trigger_reg_0),
        .O(trigger_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    trigger_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .CLR(trigger_reg_1),
        .D(trigger_i_1__0_n_0),
        .Q(trigger_reg_0));
endmodule

module counter_n_bit
   (CA_OBUF,
    CF_OBUF,
    CC_OBUF,
    CB_OBUF,
    CD_OBUF,
    CG_OBUF,
    CE_OBUF,
    AN_OBUF,
    clear,
    CLK100MHZ_IBUF_BUFG,
    fetch_data,
    Q);
  output CA_OBUF;
  output CF_OBUF;
  output CC_OBUF;
  output CB_OBUF;
  output CD_OBUF;
  output CG_OBUF;
  output CE_OBUF;
  output [7:0]AN_OBUF;
  input clear;
  input CLK100MHZ_IBUF_BUFG;
  input fetch_data;
  input [7:0]Q;

  wire [7:0]AN_OBUF;
  wire CA_OBUF;
  wire CB_OBUF;
  wire CC_OBUF;
  wire CD_OBUF;
  wire CE_OBUF;
  wire CF_OBUF;
  wire CG_OBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [7:0]Q;
  wire clear;
  wire \count[0]_i_2_n_0 ;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [3:0]digits__16;
  wire fetch_data;
  wire [2:0]sel0;
  wire [3:3]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \AN_OBUF[0]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(AN_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \AN_OBUF[1]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(AN_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \AN_OBUF[2]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(AN_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \AN_OBUF[3]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(AN_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \AN_OBUF[4]_inst_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(AN_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \AN_OBUF[5]_inst_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(AN_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \AN_OBUF[6]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .O(AN_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \AN_OBUF[7]_inst_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(AN_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2C06)) 
    CA_OBUF_inst_i_1
       (.I0(digits__16[0]),
        .I1(digits__16[2]),
        .I2(digits__16[1]),
        .I3(digits__16[3]),
        .O(CA_OBUF));
  LUT6 #(
    .INIT(64'hFFFFFFEFEFEFFFEF)) 
    CA_OBUF_inst_i_2
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(fetch_data),
        .I3(Q[0]),
        .I4(sel0[0]),
        .I5(Q[4]),
        .O(digits__16[0]));
  LUT6 #(
    .INIT(64'hFFFFFFEFEFEFFFEF)) 
    CA_OBUF_inst_i_3
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(fetch_data),
        .I3(Q[2]),
        .I4(sel0[0]),
        .I5(Q[6]),
        .O(digits__16[2]));
  LUT6 #(
    .INIT(64'hFFFFFFEFEFEFFFEF)) 
    CA_OBUF_inst_i_4
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(fetch_data),
        .I3(Q[1]),
        .I4(sel0[0]),
        .I5(Q[5]),
        .O(digits__16[1]));
  LUT6 #(
    .INIT(64'hFFFFFFEFEFEFFFEF)) 
    CA_OBUF_inst_i_5
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(fetch_data),
        .I3(Q[3]),
        .I4(sel0[0]),
        .I5(Q[7]),
        .O(digits__16[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAC48)) 
    CB_OBUF_inst_i_1
       (.I0(digits__16[1]),
        .I1(digits__16[2]),
        .I2(digits__16[0]),
        .I3(digits__16[3]),
        .O(CB_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8908)) 
    CC_OBUF_inst_i_1
       (.I0(digits__16[2]),
        .I1(digits__16[3]),
        .I2(digits__16[0]),
        .I3(digits__16[1]),
        .O(CC_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h9924)) 
    CD_OBUF_inst_i_1
       (.I0(digits__16[1]),
        .I1(digits__16[2]),
        .I2(digits__16[3]),
        .I3(digits__16[0]),
        .O(CD_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5704)) 
    CE_OBUF_inst_i_1
       (.I0(digits__16[3]),
        .I1(digits__16[2]),
        .I2(digits__16[1]),
        .I3(digits__16[0]),
        .O(CE_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h3918)) 
    CF_OBUF_inst_i_1
       (.I0(digits__16[2]),
        .I1(digits__16[3]),
        .I2(digits__16[1]),
        .I3(digits__16[0]),
        .O(CF_OBUF));
  LUT4 #(
    .INIT(16'h2011)) 
    CG_OBUF_inst_i_1
       (.I0(digits__16[2]),
        .I1(digits__16[3]),
        .I2(digits__16[0]),
        .I3(digits__16[1]),
        .O(CG_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(clear));
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(\count_reg_n_0_[10] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(\count_reg_n_0_[11] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(\count_reg_n_0_[12] ),
        .R(clear));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] ,\count_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(\count_reg_n_0_[13] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(\count_reg_n_0_[14] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(\count_reg_n_0_[15] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(\count_reg_n_0_[16] ),
        .R(clear));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\NLW_count_reg[16]_i_1_CO_UNCONNECTED [3],\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({sel0,\count_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(sel0[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(sel0[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(sel0[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(\count_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(\count_reg_n_0_[4] ),
        .R(clear));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] ,\count_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(\count_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(\count_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(\count_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(\count_reg_n_0_[8] ),
        .R(clear));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] ,\count_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(\count_reg_n_0_[9] ),
        .R(clear));
endmodule

module sev_seg_controller
   (CA_OBUF,
    CF_OBUF,
    CC_OBUF,
    CB_OBUF,
    CD_OBUF,
    CG_OBUF,
    CE_OBUF,
    AN_OBUF,
    clear,
    CLK100MHZ_IBUF_BUFG,
    fetch_data,
    Q);
  output CA_OBUF;
  output CF_OBUF;
  output CC_OBUF;
  output CB_OBUF;
  output CD_OBUF;
  output CG_OBUF;
  output CE_OBUF;
  output [7:0]AN_OBUF;
  input clear;
  input CLK100MHZ_IBUF_BUFG;
  input fetch_data;
  input [7:0]Q;

  wire [7:0]AN_OBUF;
  wire CA_OBUF;
  wire CB_OBUF;
  wire CC_OBUF;
  wire CD_OBUF;
  wire CE_OBUF;
  wire CF_OBUF;
  wire CG_OBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [7:0]Q;
  wire clear;
  wire fetch_data;

  counter_n_bit counter
       (.AN_OBUF(AN_OBUF),
        .CA_OBUF(CA_OBUF),
        .CB_OBUF(CB_OBUF),
        .CC_OBUF(CC_OBUF),
        .CD_OBUF(CD_OBUF),
        .CE_OBUF(CE_OBUF),
        .CF_OBUF(CF_OBUF),
        .CG_OBUF(CG_OBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .Q(Q),
        .clear(clear),
        .fetch_data(fetch_data));
endmodule

module top_UART
   (fetch_data,
    clear,
    Q,
    CLK100MHZ_IBUF_BUFG,
    load,
    CPU_RESETN_IBUF,
    SW_IBUF);
  output fetch_data;
  output clear;
  output [7:0]Q;
  input CLK100MHZ_IBUF_BUFG;
  input load;
  input CPU_RESETN_IBUF;
  input [7:0]SW_IBUF;

  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN_IBUF;
  wire [7:0]Q;
  wire Rx_clk;
  wire Rx_n_1;
  wire Rx_n_2;
  wire [7:0]SW_IBUF;
  wire Tx_clk;
  wire Tx_data;
  wire clear;
  wire fetch_data;
  wire load;

  Top_Rx Rx
       (.CLK(Rx_clk),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .D(Tx_data),
        .\FSM_onehot_p_state_reg[4] (fetch_data),
        .Q(Q),
        .\SW[2] (Rx_n_1),
        .\SW[6] (Rx_n_2),
        .SW_IBUF(SW_IBUF),
        .\out_reg[8] (clear));
  Top_Trans Tx
       (.CLK(Tx_clk),
        .D(Tx_data),
        .SW_IBUF(SW_IBUF),
        .\data_out_reg[6] (clear),
        .load(load),
        .\out_reg[8] (Rx_n_1),
        .\out_reg[8]_0 (Rx_n_2));
  baud_rate_gen2 baud_gen
       (.CLK(Rx_clk),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .CPU_RESETN(clear),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .trigger_reg(Tx_clk));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
