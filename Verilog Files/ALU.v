`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2020 11:28:22 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
    output reg [2:0] out,
    output reg c_out,
    input [2:0] in_0,
    input [2:0] in_1,
    input M_0,
    input M_1,
    input c_in
    );
    
    reg mode;
    integer i;
    wire [2:0] out1;
    wire c_out1;
    
    add_sub addsub(out1, c_out1, in_0, in_1, mode);
    
    always @(*) begin
        if (M_1 == 0 && M_0 == 0) begin
            mode = 0;
            out = out1;
            c_out = c_out1;
        end
        if (M_1 == 0 && M_0 == 1) begin
            mode = 1;
            out = out1;
            c_out = c_out1;
        end
        if (M_1 == 1 && M_0 == 0) begin
            for (i = 0; i<=2; i = i+1) begin
                out[i] = in_0[i] && in_1[i];
            end
        end    
        if (M_1 == 1 && M_0 == 1) begin
            for (i = 0; i<=2; i = i+1) begin
                out[i] = in_0[i]^in_1[i];
            end
        end
    end
    
endmodule

