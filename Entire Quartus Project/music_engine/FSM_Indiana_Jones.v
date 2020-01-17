module FSM_Indiana_Jones (clk, out);
	input clk;
	output[4:0] out;

reg[24:0] counter;
reg[24:0] clkDivider = 6000000;

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
		1: out = 25;
		2: out = 12;
		3: out = 12;
		4: out = 12;
		5: out = 12;
		6: out = 12;
		7: out = 12;
		8: out = 12;
		9: out = 12;
		10: out = 12;
		11: out = 12;
		12: out = 2;
		13: out = 2;
		14: out = 2;
		15: out = 4;
		16: out = 5;
		17: out = 5;
		18: out = 5;
		19: out = 5;
		20: out = 5;
		21: out = 5;
		22: out = 5;
		23: out = 5;
		24: out = 5;
		25: out = 5;
		26: out = 5;
		27: out = 5;
		28: out = 7;
		29: out = 7;
		30: out = 7;
		31: out = 9;
		32: out = 11;
		33: out = 25;
		34: out = 17;
		35: out = 17;
		36: out = 17;
		37: out = 17;
		38: out = 17;
		39: out = 17;
		40: out = 17;
		41: out = 17;
		42: out = 17;
		43: out = 17;
		44: out = 9;
		45: out = 9;
		46: out = 9;
		47: out = 11;
		48: out = 12;
		49: out = 12;
		50: out = 12;
		51: out = 12;
		52: out = 14;
		53: out = 14;
		54: out = 14;
		55: out = 14;
		56: out = 16;
		57: out = 16;
		58: out = 16;
		59: out = 16;
		60: out = 4;
		61: out = 4;
		62: out = 4;
		63: out = 5;
		64: out = 7;
		65: out = 25;
		66: out = 12;
		67: out = 12;
		68: out = 12;
		69: out = 12;
		70: out = 12;
		71: out = 12;
		72: out = 12;
		73: out = 12;
		74: out = 12;
		75: out = 12;
		76: out = 14;
		77: out = 14;
		78: out = 14;
		79: out = 16;
		80: out = 17;
		81: out = 17;
		82: out = 17;
		83: out = 17;
		84: out = 17;
		85: out = 17;
		86: out = 17;
		87: out = 17;
		88: out = 17;
		89: out = 17;
		90: out = 17;
		91: out = 17;
		92: out = 7;
		93: out = 7;
		94: out = 25;
		95: out = 7;
		96: out = 16;
		97: out = 16;
		98: out = 16;
		99: out = 16;
		100: out = 14;
		101: out = 25;
		102: out = 25;
		103: out = 7;
		104: out = 16;
		105: out = 16;
		106: out = 16;
		107: out = 16;
		108: out = 14;
		109: out = 25;
		110: out = 25;
		111: out = 7;
		112: out = 16;
		113: out = 16;
		114: out = 16;
		115: out = 16;
		116: out = 14;
		117: out = 25;
		118: out = 25;
		119: out = 7;
		120: out = 16;
		121: out = 16;
		122: out = 14;
		123: out = 25;
		124: out = 4;
		125: out = 4;
		126: out = 4;
		127: out = 5;
		default: out = 25;
	endcase

endmodule