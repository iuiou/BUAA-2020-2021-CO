`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:33:58 09/13/2020 
// Design Name: 
// Module Name:    id_fsm 
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
module id_fsm(
    input [7:0] char,
    input clk,
    output reg out	 
    );
integer now1=0,now2=0;
initial begin
out = 0;
end 
always @(posedge clk) begin
if((char >= 65&&char <= 90)||(char >= 97&&char <= 122)) begin
   if(!now1) now1 = 1;
	if(now2) now2=0;
	end
else if(char >= 48&&char <= 57) begin
   if(!now2) now2 = 1;
	else now2 = now2;
	end
end
if(now1&&now2) out=1;
else out=0;
end
endmodule
