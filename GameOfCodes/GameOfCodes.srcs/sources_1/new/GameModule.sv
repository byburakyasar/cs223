`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2017 01:27:35 PM
// Design Name: 
// Module Name: GameModule
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


module GameModule(input logic clk,reset,load,start_game,
                  output logic [1:0] direction,[1:0]rotation_dur,[3:0]phases,
                  output logic a,b,c,d,e,f,g,dp,
                  output logic [3:0] an,
                  output logic [3:0] keyb_row,keyb_col,
                  output logic start);
       
       logic [3:0] seq_generated;
       logic [3:0] in0,in1,in2,in3;
       logic [3:0] map_value;
       logic key_valid;
       logic [3:0] key_value;
       logic stop;
       logic [3:0] comp_out;
       
       assign start = start_game;
       
       PseudoRandomGenerator pseRandomGen(clk,reset,stop,load,seq_generated);
       assign direction[1] = seq_generated[3];
       assign direction[0] = seq_genrated[1];
       assign rotation_dur[1] = seq_generated[2];
       assign rotation_dur[0] = seq_generated[0];
       
       assign in0 = 4'b0000;
       assign in1 = 4'b0000;
       assign in2 = 4'b0000;
       assign in3 = 4'b0000;
       keypad4X4 keypad(clk,keyb_row,keyb_col,key_value,key_valid);
       Mapping(key_value,map_value);
       comperator comp(map_value,seq_generated,in0,clk,key_valid,comp_out);
       
       assign stop = start_game;       
       steppermotor_wrapper step_motor(clk,direction,rotation_dur,phases,start);
       
       SevSeg_4digit sevenSeg(clk,comp_out,in1,in2,in3,a,b,c,d,e,f,g,dp,an);
endmodule
