`timescale 1ns/1ps

module mips_tb;

	wire [31:0] addr;
	reg clk,reset,interrupt;
	integer interruptCounter;
	reg [31:0] interruptAddress[0:63];

	mips uut(
		.clk(clk),.reset(reset),
		.interrupt(interrupt),
		.addr(addr)
	);

	initial begin
		clk<=0; reset<=0;
		interruptCounter<=0; interrupt<=0;
		#100;
		#500000;
		$finish;
	end
	always #5 clk=~clk;
endmodule