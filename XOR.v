module XOR(y,a,b);
output y;
input a,b;

wire p,q;
AND an(p,~a,b);
AND an2(q,a,~b);
or(y,p,q);

endmodule

module XOR2(y,a,b);
output [1:0]y;
input [1:0]a,b;

XOR x1(y[0],a[0],b[0]);
XOR x2(y[1],a[1],b[1]);
endmodule  

module XOR4(y,a,b);
output [3:0]y;
input [3:0]a,b;

XOR2 x1(y[1:0],a[1:0],b[1:0]);
XOR2 x2(y[3:2],a[3:2],b[3:2]);  

endmodule