`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:04:10 11/21/2020 
// Design Name: 
// Module Name:    control 
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
module control(
    input [5:0] op,
	 input [5:0] fuc,
	 output addu,
	 output subu,
	 output lw,
	 output sw,
	 output beq,
	 output lui,
	 output jal,
	 output jr,
	 output ori,
	 output j,
	 output cmco
    );
assign addu=(op==6'b000000)&&(fuc==6'b100001);
assign subu=(op==6'b000000)&&(fuc==6'b100011);
assign lw=(op==6'b100011);
assign sw=(op==6'b101011);
assign beq=(op==6'b000100);
assign lui=(op==6'b001111);
assign jal=(op==6'b000011);
assign jr=(op==6'b000000)&&(fuc==6'b001000);
assign ori=(op==6'b001101);
assign j=(op==6'b000010);
assign cmco=(op==6'b111011);
endmodule
