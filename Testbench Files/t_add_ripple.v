`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2020 04:54:24 PM
// Design Name: 
// Module Name: t_add_ripple
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


module t_add_ripple(

    );
    
    reg [2:0] a;
    reg [2:0] b;
    reg c_in;
    wire [2:0] sum;
    wire c_out;
    
    add_ripple R1(.sum(sum), .c_out(c_out), .a(a), .b(b), .c_in(c_in));
    
    initial begin
    #200 $finish;
    end
    
    initial begin
    #8 a=0; b=0; c_in=0;
    end
    
    always begin
    #8 {a[0],b[0],c_in} = {a[0],b[0],c_in}+1'b1;
    #8 {a[1],b[1],c_in} = {a[1],b[1],c_in}+1'b1;
    #8 {a[2],b[2],c_in} = {a[2],b[2],c_in}+1'b1;
    if ({a,b,c_in} == 0)
        begin
        $finish;
        end
    end
  
    
endmodule
