module AND(y,a,b);

output y;

input a,b;

assign y=a &b;

endmodule

module AND2(y,a,b);
output [1:0]y;
input [1:0]a,b;

AND ad(y[0],a[0],b[0]);
AND ad2(y[1],a[1],b[1]);

endmodule

module AND4(y,a,b);
output[3:0]y;
input [3:0]a,b;

AND2 ad(y[1:0],a[1:0],b[1:0]);
AND2 ad2(y[3:2],a[3:2],b[3:2]);

endmodule