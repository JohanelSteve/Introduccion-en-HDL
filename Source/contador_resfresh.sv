`timescale 1ns / 1ps


module contador_resfresh
   # (N_entrada = 4) //# de entradas recibidas = 4 bits
(
input Reset,                   //entradas Reset de señal y clock (frecuencia)
input Clk_signal,
output upClk,                  //salida clock y salida 4-1 vector 3 bits
output [N_entrada - 1:0] out_1

);

reg [N_entrada - 1:0] contador = 0;

always @ (posedge Clk_signal, posedge Reset) //always se acciona en los flancos postivos de la señal de reloj
    if (Reset)
        contador <=0;                       // condicionales de flancos clk reset = 0 , reg contador incrementa +1, reset = 1 reg contador seteado en 0
    else
        contador <= contador + 1;
    
assign out_1 = contador;

assign upClk = (contador == 2 ** N_entrada - 1)? 1'b1 : 1'b0; //conecta upclk a expresion bool si es = da pulso 


endmodule