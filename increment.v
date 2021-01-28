module increment(Cout, Sum, A);
  
output [3:0]Sum;

output Cout;

input [3:0]A;


wire carry;

adder_4bit fa(Sum,carry,A,4'b0001,1'b0);

endmodule
