`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2017 11:16:48 PM
// Design Name: 
// Module Name: test_mux
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


module test_mux();
logic y;
logic in7,in6,in5,in4,in3,in2,in1,in0,s2,s1,s0;

   // instantiate device under test
   mux8to1 dut(y,in7,in6,in5,in4,in3,in2,in1,in0,s2,s1,s0);
//   initial begin
//        for (int i=0; i<2048; i=i+1) 
//        begin
//            {in7,in6,in5,in4,in3,in2,in1,in0,s2,s1,s0} = i;
//            #10;
//        end
//   end
   initial begin
   in7 = 1; in6 = 0; in5 = 1; in4 = 0; in3 = 1; in2 = 0; in1 = 1; in0 = 0;
        s2 = 0; s1 = 0; s0 = 0; #10;
        s0 = 1; #10;
        s1 = 1; s0 = 0; #10;
        s0 = 1; #10;
        s2 = 1; s1 = 0; s0 = 0; #10;
        s0 = 1; #10;
        s1 = 1; s0 = 0; #10;
        s0 = 1; #10;
   end
endmodule
