module tb();

    reg [1:0] A,B;
    reg S;

    wire [1:0] OUT;

    mux dut(    
                .A(A),
                .B(B),
                .S(S),
                .OUT(OUT)
    );

    initial begin

        A <= 2'b11;
        B <= 2'b01;
        S <= 1'b0;
        #100;


        S <= 1'b1;
        #100;

    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);


    end

endmodule