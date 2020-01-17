module FSM_Mario (clk, out);
	input clk;
	output[4:0] out;

reg[24:0] counter;
reg[24:0] clkDivider = 5000000;

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
		0: out = 25;
		1: out = 25;
		2: out = 25;
		3: out = 25;
		4: out = 18;
		5: out = 18;
		6: out = 18;
		7: out = 18;
		8: out = 10;
		9: out = 13;
		10: out = 13;
		11: out = 18;
		12: out = 18;
		13: out = 13;
		14: out = 13;
		15: out = 13;
		16: out = 25;
		17: out = 25;
		18: out = 25;
		19: out = 25;
		20: out = 25;
		21: out = 25;
		22: out = 10;
		23: out = 25;
		24: out = 10;
		25: out = 13;
		26: out = 13;
		27: out = 22;
		28: out = 22;
		29: out = 22;
		30: out = 18;
		31: out = 18;
		32: out = 25;
		33: out = 25;
		34: out = 25;
		35: out = 25;
		36: out = 25;
		37: out = 25;
		38: out = 18;
		39: out = 18;
		40: out = 22;
		41: out = 22;
		42: out = 23;
		43: out = 23;
		44: out = 22;
		45: out = 22;
		46: out = 18;
		47: out = 18;
		48: out = 25;
		49: out = 25;
		50: out = 25;
		51: out = 25;
		52: out = 25;
		53: out = 25;
		54: out = 18;
		55: out = 18;
		56: out = 22;
		57: out = 22;
		58: out = 20;
		59: out = 25;
		60: out = 20;
		61: out = 20;
		62: out = 18;
		63: out = 18;
		64: out = 18;
		65: out = 18;
		66: out = 18;
		67: out = 25;
		68: out = 18;
		69: out = 18;
		70: out = 18;
		71: out = 18;
		72: out = 10;
		73: out = 10;
		74: out = 13;
		75: out = 18;
		76: out = 18;
		77: out = 13;
		78: out = 13;
		79: out = 13;
		80: out = 25;
		81: out = 25;
		82: out = 25;
		83: out = 25;
		84: out = 25;
		85: out = 25;
		86: out = 25;
		87: out = 25;
		88: out = 10;
		89: out = 10;
		90: out = 13;
		91: out = 13;
		92: out = 22;
		93: out = 22;
		94: out = 22;
		95: out = 22;
		96: out = 22;
		97: out = 22;
		98: out = 18;
		99: out = 18;
		100: out = 25;
		101: out = 25;
		102: out = 18;
		103: out = 18;
		104: out = 22;
		105: out = 22;
		106: out = 23;
		107: out = 23;
		108: out = 22;
		109: out = 22;
		110: out = 18;
		111: out = 18;
		112: out = 18;
		113: out = 18;
		114: out = 18;
		115: out = 18;
		116: out = 25;
		117: out = 25;
		118: out = 18;
		119: out = 18;
		120: out = 22;
		121: out = 22;
		122: out = 20;
		123: out = 25;
		124: out = 20;
		125: out = 20;
		126: out = 18;
		127: out = 18;
		default: out = 25;
	endcase

endmodule