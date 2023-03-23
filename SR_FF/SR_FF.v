module SR_FF(Q, Q_bar, S, R, clk, rst);
input S, R;
input clk, rst;
output reg Q;
output wire Q_bar;
always @ (posedge clk or posedge rst)
begin
	if(rst) Q<=1'b0;
	else
	begin 
		case ({S,R})
			2'b00: Q<=Q;
			2'b01: Q<=1'b0;
			2'b10: Q<=1'b1;
			2'b11: Q<=1'bz;
		endcase
	end
end
assign Q_bar = ~Q;
endmodule
