`timescale 1ns / 1ps


module top_module(SW,RST,CLK, OUT_Final,AN);
input logic [15:0] SW;
input logic CLK, RST;
logic [15:0] OUT_SYNC_top;

logic [15:0] OUT_00_top;
logic [15:0] OUT_01_top;
logic [15:0] OUT_10_top;
logic [15:0] OUT_11_top;
logic [15:0] OUT_Mux_top;

output logic [6:0] OUT_Final;
output logic [3:0] AN;

    Sync Sync_top(.SW(SW),.RST(RST), .CLK(CLK), .OUT_SYNC(OUT_SYNC_top));
    Modulo_00 Modulo_00_top(.IN_00(OUT_SYNC_top) , .OUT_00(OUT_00_top));
    
    Modulo_01 Modulo_01_top(.IN_01(OUT_SYNC_top) , .OUT_01(OUT_01_top ));
    Modulo_10 Modulo_10_top(.IN_10(OUT_SYNC_top) , .OUT_10(OUT_10_top));
    Modulo_11 Modulo_11_top(.IN_11(OUT_SYNC_top) , .OUT_11(OUT_11_top ));
    

    Mux Mux_top (.IN_00(OUT_00_top), .IN_01(OUT_01_top), .IN_10(OUT_10_top), .IN_11(OUT_11_top), .OUT_Mux(OUT_Mux_top));

    top_7segmt top_7segmt_top( .Clk_signal(CLK) , .bits_on(OUT_Mux_top) , .hex_reg(OUT_Final) , .anodes(AN) );


endmodule
