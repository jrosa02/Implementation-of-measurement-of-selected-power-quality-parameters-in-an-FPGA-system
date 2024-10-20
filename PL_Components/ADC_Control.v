`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2024 02:10:52 PM
// Design Name: 
// Module Name: ADC_Control
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


module ADC_Control
    (
    input clk,
    input reset,

    output voltage_enable,
    output [15:0]voltage_value
    );

    wire adc_ready;
    wire adc_eos_out;
    wire adc_data_ready;
    wire [15:0]adc_conversion_value;
    wire adc_busy;

    ADC_Interface ADC_PipelineStart
    (
        .daddr_in(12),                      // Address bus for the dynamic reconfiguration port
        .dclk_in(clk),                  // Clock input for the dynamic reconfiguration port
        .den_in(adc_ready),              // Enable Signal for the dynamic reconfiguration port
        .di_in(0),                      // Input data bus for the dynamic reconfiguration port
        .dwe_in(0),                     // Write Enable for the dynamic reconfiguration port
        .reset_in(reset),               // Reset signal for the System Monitor control logic
        .busy_out(adc_busy),                      // ADC Busy signal
        //.channel_out(0),                   // Channel Selection Outputs
        .do_out(adc_conversion_value),              // Output data bus for dynamic reconfiguration port
        .drdy_out(adc_data_ready),            // Data ready signal for the dynamic reconfiguration port
        .eoc_out(adc_ready),                // End of Conversion Signal
        .eos_out(adc_eos_out),              // End of Sequence Signal
        //.alarm_out(0),                         // OR'ed output of all the Alarms    
        .vp_in(1),                          // Dedicated Analog Input Pair P
        .vn_in(1)                          // Dedicated Analog Input Pair N
    );

assign voltage_enable = adc_data_ready;
assign voltage_value = adc_conversion_value;

endmodule
