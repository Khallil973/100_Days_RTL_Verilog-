module tb();

    reg [7:0] A, B;
    reg [3:0] ALU_Control;
    wire [7:0] Result;

    alu dut (
        .A(A),
        .B(B),
        .ALU_Control(ALU_Control),
        .Result(Result)
    );

    initial begin 
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end

    initial begin
        A = 8'b00000000;  // Set input A
        B = 8'b00000001;  // Set input B

        // Sequentially test all 16 ALU control inputs
        ALU_Control = 4'b0000; #100;
        ALU_Control = 4'b0001; #100;
        ALU_Control = 4'b0010; #100;
        ALU_Control = 4'b0011; #100;
        ALU_Control = 4'b0100; #100;
        ALU_Control = 4'b0101; #100;
        ALU_Control = 4'b0110; #100;
        ALU_Control = 4'b0111; #100;
        ALU_Control = 4'b1000; #100;
        ALU_Control = 4'b1001; #100;
        ALU_Control = 4'b1010; #100;
        ALU_Control = 4'b1011; #100;
        ALU_Control = 4'b1100; #100;
        ALU_Control = 4'b1101; #100;
        ALU_Control = 4'b1110; #100;
        ALU_Control = 4'b1111; #100;

        $finish;        
    end

endmodule
