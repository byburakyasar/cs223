`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2017 10:02:28 PM
// Design Name: 
// Module Name: D2to4_decoder
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

module D2to4_decoder( output logic y3,y2,y1,y0,
                      input logic in1,in0,en);
   assign y3 = en & in1 & in0;
   assign y2 = en & in1 & ~in0;
   assign y1 = en & ~in1 & in0;
   assign y0 = en & ~in1 & ~in0;
endmodule

module D3to8_decoder(output logic y7,y6,y5,y4,y3,y2,y1,y0,
                     input logic in2, in1 ,in0);
   D2to4_decoder d2to4_1 (y3,y2,y1,y0,in2,in1,~in0);                 
   D2to4_decoder d2to4_2 (y7,y6,y5,y4,in2,in1,in0);
endmodule

module implement_func(output logic led,
                      input logic w,x,y);
   logic y7,y6,y5,y4,y3,y2,y1,y0;
   D3to8_decoder decoder(y7,y6,y5,y4,y3,y2,y1,y0,w,x,y);
   
   logic n1,n2; //internal nodes
   
   or or1 (n1,y0,y1);
   or or2 (n2,y5,y6);
   or or3 (led,n1,n2);
endmodule