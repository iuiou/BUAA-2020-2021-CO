`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:18:52 11/21/2020 
// Design Name: 
// Module Name:    mem_wb_wb 
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
`include "wiredef.vh"
module mem_wb(//Á÷Ë®4-5£º»ØÐ´¼Ä´æÆ÷
    input clk,
	 input reset,
	 input [31:0] PC,
	 input [31:0] IR,
    input [31:0] dout,
	 input [31:0] ALUout,
	 input [4:0] WA,
	 output reg [31:0] mem_wb_IR,
	 output reg [31:0] mem_wb_WD,
 	 output reg [4:0] mem_wb_WA,
	 output reg mem_wb_RegWrite,
	 output reg [31:0] mem_wb_PC 
     );
initial begin
    mem_wb_IR = 0;
	 mem_wb_WD = 0;
	 mem_wb_WA = 0;
	 mem_wb_PC= 32'h00003000;
	 mem_wb_RegWrite =0;
end

wire [31:0] WD;

control Control(
    .op(IR[31:26]),
	 .fuc(IR[5:0]),
	 .RT(IR[`rt]),
	 `instr
	 );
assign WD = (lb || lbu || lh || lhu || lw )? dout : ALUout;
				 
always @(posedge clk) begin
    if(reset) begin
	 mem_wb_IR <= 0;
	 mem_wb_WD <= 0;
	 mem_wb_WA <= 0;
	 mem_wb_PC<= 0;
	 mem_wb_RegWrite <=0;
	 end
	 else begin
	 mem_wb_IR <= IR;
	 mem_wb_WD <= WD;
	 mem_wb_WA <= WA;
	 mem_wb_PC<= PC;
	 mem_wb_RegWrite <= (lb || lbu || lh || lhu || lw || add || addu || subu || sub || slt || sltu || sll || srl || sra || sllv || srlv || srav || And || Or || Xor || Nor ||
	                     addi || addiu || andi || ori || xori || lui || slti || sltiu || jal || jalr || mflo || mfhi);
	 end
end

endmodule
