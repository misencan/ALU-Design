`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2020 04:32:50 PM
// Design Name: 
// Module Name: t_add_full
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


module t_add_full(

    );
    wire sum, c_out;
    reg a, b, c_in;
    
    add_full F1(.sum(sum), .c_out(c_out), .a(a), .b(b), .c_in(c_in));
    
    initial begin
    #100 $finish;
    end
    
    initial begin
    #10 a = 0; b = 0; c_in = 0;
    #10 b = 1;
    #10 a = 1;
    #10 b = 0;
    #10 c_in = 1;
    #10 a = 0; b = 0;
    #10 b = 1;
    #10 a = 1;
    #10 b = 0;
    end
    
    
endmodule
