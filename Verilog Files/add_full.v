`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2020 04:24:55 PM
// Design Name: 
// Module Name: add_full
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


module add_full(
    output sum,
    output c_out,
    input a,
    input b,
    input c_in
    );
    wire w1;
    wire w2;
    wire w3;
    halfadder M1(.sum(w1), .c_out(w2), .a(a), .b(b));
    halfadder M2(.sum(sum), .c_out(w3), .a(c_in), .b(w1));
    or G3(c_out, w2, w3);
    
    
endmodule
