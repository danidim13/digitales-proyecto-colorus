`timescale 1ns / 1ps
`include "Defintions.v"

`define LOOP1 8'd8
`define LOOP2 8'd5
`define SUB_VGA 8'd32
`define SUB_PALITO 8'd39
`define SUB_JUEGO 8'd56
module ROM
(
	input  wire[15:0]  		iAddress,
	output reg [27:0] 		oInstruction
);	
always @ ( iAddress )
begin
	case (iAddress)
		0: oInstruction = { `NOP ,24'd4000 };
		
		1: oInstruction = { `STO ,`R2, 16'h0001};
		2: oInstruction = { `STO ,`R1, 16'h0000};

// Pintar Pantalla de verde
		3: oInstruction = { `STO ,`R3, 16'h03ff };
		4: oInstruction = { `STO ,`R4, 13'b0,`GREEN};
		5: oInstruction = { `CALL ,`SUB_VGA, 16'h0000 };
/*/ Loop red		
		6: oInstruction = { `STO ,`R3, 16'h01ff };
		7: oInstruction = { `STO ,`R4, 13'b0,`RED};
		8: oInstruction = { `CALL ,`SUB_VGA, 16'h0000 };
// Loop magenta	
		9: oInstruction = { `STO ,`R3, 16'h02ff };
		10: oInstruction = { `STO ,`R4, 13'b0,`MAGENTA};
		11: oInstruction = { `CALL ,`SUB_VGA, 16'h0000 };
		
// Loop blue		
		12: oInstruction = { `STO ,`R3, 16'h03ff };
		13: oInstruction = { `STO ,`R4, 13'b0,`BLUE};
		14: oInstruction = { `CALL ,`SUB_VGA, 16'h0000 };*/

	   //Poner posicion inicial del sprite
		6: oInstruction = { `STO , `R6, 6'd0, 5'd3, 5'd0}; // y=3*32 =96, x=0*32 
		7: oInstruction = { `MOVSP , 8'd0, `R6, 8'd0};


// Poner color al sprite
		8: oInstruction = { `STO , `R5, 13'd0, `RED};
		9: oInstruction = { `CHCOLOR , 8'd0,`R5, 8'd0};

		// Pintar palito
		10: oInstruction = { `CALL ,`SUB_PALITO, 16'b0   };
		11: oInstruction = { `STO , `R10 , 16'd0      };	// R10 = 0,  R10 = gameover = false;

		// Esperar cierto tiempo para que el juego no vaya muy rapido
		12: oInstruction = { `STO, `R2, 16'd60000};		// carga 60 000 en R2
		13: oInstruction = { `STO, `R3, 16'd0  };		// Carga 0 en R3
		14: oInstruction = { `STO, `R4, 16'd1  };		// Carga 1 en R4
		15: oInstruction = { `ADD , `R3, `R3, `R4 };	// R3 = R3 + 1  (R4)
		16: oInstruction = { `BLE , 8'd15,`R3, `R2 };	// Branch if R3 <= 1000 (R2)

		17: oInstruction = { `CALL , `SUB_JUEGO, 16'b0};	// Lamar a la subrutina que actualiza el juego
		18: oInstruction = { `BLE , 8'd12,`R10, `R0 };		// Branch if R10 <= 0 (!gameover)

		// Otras cosas
		19: oInstruction = { `NOP , 24'd4000      };
		20: oInstruction = { `NOP , 24'd4000      };
		21: oInstruction = { `NOP , 24'd4000      };
		22: oInstruction = { `NOP , 24'd4000      };

		// FIN del juego
		23: oInstruction = { `NOP , 24'd4000      };
		24: oInstruction = { `JMP , 8'd23, 16'b0   };

		// Subrutina que escribe el color en R4 a las posiciones de
		// la memoria de video [R1 - R3], R2 debe ser 1
		32: oInstruction = { `WVM , 8'd0,`R4,`R1};
		33: oInstruction = { `ADD ,`R1,`R1,`R2}; 
		34: oInstruction = { `BLE , 8'd32,`R1,`R3  };
		35: oInstruction = { `RET , 24'd0 };
		36: oInstruction = { `NOP , 24'd4000      };
		
		// Subrutina que hace el palito
		// , R2 debe ser 1
		//Y R7 debe ser el valor de una columna 
		39: oInstruction = { `STO ,`R1, 16'h0013 };
		40: oInstruction = { `STO ,`R3, 16'h0013 };
		41: oInstruction = { `STO ,`R4, 13'b0,`CYAN};
		42: oInstruction = { `STO ,`R6, 16'h0020};
		43: oInstruction = { `STO ,`R0, 16'h0000};
		44: oInstruction = { `ADD ,`R7,`R1,`R0}; 
		45: oInstruction = { `STO ,`R5, 16'd1023 };
		
		46: oInstruction = { `WVM , 8'd0,`R4,`R1};
		47: oInstruction = { `ADD ,`R1,`R1,`R2}; 
		48: oInstruction = { `BLE , 8'd46,`R1,`R3};
		49: oInstruction = { `ADD ,`R7,`R7,`R6}; 
		50: oInstruction = { `ADD ,`R3,`R3,`R6}; 
		51: oInstruction = { `ADD ,`R1,`R7,`R0};
		52: oInstruction = { `BLE , 8'd46,`R7,`R5}; 
		53: oInstruction = { `RET , 24'd0 };


		// /////////////////////////////////////
		// Subrutina que actualiza el juego
		56: oInstruction = { `READPOSX , `R8, 16'd0};		// Carga la posicion sprite en R8
		57: oInstruction = { `STO , `R9, 16'd544};			// Carga pos palito en R9 = 544
		58: oInstruction = { `BLE , 8'd60,`R8,`R9}; 		// Si la pos sprite  es menor que la del palito no activa gameover (R10)
		59: oInstruction = { `STO , `R10, 16'd1};			// de lo contrario pone un 1 en R10 (gameover!)

		// Aumenta la posicion
		60: oInstruction = { `STO , `R1, 6'd0, 5'd0,5'd1};	// Carga y=0,x=1 en R1
		61: oInstruction = { `MOVSPR , 8'd0, `R1, 8'd0};	// Posicion sprite += R1
		62: oInstruction = { `NOP ,24'd4000    };

		// Actualiza los colores
		63: oInstruction = { `NOP ,24'd4000    };
		64: oInstruction = { `NOP ,24'd4000    };
		65: oInstruction = { `NOP ,24'd4000    };
		66: oInstruction = { `RET , 24'd0 };		// FIN
		// /////////////////////////////////////
	/*
	0: oInstruction = { `NOP ,24'd4000    };
	1: oInstruction = { `STO , `R7,16'b0001 };
	2: oInstruction = { `STO ,`R3,16'h1     }; 
	3: oInstruction = { `STO, `R4,16'd1000 };
	4: oInstruction = { `STO, `R5,16'd0     };  //j
//LOOP2:
	5: oInstruction = { `LED ,8'b0,`R7,8'b0 };
	6: oInstruction = { `STO ,`R1,16'h0     }; 	
	7: oInstruction = { `STO ,`R2,16'd5000 };
//LOOP1:	
	8: oInstruction = { `ADD ,`R1,`R1,`R3    }; 
	9: oInstruction = { `BLE ,`LOOP1,`R1,`R2 }; 
	
	10: oInstruction = { `ADD ,`R5,`R5,`R3    };
	11: oInstruction = { `BLE ,`LOOP2,`R5,`R4 };	
	12: oInstruction = { `NOP ,24'd4000       }; 
	13: oInstruction = { `SUB ,`R7,`R7,`R3    };
	14: oInstruction = { `JMP ,  8'd2,16'b0   };
	*/
	/*
	0: oInstruction = { `NOP ,24'd4000    };
	1: oInstruction = { `STO ,`R1, 16'h0002};
	2: oInstruction = { `STO ,`R2, 16'h0005};
	3: oInstruction = { `STO ,`R3, 16'h0008};
	4: oInstruction = { `CALL, 8'd14, 16'd0};
	5: oInstruction = { `STO ,`R0, 16'h0000}; 
	6: oInstruction = { `CALL, 8'd9, 16'b0   };
	7: oInstruction = { `NOP , 24'd4000      };
	8: oInstruction = { `JMP , 8'd7, 16'b0   };
//Fun R2++
	9: oInstruction = { `STO ,`R1, 16'h0001};
	10: oInstruction = {`ADD ,`R2, `R2, `R1};
	11: oInstruction = {`NOP ,24'd4000 };
	12: oInstruction = {`RET ,24'd0    };
	13: oInstruction = {`NOP ,24'd4000 };
		
//Fun R1 = R2*R3
	14: oInstruction = {`STO ,`R1, 16'h0000};
	15: oInstruction = {`STO ,`R4, 16'h0001};
	16: oInstruction = {`ADD ,`R1, `R1, `R2};
	17: oInstruction = {`SUB ,`R3, `R3, `R4};
	18: oInstruction = {`BLE ,8'd16, `R4, `R3};
	19: oInstruction = {`RET ,24'd0	};
*/	
	
	default:
		oInstruction = { `LED ,  24'b10101010 };		//NOP
	endcase	
end
	
endmodule 
