`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:37:17 10/24/2020 
// Design Name: 
// Module Name:    BlockChecker 
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
module BlockChecker(
    input clk,
	 input reset,
	 input [7:0] in,
	 output reg result
    );
integer cnt;
reg [31:0] state;
initial begin
cnt=0;
state=0;
result=1;
end
always@(posedge clk or posedge reset) begin
     if(reset) begin
	  cnt=0;
     state=0;
     result=1;
     end
	  else begin
	      case(state)
			0:begin 
			if(in=="b"||in=="B") state=1;
			else if(in=="e"||in=="E") state=6;
			else if(in==" ") state=0;
			else state=9;
			end
			1:begin
			if(in=="e"||in=="E") state=2;
			else if(in==" ") state=0;
			else state=9;
			end
			2:begin
			if(in=="g"||in=="G") state=3;
			else if(in==" ") state=0;
			else state=9;
			end
         3:begin
			if(in=="i"||in=="I") state=4;
			else if(in==" ") state=0;
			else state=9;
			end
			4:begin
			if(in=="n"||in=="N") state=5;
			else if(in==" ") state=0;
			else state=9;
			end
			5:begin
			if(in==" ") state=0;
			else begin 
			state=9;
			if(cnt>=1) cnt=cnt-1;
			else cnt=cnt;
			end//µÖÏû×´Ì¬
			end
			6:begin
			if(in=="n"||in=="N") state=7;
			else if(in==" ") state=0;
			else state=9;
			end
			7:begin
			if(in=="d"||in=="D") state=8;
			else if(in==" ") state=0;
			else state=9;
			end
			8:begin
			if(in==" ") state=0;
			else begin
			state=9;
			cnt=cnt+1;
			end
			end
			9:begin
			if(in==" ") state=0;
			else state=9; 
			end
			endcase
		if(state==5) begin
		if(cnt>=0) cnt=cnt+1;
		else cnt=cnt;
		end
		if(state==8) cnt=cnt-1;
		if(cnt==0) result=1;
		else result=0;
		end
end
endmodule
