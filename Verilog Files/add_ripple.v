`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2020 04:45:53 PM
// Design Name: 
// Module Name: add_ripple
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


module add_ripple(
    output [2:0] sum,
    output c_out, 
    input [2:0] a,
    input [2:0] b,
    input c_in
    );
    wire w1;
    wire w2;
    
    add_full F1(.sum(sum[0]), .c_out(w1), .a(a[0]), .b(b[0]), .c_in(c_in));
    
    add_full F2(.sum(sum[1]), .c_out(w2), .a(a[1]), .b(b[1]), .c_in(w1));
    add_full F3(.sum(sum[2]), .c_out(c_out), .a(a[2]), .b(b[2]), .c_in(w2));
endmodule
