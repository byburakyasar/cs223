// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Mon Nov 13 10:56:27 2017
// Host        : win7VM running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -keep_vcc_gnd
//               C:UsershamzeDropboxAcademicCoursesBilkent_TA_Digital_Design_CS223Tutorial_Projects_Vivado_Basys3x.sv
// Design      : top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* N = "18" *) 
module SevSeg_4digit
   (clk,
    in0,
    in1,
    in2,
    in3,
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    dp,
    an);
  input clk;
  input [3:0]in0;
  input [3:0]in1;
  input [3:0]in2;
  input [3:0]in3;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
  output dp;
  output [3:0]an;

  wire \<const0> ;
  wire \<const1> ;
  wire a;
  wire [3:0]an;
  wire c;
  wire clk;
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
  wire \count_reg[16]_i_1_n_3 ;
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
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire e;
  wire f;
  wire g;
  wire [3:0]in0;
  wire [1:0]p_0_in;

  assign b = \<const0> ;
  assign d = \<const0> ;
  assign dp = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    a_INST_0
       (.I0(in0[0]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(in0[1]),
        .O(a));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an[0]_INST_0 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(an[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[1]_INST_0 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(an[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \an[2]_INST_0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(an[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \an[3]_INST_0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(an[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    c_INST_0
       (.I0(in0[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(in0[0]),
        .O(c));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(\<const0> ));
  CARRY4 \count_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(\count_reg_n_0_[10] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(\count_reg_n_0_[11] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(\count_reg_n_0_[12] ),
        .R(\<const0> ));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] ,\count_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(\count_reg_n_0_[13] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(\count_reg_n_0_[14] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(\count_reg_n_0_[15] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(p_0_in[0]),
        .R(\<const0> ));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO(\count_reg[16]_i_1_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({\<const0> ,\<const0> ,p_0_in}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(p_0_in[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(\count_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(\count_reg_n_0_[4] ),
        .R(\<const0> ));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] ,\count_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(\count_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(\count_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(\count_reg_n_0_[7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(\count_reg_n_0_[8] ),
        .R(\<const0> ));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] ,\count_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(\count_reg_n_0_[9] ),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    e_INST_0
       (.I0(in0[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .O(e));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0302)) 
    f_INST_0
       (.I0(in0[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(in0[0]),
        .O(f));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    g_INST_0
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(in0[1]),
        .O(g));
endmodule

module stepmotor
   (clk,
    direction,
    speed,
    phases,
    stop);
  input clk;
  input direction;
  input [1:0]speed;
  output [3:0]phases;
  input stop;

  wire \<const0> ;
  wire \<const1> ;
  wire [19:17]D;
  wire \FSM_sequential_st[0]_i_1_n_0 ;
  wire \FSM_sequential_st[1]_i_1_n_0 ;
  wire clear;
  wire clk;
  wire clk_en_i_1_n_0;
  wire clk_en_i_2_n_0;
  wire clk_en_i_3_n_0;
  wire clk_en_i_4_n_0;
  wire clk_en_reg_n_0;
  wire \count[0]_i_10_n_0 ;
  wire \count[0]_i_11_n_0 ;
  wire \count[0]_i_12_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[0]_i_7_n_0 ;
  wire \count[0]_i_8_n_0 ;
  wire \count[0]_i_9_n_0 ;
  wire [19:0]count_reg;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_3_n_0 ;
  wire \count_reg[0]_i_3_n_1 ;
  wire \count_reg[0]_i_3_n_2 ;
  wire \count_reg[0]_i_3_n_3 ;
  wire \count_reg[0]_i_3_n_4 ;
  wire \count_reg[0]_i_3_n_5 ;
  wire \count_reg[0]_i_3_n_6 ;
  wire \count_reg[0]_i_3_n_7 ;
  wire \count_reg[0]_i_4_n_0 ;
  wire \count_reg[0]_i_4_n_1 ;
  wire \count_reg[0]_i_4_n_2 ;
  wire \count_reg[0]_i_4_n_3 ;
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
  wire direction;
  wire [19:17]p_0_in;
  wire [3:0]phases;
  wire sel;
  wire [1:0]speed;
  (* RTL_KEEP = "yes" *) wire [0:0]st;
  wire stop;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \D[17]_i_1 
       (.I0(speed[1]),
        .I1(speed[0]),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \D[18]_i_1 
       (.I0(speed[0]),
        .I1(speed[1]),
        .O(p_0_in[18]));
  LUT2 #(
    .INIT(4'h2)) 
    \D[19]_i_1 
       (.I0(speed[0]),
        .I1(speed[1]),
        .O(p_0_in[19]));
  FDRE #(
    .INIT(1'b0)) 
    \D_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[17]),
        .Q(D[17]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \D_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[18]),
        .Q(D[18]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \D_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_0_in[19]),
        .Q(D[19]),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h74)) 
    \FSM_sequential_st[0]_i_1 
       (.I0(st),
        .I1(clk_en_reg_n_0),
        .I2(st),
        .O(\FSM_sequential_st[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \FSM_sequential_st[1]_i_1 
       (.I0(direction),
        .I1(phases[1]),
        .I2(st),
        .I3(clk_en_reg_n_0),
        .I4(phases[1]),
        .O(\FSM_sequential_st[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "st_0:00,st_1:11,st_2:10,st_3:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\FSM_sequential_st[0]_i_1_n_0 ),
        .Q(st),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "st_0:00,st_1:11,st_2:10,st_3:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\FSM_sequential_st[1]_i_1_n_0 ),
        .Q(phases[1]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h00008000)) 
    clk_en_i_1
       (.I0(clk_en_i_2_n_0),
        .I1(clk_en_i_3_n_0),
        .I2(clk_en_i_4_n_0),
        .I3(count_reg[0]),
        .I4(count_reg[1]),
        .O(clk_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clk_en_i_2
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .I2(count_reg[14]),
        .I3(count_reg[15]),
        .I4(count_reg[19]),
        .I5(count_reg[18]),
        .O(clk_en_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clk_en_i_3
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .I4(count_reg[7]),
        .I5(count_reg[6]),
        .O(clk_en_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clk_en_i_4
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .I2(count_reg[8]),
        .I3(count_reg[9]),
        .I4(count_reg[13]),
        .I5(count_reg[12]),
        .O(clk_en_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_en_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(clk_en_i_1_n_0),
        .Q(clk_en_reg_n_0),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h8001)) 
    \count[0]_i_10 
       (.I0(count_reg[7]),
        .I1(count_reg[8]),
        .I2(D[17]),
        .I3(count_reg[6]),
        .O(\count[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8001)) 
    \count[0]_i_11 
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .I2(D[17]),
        .I3(count_reg[3]),
        .O(\count[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h8001)) 
    \count[0]_i_12 
       (.I0(count_reg[1]),
        .I1(count_reg[2]),
        .I2(D[17]),
        .I3(count_reg[0]),
        .O(\count[0]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(stop),
        .O(sel));
  LUT4 #(
    .INIT(16'h9009)) 
    \count[0]_i_5 
       (.I0(D[19]),
        .I1(count_reg[19]),
        .I2(D[18]),
        .I3(count_reg[18]),
        .O(\count[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8001)) 
    \count[0]_i_6 
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .I2(D[17]),
        .I3(count_reg[15]),
        .O(\count[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8001)) 
    \count[0]_i_7 
       (.I0(count_reg[13]),
        .I1(count_reg[14]),
        .I2(D[17]),
        .I3(count_reg[12]),
        .O(\count[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_8 
       (.I0(count_reg[0]),
        .O(\count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8001)) 
    \count[0]_i_9 
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .I2(D[17]),
        .I3(count_reg[9]),
        .O(\count[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_7 ),
        .Q(count_reg[0]),
        .R(clear));
  CARRY4 \count_reg[0]_i_1 
       (.CI(\count_reg[0]_i_4_n_0 ),
        .CO({clear,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\count[0]_i_5_n_0 ,\count[0]_i_6_n_0 ,\count[0]_i_7_n_0 }));
  CARRY4 \count_reg[0]_i_3 
       (.CI(\<const0> ),
        .CO({\count_reg[0]_i_3_n_0 ,\count_reg[0]_i_3_n_1 ,\count_reg[0]_i_3_n_2 ,\count_reg[0]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\count_reg[0]_i_3_n_4 ,\count_reg[0]_i_3_n_5 ,\count_reg[0]_i_3_n_6 ,\count_reg[0]_i_3_n_7 }),
        .S({count_reg[3:1],\count[0]_i_8_n_0 }));
  CARRY4 \count_reg[0]_i_4 
       (.CI(\<const0> ),
        .CO({\count_reg[0]_i_4_n_0 ,\count_reg[0]_i_4_n_1 ,\count_reg[0]_i_4_n_2 ,\count_reg[0]_i_4_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\count[0]_i_9_n_0 ,\count[0]_i_10_n_0 ,\count[0]_i_11_n_0 ,\count[0]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(clear));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(clear));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_6 ),
        .Q(count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_5 ),
        .Q(count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_4 ),
        .Q(count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(clear));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_3_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(clear));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(clear));
  LUT2 #(
    .INIT(4'h6)) 
    \phases[0]_INST_0 
       (.I0(st),
        .I1(phases[1]),
        .O(phases[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \phases[2]_INST_0 
       (.I0(phases[1]),
        .I1(st),
        .O(phases[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \phases[3]_INST_0 
       (.I0(phases[1]),
        .O(phases[3]));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module top
   (clk,
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    dp,
    an,
    direction,
    speed,
    phases,
    stop);
  input clk;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
  output dp;
  output [3:0]an;
  input direction;
  input [1:0]speed;
  output [3:0]phases;
  input stop;

  wire \<const0> ;
  wire \<const1> ;
  wire a;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire b;
  wire c;
  wire c_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire d;
  wire d_OBUF;
  wire direction;
  wire direction_IBUF;
  wire dp;
  wire e;
  wire e_OBUF;
  wire f;
  wire f_OBUF;
  wire g;
  wire g_OBUF;
  wire [3:0]phases;
  wire [3:0]phases_OBUF;
  wire [1:0]speed;
  wire [1:0]speed_IBUF;
  wire stop;
  wire stop_IBUF;

  GND GND
       (.G(\<const0> ));
  (* N = "18" *) 
  SevSeg_4digit SevSeg_4digit_inst0
       (.a(d_OBUF),
        .an(an_OBUF),
        .c(c_OBUF),
        .clk(clk_IBUF_BUFG),
        .e(e_OBUF),
        .f(f_OBUF),
        .g(g_OBUF),
        .in0({\<const0> ,\<const0> ,speed_IBUF}),
        .in1({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .in2({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .in3({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  VCC VCC
       (.P(\<const1> ));
  OBUF a_OBUF_inst
       (.I(d_OBUF),
        .O(a));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  OBUF b_OBUF_inst
       (.I(\<const0> ),
        .O(b));
  OBUF c_OBUF_inst
       (.I(c_OBUF),
        .O(c));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF d_OBUF_inst
       (.I(d_OBUF),
        .O(d));
  IBUF direction_IBUF_inst
       (.I(direction),
        .O(direction_IBUF));
  OBUF dp_OBUF_inst
       (.I(\<const1> ),
        .O(dp));
  OBUF e_OBUF_inst
       (.I(e_OBUF),
        .O(e));
  OBUF f_OBUF_inst
       (.I(f_OBUF),
        .O(f));
  OBUF g_OBUF_inst
       (.I(g_OBUF),
        .O(g));
  OBUF \phases_OBUF[0]_inst 
       (.I(phases_OBUF[0]),
        .O(phases[0]));
  OBUF \phases_OBUF[1]_inst 
       (.I(phases_OBUF[1]),
        .O(phases[1]));
  OBUF \phases_OBUF[2]_inst 
       (.I(phases_OBUF[2]),
        .O(phases[2]));
  OBUF \phases_OBUF[3]_inst 
       (.I(phases_OBUF[3]),
        .O(phases[3]));
  IBUF \speed_IBUF[0]_inst 
       (.I(speed[0]),
        .O(speed_IBUF[0]));
  IBUF \speed_IBUF[1]_inst 
       (.I(speed[1]),
        .O(speed_IBUF[1]));
  stepmotor stepmotor_inst0
       (.clk(clk_IBUF_BUFG),
        .direction(direction_IBUF),
        .phases(phases_OBUF),
        .speed(speed_IBUF),
        .stop(stop_IBUF));
  IBUF stop_IBUF_inst
       (.I(stop),
        .O(stop_IBUF));
endmodule
