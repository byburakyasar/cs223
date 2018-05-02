`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2017 09:49:51 AM
// Design Name: 
// Module Name: structuraltestbench
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


module structuraltestbench();
   logic a,b,cin;
   logic sum,cout;
   //instantiate device under test
   structuralfulladder dut(a,b,cin,sum,cout);
   //apply inputs one at a time
   initial begin
     a = 0; b = 0; cin = 0; #10;
     cin = 1; #10;
     b = 1; cin = 0; #10;
     cin = 1; #10;
     a = 1; b = 0; cin = 0; #10;
     cin = 1; #10;
     b = 1; cin = 0; #10;
     cin = 1; #10;
   end
endmodule
