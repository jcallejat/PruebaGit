`timescale 1ns / 1ps

module Divisor_Frecuencia (clk_interno,clk_deseado);
 input clk_interno;         
 output reg clk_deseado = 0;  
 
 reg[24:0] contador = 25'b0; //Variable Contador equivale a 25 millones de estados. 
 
 always @(posedge clk_interno)
  begin
   contador = (contador + 1); //0.5 segundos LED encendido
   if(contador == 250_000)
    begin
      contador = 0;
      clk_deseado = ~clk_deseado; //0.5 segundos LED apagado
    end
	 else
		contador = contador;
  end
endmodule 