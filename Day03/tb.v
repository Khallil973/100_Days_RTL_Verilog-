module tb();
    reg sig,clk,rst;
    wire pe;


    posedge_detect dut(
                        .sig(sig),
                        .clk(clk),
                        .rst(rst),
                        .pe(pe),
                        .ne(ne)
    );


    always begin
        clk = ~clk;
        #50;
    end

    initial begin
        rst <= 1'b1;
        clk <= 1'b0;
        sig <= 1'b0;
        #150;
        
        rst <= 1'b0;
        sig <= 1'b1;
        #150;

        sig <= 1'b0;
        #150;

        sig <= 1'b1;
        #150;

        sig <= 1'b0;
        #150;
        $finish;

    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);

    end
endmodule