`timescale 1ns / 1ps
`ifndef DEFINTIONS_V
`define DEFINTIONS_V
	
// Cualquier operacion que use valores
// inmediatos debe tener los 2 MSB en alto

// Primeros dos bits en alto indican operacion
// con datos inmediatos
`default_nettype none	
`define NOP   4'd0	// 0000
`define LED   4'd2	// 0010
`define BLE   4'd3	// 0011
`define STO   4'd12	// 1100
`define ADD   4'd5	// 0101
`define JMP   4'd6	// 0110
`define SUB   4'd7	// 0111
`define CALL  4'd8	// 1000
`define RET   4'd9	// 1001
`define WVM  4'd10	// 1001
`define CHCOLOR  4'd11	// 1001
`define MOVSP 4'd1
`define MOVSPR 4'd4
`define READPOSX 4'd13

`define W 8'h1D
`define A 8'h1C


`define R0 8'd0
`define R1 8'd1
`define R2 8'd2
`define R3 8'd3
`define R4 8'd4
`define R5 8'd5
`define R6 8'd6
`define R7 8'd7
`define R8 8'd8
`define R9 9'd9
`define R10 10'd10
`define R11 11'd11
`define R12 12'd12
`define R13 13'd13
`define R14 14'd14
`define R15 15'd15

`define BLACK 	3'b000
`define BLUE	3'b001
`define GREEN	3'b010
`define CYAN	3'b011
`define RED	3'b100
`define MAGENTA	3'b101
`define YELLOW	3'b110
`define WHITE 	3'b111

`endif
