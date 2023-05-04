`timescale 1ns / 1ps

module Modulo_10 (

  input logic [15:0] IN_10, // entrada de 16 bits
  output logic [15:0] OUT_10 // salida de 16 bits con los d�gitos hexadecimales
);

  // variables internas para almacenar la conversi�n hexadecimal
  logic [3:0] hex_digit_3;
  logic [3:0] hex_digit_2;
  logic [3:0] hex_digit_1;
  logic [3:0] hex_digit_0;

  // convierte el valor de entrada en d�gitos hexadecimales individuales
  assign hex_digit_3 = IN_10[13:12];
  assign hex_digit_2 = IN_10[11:8];
  assign hex_digit_1 = IN_10[7:4];
  assign hex_digit_0 = IN_10[3:0];

  // combina los d�gitos hexadecimales en un solo valor hexadecimal
  assign OUT_10 = {4'h0, hex_digit_3, hex_digit_2, hex_digit_1, hex_digit_0};

  // muestra los d�gitos hexadecimales en la consola
  initial begin
    $display("El valor hexadecimal de %b es %h%h%h%h", IN_10, hex_digit_3, hex_digit_2, hex_digit_1, hex_digit_0);
  end

endmodule