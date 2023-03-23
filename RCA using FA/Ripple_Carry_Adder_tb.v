module tb();
wire Cout;
wire [3:0]S;
reg [3:0] A,B;
reg Cin;

ripple_carry_adder DUT(Cout, S, A, B, Cin); 
initial
	begin
	
	#5 A[3]=1'b0; B[3]=1'b0; A[2]=1'b0; B[2]=1'b0; A[1]=1'b0; B[1]=1'b0; A[0]=1'b0; B[0]=1'b0; Cin=1'b0;
	#1 $display("%b %b %b: %d", A, B, Cin, {Cout, S});
	
	#5 A[3]=1'b0; B[3]=1'b1; A[2]=1'b1; B[2]=1'b0; A[1]=1'b1; B[1]=1'b0; A[0]=1'b0; B[0]=1'b1; Cin=1'b0;
	#1 $display("%b %b %b: %d", A, B, Cin, {Cout, S});
	
	#5 A[3]=1'b1; B[3]=1'b0; A[2]=1'b1; B[2]=1'b0; A[1]=1'b0; B[1]=1'b1; A[0]=1'b1; B[0]=1'b0; Cin=1'b0;
	#1 $display("%b %b %b: %d", A, B, Cin, {Cout, S});
	
	#5 A[3]=1'b0; B[3]=1'b0; A[2]=1'b0; B[2]=1'b0; A[1]=1'b1; B[1]=1'b1; A[0]=1'b1; B[0]=1'b1; Cin=1'b0;
	#1 $display("%b %b %b: %d", A, B, Cin, {Cout, S});
	
	#5 A[3]=1'b1; B[3]=1'b1; A[2]=1'b1; B[2]=1'b1; A[1]=1'b1; B[1]=1'b1; A[0]=1'b1; B[0]=1'b1; Cin=1'b0;
	#1 $display("%b %b %b: %d", A, B, Cin, {Cout, S});
	
	
	
	#10 $finish;
	end
	
endmodule 
