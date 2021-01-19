`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:01:16 11/21/2020 
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
    input cut,
    input [31:0] nextPC,
	 input En,
	 input clk,
	 input reset,
	 output [31:0] PC,
	 output [31:0] intr
    );
reg [31:0] IM [4095:0];
reg [31:0] pc;
integer i;
initial begin
    for(i=0;i<4096;i=i+1) begin
	 IM[i]=0;
	 end
    pc=32'h00003000;
	 $readmemh("code.txt", IM);
	 $readmemh("code_handler.txt", IM, 1120, 2047);
end
wire [31:0] true_PC;
assign true_PC=PC-32'h00003000;
assign intr=IM[true_PC[13:2]];
assign PC=pc;

always @(posedge clk) begin
    if(reset) begin
	 pc<=32'h00003000;
	 end
	 else begin
	 if(cut) pc<= nextPC;
	 else if(En) begin
	 pc<=nextPC;
	 end
	 end
end


endmodule
