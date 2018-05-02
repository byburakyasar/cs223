`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2017 10:39:16 PM
// Design Name: 
// Module Name: test_decoderfunc
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

module test_decoderfunc();
    logic w,x,y;
    logic led;
    //instantiate device under test
    implement_func dut(led,w,x,y);
    //apply inputs one at a time
    initial begin
      y = 0; w = 0; x = 0; #10;
      x = 1; #10;
      w = 1; x = 0; #10;
      x = 1; #10;
      y = 1; w = 0; x = 0; #10;
      x = 1; #10;
      w = 1; x = 0; #10;
      x = 1; #10;
    end
endmodule