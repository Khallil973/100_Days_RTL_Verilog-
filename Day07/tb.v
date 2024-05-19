`timescale 1ns/1ps
//`include "lfsr.v"

module tb_lfsr;

    reg clk;
    reg arst_n;
   // reg [3:0] d;
    wire [3:0] lfsr_out;

    lfsr dut (
            .clk(clk),
            .arst_n(arst_n),
      //      .d(d),
            .lfsr_out(lfsr_out)
    );

    initial clk = 0;
    always #10 clk = ~clk;

    initial begin
        // Initialize signals
        arst_n = 0;
        #10;
        arst_n = 1;

        #100; 
        $finish;
    end

    initial begin
        $dumpfile ("dump.vcd");
        $dumpvars(0);

    end 

endmodule