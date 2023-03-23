module mux4(output y, input A,B,C,D,[1:0]s);
always @(*)
begin 
case(sel)
	2'b00 : Y = A;
	2'b01 : Y = B;
	2'b10 : Y = C;
	2'b11 : Y = D;
	default : Y = 1'bX;
endcase
end
endmodule

