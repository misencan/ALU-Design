`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2020 05:19:27 PM
// Design Name: 
// Module Name: add_sub
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


module add_sub(

    output [2:0] sum,
    output c_out,
    input [2:0] a,
    input [2:0] b,
    input M
    );
    wire w1;
    wire w2;
    wire w3;
    wire c0;
    wire c1;
    wire c2;
    wire v;
    
    xor G1(w1, M, b[0]);
    xor G2(w2, M, b[1]);
    xor G3(w3, M, b[2]);
    
    add_full F1(sum[0], c0, a[0], w1, M);
    add_full F2(sum[1], c1, a[1], w2, c0);
    add_full F3(sum[2], c2, a[2], w3, c1);
    xor over(v, c2, c1);
    xor out(c_out, v, c1);
    
endmodule
