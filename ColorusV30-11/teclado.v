`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:08:04 12/07/2016 
// Design Name: 
// Module Name:    teclado 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PS2Controller(
	input wire PS2C,  
    input wire PS2D,
    output reg [7:0] rCode
);

reg [10:0] r1; // Registro temporal 1
reg [10:0] r2; // Registro temporal 2
reg rStarted; 
//rStarted: lleva cuenta si la secuencia de 11 bits ya empezo (1) o no (0)
reg [3:0] rCounter;
//rCounter: cuenta ciclos de reloj desde que empieza la secuencia

always @(negedge PS2C) //Cada flanco negativo
begin
  if (rStarted==0) begin //Si no ha empezado la secuencia
    if (PS2D==0) begin // y si la linea de datos esta en bajo
      rStarted <= 1'b1; // empieza la secuencia
      r1[10] <= PS2D;  // guarda el primer bit de la secuencia en el MSB de r1
    end
    else begin   //Si no ha empezado pero datos esta en alto
      rStarted <= 1'b0;  // aun no empieza la secuencia.
    end
  end
  else if (rStarted==1) begin  //Si la secuencia ya empezo
    //shift el registro a la derecha y guarda el bit de dato en el MSB
    rDataReg <= {PS2D,r1[10:1]};
    rCounter <= rCounter + 1'b1; // Aumenta el contador en uno
  end
end

always @(rCounter) //Siempre que cambie el contador
begin //Si contador = 10 y el ultimo bit guardado en el registro es 1
  if (rCounter==4'd10 and r1[10]==1) begin
    rStarted <= 1'b0; // Termina la secuencia
    rCounter <= 1'b0; // Resetea el contador
  end
  else begin
    rStarted <= 1'b1; //Si no, la secuencia no ha terminado.
  end
end

always @(negedge rStarted) // Siempre que rStarted cambie de 1 a 0
begin
  if (r1[8:1]==8'hF0) begin // Si el ultimo codigo recibido fue F0
    rCode <= r2[8:1]; // El output sera el penultimo codigo recibido
    r2 <= 11'b0; // Reinicia los registros
    r1 <= 11'b0;
  end
  else begin
    r2 <= r1; // Si no se ha terminado la transmision
    // Pasa la secuencia de registro
  end
end
  
endmodule