module task1_top (
	SW,        // input switches
	HEX0       // hex output on 7-segment display
);

	input [3:0]  SW;  // switches act as input
	output [6:0] HEX0;  // outputs the control signals for 7 segment display
	
	// interface with 7 segment decoder
	hex_to_7seg SEG0 (HEX0, SW[3:0]);
	
endmodule
