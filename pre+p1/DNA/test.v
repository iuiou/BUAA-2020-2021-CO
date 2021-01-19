`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:07:57 11/03/2020
// Design Name:   DNA
// Module Name:   D:/verilog/DNA/test.v
// Project Name:  DNA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DNA
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
	reg [7:0] in;
	reg reset;

	// Outputs
	wire [4:0] cnt;
	wire danger;

	// Instantiate the Unit Under Test (UUT)
	DNA uut (
		.clk(clk), 
		.in(in), 
		.reset(reset), 
		.cnt(cnt), 
		.danger(danger)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		in = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
      in="A";
		#10;
		in="T";
		#10;
		in="A";
		#10;
		in="T";
		#10;
		in="G";
		#10;
		in="C";
		#10;
		in="G";
		#10;
		in="A";
		#10;
		in="T";
		#10;
		in="A";
		#10;
		in="T";
		#10;
		in="G";
		#10;
		in="C";
		#10;
		in="G";
		#10;
		in="A";
		#10;
		in="T";
		#10;
		in="A";
		#10;
		in="T";
		#10;
		in="G";
		#10;
		in="C";
		#10;
		in="G";
		#10;
		// Add stimulus here

	end
      always #5 clk=~clk;
endmodule

