`timescale 1ns / 1ps

module mux_7segmt(
input [6:0] disp_0, 
disp_1, disp_2, disp_3,  // variables disp_ corresponden a cada uno de los displays
input Reset, Clk_signal,
output reg [3:0] anodes,   //registro anodos y segmentos del display 
output reg [6:0] segments
);
 
localparam N_entrada = 18;  // frecuencia de trabajo = 100MHz

contador_resfresh #(.N_entrada(N_entrada)) contador_resfresh2(.Clk_signal(Clk_signal), .Reset(Reset), .out_1(out_1));
// contador para actualizar la señal con base al clk y al reset
wire [N_entrada - 1 :0] out_1;

always @*
    case (out_1[N_entrada - 1: N_entrada - 2])
        2'b00:  // codigos binarios de cada uno de los display para ser activados 
        begin
        anodes = 4'b1110;
        segments = disp_0;
        end
       2'b01:
        begin
        anodes = 4'b1110;
        segments = disp_1;
        end
       2'b10:
        begin
        anodes = 4'b1101;
        segments = disp_2;
        end
       default:
        begin
        anodes = 4'b0111;
        segments = disp_3;
        end
    endcase    
         

endmodule
