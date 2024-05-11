module alu( A,B,ALU_Control,Result);

input[7:0] A,B;
input [3:0] ALU_Control;
output reg [7:0] Result;

always @* begin
  case(ALU_Control)
        4'b0000 : Result = A+B;
        4'b0001 : Result = A-B;
        4'b0010 : Result = A*B;
        4'b0011 : Result = A/B;
        4'b0100 : Result = A<<1;
        4'b0101 : Result = A>>1;
        4'b0110 : Result = {A[6:0],A[7]};
        4'b0111 : Result = {A[0],A[7:1]};
        4'b1000 : Result = A&B;
        4'b1001 : Result = A|B;
        4'b1010 : Result = A^B;
        4'b1011 : Result = ~(A|B);
        4'b1100 : Result = ~(A&B);
        4'b1101 : Result = ~(A^B);
        4'b1110 : Result = (A>B) ? 8'd1 : 8'd0;
        4'b1111 : Result = (A==B) ? 8'd1: 8'd0;
        default: Result = 8'bX;

  endcase 
                 
end

endmodule

