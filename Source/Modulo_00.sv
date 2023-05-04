
module Modulo_00(
    input [13:0] IN_00,     // entrada_bin
    output reg [3:0] unidades,  //registros de bits de pesos (unid, dec, cent, millar)
    output reg [3:0] decenas,
    output reg [3:0] centenas,
    output reg [3:0] millares,
    output reg [3:0] salida_hex,
    output reg [15:0] OUT_00
    );
    
    assign OUT_00 = {millares, centenas, decenas, unidades};
    reg [9:0] num_dec;
    reg [3:0] num_hex;
    
    function [3:0] conv_bin_a_hex(input [3:0] num_dec); //convierte la entrada binaria a un numero hexadecimal
        case(num_dec) //todos los posibles casos desde el 0 al 15 en base hexadecimal
            4'h0: conv_bin_a_hex = 4'h0;
            4'h1: conv_bin_a_hex = 4'h1;
            4'h2: conv_bin_a_hex = 4'h2;
            4'h3: conv_bin_a_hex = 4'h3;
            4'h4: conv_bin_a_hex = 4'h4;
            4'h5: conv_bin_a_hex = 4'h5;
            4'h6: conv_bin_a_hex = 4'h6;
            4'h7: conv_bin_a_hex = 4'h7;
            4'h8: conv_bin_a_hex = 4'h8;
            4'h9: conv_bin_a_hex = 4'h9;
            4'ha: conv_bin_a_hex = 4'hA;
            4'hb: conv_bin_a_hex = 4'hB;
            4'hc: conv_bin_a_hex = 4'hC;
            4'hd: conv_bin_a_hex = 4'hD;
            4'he: conv_bin_a_hex = 4'hE;
            4'hf: conv_bin_a_hex = 4'hF;
            default: conv_bin_a_hex = 4'h0;
        endcase
    endfunction

    always @* begin
        num_dec = IN_00[12:0]; // Descarta el bit mas signifativo

        unidades = num_dec % 10;
        decenas = (num_dec / 10) % 10;
        centenas = (num_dec / 100) % 10;
        millares = (num_dec / 1000) % 10;

        num_hex = conv_bin_a_hex(IN_00[11:8]);  //
        salida_hex = {conv_bin_a_hex(IN_00[7:4]), num_hex}; // me convierte la salida a un numero hexadeciaml
    end
endmodule
