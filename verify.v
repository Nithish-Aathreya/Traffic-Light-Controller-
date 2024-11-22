`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2024 13:04:08
// Design Name: 
// Module Name: verify
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


module verify();
reg clk;
wire [3:0]light;
reg [1:0]state;

traffic uut(clk,light);

initial
begin
clk=1'b0;
forever
#5 clk = ~clk;
end

initial
begin
#12 state = 2'b00;

#100 $finish;
end

endmodule
