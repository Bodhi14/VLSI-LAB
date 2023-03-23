module T_FF(Q, Q_bar, T, clk, rst);
input T;
input clk, rst;
output reg Q, Q_bar;
always @ (posedge clk or posedge rst)
begin
	if(rst) Q<=1'b0;
	else
	begin 
		case ({T})
			1'b0: Q<=Q;
			1'b1: Q<= ~Q;
		endcase
	end
end
always @* Q_bar = ~Q;
endmodule