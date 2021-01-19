`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:41:57 11/01/2020
// Design Name:   sb
// Module Name:   D:/verilog/sbproblem/test.v
// Project Name:  sbproblem
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sb
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] temp;
	reg flip;

	// Outputs
	wire [1:0] status;
	wire need_flip;

	// Instantiate the Unit Under Test (UUT)
	sb uut (
		.clk(clk), 
		.reset(reset), 
		.temp(temp), 
		.flip(flip), 
		.status(status), 
		.need_flip(need_flip)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		temp = 0;
		flip = 0;

		// Wait 100 ns for global reset to finish
		#100;
      temp=125;
      #50;
      temp=135;
      #55;
      temp=125;
      #65
      temp=135;  
      flip=1;
      #10
		flip=0;
      temp=190;		
		// Add stimulus here

	end
	   always #10 clk=~clk;
      
endmodule

