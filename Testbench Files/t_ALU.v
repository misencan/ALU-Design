`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2020 03:31:11 PM
// Design Name: 
// Module Name: t_ALU
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


module t_ALU(

    );
    reg [2:0] in_0;
    reg [2:0] in_1;
    reg M_0;
    reg M_1;
    reg c_in;
    wire [2:0] out;
    wire c_out;
    
    ALU alu1(.out(out), .c_out(c_out), .in_0(in_0), .in_1(in_1), .M_0(M_0), .M_1(M_1), .c_in(c_in));
    
    initial begin
    #200 $finish;
    end
    
    initial begin
    #5 in_0=0; in_1=0; M_0=0; M_1=0; c_in=0;
    end
    
    always begin
    #5 {in_0[0],in_1[0],M_0,M_1,c_in} = {in_0[0],in_1[0],M_0,M_1,c_in}+1'b1;
    #5 {in_0[1],in_1[1],M_0,M_1,c_in} = {in_0[1],in_1[1],M_0,M_1,c_in}+1'b1;
    #5 {in_0[2],in_1[2],M_0,M_1,c_in} = {in_0[2],in_1[2],M_0,M_1,c_in}+1'b1;
    if ({in_0,in_1,M_0,M_1,c_in} == 0)
        begin
        $finish;
        end
    end
    
    
    
endmodule
