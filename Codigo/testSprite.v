`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:35:27 11/16/2016
// Design Name:   Sprite16x16
// Module Name:   C:/Users/yoe/Desktop/Experimento4/Monitor/TestSprote2.v
// Project Name:  Monitor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Sprite16x16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestSprote2;

	// Inputs
	reg Clock;
	reg Reset;
	reg [9:0] iColumnCount;
	reg [9:0] iRowCount;
	reg iEnable;
	reg [2:0] iColorBack;
	reg iChangePos;
	reg iAbsolute;
	reg [4:0] iSetX;
	reg [4:0] iSetY;
	reg [2:0] iNewColor;
	reg iSetColor;

	// Outputs
	wire [2:0] oRGB;

	// Instantiate the Unit Under Test (UUT)
	Sprite16x16 uut (
		.Clock(Clock), 
		.Reset(Reset), 
		.iColumnCount(iColumnCount), 
		.iRowCount(iRowCount), 
		.iEnable(iEnable), 
		.iColorBack(iColorBack), 
		.iChangePos(iChangePos), 
		.iAbsolute(iAbsolute), 
		.iSetX(iSetX), 
		.iSetY(iSetY), 
		.iNewColor(iNewColor), 
		.iSetColor(iSetColor), 
		.oRGB(oRGB)
	);

	initial begin
		// Initialize Inputs
		Clock = 0;
		Reset = 1;
		iColumnCount = 0;
		iRowCount = 0;
		iEnable = 1;
		iColorBack = 3'b111;
		iChangePos = 0;
		iAbsolute = 0;
		iSetX = 0;
		iSetY = 0;
		iNewColor = 0;
		iSetColor = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Reset = 0;
		iColumnCount = 30;
		iRowCount = 30;
		#100;
		
		iSetColor = 1;
		iNewColor = 3'b001;
		#20;
		
		iSetColor = 0;
		iNewColor = 3'b100;
		#20;
		
		iSetX = 5'h2;
		iSetY = 5'h3;
		#20;
		
		iChangePos = 1;
		#80;
		
		iAbsolute = 1;
		#40;
		
		iChangePos = 0;
		iAbsolute = 0;
		iSetX = 5'h0;
		iSetY = 5'h0;
		#40;

		iChangePos = 1;
		iSetX = 5'b11111;
		iSetY = 5'b11110;
		#100;
		
		#40;
		
		#20;
		

	end 
	
	always
	begin
		Clock = ~Clock;
		#10;
	end
      
endmodule


