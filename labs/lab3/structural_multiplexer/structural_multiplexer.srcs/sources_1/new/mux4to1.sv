`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2017 11:13:18 PM
// Design Name: 
// Module Name: mux4to1
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


module mux4to1(output logic out,
               input logic in3,in2,in1,in0,s1,s0,en);
   assign out = en & (s1 ? (s0 ? in3 : in2) : (s0 ? in1 : in0));
endmodule

module mux8to1(output logic out,
               input logic in7,in6,in5,in4,in3,in2,in1,in0,s2,s1,s0);
   logic y1,y2;
   
   mux4to1 mux1(y1,in3,in2,in1,in0,s1,s0,~s2);
   mux4to1 mux2(y2,in7,in6,in5,in4,s1,s0,s2);
   or or1 (out,y1,y2);
endmodule

module partd(output logic led,
             input logic w,x,y,z);
   mux8to1 muxobject(led,z,~z,~z,1,z,z,~z,z,w,x,y);
endmodule
