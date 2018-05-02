`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: Hamzeh Ahangari
// Design Name: 
// Module Name: 
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
module testbench();

logic clk;
logic [3:0] phases;
logic [1:0] direction;
logic [1:0] rotation_duration;
logic start;	

steppermotor_wrapper DUT(
	.clk(clk), 
    .phases(phases),
	.direction(direction),
	.rotation_duration(rotation_duration),  
	.start(start)
);

initial begin
	clk = 1'b0;
	start = 1'b0; direction = 2'b10; rotation_duration = 2'b10;
	#5000000;
	
	start =1'b1;
	#100;
		
	start =1'b0;
	
end
  
always 
	#5  clk =  !clk; //clk's freq = 100Mhz on Basys3 

endmodule
