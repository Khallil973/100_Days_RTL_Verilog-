module posedge_detect(sig,clk,rst,pe,ne);

    input sig,clk,rst;
    output pe,ne;

    reg sig_dly;   //signal delay basically are D-Flip Flop 

    always @ (posedge clk) begin
        if (rst == 1'b1) begin
            sig_dly <= 1'b0;
        end
        else begin 
            sig_dly <= sig;
        end    
    end
// Combinational logic where sig is AND with delayed, inverted version of sig
    
    //for Positive edge detection
    assign pe = sig & (~sig_dly);
   
    //for negative edge detection
    assign ne = (~sig) & sig_dly;

endmodule