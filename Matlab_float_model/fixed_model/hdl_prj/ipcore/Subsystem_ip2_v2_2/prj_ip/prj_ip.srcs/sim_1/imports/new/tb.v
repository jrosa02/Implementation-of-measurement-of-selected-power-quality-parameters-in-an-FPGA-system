`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/21/2024
// Design Name: 
// Module Name: tb_Subsystem_ip2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Testbench for Subsystem_ip2
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb_Subsystem_ip2();

    // Clock and Reset
    wire  clk;
    wire resetn;

    // AXI4-Stream Slave Interface
    wire  [31:0] slave_data;
    wire         slave_valid;
    wire        slave_ready;

    // AXI4-Stream Master Interface
    wire [31:0] master_data;
    wire        master_valid;
    wire        master_last;
    wire        master_ready;

    // AXI4-Lite Interface
    reg  [31:0] awaddr = 0;
    reg         awvalid = 0;
    reg  [31:0] wdata = 0;
    reg  [3:0]  wstrb = 0;
    reg         wvalid = 0;
    reg         bready = 0;
    reg  [31:0] araddr = 0;
    reg         arvalid = 0;
    reg         rready = 0;

    wire        awready;
    wire        wready;
    wire [1:0]  bresp;
    wire        bvalid;
    wire        arready;
    wire [31:0] rdata;
    wire [1:0]  rresp;
    wire        rvalid;

    // Instantiate the DUT
    Subsystem_ip2 dut (
        .IPCORE_CLK(clk),
        .IPCORE_RESETN(resetn),
        .AXI4_Stream_Master_TREADY(master_ready),
        .AXI4_Stream_Slave_TDATA(slave_data),
        .AXI4_Stream_Slave_TVALID(slave_valid),
        .AXI4_Lite_ACLK(clk),
        .AXI4_Lite_ARESETN(resetn),
        .AXI4_Lite_AWADDR(awaddr),
        .AXI4_Lite_AWVALID(awvalid),
        .AXI4_Lite_WDATA(wdata),
        .AXI4_Lite_WSTRB(wstrb),
        .AXI4_Lite_WVALID(wvalid),
        .AXI4_Lite_BREADY(bready),
        .AXI4_Lite_ARADDR(araddr),
        .AXI4_Lite_ARVALID(arvalid),
        .AXI4_Lite_RREADY(rready),
        .AXI4_Stream_Master_TDATA(master_data),
        .AXI4_Stream_Master_TVALID(master_valid),
        .AXI4_Stream_Master_TLAST(master_last),
        .AXI4_Stream_Slave_TREADY(slave_ready),
        .AXI4_Lite_AWREADY(awready),
        .AXI4_Lite_WREADY(wready),
        .AXI4_Lite_BRESP(bresp),
        .AXI4_Lite_BVALID(bvalid),
        .AXI4_Lite_ARREADY(arready),
        .AXI4_Lite_RDATA(rdata),
        .AXI4_Lite_RRESP(rresp),
        .AXI4_Lite_RVALID(rvalid)
    );

axis_stimulus axis_stimulus_instance (
    .clk(clk),
    .rstn(resetn),
    .tvalid(slave_valid),
    .tready(master_ready),
    .tdata(slave_data)
);

endmodule
