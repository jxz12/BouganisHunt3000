module menu_music_fsm (clk, out);
	input clk;
	output[4:0] out;

reg[24:0] counter;
reg[24:0] clkDivider = 6000000;

always @(posedge clk)
	if(counter == clkDivider)
		counter <= 1;
	else counter <= counter + 1;

reg[5:0] state;

always @(posedge clk)
	if(counter == 1)
		state <= state + 1;

reg[4:0] out;

always @(state)
	case(state)
		0: out = 12;
		1: out = 11;
		2: out = 10;
		3: out = 9;
		4: out = 7;
		5: out = 25;
		6: out = 4;
		7: out = 25;
		8: out = 2;
		9: out = 25;
		10: out = 4;
		11: out = 25;
		12: out = 7;
		13: out = 25;
		14: out = 9;
		15: out = 25;
		16: out = 12;
		17: out = 11;
		18: out = 10;
		19: out = 9;
		20: out = 7;
		21: out = 25;
		22: out = 4;
		23: out = 25;
		24: out = 2;
		25: out = 25;
		26: out = 4;
		27: out = 25;
		28: out = 0;
		29: out = 0;
		30: out = 25;
		31: out = 25;
		
		32: out = 12;
		33: out = 11;
		34: out = 10;
		35: out = 9;
		36: out = 7;
		37: out = 25;
		38: out = 4;
		39: out = 25;
		40: out = 2;
		41: out = 25;
		42: out = 4;
		43: out = 25;
		44: out = 7;
		45: out = 25;
		46: out = 2;
		47: out = 25;
		48: out = 4;
		49: out = 5;
		50: out = 6;
		51: out = 7;
		52: out = 4;
		53: out = 25;
		54: out = 2;
		55: out = 25;
		56: out = 0;
		57: out = 0;
		58: out = 0;
		59: out = 0;
		60: out = 25;
		61: out = 25;
		62: out = 25;
		63: out = 25;
		default: out = 25;
	endcase

endmodule