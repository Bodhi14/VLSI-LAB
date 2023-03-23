module tb();
reg A,B,S;
wire y;

mux2 DUT(y,A,B,S);

initial
     begin
	 #5 A=1'b1; B=1'b0; S=1'b0;
	 #1 $display("a = %b b= %b select = %b : output = %b", A, B, S, y);
	 #5 A=1'b0; B=1'b1; S=1'b1;
	 #1 $display("a = %b b= %b select = %b : output = %b", A, B, S, y);
	 #5 A=1'b1; B=1'b0; S=1'b1;
	 #1 $display("a = %b b= %b select = %b : output = %b", A, B, S, y);
	 #5 A=1'b0; B=1'b1; S=1'b0;
	 #1 $display("a = %b b= %b select = %b : output = %b", A, B, S, y);
	 
	 #10 $finish;
	 end
endmodule