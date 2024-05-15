module tb();

    // Testbench signals
    reg clk, rst, data_in;
    wire data_out;

    // Instantiate the shift register
    day06 uut (
        .clk(clk),
        .rst(rst),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Generate clock signal (50 MHz)
    always begin
        #5 clk = ~clk; // Toggle clock every 50 time units
    end

    initial begin
        // Initialize signals
        clk = 1'b0;
        rst = 1'b1;
        data_in = 1'b0;
        #10;

        // Release reset and apply serial input data
        rst = 1'b0;
        #10;

        data_in = 1'b1;
        #10;
        data_in = 1'b0;
        #10;
        data_in = 1'b1;
        #10;
        data_in = 1'b1;
        #10;
        data_in = 1'b0;
        #10;
        data_in = 1'b1;
        #10;
        
        $finish;
    end

    initial begin
        // Dump waveforms to VCD file
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end

endmodule
