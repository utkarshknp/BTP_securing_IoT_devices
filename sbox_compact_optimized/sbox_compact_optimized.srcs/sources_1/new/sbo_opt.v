`timescale 1ns / 1ps

module GF_SQ_2 ( A, Q );
input [1:0] A;
output [1:0] Q;
assign Q = { A[0], A[1] };
endmodule

module GF_MULS_2 ( A, ab, B, cd, Q );
input [1:0] A;
input ab;
input [1:0] B;
input cd;
output [1:0] Q;
wire abcd, p, q;
assign abcd = ~(ab & cd); /* note: ~& syntax for NAND won't compile */
assign p = (~(A[1] & B[1])) ^ abcd;
assign q = (~(A[0] & B[0])) ^ abcd;
assign Q = { p, q };
endmodule

module GF_MULS_SCL_2 ( A, ab, B, cd, Q );
input [1:0] A;
input ab;
input [1:0] B;
input cd;
output [1:0] Q;
wire t, p, q;
assign t = ~(A[0] & B[0]); /* note: ~& syntax for NAND won't compile */
assign p = (~(ab & cd)) ^ t;
assign q = (~(A[1] & B[1])) ^ t;
assign Q = { p, q };
endmodule

module GF_INV_4 ( A, Q );
input [3:0] A;
output [3:0] Q;
wire [1:0] a, b, c, d, p, q;
wire sa, sb, sd; /* for shared factors in multipliers */
assign a = A[3:2];
assign b = A[1:0];
assign sa = a[1] ^ a[0];
assign sb = b[1] ^ b[0];
assign c = { /* note: ~| syntax for NOR won't compile */
~(a[1] | b[1]) ^ (~(sa & sb)) ,
~(sa | sb) ^ (~(a[0] & b[0])) };
GF_SQ_2 dinv( c, d);
/* end of optimization */
assign sd = d[1] ^ d[0];
GF_MULS_2 pmul(d, sd, b, sb, p);
GF_MULS_2 qmul(d, sd, a, sa, q);
assign Q = { p, q };
endmodule

module GF_MULS_4 ( A, a, Al, Ah, aa, B, b, Bl, Bh, bb, Q );
input [3:0] A;
input [1:0] a;
input Al;
input Ah;
input aa;
input [3:0] B;
input [1:0] b;
input Bl;
input Bh;
input bb;
output [3:0] Q;
wire [1:0] ph, pl, ps, p;
wire t;
GF_MULS_2 himul(A[3:2], Ah, B[3:2], Bh, ph);
GF_MULS_2 lomul(A[1:0], Al, B[1:0], Bl, pl);
GF_MULS_SCL_2 summul( a, aa, b, bb, p);
assign Q = { (ph ^ p), (pl ^ p) };
endmodule

module GF_INV_8 ( A, Q );
input [7:0] A;
output [7:0] Q;
wire [3:0] a, b, c, d, p, q;
wire [1:0] sa, sb, sd, t; /* for shared factors in multipliers */
wire al, ah, aa, bl, bh, bb, dl, dh, dd; /* for shared factors */
wire c1, c2, c3; /* for temp var */
assign a = A[7:4];
assign b = A[3:0];
assign sa = a[3:2] ^ a[1:0];
assign sb = b[3:2] ^ b[1:0];
assign al = a[1] ^ a[0];
assign ah = a[3] ^ a[2];
assign aa = sa[1] ^ sa[0];
assign bl = b[1] ^ b[0];
assign bh = b[3] ^ b[2];
assign bb = sb[1] ^ sb[0];
assign c1 = ~(ah & bh);
assign c2 = ~(sa[0] & sb[0]);
assign c3 = ~(aa & bb);
assign c = { /* note: ~| syntax for NOR won't compile */
(~(sa[0] | sb[0]) ^ (~(a[3] & b[3]))) ^ c1 ^ c3 ,
(~(sa[1] | sb[1]) ^ (~(a[2] & b[2]))) ^ c1 ^ c2 ,
(~(al | bl) ^ (~(a[1] & b[1]))) ^ c2 ^ c3 ,
(~(a[0] | b[0]) ^ (~(al & bl))) ^ (~(sa[1] & sb[1])) ^ c2 };
GF_INV_4 dinv( c, d);
/* end of optimization */
assign sd = d[3:2] ^ d[1:0];
assign dl = d[1] ^ d[0];
assign dh = d[3] ^ d[2];
assign dd = sd[1] ^ sd[0];
GF_MULS_4 pmul(d, sd, dl, dh, dd, b, sb, bl, bh, bb, p);
GF_MULS_4 qmul(d, sd, dl, dh, dd, a, sa, al, ah, aa, q);
assign Q = { p, q };
endmodule

module SELECT_NOT_8 ( A, Q );
input [7:0] A;
output [7:0] Q;
assign Q = ~ A;
endmodule

module bSbox ( A, Q );
input [7:0] A;
output [7:0] Q;
wire [7:0] B, C, D, X, Y, Z;
wire R1, R2, R3, R4, R5, R6, R7, R8, R9;
wire T1, T2, T3, T4, T5, T6, T7, T8, T9, T10;
assign R1 = A[7] ^ A[5] ;
assign R2 = A[7] ~^ A[4] ;
assign R3 = A[6] ^ A[0] ;
assign R4 = A[5] ~^ R3 ;
assign R5 = A[4] ^ R4 ;
assign R6 = A[3] ^ A[0] ;
assign R7 = A[2] ^ R1 ;
assign R8 = A[1] ^ R3 ;
assign R9 = A[3] ^ R8 ;
assign B[7] = R7 ~^ R8 ;
assign B[6] = R5 ;
assign B[5] = A[1] ^ R4 ;
assign B[4] = R1 ~^ R3 ;
assign B[3] = A[1] ^ R2 ^ R6 ;
assign B[2] = ~ A[0] ;
assign B[1] = R4 ;
assign B[0] = A[2] ~^ R9 ;
SELECT_NOT_8 sel_in( B, Z );
GF_INV_8 inv( Z, C );
assign T1 = C[7] ^ C[3] ;
assign T2 = C[6] ^ C[4] ;
assign T3 = C[6] ^ C[0] ;
assign T4 = C[5] ~^ C[3] ;
assign T5 = C[5] ~^ T1 ;
assign T6 = C[5] ~^ C[1] ;
assign T7 = C[4] ~^ T6 ;
assign T8 = C[2] ^ T4 ;
assign T9 = C[1] ^ T2 ;
assign T10 = T3 ^ T5 ;
assign D[7] = T4 ;
assign D[6] = T1 ;
assign D[5] = T3 ;
assign D[4] = T5 ;
assign D[3] = T2 ^ T5 ;
assign D[2] = T3 ^ T8 ;
assign D[1] = T7 ;
assign D[0] = T9 ;
SELECT_NOT_8 sel_out( D, Q );
endmodule

module Sbox_r ( A, S, CLK );
input [7:0] A;
output [7:0] S;
input CLK /* synthesis syn_noclockbuf=1 */ ;
reg [7:0] S;
wire [7:0] s;
bSbox sbe(A,s);
always @ (posedge CLK) begin
S <= s;
end
endmodule

