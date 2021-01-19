`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:26:08 11/03/2020 
// Design Name: 
// Module Name:    DNA 
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
module DNA(
    input clk,
    input [7:0] in,
	 input reset,
	 output reg [4:0] cnt,
	 output danger
    );
reg [31:0] status;
wire flag;
initial begin
   cnt=0;
	status=0;
end
always @(posedge clk or posedge reset) begin
   if(reset) begin
	cnt=0;
	status=0;
	end
	else begin
	if(!flag) begin
	case(status)
	0:begin
	if(in=="A") status=1;
	end
	1:begin
	if(in=="T") status=2;
	else status=0;
	end
	2:begin
	if(in=="A") status=3;
	else status=0;
	end
	3:begin
	if(in=="T") status=4;
	else status=0;
	end
	4:begin
	if(in=="G") status=5;
	else if(in=="A") status=3;
	else status=0;
	end
	5:begin
	if(in=="C") status=6;
	else status=0;
	end
	6:begin
	if(in=="G") status=7;
	else status=0;
	end
	7:begin
	if(in=="A") status=1;
	else status=0;
	end
   endcase
	cnt=cnt+(status==7);
	end
	end
end
   assign danger=(cnt==2&&status==6&&in=="G")||(cnt==3);
	assign flag=(cnt==3);
endmodule
