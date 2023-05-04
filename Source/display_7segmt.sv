`timescale 1ns / 1ps



module display_7segmt(
input [3:0] hex_bits, //4 bits de entradas 
output reg [6:0] hex_reg //salida de 7 leds del display en registro (hex_reg)

    );
    
    always @*  //todos los valores posibles 
    begin
         case(hex_bits)  //todos los posibles valores (mapas karnaugh) que toman los leds para dibujar el segmento 
            4'h0: hex_reg[6:0] = 7'b1000000; 
            4'h1: hex_reg[6:0] = 7'b1111001; 
            4'h2: hex_reg[6:0] = 7'b0100100;
            4'h3: hex_reg[6:0] = 7'b0110000; 
            4'h4: hex_reg[6:0] = 7'b0011001; 
            4'h5: hex_reg[6:0] = 7'b0010010; 
            4'h6: hex_reg[6:0] = 7'b0000010; 
            4'h7: hex_reg[6:0] = 7'b1111000; 
            4'h8: hex_reg[6:0] = 7'b0000000; 
            4'h9: hex_reg[6:0] = 7'b0010000; 
            4'ha: hex_reg[6:0] = 7'b0001000; 
            4'hb: hex_reg[6:0] = 7'b0000011; 
            4'hc: hex_reg[6:0] = 7'b1000110; 
            4'hd: hex_reg[6:0] = 7'b0100001; 
            4'he: hex_reg[6:0] = 7'b1000110; 
            default: hex_reg[6:0] = 7'b0001110;    //valor predeterminado 
         endcase
     end   
endmodule
