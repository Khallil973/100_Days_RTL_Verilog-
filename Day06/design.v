module day06(
    input wire clk,
    input wire rst,
    input wire data_in,
    output wire data_out
);

    // 4-bit register to hold the data
    reg [3:0] temp;

    // Sequential logic to shift data on the clock's rising edge
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Reset the temperory to 0 when reset is high
            temp <= 4'b0000;
        end else begin
            // Shift right and insert the data_in bit at MSB
            temp <= {data_in, temp[3:1]};
        end
    end

    // Assign the least significant bit (LSB) of the register to the Data_out output will become high
    assign data_out = temp[0];

endmodule
