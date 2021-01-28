module COMPLEMENT(y,a);
output y;
input a;
assign y=~a;
endmodule

module COMPLEMENT2(y,a);
output [1:0]y;
input [1:0]a;
COMPLEMENT com(y[0],a[0]);
COMPLEMENT com2(y[1],a[1]);
endmodule

module COMPLEMENT4(y,a);
output [3:0]y;
input [3:0]a;
COMPLEMENT2 com(y[1:0],a[1:0]);
COMPLEMENT2 com2(y[3:2],a[3:2]);
endmodule  