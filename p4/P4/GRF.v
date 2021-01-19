`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:13:51 11/14/2020 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input [31:0] PC,
    input clk,
	 input reset,
	 input RegWrite,
    input [4:0] RA1,
	 input [4:0] RA2,
	 input [4:0] WA,
	 input [31:0] WD,
	 output [31:0] RD1,
	 output [31:0] RD2
    );
reg [31:0] Reg[31:0];
integer i;
initial begin
    for(i=0;i<=31;i=i+1) Reg[i]=0;
end
always @(posedge clk) begin
    if(reset) begin
	 for(i=0;i<=31;i=i+1) Reg[i]<=0;
	 end
	 else begin
       if(RegWrite) begin
		 if(WA!=0) begin 
		 $display("@%h: $%d <= %h", PC, WA, WD);
       Reg[WA]<=WD;
		 end
	    end
	 end
end

assign RD1=Reg[RA1];
assign RD2=Reg[RA2];

endmodule
