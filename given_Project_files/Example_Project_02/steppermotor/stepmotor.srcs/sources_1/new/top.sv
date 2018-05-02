`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hamzeh Ahangari
// 
// Create Date: 
// Design Name: 
// Module Name: top
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

(* keep_hierarchy = "yes" *)
module top(
    input clk, //100Mhz on Basys3
	
	//step motor 
	output [3:0] phases,
	
	input [1:0] direction,
	input [1:0] rotation_duration,
	input start
	
    );
   
     
steppermotor_wrapper steppermotor_wrapper_inst0(
	
	.clk(clk), //100Mhz on Basys3
	
	//user input for motor rotation direction. 
	// direction[0]: first movement 
	// direction[1]: second movement
	// 1'b0: left  1'b1: right	
    .direction(direction), 
	
	//user input for motor rotation duration.
	// rotation_duration[0]: first movement 
	// rotation_duration[1]: second movement
	// 1'b0: short  1'b1: long
	.rotation_duration(rotation_duration), 
    
	// just connect them to FPGA (motor driver)	
	.phases(phases), 
	
	//user input to initiate motor. a pulse (at least one clock cycle) start motor movements. 
	// if you re-apply it before the motor finishes both movements, it is ignored.
	.start(start) 
);

    
endmodule




