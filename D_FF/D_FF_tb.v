module tb;
reg clk = 0;
reg rst;
reg D;
wire Q;
wire Q_bar;
D_FF DUT(Q, Q_bar, clk, rst, D);

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

D = $random;
#6;
$monitor($time, "D = %b :: Q=%b : Q_bar = %b", D, Q, Q_bar);
end

#100 $finish;
end
endmodule;
