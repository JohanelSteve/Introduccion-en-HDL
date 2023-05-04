`timescale 1ns / 1ps

// Mux 4:1
//Este modulo recibe las entradas de los modulos 00, 01, 10 , 11 
// Aca vamos a seleccionar que se debe mostarar en la salida 
module Mux (IN_00, IN_01, IN_10, IN_11, OUT_Mux); 


input logic [15:0] IN_00, IN_01, IN_10, IN_11; // nuestras entradas seran las salidas de los modulos correspondientes 
output logic [15:0] OUT_Mux; 

logic [1:0] SEL;
assign SEL = IN_10[15:14];



always @(SEL or IN_00 or IN_01 or IN_10 or IN_11) 
	begin
	case (SEL)
		2'b00 : OUT_Mux=IN_00;
		2'b01 : OUT_Mux=IN_01;
		2'b10 : OUT_Mux=IN_10;
		2'b11 : OUT_Mux=IN_11;
	endcase
	end
endmodule
