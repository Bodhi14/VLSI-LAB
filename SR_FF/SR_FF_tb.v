module tb;
reg clk = 0;
reg rst;
reg S, R;
wire Q, Q_bar;
SR_FF DUT(Q, Q_bar, S, R, clk, rst);
always #10 clk = ~clk;
initial
begin
	rst = 1;
	#8;
	rst = 0;
end
initial
begin
	S=1'b1;R=1'b0;
	#10;
	S=1'b0;R=1'b1;
	#10;
	S=1'b1;R=1'b0;
	#10;
	S=1'b0;R=1'b0;
	#10;
    S=1'b0;R=1'b1;
	#10;
	S=1'b0;R=1'b1;
	#10;
	$finish;
end
initial 
begin			
				$monitor($time, " S=%b R=%b :: Q=%b Q_bar=%b ", S, R, Q, Q_bar);
end
endmodule


