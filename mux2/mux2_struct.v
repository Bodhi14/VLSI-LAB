module mux2(output y, input a,b,s);

assign y = a&(~s) | b&s;
endmodule
