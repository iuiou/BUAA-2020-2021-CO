`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:06:01 11/01/2020 
// Design Name: 
// Module Name:    top_module 
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
module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    output walk_left,
    output walk_right); //  

reg state;

always@(posedge clk or posedge areset) begin
	 if(areset) begin
	 state=0;
    end
	 else begin
	 case(state)
	 0:begin
	 if(bump_left) state=1;
	 end
    1:begin
    if(bump_right) state=0;
    end
	 endcase
	 end
end
    assign walk_left=(state==0);
    assign walk_right=(state==1); 
endmodule
