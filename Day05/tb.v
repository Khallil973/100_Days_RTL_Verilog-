module tb();

//we use clk = 0, for always providing the positive edge to our design
    reg clk = 0, rstn;
    wire [7:0]out;

    Day05 dut(
                    .clk(clk),
                    .rstn(rstn),
                    .out(out)
    );


    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0);

    end    


//as mentioned above ,we use ~clk when our clk signal 0 comes to then the value will change and will become 1
    always 
    begin
        clk = ~clk;
        #50;

    end
// we use reset 1 for starting the reset value high and then will provide reset value 0 so that the clock will provide 1 and it will starting the counting
    initial begin
        rstn = 1'b1;
        #100;

        rstn = 1'b0;
        #1000;
        $finish;
    end


endmodule