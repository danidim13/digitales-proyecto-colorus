`timescale 1ns / 1ps
`include "Sprite_Controller.v"
`include "Collaterals.v"
`include "Spr0_ROM.v"

module Sprite16x16
(
	input wire Clock,
	input wire Reset,
	input wire [9:0] iColumnCount,
	input wire [9:0] iRowCount,
	input wire iEnable,
	input wire [2:0] iColorBack,
	input wire iChangePos,
	input wire iAbsolute,
	input wire [4:0] iSetX,
	input wire [4:0] iSetY,
	input wire [2:0] iNewColor,
	input wire iSetColor,
	output wire [2:0] oRGB
);

wire [9:0] wPosX, wPosY, wNextPosX, wNextPosY;
wire [2:0] wColor;
wire [9:0] wMaskX, wMaskY;
wire [7:0] wMaskAddress;
wire wMask;

assign wNextPosX = iAbsolute ? {iSetX,5'b0} : (wPosX + {{ 5{iSetX[4]}}, iSetX}); 
assign wNextPosY = iAbsolute ? {iSetY,5'b0} : (wPosY + {{ 5{iSetY[4]}}, iSetY}); 


FFD_POSEDGE_SYNCRONOUS_RESET # (10) POSX_FF
(
	.Clock(Clock), 
	.Reset(Reset), 
	.Enable(iChangePos), 
	.D( wNextPosX), 
	.Q( wPosX ) 
);

FFD_POSEDGE_SYNCRONOUS_RESET # (10) POSY_FF
(
	.Clock(Clock), 
	.Reset(Reset), 
	.Enable(iChangePos), 
	.D( wNextPosY), 
	.Q( wPosY ) 
);

FFD_POSEDGE_SYNCRONOUS_RESET # (3) COLOR_FF
(
	.Clock(Clock), 
	.Reset(Reset), 
	.Enable(iSetColor), 
	.D( iNewColor), 
	.Q( wColor ) 
);

assign wMaskX = iColumnCount - wPosX;
assign wMaskY = iRowCount - wPosY;
assign wMaskAddress = {wMaskY[3:0], wMaskX[3:0]};

SPRITE_ROM SpriteRom  
( 
	.iAddress(wMaskAddress), 
	.oMask( wMask ) 
); 

Sprite_Controller # (16, 16) Controlador
(
	.iColumnCount(iColumnCount),
	.iRowCount(iRowCount),
	.imask(wMask),
	.iEnable(iEnable),
	.iPosX(wPosX),
	.iPosY(wPosY),
	.iColorSprite(wColor),
	.iColorBack(iColorBack),
	.oRGB(oRGB)
);

endmodule
