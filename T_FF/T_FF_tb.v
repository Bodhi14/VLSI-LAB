module tb;
reg clk = 0;
reg rst;
reg T;
wire Q, Q_bar;
T_FF DUT(Q, Q_bar, T, clk, rst);

always #5 clk = ~clk;
initial 
begin
	rst = 1;
	#3;
	rst = 0;
end
initial
begin
	repeat(20)
	begin

	T = $random;
	#6;
	$monitor($time, "D = %b :: Q=%b : Q_bar = %b", T, Q, Q_bar);
end

#100 $finish;
end
endmodule;