`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2023 15:42:18
// Design Name: 
// Module Name: src_4bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder(a, b, carry,  s,c );
input a,b,carry;
output s,c;
assign s = a^b^carry;
assign c = (a&b) | (b&carry) | (a&carry);
endmodule

module bit_adder(A, B, c_in,  S, cout);

input [3:0] A,B;
input c_in;
output [3:0] S;
output cout;

wire c1,c2,c3;

full_adder F1(A[0],B[0],c_in,S[0],c1);
full_adder F2(A[1],B[1],c1,S[1],c2);
full_adder F3(A[2],B[2],c2,S[2],c3);
full_adder F4(A[3],B[3],c3,S[3],cout);

endmodule
