module AU(Cout,Y,A,B,Cin,S);
input Cin;
input [3:0]A,B;
input [1:0]S;
output [3:0]Cout; 
output [3:0]Y;
wire [3:0]O0,O1,O2,O3;

adder_4bit fas(O0[3:0],Cout[0],A[3:0],B[3:0],Cin);
increment  fi(Cout[1],O1[3:0],A[3:0]);
decrement fd(Cout[2],O2[3:0],A[3:0]);
leftshift fl(Cout[3],O3[3:0],A[3:0]);

or(Y[0],~S[1]&~S[0]&O0[0],~S[1]&S[0]&O1[0],S[1]&~S[0]&O2[0],S[1]&S[0]&O3[0]); 
or(Y[1],~S[1]&~S[0]&O0[1],~S[1]&S[0]&O1[1],S[1]&~S[0]&O2[1],S[1]&S[0]&O3[1]);
or(Y[2],~S[1]&~S[0]&O0[2],~S[1]&S[0]&O1[2],S[1]&~S[0]&O2[2],S[1]&S[0]&O3[2]);
or(Y[3],~S[1]&~S[0]&O0[3],~S[1]&S[0]&O1[3],S[1]&~S[0]&O2[3],S[1]&S[0]&O3[3]);
endmodule