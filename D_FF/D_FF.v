module D_FF(Q, Q_bar, clk, rst, D);
input clk, rst,D;
output reg Q;
output reg Q_bar;
always @ (posedge clk or posedge rst)
begin
	if(rst) 
		begin
			Q<=1'b0;
		end
	else
		begin 
		 Q<=D;
		end
end
always @* Q_bar = ~Q;
endmodule
