module full_adder(sum,cout,a, b, c);

output cout,sum;

input a,b,c;
assign sum = a ^ b ^ c;  
assign carry = (a&b) | (b&c) | (c&a);

endmodule

module adder_4bit(sum ,carry, a ,b,c);

output [3:0] sum ;
output carry ;
input c;
input [3:0] a ;
input [3:0] b ; 

wire [2:0]s;

full_adder u0 (sum[0],s[0],a[0],b[0],c);
full_adder u1 (sum[1],s[1],a[1],b[1],s[0]);
full_adder u2 (sum[2],s[2],a[2],b[2],s[1]);
full_adder u3 (sum[3],carry,a[3],b[3],s[2]);

endmodule

module mux_4bit ( dout,sel,a ,b);

output [3:0]dout ;

input [3:0]a ;
input [3:0]b ;
input sel ;
   
assign dout = sel ? b : a;

endmodule