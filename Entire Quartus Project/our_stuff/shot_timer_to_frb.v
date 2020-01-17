module shot_timer_to_frb(shot_timer, frb_left, frb_middle, frb_right, clk);
	input clk; 
	input[1:0] shot_timer;
	output frb_left;
	output frb_middle;
	output frb_right;
	
wire [1:0] shot_timer;
reg frb_left;
reg frb_middle;
reg frb_right;

//shot timer = 3, all off
//2 = left on
//1 = middle on
//0 = right on

always @(posedge clk)
	begin
	if (shot_timer < 3)
		begin
			frb_left <= 1;
		end
	else
		begin
			frb_left <= 0;
		end
	if (shot_timer < 2)
		begin
			frb_middle <= 1;
		end
	else
		begin
			frb_middle <= 0;
		end	
		
	if (shot_timer < 1)
		begin
			frb_right <= 1;
		end
	else
		begin
			frb_right <= 0;
		end
	
	end
endmodule