`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:11:14 11/14/2020 
// Design Name: 
// Module Name:    IFU 
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
module IFU(
    input [31:0] nextPC,
	 input clk,
	 input reset,
	 output [31:0] PC,
	 output [31:0] intr
    );
reg [31:0] IM [1023:0];
reg [31:0] pc;

initial begin
    pc=32'h00003000;
	 $readmemh("code.txt",IM);
end

always @(posedge clk) begin
    if(reset) begin
	 pc<=32'h00003000;
	 end
	 else begin
	 pc<=nextPC;
	 end
end
assign PC=pc;
assign intr=IM[PC[11:2]];
endmodule
