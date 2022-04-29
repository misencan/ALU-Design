`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2020 11:04:04 PM
// Design Name: 
// Module Name: t_add_sub
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


module t_add_sub(

    );
    reg [2:0] a;
    reg [2:0] b;
    reg M;
    wire [2:0] sum;
    wire c_out;
    
    
    add_sub S1(.sum(sum), .c_out(c_out), .a(a), .b(b), .M(M));
    
    
    initial begin
    #200 $finish;
    end
    
    initial begin
    #8 a=0; b=0; M=0;
    end
    
    always begin
    #8 {a[0],b[0],M} = {a[0],b[0],M}+1'b1;
    #8 {a[1],b[1],M} = {a[1],b[1],M}+1'b1;
    #8 {a[2],b[2],M} = {a[2],b[2],M}+1'b1;
    if ({a,b,M} == 0)
        begin
        $finish;
        end
    end
    

    
endmodule
