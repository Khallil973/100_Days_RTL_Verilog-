module mux(A,B,S,OUT);

    input [1:0] A,B;
    input S;

    output [1:0] OUT;

    //using ternary operater

    assign OUT = (S == 1'b0) ? A:B;

    

endmodule