module task2_top (
	SW,        // input switches
	HEX0,      // hex digit 0 on the 7 segment display
	HEX1,      // hex digit 1 on the 7 segment display
	HEX2       // hex digit 2 on the 7 segment display
);

	input  [9:0]   SW;  // switches act as input
	output [6:0] HEX0;
	output [6:0] HEX1;
	output [6:0] HEX2;
	
	// digit 0 on the 7seg display to represent bits 3:0
	hex_to_7seg SEG0 (HEX0, SW[3:0]);
	// digit 1 on the 7seg display to represent bits 7:4
	hex_to_7seg SEG1 (HEX1, SW[7:4]);
	// digit 2 on the 7seg display to represent the 2 MSBs, left-padded with 0
	hex_to_7seg SEG2 (HEX2, {{2{1'b0}}, SW[9:8]});
	
endmodule
