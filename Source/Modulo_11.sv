`timescale 1ns / 1ps


module Modulo_11(
  input [13:0] IN_11,
  output reg [13:0] OUT_11
);

  always_comb begin
    if (IN_11[13] == 1'b1) begin
      OUT_11 = ~IN_11[13:0] + 1'b1;
    end else begin
      OUT_11 = IN_11;
    end
  end
  
endmodule
