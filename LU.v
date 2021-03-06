module LU(Y,A,B,S);
input [1:0]S;
output [3:0]Y;
input [3:0]A,B;
wire [3:0]O0,O1,O2,O3;
AND4 fa(O0[3:0],A[3:0],B[3:0]);
OR4 fo(O1[3:0],A[3:0],B[3:0]);
XOR4 fx(O3[3:0],A[3:0],B[3:0]);
COMPLEMENT4 fc(O3[3:0],A[3:0]);

or(Y[0],~S[1]&~S[0]&O0[0],~S[1]&S[0]&O1[0],S[1]&~S[0]&O2[0],S[1]&S[0]&O3[0]); 
or(Y[1],~S[1]&~S[0]&O0[1],~S[1]&S[0]&O1[1],S[1]&~S[0]&O2[1],S[1]&S[0]&O3[1]);
or(Y[2],~S[1]&~S[0]&O0[2],~S[1]&S[0]&O1[2],S[1]&~S[0]&O2[2],S[1]&S[0]&O3[2]);
or(Y[3],~S[1]&~S[0]&O0[3],~S[1]&S[0]&O1[3],S[1]&~S[0]&O2[3],S[1]&S[0]&O3[3]);

endmodule
