module ALU(Cout,Y,A,B,Cin,S);
output Cout;
output [3:0]Y;
input [3:0]A,B;
input Cin;
input [4:0]S;
wire [3:0]O0,O1;

AU fau(Cout,O0[3:0],A[3:0],B[3:0],Cin,S[1:0]);
LU flu(O1[3:0],A[3:0],B[3:0],S[3:2]);

or(Y[0],~S[4]&O0[0],S[4]&O1[0]);
or(Y[1],~S[4]&O0[1],S[4]&O1[1]);
or(Y[2],~S[4]&O0[2],S[4]&O1[2]);
or(Y[3],~S[4]&O0[3],S[4]&O1[3]);
endmodule
