`timescale 1ns / 1ps

module bcd(
 input [5:0] num,
 output reg [7:0] bcd

    );
    
     reg [3:0] divisor;
  reg [3:0] resto;
  reg [7:0] temp;

  always @(*) begin
    // Inicializar divisor, resto y temp
    divisor = 100;
    resto = num;
    temp = 0;

    // Realizar división y conversión a BCD
    for (int i = 0; i < 6; i = i + 1) begin
      if (resto >= divisor) begin
        temp = temp + (divisor << (i*4));
        resto = resto - divisor;
      end
      divisor = divisor / 10;
    end

    // Agregar un dígito cero a la izquierda si es necesario
    if (temp < 100) begin
      bcd = {1'b0, temp};
    end else begin
      bcd = temp;
    end
  end
endmodule