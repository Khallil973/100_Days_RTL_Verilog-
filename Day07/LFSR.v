// Design and verify a 4-bit linear feedback shift register where the bit[0] of the register is driven by the XOR of the LFSR register bit[1] and bit[3]
module lfsr(
    input wire clk,
    input wire arst_n,
 //   input wire [3:0]d,
    output reg [3:0] lfsr_out

);

always @(posedge clk or negedge arst_n) begin
    if (!arst_n) begin
            lfsr_out <= 4'b0001;
    end

    else begin
            lfsr_out <= {lfsr_out[2:0],  lfsr_out[3] ^ lfsr_out[1]}; 
    end
end

endmodule


