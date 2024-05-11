module Day05(clk,rstn,out);

    input clk,rstn;
    output reg [7:0]out;

//We build up counter 4 bit in which the the number will count and adds value with 1 so its only work on Posedge for addition 
// before implementing the logic we use always block for positive edge in which clk produce positve edge if reset no held

    always @ (posedge clk)
    begin
        if (rstn == 1'b1)
        begin
            out <= 1;
        end    
        else begin
            out <= out + 2;
        end        
    end

endmodule