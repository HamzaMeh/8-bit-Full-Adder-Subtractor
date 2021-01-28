module leftshift(Cout, Sum, A);
  
output [3:0]Sum;

output Cout;

input [3:0]A;

wire carry;

adder_4bit fa(carry,Sum,A,A,1'b0);

endmodule
