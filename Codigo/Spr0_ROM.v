`timescale 1ns / 1ps

module ROM
(
	input  wire[7:0] iAddress,
	output reg  	 oMask
);	
always @ ( iAddress )
begin
	case (iAddress)

        // Fila 0x0
		0x00: oMask = 1'b1;
		0x01: oMask = 1'b1; 
		0x02: oMask = 1'b1; 
		0x03: oMask = 1'b0; 
		0x04: oMask = 1'b0; 
		0x05: oMask = 1'b0; 
		0x06: oMask = 1'b0; 
		0x07: oMask = 1'b0; 
		0x08: oMask = 1'b0; 
		0x09: oMask = 1'b0; 
        0x0a: oMask = 1'b0;
        0x0b: oMask = 1'b0;
        0x0c: oMask = 1'b0;
        0x0d: oMask = 1'b1;
        0x0e: oMask = 1'b1;
        0x0f: oMask = 1'b1;
        
        // Fila 0x1
		0x10: oMask = 1'b1;
		0x11: oMask = 1'b1; 
		0x12: oMask = 1'b1; 
		0x13: oMask = 1'b0; 
		0x14: oMask = 1'b0; 
		0x15: oMask = 1'b0; 
		0x16: oMask = 1'b0; 
		0x17: oMask = 1'b0; 
		0x18: oMask = 1'b0; 
		0x19: oMask = 1'b0; 
        0x1a: oMask = 1'b0;
        0x1b: oMask = 1'b0;
        0x1c: oMask = 1'b0;
        0x1d: oMask = 1'b1;
        0x1e: oMask = 1'b1;
        0x1f: oMask = 1'b1;

        // Fila 0x2
		0x20: oMask = 1'b1;
		0x21: oMask = 1'b1; 
		0x22: oMask = 1'b1; 
		0x23: oMask = 1'b0; 
		0x24: oMask = 1'b0; 
		0x25: oMask = 1'b0; 
		0x26: oMask = 1'b0; 
		0x27: oMask = 1'b0; 
		0x28: oMask = 1'b0; 
		0x29: oMask = 1'b0; 
        0x2a: oMask = 1'b0;
        0x2b: oMask = 1'b0;
        0x2c: oMask = 1'b0;
        0x2d: oMask = 1'b1;
        0x2e: oMask = 1'b1;
        0x2f: oMask = 1'b1;

        // Fila 0x3
		0x30: oMask = 1'b0;
		0x31: oMask = 1'b0; 
		0x32: oMask = 1'b0; 
		0x33: oMask = 1'b0; 
		0x34: oMask = 1'b0; 
		0x35: oMask = 1'b0; 
		0x36: oMask = 1'b0; 
		0x37: oMask = 1'b0; 
		0x38: oMask = 1'b0; 
		0x39: oMask = 1'b0; 
        0x3a: oMask = 1'b0;
        0x3b: oMask = 1'b0;
        0x3c: oMask = 1'b0;
        0x3d: oMask = 1'b0;
        0x3e: oMask = 1'b0;
        0x3f: oMask = 1'b0;

        // Fila 0x4
		0x40: oMask = 1'b0;
		0x41: oMask = 1'b0; 
		0x42: oMask = 1'b0; 
		0x43: oMask = 1'b0; 
		0x44: oMask = 1'b0; 
		0x45: oMask = 1'b0; 
		0x46: oMask = 1'b0; 
		0x47: oMask = 1'b0; 
		0x48: oMask = 1'b0; 
		0x49: oMask = 1'b0; 
        0x4a: oMask = 1'b0;
        0x4b: oMask = 1'b0;
        0x4c: oMask = 1'b0;
        0x4d: oMask = 1'b0;
        0x4e: oMask = 1'b0;
        0x4f: oMask = 1'b0;

        // Fila 0x5
		0x50: oMask = 1'b0;
		0x51: oMask = 1'b0; 
		0x52: oMask = 1'b0; 
		0x53: oMask = 1'b0; 
		0x54: oMask = 1'b0; 
		0x55: oMask = 1'b0; 
		0x56: oMask = 1'b0; 
		0x57: oMask = 1'b0; 
		0x58: oMask = 1'b0; 
		0x59: oMask = 1'b0; 
        0x5a: oMask = 1'b0;
        0x5b: oMask = 1'b0;
        0x5c: oMask = 1'b0;
        0x5d: oMask = 1'b0;
        0x5e: oMask = 1'b0;
        0x5f: oMask = 1'b0;

        // Fila 0x6
		0x60: oMask = 1'b0;
		0x61: oMask = 1'b0; 
		0x62: oMask = 1'b0; 
		0x63: oMask = 1'b0; 
		0x64: oMask = 1'b0; 
		0x65: oMask = 1'b0; 
		0x66: oMask = 1'b0; 
		0x67: oMask = 1'b0; 
		0x68: oMask = 1'b0; 
		0x69: oMask = 1'b0; 
        0x6a: oMask = 1'b0;
        0x6b: oMask = 1'b0;
        0x6c: oMask = 1'b0;
        0x6d: oMask = 1'b0;
        0x6e: oMask = 1'b0;
        0x6f: oMask = 1'b0;

        // Fila 0x7
		0x70: oMask = 1'b0;
		0x71: oMask = 1'b0; 
		0x72: oMask = 1'b0; 
		0x73: oMask = 1'b0; 
		0x74: oMask = 1'b0; 
		0x75: oMask = 1'b0; 
		0x76: oMask = 1'b0; 
		0x77: oMask = 1'b0; 
		0x78: oMask = 1'b0; 
		0x79: oMask = 1'b0; 
        0x7a: oMask = 1'b0;
        0x7b: oMask = 1'b0;
        0x7c: oMask = 1'b0;
        0x7d: oMask = 1'b0;
        0x7e: oMask = 1'b0;
        0x7f: oMask = 1'b0;

        // Fila 0x8
		0x80: oMask = 1'b0;
		0x81: oMask = 1'b0; 
		0x82: oMask = 1'b0; 
		0x83: oMask = 1'b0; 
		0x84: oMask = 1'b0; 
		0x85: oMask = 1'b0; 
		0x86: oMask = 1'b0; 
		0x87: oMask = 1'b0; 
		0x88: oMask = 1'b0; 
		0x89: oMask = 1'b0; 
        0x8a: oMask = 1'b0;
        0x8b: oMask = 1'b0;
        0x8c: oMask = 1'b0;
        0x8d: oMask = 1'b0;
        0x8e: oMask = 1'b0;
        0x8f: oMask = 1'b0;

        // Fila 0x9
		0x90: oMask = 1'b0;
		0x91: oMask = 1'b0; 
		0x92: oMask = 1'b0; 
		0x93: oMask = 1'b0; 
		0x94: oMask = 1'b0; 
		0x95: oMask = 1'b0; 
		0x96: oMask = 1'b0; 
		0x97: oMask = 1'b0; 
		0x98: oMask = 1'b0; 
		0x99: oMask = 1'b0; 
        0x9a: oMask = 1'b0;
        0x9b: oMask = 1'b0;
        0x9c: oMask = 1'b0;
        0x9d: oMask = 1'b0;
        0x9e: oMask = 1'b0;
        0x9f: oMask = 1'b0;

        // Fila 0xa
		0xa0: oMask = 1'b0;
		0xa1: oMask = 1'b0; 
		0xa2: oMask = 1'b0; 
		0xa3: oMask = 1'b0; 
		0xa4: oMask = 1'b0; 
		0xa5: oMask = 1'b0; 
		0xa6: oMask = 1'b0; 
		0xa7: oMask = 1'b0; 
		0xa8: oMask = 1'b0; 
		0xa9: oMask = 1'b0; 
        0xaa: oMask = 1'b0;
        0xab: oMask = 1'b0;
        0xac: oMask = 1'b0;
        0xad: oMask = 1'b0;
        0xae: oMask = 1'b0;
        0xaf: oMask = 1'b0;

        // Fila 0xb
		0xb0: oMask = 1'b0;
		0xb1: oMask = 1'b0; 
		0xb2: oMask = 1'b0; 
		0xb3: oMask = 1'b0; 
		0xb4: oMask = 1'b0; 
		0xb5: oMask = 1'b0; 
		0xb6: oMask = 1'b0; 
		0xb7: oMask = 1'b0; 
		0xb8: oMask = 1'b0; 
		0xb9: oMask = 1'b0; 
        0xba: oMask = 1'b0;
        0xbb: oMask = 1'b0;
        0xbc: oMask = 1'b0;
        0xbd: oMask = 1'b0;
        0xbe: oMask = 1'b0;
        0xbf: oMask = 1'b0;

        // Fila 0xc
		0xc0: oMask = 1'b0;
		0xc1: oMask = 1'b0; 
		0xc2: oMask = 1'b0; 
		0xc3: oMask = 1'b0; 
		0xc4: oMask = 1'b0; 
		0xc5: oMask = 1'b0; 
		0xc6: oMask = 1'b0; 
		0xc7: oMask = 1'b0; 
		0xc8: oMask = 1'b0; 
		0xc9: oMask = 1'b0; 
        0xca: oMask = 1'b0;
        0xcb: oMask = 1'b0;
        0xcc: oMask = 1'b0;
        0xcd: oMask = 1'b0;
        0xce: oMask = 1'b0;
        0xcf: oMask = 1'b0;

        // Fila 0xd
		0xd0: oMask = 1'b1;
		0xd1: oMask = 1'b1; 
		0xd2: oMask = 1'b1; 
		0xd3: oMask = 1'b0; 
		0xd4: oMask = 1'b0; 
		0xd5: oMask = 1'b0; 
		0xd6: oMask = 1'b0; 
		0xd7: oMask = 1'b0; 
		0xd8: oMask = 1'b0; 
		0xd9: oMask = 1'b0; 
        0xda: oMask = 1'b0;
        0xdb: oMask = 1'b0;
        0xdc: oMask = 1'b0;
        0xdd: oMask = 1'b1;
        0xde: oMask = 1'b1;
        0xdf: oMask = 1'b1;

        // Fila 0xe
		0xe0: oMask = 1'b1;
		0xe1: oMask = 1'b1; 
		0xe2: oMask = 1'b1; 
		0xe3: oMask = 1'b0; 
		0xe4: oMask = 1'b0; 
		0xe5: oMask = 1'b0; 
		0xe6: oMask = 1'b0; 
		0xe7: oMask = 1'b0; 
		0xe8: oMask = 1'b0; 
		0xe9: oMask = 1'b0; 
        0xea: oMask = 1'b0;
        0xeb: oMask = 1'b0;
        0xec: oMask = 1'b0;
        0xed: oMask = 1'b1;
        0xee: oMask = 1'b1;
        0xef: oMask = 1'b1;

        // Fila 0xf
		0xf0: oMask = 1'b1;
		0xf1: oMask = 1'b1; 
		0xf2: oMask = 1'b1; 
		0xf3: oMask = 1'b0; 
		0xf4: oMask = 1'b0; 
		0xf5: oMask = 1'b0; 
		0xf6: oMask = 1'b0; 
		0xf7: oMask = 1'b0; 
		0xf8: oMask = 1'b0; 
		0xf9: oMask = 1'b0; 
        0xfa: oMask = 1'b0;
        0xfb: oMask = 1'b0;
        0xfc: oMask = 1'b0;
        0xfd: oMask = 1'b1;
        0xfe: oMask = 1'b1;
        0xff: oMask = 1'b1;
	
	default:
		oInstruction = { `LED ,  24'b10101010 };		//NOP
	endcase	
end
	
endmodule 
