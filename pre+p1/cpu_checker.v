module cpu_checker(
    input clk,
    input reset,
    input [7:0] char,
    output [1:0] format_type
    );
reg [3:0] status;
integer cnt;
inital begin
    status = 0;
    cnt = 0;
end

always @(posedge clk) begin
    if(reset) begin
        status = 0;
        cnt = 0; 
    end
    else begin
        case(status)
        0 : begin
        if(char == 94) status <= 1;
        else status <= 0;
    end
        1: begin
        if(char >= 48 && char <= 57||(char >= 97&&char <= 102)) begin 
            status <= 2;
            cnt = cnt + 1;
        end
        else status <= 0;
    end
        2: begin
        if(char >= 48 && char <= 57||(char >= 97&&char <= 102)) begin
            cnt = cnt + 1;
            if(cnt <= 4) status <= 2;
            else status <= 0;
        end
        else if(char == 64) begin
            cnt = 0;
            status <= 3;
        end
        else status <= 0;
    end
        3: begin
        if(char >= 48 && char <= 57||(char >= 97&&char <= 102)) begin
            cnt = cnt + 1;
            status <= 4;
        end
        else status <= 0;
        end
        4: begin
        if(char >= 48 && char <= 57||(char >= 97&&char <= 102)) begin
            cnt = cnt + 1;
            if(cnt <= 8) status <= 4;
            else status <= 0; 
        end
        else if(char == 58) begin
        if(cnt == 8) begin
            cnt = 0; 
            status <= 5;
        end;
        else status <= 0;   
        end
        else status <= 0;
        end
        5: begin
           if(char == 32) status <= 5;
           else if(char == "*") status <= 6;
           else if(char == "$") status <= 6;
           else status <= 0; 
        end
        6: begin
          if(char >= 48 && char <= 57||(char >= 97&&char <= 102)) begin
            cnt = cnt + 1;
            status <= 7;
          end
          else status <= 0;  
        end
        7: begin
        if(char >= 48 && char <= 57||(char >= 97&&char <= 102)) begin
            cnt = cnt + 1;
            if(cnt <= 8) status <= 7;
            else status <= 0; 
        end
        else if(char == "<") begin
           if(cnt == 8) begin
            cnt = 0; 
            status <= 9;
           end;
           else status <= 0;   
        end
        else if(char == " ") begin
            if(cnt == 8) begin
            cnt = 0; 
            status <= 8;
            end;
            else status <= 0; 
        end
        else status <= 0;
        8: begin
            if(char == " ") status <= 8;
            else if(char == "<") status <= 9;
            else status <= 0;
        end
        9: begin
            if(char == "=") status <= 10;
            else status <= 0;
        end
endmodule
