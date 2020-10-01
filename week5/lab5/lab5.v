module lab5 (

	input xl,
	input x2,
	input s,
	output f

);

	assign f = (s & x2) | ((~s) & xl);

endmodule