module tb();
reg [1:0]A;
reg E;
wire [7:0] Y;

decoder3_8 DUT(Y,A,E);

initial
	begin
	#5 E = 1'b0; A= 2'b10;
	#1 $display("%b : %b : %b", E, A, Y);
	#5 E = 1'b0; A= 2'b11;
	#1 $display("%b : %b : %b", E, A, Y);
	#5 E = 1'b1; A= 2'b00;
	#1 $display("%b : %b : %b", E, A, Y);
	#5 E = 1'b1; A= 2'b01;
	#1 $display("%b : %b : %b", E, A, Y);
	#5 E = 1'b1; A= 2'b10;
	#1 $display("%b : %b : %b", E, A, Y);
	#5 E = 1'b1; A= 2'b11;
	#1 $display("%b : %b : %b", E, A, Y);
	#5 E = 1'b1; A= 2'bXX;
	#1 $display("%b : %b : %b", E, A, Y);
	#5 E = 1'b1; A= 2'bZZ;
	#1 $display("%b : %b : %b", E, A, Y);
	#5 E = 1'b1; A= 2'bZ1;
	#1 $display("%b : %b : %b", E, A, Y);
	
	#50 $finish;
	end
	
endmodule