`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2020 04:08:25 PM
// Design Name: 
// Module Name: t_Add_half
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


module t_Add_half(
    );
    wire sum, c_out;
    reg a, b;
    
    halfadder M1(.sum(sum), .c_out(c_out), .a(a), .b(b));
    
    initial begin
    #100 $finish;
    end
    
    initial begin
    #10 a = 0; b = 0;
    #10 b = 1;
    #10 a = 1;
    #10 b = 0;
    end

endmodule
