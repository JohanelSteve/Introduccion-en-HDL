module Modulo_01(
  input [13:0] IN_01,
  output reg [15:0] OUT_01
);

  reg [5:0] num1;
  reg [5:0] num2;
  reg [7:0] bcd1;
  reg [7:0] bcd2;

  // Extraer los dos números de 6 bits
  assign num1 = IN_01[5:0];
  assign num2 = IN_01[13:8];

  // Instanciar el módulo bcd para cada número de 6 bits
  bcd bcd_inst1(
    .num(num1),
    .bcd(bcd1)
  );

  bcd bcd_inst2(
    .num(num2),
    .bcd(bcd2)
  );

  // Concatenar los dos valores BCD de 2 dígitos cada uno
  reg [15:0] bcd_concat;
  assign bcd_concat = {bcd2, bcd1};

endmodule