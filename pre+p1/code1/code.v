`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:14 09/13/2020 
// Design Name: 
// Module Name:    code 
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
module code(
    input Clk,
	 input Reset,
	 input Slt,
	 input En,
	 output reg [63:0] Output0,
	 output reg [63:0] Output1
    );
integer cnt1 = 0,cnt2 = 0;
initial begin
  Output0=0;
  Output1=0;
 end 
always @(posedge Clk) begin
  if(Reset == 1) begin
  Output0 = 0;
  Output1 = 0;
  cnt1 = 0;
  cnt2 = 0;
  end
  else begin
       if(En == 1) begin
		   if(Slt == 0) cnt1 =  cnt1 + 1;
         else cnt2 = cnt2 + 1;
       end
		 else begin 
		 cnt1 = cnt1;
		 cnt2 = cnt2;
		 end
  end		 
  if(cnt1 == 1) begin 
  Output0 = Output0 + 1;
  cnt1 = 0;
  end
  else Output0 = Output0;
  if(cnt2 == 4) begin 
  Output1 = Output1 + 1;
  cnt2 = 0;
  end
  else Output1 = Output1;
end

endmodule
