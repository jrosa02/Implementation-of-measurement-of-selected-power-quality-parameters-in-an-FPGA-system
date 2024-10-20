`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2024 08:52:48 AM
// Design Name: 
// Module Name: ADC_Control_test
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


module ADC_Control_test(

    );
    
reg clk = 0;

wire voltage_enable;
wire [15:0]voltage_value;

initial begin
    #1 clk = ~clk;
end

ADC_Control ADC_tested
(
    .clk(clk),
    .reset(0),

    .voltage_enable(voltage_enable),
    .voltage_value(voltage_value)
);




endmodule
