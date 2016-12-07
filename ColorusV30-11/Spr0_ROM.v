`timescale 1ns / 1ps

module SPRITE_ROM
(
	input  wire[7:0] iAddress,
	output reg  	 oMask
);	
always @ ( iAddress )
begin
	case (iAddress)

		// Fila 0x0
		8'h00: oMask = 1'b1;
		8'h01: oMask = 1'b1; 
		8'h02: oMask = 1'b1; 
		8'h03: oMask = 1'b1; 
		8'h04: oMask = 1'b1; 
		8'h05: oMask = 1'b1; 
		8'h06: oMask = 1'b1; 
		8'h07: oMask = 1'b1; 
		8'h08: oMask = 1'b1; 
		8'h09: oMask = 1'b1; 
		8'h0a: oMask = 1'b1;
		8'h0b: oMask = 1'b1;
		8'h0c: oMask = 1'b1;
		8'h0d: oMask = 1'b1;
		8'h0e: oMask = 1'b1;
		8'h0f: oMask = 1'b1;
		
		// Fila 8'h1
		8'h10: oMask = 1'b1;
		8'h11: oMask = 1'b1; 
		8'h12: oMask = 1'b1; 
		8'h13: oMask = 1'b1; 
		8'h14: oMask = 1'b1; 
		8'h15: oMask = 1'b1; 
		8'h16: oMask = 1'b1; 
		8'h17: oMask = 1'b1; 
		8'h18: oMask = 1'b1; 
		8'h19: oMask = 1'b1; 
		8'h1a: oMask = 1'b1;
		8'h1b: oMask = 1'b1;
		8'h1c: oMask = 1'b1;
		8'h1d: oMask = 1'b1;
		8'h1e: oMask = 1'b1;
		8'h1f: oMask = 1'b1;

		// Fila 8'h2
		8'h20: oMask = 1'b1;
		8'h21: oMask = 1'b1; 
		8'h22: oMask = 1'b1; 
		8'h23: oMask = 1'b1; 
		8'h24: oMask = 1'b1; 
		8'h25: oMask = 1'b1; 
		8'h26: oMask = 1'b1; 
		8'h27: oMask = 1'b1; 
		8'h28: oMask = 1'b1; 
		8'h29: oMask = 1'b1; 
		8'h2a: oMask = 1'b1;
		8'h2b: oMask = 1'b1;
		8'h2c: oMask = 1'b1;
		8'h2d: oMask = 1'b1;
		8'h2e: oMask = 1'b1;
		8'h2f: oMask = 1'b1;

		// Fila 8'h3
		8'h30: oMask = 1'b1;
		8'h31: oMask = 1'b1; 
		8'h32: oMask = 1'b1; 
		8'h33: oMask = 1'b1; 
		8'h34: oMask = 1'b1; 
		8'h35: oMask = 1'b1; 
		8'h36: oMask = 1'b1; 
		8'h37: oMask = 1'b1; 
		8'h38: oMask = 1'b1; 
		8'h39: oMask = 1'b1; 
		8'h3a: oMask = 1'b1;
		8'h3b: oMask = 1'b1;
		8'h3c: oMask = 1'b1;
		8'h3d: oMask = 1'b1;
		8'h3e: oMask = 1'b1;
		8'h3f: oMask = 1'b1;

		// Fila 8'h4
		8'h40: oMask = 1'b1;
		8'h41: oMask = 1'b1; 
		8'h42: oMask = 1'b1; 
		8'h43: oMask = 1'b1; 
		8'h44: oMask = 1'b1; 
		8'h45: oMask = 1'b1; 
		8'h46: oMask = 1'b1; 
		8'h47: oMask = 1'b1; 
		8'h48: oMask = 1'b1; 
		8'h49: oMask = 1'b1; 
		8'h4a: oMask = 1'b1;
		8'h4b: oMask = 1'b1;
		8'h4c: oMask = 1'b1;
		8'h4d: oMask = 1'b1;
		8'h4e: oMask = 1'b1;
		8'h4f: oMask = 1'b1;

		// Fila 8'h5
		8'h50: oMask = 1'b1;
		8'h51: oMask = 1'b1; 
		8'h52: oMask = 1'b1; 
		8'h53: oMask = 1'b1; 
		8'h54: oMask = 1'b1; 
		8'h55: oMask = 1'b1; 
		8'h56: oMask = 1'b1; 
		8'h57: oMask = 1'b1; 
		8'h58: oMask = 1'b1; 
		8'h59: oMask = 1'b1; 
		8'h5a: oMask = 1'b1;
		8'h5b: oMask = 1'b1;
		8'h5c: oMask = 1'b1;
		8'h5d: oMask = 1'b1;
		8'h5e: oMask = 1'b1;
		8'h5f: oMask = 1'b1;

		// Fila 8'h6
		8'h60: oMask = 1'b1;
		8'h61: oMask = 1'b1; 
		8'h62: oMask = 1'b1; 
		8'h63: oMask = 1'b1; 
		8'h64: oMask = 1'b1; 
		8'h65: oMask = 1'b1; 
		8'h66: oMask = 1'b1; 
		8'h67: oMask = 1'b1; 
		8'h68: oMask = 1'b1; 
		8'h69: oMask = 1'b1; 
		8'h6a: oMask = 1'b1;
		8'h6b: oMask = 1'b1;
		8'h6c: oMask = 1'b1;
		8'h6d: oMask = 1'b1;
		8'h6e: oMask = 1'b1;
		8'h6f: oMask = 1'b1;

		// Fila 8'h7
		8'h70: oMask = 1'b1;
		8'h71: oMask = 1'b1; 
		8'h72: oMask = 1'b1; 
		8'h73: oMask = 1'b1; 
		8'h74: oMask = 1'b1; 
		8'h75: oMask = 1'b1; 
		8'h76: oMask = 1'b1; 
		8'h77: oMask = 1'b1; 
		8'h78: oMask = 1'b1; 
		8'h79: oMask = 1'b1; 
		8'h7a: oMask = 1'b1;
		8'h7b: oMask = 1'b1;
		8'h7c: oMask = 1'b1;
		8'h7d: oMask = 1'b1;
		8'h7e: oMask = 1'b1;
		8'h7f: oMask = 1'b1;

		// Fila 8'h8
		8'h80: oMask = 1'b1;
		8'h81: oMask = 1'b1; 
		8'h82: oMask = 1'b1; 
		8'h83: oMask = 1'b1; 
		8'h84: oMask = 1'b1; 
		8'h85: oMask = 1'b1; 
		8'h86: oMask = 1'b1; 
		8'h87: oMask = 1'b1; 
		8'h88: oMask = 1'b1; 
		8'h89: oMask = 1'b1; 
		8'h8a: oMask = 1'b1;
		8'h8b: oMask = 1'b1;
		8'h8c: oMask = 1'b1;
		8'h8d: oMask = 1'b1;
		8'h8e: oMask = 1'b1;
		8'h8f: oMask = 1'b1;

		// Fila 8'h9
		8'h90: oMask = 1'b1;
		8'h91: oMask = 1'b1; 
		8'h92: oMask = 1'b1; 
		8'h93: oMask = 1'b1; 
		8'h94: oMask = 1'b1; 
		8'h95: oMask = 1'b1; 
		8'h96: oMask = 1'b1; 
		8'h97: oMask = 1'b1; 
		8'h98: oMask = 1'b1; 
		8'h99: oMask = 1'b1; 
		8'h9a: oMask = 1'b1;
		8'h9b: oMask = 1'b1;
		8'h9c: oMask = 1'b1;
		8'h9d: oMask = 1'b1;
		8'h9e: oMask = 1'b1;
		8'h9f: oMask = 1'b1;

		// Fila 8'ha
		8'ha0: oMask = 1'b1;
		8'ha1: oMask = 1'b1; 
		8'ha2: oMask = 1'b1; 
		8'ha3: oMask = 1'b1; 
		8'ha4: oMask = 1'b1; 
		8'ha5: oMask = 1'b1; 
		8'ha6: oMask = 1'b1; 
		8'ha7: oMask = 1'b1; 
		8'ha8: oMask = 1'b1; 
		8'ha9: oMask = 1'b1; 
		8'haa: oMask = 1'b1;
		8'hab: oMask = 1'b1;
		8'hac: oMask = 1'b1;
		8'had: oMask = 1'b1;
		8'hae: oMask = 1'b1;
		8'haf: oMask = 1'b1;

		// Fila 8'hb
		8'hb0: oMask = 1'b1;
		8'hb1: oMask = 1'b1; 
		8'hb2: oMask = 1'b1; 
		8'hb3: oMask = 1'b1; 
		8'hb4: oMask = 1'b1; 
		8'hb5: oMask = 1'b1; 
		8'hb6: oMask = 1'b1; 
		8'hb7: oMask = 1'b1; 
		8'hb8: oMask = 1'b1; 
		8'hb9: oMask = 1'b1; 
		8'hba: oMask = 1'b1;
		8'hbb: oMask = 1'b1;
		8'hbc: oMask = 1'b1;
		8'hbd: oMask = 1'b1;
		8'hbe: oMask = 1'b1;
		8'hbf: oMask = 1'b1;

		// Fila 8'hc
		8'hc0: oMask = 1'b1;
		8'hc1: oMask = 1'b1; 
		8'hc2: oMask = 1'b1; 
		8'hc3: oMask = 1'b1; 
		8'hc4: oMask = 1'b1; 
		8'hc5: oMask = 1'b1; 
		8'hc6: oMask = 1'b1; 
		8'hc7: oMask = 1'b1; 
		8'hc8: oMask = 1'b1; 
		8'hc9: oMask = 1'b1; 
		8'hca: oMask = 1'b1;
		8'hcb: oMask = 1'b1;
		8'hcc: oMask = 1'b1;
		8'hcd: oMask = 1'b1;
		8'hce: oMask = 1'b1;
		8'hcf: oMask = 1'b1;

		// Fila 8'hd
		8'hd0: oMask = 1'b1;
		8'hd1: oMask = 1'b1; 
		8'hd2: oMask = 1'b1; 
		8'hd3: oMask = 1'b1; 
		8'hd4: oMask = 1'b1; 
		8'hd5: oMask = 1'b1; 
		8'hd6: oMask = 1'b1; 
		8'hd7: oMask = 1'b1; 
		8'hd8: oMask = 1'b1; 
		8'hd9: oMask = 1'b1; 
		8'hda: oMask = 1'b1;
		8'hdb: oMask = 1'b1;
		8'hdc: oMask = 1'b1;
		8'hdd: oMask = 1'b1;
		8'hde: oMask = 1'b1;
		8'hdf: oMask = 1'b1;

		// Fila 8'he
		8'he0: oMask = 1'b1;
		8'he1: oMask = 1'b1; 
		8'he2: oMask = 1'b1; 
		8'he3: oMask = 1'b1; 
		8'he4: oMask = 1'b1; 
		8'he5: oMask = 1'b1; 
		8'he6: oMask = 1'b1; 
		8'he7: oMask = 1'b1; 
		8'he8: oMask = 1'b1; 
		8'he9: oMask = 1'b1; 
		8'hea: oMask = 1'b1;
		8'heb: oMask = 1'b1;
		8'hec: oMask = 1'b1;
		8'hed: oMask = 1'b1;
		8'hee: oMask = 1'b1;
		8'hef: oMask = 1'b1;

		// Fila 8'hf
		8'hf0: oMask = 1'b1;
		8'hf1: oMask = 1'b1; 
		8'hf2: oMask = 1'b1; 
		8'hf3: oMask = 1'b1; 
		8'hf4: oMask = 1'b1; 
		8'hf5: oMask = 1'b1; 
		8'hf6: oMask = 1'b1; 
		8'hf7: oMask = 1'b1; 
		8'hf8: oMask = 1'b1; 
		8'hf9: oMask = 1'b1; 
		8'hfa: oMask = 1'b1;
		8'hfb: oMask = 1'b1;
		8'hfc: oMask = 1'b1;
		8'hfd: oMask = 1'b1;
		8'hfe: oMask = 1'b1;
		8'hff: oMask = 1'b1;
	
	default:
		oMask = 1'b1;
	endcase	
end
	
endmodule 
