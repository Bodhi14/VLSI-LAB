module tb();

reg A, B, Cin;
wire carry, sum;

FA FA(carry, sum, A, B, Cin);

initial
    begin
	#5 A=1'b0; B=1'b0; Cin=1'b0;
	#1 $display("A = %b : B = %b : Cin = %b : carry = %b : sum = %b : dec = %d", A, B, Cin, carry, sum, {carry, sum}); /// output for A=0, B=0, Cin = 0
	#5 A=1'b0; B=1'b0; Cin=1'b1;
	#1 $display("A = %b : B = %b : Cin = %b : carry = %b : sum = %b : dec = %d", A, B, Cin, carry, sum, {carry, sum}); /// output for A=0, B=0, Cin = 1
	#5 A=1'b0; B=1'b1; Cin=1'b0;
	#1 $display("A = %b : B = %b : Cin = %b : carry = %b : sum = %b : dec = %d", A, B, Cin, carry, sum, {carry, sum}); /// output for A=0, B=1, Cin = 0
	#5 A=1'b0; B=1'b1; Cin=1'b1;
	#1 $display("A = %b : B = %b : Cin = %b : carry = %b : sum = %b : dec = %d", A, B, Cin, carry, sum, {carry, sum}); /// output for A=0, B=1, Cin = 1
	#5 A=1'b1; B=1'b0; Cin=1'b0;
	#1 $display("A = %b : B = %b : Cin = %b : carry = %b : sum = %b : dec = %d", A, B, Cin, carry, sum, {carry, sum}); /// output for A=1, B=0, Cin = 0
	#5 A=1'b1; B=1'b0; Cin=1'b1;
	#1 $display("A = %b : B = %b : Cin = %b : carry = %b : sum = %b : dec = %d", A, B, Cin, carry, sum, {carry, sum}); /// output for A=1, B=0, Cin = 1
	#5 A=1'b1; B=1'b1; Cin=1'b0;
	#1 $display("A = %b : B = %b : Cin = %b : carry = %b : sum = %b : dec = %d", A, B, Cin, carry, sum, {carry, sum}); /// output for A=1, B=1, Cin = 0
	#5 A=1'b1; B=1'b1; Cin=1'b1;
	#1 $display("A = %b : B = %b : Cin = %b : carry = %b : sum = %b : dec = %d", A, B, Cin, carry, sum, {carry, sum}); /// output for A=1, B=1, Cin = 1
	
	#10 $finish;
	end
	
endmodule