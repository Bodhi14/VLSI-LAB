module tb;

reg [3:0]B;
wire [3:0]G;
binary_2_gray DUT(G,B);
initial
begin
	repeat(10)
	begin
		B=$random;
		#2 $display("%b : %b", B, G);
		end
		#20 $finish;

end 
endmodule