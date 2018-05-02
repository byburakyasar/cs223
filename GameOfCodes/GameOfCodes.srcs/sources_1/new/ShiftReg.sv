`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2017 09:49:09 PM
// Design Name: 
// Module Name: ShiftReg
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


module ShiftReg#(parameter N = 16)
                (input logic  clk,
                 input logic  reset, 
                 input logic  load,
                 input logic  s_in,
                 input logic stop,
                 output logic [N-1:0] out,
                 output logic s_out);
       always_ff@(posedge clk, posedge reset)
       if(load)            out <= 16'b1001011010100101;
       else if(reset)      out <= 16'b0000000000000000;
       else if(stop)       out <= out;
       else                out <= {out[N-2:0],s_in};
    assign s_out = out [N-1];
endmodule

//module randomLogicFunc(input logic [15:0] in,
//                       output logic s_out);
                       
//       assign s_out = (in[15] ^ in[14] ~^ in[11]) | (in[12] ^ in[13] ~^ in[10]);

//endmodule

module PseudoRandomGenerator(input logic clk,
                             input logic reset,
                             input logic stop,
                             input logic load,
                             output logic [3:0] out);
       // internal logic
       logic s_in;
       logic s_out;
       logic [15:0] random_in;
       
       // ShiftReg module object
       ShiftReg reg1(clk,reset,load,s_in,stop,random_in,s_out);
       
       // random logic function
       assign s_in = (random_in[15] ^ random_in[14] ~^ random_in[11]) | (random_in[12] ^ random_in[13] ~^ random_in[10]);
       assign out = random_in[3:0];
endmodule

