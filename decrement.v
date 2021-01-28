module decrement(borrow, diff, A);
  
output [3:0]diff;

output borrow;

input [3:0]A;

wire carry;

adder_4bit fs(Sum,carry,A,4'b0001,1'b1);

endmodule
