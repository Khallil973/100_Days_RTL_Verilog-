module D_fflop(D,clk,rst,Q,Qb);

    input D,clk,rst;
    output reg Q,Qb;

    always @(posedge clk) begin
      
      if (rst == 1'b1) begin
            Q <=1'b0;
      end
      else begin

            Q <= D;
      end  

    end

always @(posedge clk) begin
      
      if (rst == 1'b1) begin
            Qb <=1'b1;
      end
      else begin

            Qb <= Q;
      end

    end    

endmodule