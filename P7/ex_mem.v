`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:19:31 11/21/2020 
// Design Name: 
// Module Name:    ex_mem_mem 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ex_mem(//流水3-4：访问DM
    input clk,
	 input reset,
	 input clear,
	 input [4:0] exccode,
	 input [31:0] PC,
	 input [31:0] ALUout,
	 input [31:0] RD2,//传递RD2值
	 input [4:0] WA,
	 input [31:0] IR,
	 input delay,
	 input cgcp0,
	 
	 output reg [4:0] ex_mem_exccode,
	 output reg [31:0] ex_mem_ALUout,
	 output reg [31:0] ex_mem_din,
	 output reg [4:0] ex_mem_WA,
	 output reg [31:0] ex_mem_IR,
	 output reg [31:0] ex_mem_PC,
	 output reg ex_mem_delay,
	 output reg ex_mem_cgcp0
    );
initial begin
    ex_mem_exccode=0;
	 ex_mem_ALUout=0;
	 ex_mem_din=0;
	 ex_mem_IR=0;
	 ex_mem_WA=0;
	 ex_mem_PC=0;
	 ex_mem_delay=0;
	 ex_mem_cgcp0=0;
end

always @(posedge clk) begin
    if(reset || clear) begin
	 ex_mem_exccode<=0;
	 ex_mem_ALUout<=0;
	 ex_mem_din<=0;
	 ex_mem_IR<=0;
	 ex_mem_WA<=0;
	 ex_mem_PC<=0;
	 ex_mem_delay<=0;
	 ex_mem_cgcp0<=0;
	 end
	 else begin
	 ex_mem_exccode <= exccode;
	 ex_mem_ALUout <= ALUout;
	 ex_mem_din <= RD2;
	 ex_mem_IR <= IR;
	 ex_mem_WA <= WA;
	 ex_mem_PC <= PC;
	 ex_mem_delay <= delay;
	 ex_mem_cgcp0 <= cgcp0;
	 end
end
endmodule
