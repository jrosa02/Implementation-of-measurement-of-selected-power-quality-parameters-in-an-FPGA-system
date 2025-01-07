`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/21/2024 11:26:35 AM
// Design Name: 
// Module Name: axis_stimulus
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: AXI Stream stimulus generator
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module axis_stimulus(
    output clk,
    output rstn,
    output tvalid,
    output tready,
    output [31:0] tdata
);

  // AXI Stream signals
  reg clk_reg = 1;
  reg resetn_reg = 0;
  reg tvalid_reg = 0;
  reg tready_reg = 0;
  reg [31:0] tdata_reg = 0;
  integer data_int = 0;
  integer file = 0;
  
    initial begin
        forever #5 clk_reg = ~clk_reg;
    end
    
    initial begin
        #10 resetn_reg = 1;
    end

    initial
    begin
      file = $fopen("D:/AGH_Files/Eng_Proj/Matlab_float_model/fixed_model/hex_output.csv", "r");
      if (file == 0) begin
        $display("ERROR: Cannot open file D:/AGH_Files/Eng_Proj/Matlab_float_model/fixed_model/hex_output.csv");
        $finish;
      end
      #10;
      tready_reg = 1;
      while (!$feof(file)) begin
        #10;
        $fscanf(file, "%h", data_int);
        tvalid_reg = 1;
        tdata_reg = data_int;
      end
      
      #10; 
      tvalid_reg = 0;
      tdata_reg = 0;
      $fclose(file);
      $display("Finished sending data from CSV");
    end
    
    assign clk = clk_reg;
    assign rstn = resetn_reg;
    assign tdata = tdata_reg;
    assign tvalid = tvalid_reg;
    assign tready = tready_reg;

endmodule
