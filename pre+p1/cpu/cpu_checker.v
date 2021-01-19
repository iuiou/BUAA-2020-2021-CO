`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:19:02 09/18/2020 
// Design Name: 
// Module Name:    cpu_checker 
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
module cpu_checker(
    input clk,
    input reset,
    input [7:0] char,
	 input [15:0] freq,
    output reg [1:0] format_type,
	 output reg [3:0] error_code
    );
reg [3:0] status;
integer cnt,op;
integer t,pc,addr,grf;
initial begin
    status = 0;
    cnt = 0;
    op = 0;
    format_type = 0;
    error_code = 0;
    pc = 0;
    t = 0;
    addr = 0;
    grf = 0;
end

always @(posedge clk) begin
    if(reset) begin
        status = 0;
        cnt = 0; 
        format_type = 0;
        error_code = 0;
        pc = 0;
        t = 0;
        addr =0;
        grf =0;
        op =0;
    end
    else begin
        case(status)
        0 : begin
        if(char == "^") status = 1;
        else status = 0;
    end
        1: begin
        if(char >= "0" && char <= "9") begin 
            status = 2;
            cnt = cnt + 1;
				t = (t << 3) + t + t + char - "0";
				end
        else status = 0;
    end
        2: begin
        if(char >= "0" && char <= "9") begin
            cnt = cnt + 1;
				t = (t << 3) + t + t + char - "0";
            if(cnt <= 4) status = 2;
            else status = 0;
        end
        else if(char == "@") begin
            cnt = 0;
            status = 3;
        end
        else status = 0;
    end
        3: begin
        if((char >= "0"&& char <= "9")||(char >= "a" &&char <= "f")) begin
            cnt = cnt + 1;
				pc = (pc << 4) + (char >= "a"&&char <= "f"? char - "a" + 10: char - "0");
            status = 4;
        end
        else status = 0;
        end
        4: begin
        if((char >= "0"&& char <= "9")||(char >= "a"&&char <= "f")) begin
            cnt = cnt + 1;
				pc = (pc << 4) + (char >= "a"&&char <= "f"? char - "a" + 10: char - "0");
            if(cnt <= 8) status = 4;
            else status = 0; 
        end
        else if(char == ":") begin
        if(cnt == 8) begin
            cnt = 0; 
            status = 5;
        end
        else status = 0;   
        end
        else status = 0;
        end
        5: begin
           if(char == " ") status = 5;
           else if(char == 42) begin
               status = 6;
               op = 0;
               end
           else if(char == "$") begin
               status = 6;
               op = 1;
               end
           else status = 0; 
        end
        6: begin
          if(char >= "0" && char <= "9") begin
            cnt = cnt + 1;
            status = 7;
				if(op == 0)  addr = (addr << 4) + (char - "0"); 
				else grf = (grf << 3) + grf + grf + (char - "0");
          end
          else if(char >= "a" && char <= "f") begin
            if(op == 0) begin
            cnt = cnt + 1;
            status = 7;
				addr = (addr << 4) + (char - "a") + 10; 
            end
            else status = 0;
          end
          else status = 0;  
        end
        7: begin
        if((char >= "0" && char <= "9")||(char >= "a"&&char <= "f")) begin
            cnt = cnt + 1;
            if(!op) begin
              if(cnt <= 8) begin 
				  status = 7;
				  addr = (addr << 4) + (char >= "a"&&char <= "f"? char - "a" + 10: char - "0");
              end
              else status = 0;
              end 
            else begin
              if(char >= "a"&& char <= "f") begin
              status = 0;
              end
              else begin
                if(cnt <= 4) begin
                    status = 7;
                    grf = (grf << 3) + grf + grf + (char - "0");
                end
                else status = 0;
            end
            end
        end
        else if(char == "<") begin
           if(!op) begin
              if(cnt == 8) begin
                cnt = 0; 
                status = 9;
              end
              else status = 0;
           end
           else begin
               cnt = 0;
               status = 9;
           end
        end
        else if(char == " ") begin
            if(!op) begin
              if(cnt == 8) begin
                cnt = 0; 
                status = 8;
              end
              else status = 0;
           end
           else begin
               cnt = 0;
               status = 8;
               end
		   end
           else status = 0;
        end
        8: begin
            if(char == " ") status = 8;
            else if(char == "<") status = 9;
            else status = 0;
        end
        9: begin
            if(char == "=") status = 10;
            else status = 0;
        end
        10: begin
            if(char == " ") status = 10;
            else if((char >= "0" && char <= "9")||(char >= "a"&&char <= "f")) begin
                cnt = cnt + 1;
                status = 11;
            end 
            else status = 0;
        end
        11: begin
            if((char >= "0" && char <= "9")||(char >= "a"&&char <= "f")) begin
            cnt = cnt + 1;
            if(cnt <= 8) status = 11;
            else status = 0; 
           end
            else if(char == "#") begin
            if(cnt == 8) begin
             cnt = 0; 
             status = 12;
            end
            else status = 0;   
            end
        else status = 0;
        end
        endcase
        if(status == 0) begin
		    cnt = 0;
		    op = 0;
          t = 0;
          pc = 0;
          grf = 0;
          addr = 0;
		  end
        if(status == 12) begin
            if(($signed(t) & $signed(-t)) < (freq  >> 1) ) error_code = error_code | (1 << 0);
            if(pc < 12288 || pc > 20479 || ((pc >> 2) << 2) != pc) error_code = error_code | (1 << 1);
            if(op) begin
                if(grf > 31) error_code = error_code | (1 << 3);
            end
            else begin
                error_code = error_code | ((addr >=0 &&(addr <= 12287) && (((addr >> 2) << 2) == addr))? 0 : 4);
            end
            cnt = 0;
            format_type = (op == 0? 2 : 1);
            status = 0;
			   op = 0;
            pc = 0;
            t = 0;
            addr = 0;
            grf = 0;
         end
        else begin
            format_type = 0;
            error_code = 0;
        end
    end
end
endmodule

