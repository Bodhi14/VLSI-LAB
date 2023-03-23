module tb();
reg [3:0] Y;
wire [1:0]A;

encoder4_2 DUT(A,Y);

initial
	begin
	#5 Y = 4'b0000;
	#1 $display("%b : %b", Y, A);
	#5 Y = 4'b0001;
	#1 $display("%b : %b", Y, A);
	#5 Y = 4'b0010;
	#1 $display("%b : %b", Y, A);
	#5 Y = 4'b0100;
	#1 $display("%b : %b", Y, A);
	#5 Y = 4'b1000;
	#1 $display("%b : %b", Y, A);
	
	#50 $finish;
	end
	
endmodule