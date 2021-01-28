module OR(y,a,b);

output y;

input a,b;

assign y=a | b;

endmodule

module OR2(y,a,b);
output [1:0]y;
input [1:0]a,b;

OR ad(y[0],a[0],b[0]);
OR ad2(y[1],a[1],b[1]);

endmodule

module OR4(y,a,b);
output[3:0]y;
input [3:0]a,b;

OR2 ad(y[1:0],a[1:0],b[1:0]);
OR2 ad2(y[3:2],a[3:2],b[3:2]);

endmodule

