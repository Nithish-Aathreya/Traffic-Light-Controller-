`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2024 12:55:47
// Design Name: 
// Module Name: traffic
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


module traffic(clk,light);
input clk;
output reg [3:0]light;
reg [1:0]state;

parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
parameter R_P=4'b1001,Y=4'b0100,G=4'b0010,R=4'b1000;

always @(posedge clk)
begin
case(state)
s0 : state<=s3;
s1 : state<=s2;
s2 : state<=s0;
s3 : state<=s1;
default:state<=s0;
endcase
end

always @(state)
begin
case(state)
s0 : light = R_P;
s1 : light = Y;
s2 : light = G;
s3 : light = R_P;
default:light=R_P;
endcase
end




endmodule
