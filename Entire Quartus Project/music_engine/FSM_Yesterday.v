module FSM_Yesterday (clk, out);
	input clk;
	output[4:0] out;

reg[24:0] counter;
reg[24:0] clkDivider = 10000000;

always @(posedge clk)
	if(counter == clkDivider)
		counter <= 1;
	else counter <= counter + 1;

reg[6:0] state;

always @(posedge clk)
	if(counter == 1)
		state <= state + 1;

reg[4:0] out;

always @(state)
	case(state)
		0: out = 7;
		1: out = 7;
		2: out = 5;
		3: out = 25;
		4: out = 5;
		5: out = 5;
		6: out = 5;
		7: out = 5;
		8: out = 25;
		9: out = 25;
		10: out = 25;
		11: out = 25;
		12: out = 25;
		13: out = 25;
		14: out = 25;
		15: out = 25;
		16: out = 25;
		17: out = 25;
		18: out = 25;
		19: out = 25;
		20: out = 9;
		21: out = 9;
		22: out = 11;
		23: out = 11;
		24: out = 13;
		25: out = 13;
		26: out = 14;
		27: out = 14;
		28: out = 16;
		29: out = 16;
		30: out = 17;
		31: out = 17;
		32: out = 16;
		33: out = 16;
		34: out = 16;
		35: out = 16;
		36: out = 14;
		37: out = 25;
		38: out = 14;
		39: out = 14;
		40: out = 14;
		41: out = 14;
		42: out = 14;
		43: out = 14;
		44: out = 14;
		45: out = 14;
		46: out = 14;
		47: out = 14;
		48: out = 25;
		49: out = 25;
		50: out = 25;
		51: out = 25;
		52: out = 14;
		53: out = 25;
		54: out = 14;
		55: out = 14;
		56: out = 12;
		57: out = 12;
		58: out = 10;
		59: out = 10;
		60: out = 9;
		61: out = 9;
		62: out = 7;
		63: out = 7;
		64: out = 10;
		65: out = 10;
		66: out = 10;
		67: out = 10;
		68: out = 9;
		69: out = 25;
		70: out = 9;
		71: out = 9;
		72: out = 9;
		73: out = 9;
		74: out = 9;
		75: out = 9;
		76: out = 9;
		77: out = 9;
		78: out = 7;
		79: out = 7;
		80: out = 5;
		81: out = 5;
		82: out = 5;
		83: out = 5;
		84: out = 9;
		85: out = 9;
		86: out = 7;
		87: out = 7;
		88: out = 7;
		89: out = 7;
		90: out = 7;
		91: out = 7;
		92: out = 7;
		93: out = 7;
		94: out = 2;
		95: out = 2;
		96: out = 5;
		97: out = 5;
		98: out = 5;
		99: out = 5;
		100: out = 9;
		101: out = 25;
		102: out = 9;
		103: out = 9;
		104: out = 9;
		105: out = 9;
		106: out = 9;
		107: out = 9;
		108: out = 25;
		109: out = 25;
		110: out = 25;
		111: out = 25;
		default: out = 25;
	endcase

endmodule