// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Dec 19 13:19:18 2024
// Host        : DESKTOP-6L1QCGQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/AGH_Files/Eng_Proj/Matlab_float_model/fixed_model/hdl_prj/fil_prj/fpgaproj/Subsystem1_fil.gen/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo_sim_netlist.v
// Design      : jtag_mac_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "jtag_mac_fifo,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module jtag_mac_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    almost_full,
    empty,
    rd_data_count,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL" *) output almost_full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [11:0]rd_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire almost_full;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [11:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [11:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "12" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "1" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "4093" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "4092" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "12" *) 
  (* C_RD_DEPTH = "4096" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "12" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "12" *) 
  (* C_WR_DEPTH = "4096" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  jtag_mac_fifo_fifo_generator_v13_2_10 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(almost_full),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module jtag_mac_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module jtag_mac_fifo_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module jtag_mac_fifo_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module jtag_mac_fifo_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module jtag_mac_fifo_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module jtag_mac_fifo_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 138512)
`pragma protect data_block
ynO0iFdi/x0xQKqpkfnUwCdWjKzT3WK9oE4lfz/yp71P4mEgIDbcxpAyZqQx4fdfTgfNKgEQ/nts
dJR0fBEWz72vMOBB5kBE/j2/X3d56ur9yyC/FIS5dFrO7lyxaf+PW3w2FS4FS+LmvEmEEYEkkVyQ
ZebdcQQ/h3lbtjUFbwPBhiXaq4VJyMAooKd4IeEV6fuLw2E+kAIYtrGiYqnZypwDxkM3CrjgbxKK
7WgACTgMqHJXVY1mQc4Y/oD5BiFz+gpOQAJGuSK39uV5UYnxiEZ9JnWsRGasRCAarYdaRezpQ1p3
2JWC3xIa6HNVBHxAW54khfWCx1lfiuszqpu0dLuXdHzB/vHOjJ6Wjzh3p2a8HMrh+Bs2FjCwyum5
wROd5oisXetC3M40bfrmQEgUe7PUxYU2PiulRhAu1IDHxTUHmLlWw8YHOrBvOIqL41X5SlTF81vp
mwZ3V8zUjQvlahcvIa4nwPLSRmTcXfW3gG8t+BY5F+Lx5TR8jpIBJFYnWJoP4LUDOwJa0NKwnINA
gK/tIuBq2yXEL/JHWc15lG3XkTKAAzBvnc16dV4pei+q1YFQE1kzKntrb5IG2Fh7JuGYgynnY2NG
gw9v13d5DxQSXIQw2yr29VL+2BeqiITlwxuDpRhDDK7dz5ubg7t+jST5FE63TwGVE4qwf4OcsLir
ftIYHChhshqj2LOAJrNsZAA40hzK2zxTbtaZCYwSVnPUOxYPY9pB6COqJg3fZRvCxUIBLCJ6vJIP
qdRoM6rTwjwqpglbAYfJN1Iry+QDVkWrpdl9EZsAVTDaXMKGxLfmObHVH711MFcu2wYY4H9mMEv8
uY5nmf+trXwSbFo5PazN3ALNrdd5cuGmiiEPHhIlhvDrCFAqj4UEV8DcE0Aq80VZTGCeu4njvok5
t/AilVhXPhfQkg54Mt9T8ePgDkqEdzcXK0CkBswj+JJO4CaHPOPNLMvA0zlxP+TsnyD62JRmRLJW
8S8SMpmuhs44/xYcC+griBQFhZHp5L1mKGC3g4tdNSGW3p6XtHTRVOfMj1pZ3/s0BsRl50O4lgF7
bqPUfDo4c+iQ+CZdSsytCZkWSSuGDXXORaTKmF0t+ISvxPBYi29WnQ15HnHAB8/JJXtwhWxDn2Nc
QKiaa4XraFTH9dIvP4CEs+CX0B9h5F5N5uXjuV4ysA71nqGvA14qZclS2+Jv0BtOcat4AxZEhUKW
5mor/ecFJDtPnougVKJ7zx6SnhUir4cFHzB05IaOW3+m4Nxx6C2eOWXuwC+vEjEkweEy91VsgwtL
2uiMliSSRQJK4m1gbZKHHdU2lm5qFJ1w6rEmnAdxOATkA0wXUF3t7Hu70LydMqdLEpL9O1GgeIop
e5JOYRXS/+pfMWk4ctE7A7pNmS3xW71uqyzFHIqhd0aP4iWREPAVYofJ16nQ0NM6sF16CvWREJhZ
WAZnDgyX+KS7dY/Kk405w1cuA1ZoeIma/sW20ipib9PYoQGiCnxtCTa3LFjD7xMaDgBDd/8Jg4mN
2pWUXSng1j2R1h81Th+uQ0rWJTzN4XjlKSiIuvdzl4EzNTgqoc9ewmuY2xKNGE1Y9Wkba/BBbldQ
UwqY5xj/cKDB9BDrCmE3OrjJOd1NSQB9wZNoI8ab4e+IrGfVlpE4OmzYuHelCxCZIEIaGahRhf7v
4MG57Y2iLt5EHpWcB9vs4J9x/He3li+gMRYZnbK67u5CaEX5zNLIKED87+a9D+oLGHuKuYYENj/g
N1iUuoI82rrpJF8s8mgTnXUHBCTpX37dAMvYS3TPGyM8EaRfeHs336yGq5eHGLxKHQ/wJB0B+/4+
dSBtTDEV+/iZFZLnnq91KR1AGt4e8n3E9lEXYCFXjlDnvYP9NDq80e17otP2jh0kAa5U6M2vYSsM
twhdStfZvXLvulmqXAzvk6/ssX0PKN79yQgn94aAyFnmUmaWRq2mdZoG66x0vMLipswjJpdFMfaj
Wp0HUGbo1erFz0GSMK/sbHrLVDYR0W0VnY84UDgKjk6XSRTVC6o2YGNssJuY4WrZ0vJ/l1nl7Q+/
hnNFUlFTwcY4B8cuVBEs+sFZgdRLAXhdlHlMD0SZm+RX6dFnBQP04UZiXnBVB4UFP9jUC4eLL2M7
HrDixO5eDWu33JY8UmON9Q3GPlPXKEtrX/rs3oID0nh6xq1dg/v481IG6f64z/oPP5Ehy1vczMRW
OMMTwszadqz3Xhujv1hRJLli+KcQ4HtcH4kE25VKExS9+tZ9N2toxIDVqMwL8Zxy0CN45C3P6K72
TkvZFO9PADmaSeTk4R0HJNMKA+Ttqm9ufPPJDf2VDf35Dtr5MAYT97w/fxvCftjMHOLVK1dx5Z39
9ey9SwffXcov0BGNl6cL8X6LvOdfMpErv7VB5U+gLvALrpVyW/8WlqFx1jP4J7g0F7w4O0GRa7c4
hgILfM4ZCUUZaaJC/VSNe6G5jLWpC9GhmnhviqYoUcGEiZbz+1NNzQ7RqW9LkM/A+J79fwWAVsto
tWYNoxGoxGnZYqQKcReBMPfyKi/ufOW2kbZgs6kBBAieSr1xZtCXkKBtqeQaq6d8c991lSg6XxWA
3GS/EnyXGOktO5hgDuNbUkYwiN203NcpwZfYL7pdxuE6wJFwm/gCWW/sDK7yJ9yw3qVpFDsIdqD3
Az1HetfmqfOnDfbs8lZa423Y7r0h3n5pEt7mUrkY3je8ZpwzmrhRP5y5EL164yrKc8LR7vfpFOD3
Js67fURE/t80AyaEy8WbVZmur9n8gWvz/rub2NI37eYoiV09F+AtrxdW8BRq+OFGsMRV4UatDWjn
EIFmojO6RtJsujqjK0d3i4oRE0gHV7gMXNRZerjxaMY2tZSeJWhpgh8QXAtBdREW6RCBtWu1M9o6
qD7hYwH/5SQYaqa4PiZ6g6i8z/P5iUzLz1/wUipDU6Ttza+8q3o0CJqDB4KdavDIfRr0s6q0OLtT
MyODrni6RhRRl+j5BmB+uIJu3YLtzxpwaON8hTvjSDkR8PjRcOnhKtb+wnwse4WY1p5fv1ZZtExo
1sx6mLQ4OXl/DSlPI+GTkUlCtIiNomm+13P4fLrY9D0jKMeVPqN/xl2GGq6wOmtR/oxF4AplE0F7
dHAzYFtELDfDJyUeVLNmMu81OsJ8s+FdLNC92gTWgaHajsWH0pYIAP7t+1Iqny8LgjJLyQ+i/ipZ
6gRjorD+HOCg7j8gFSoO1KR2k5hS9uQ0ElfbHx7RtO5hlnM6aUhLZsHhe57VmzH3aB24QxMJcyk9
e/AnqQof1TfmBmHWucsQeTOCyDLGJtbIFPJWQlB/jSzvWMldGf8fTMOjeMzJVRAPlNuhEuhi6Eyg
rPEFqdRMWTaOF+NeYQVTFffDFfwTYlZFZCZyrzz6UtAUd2pIwSu9OO1nRFl6lHY3M6JZAW6OK5yy
4ooVxFn1vJY5t37O6Xm3Jc3lLBULvNPK51OVgSMgGkx1DcPhcwhXHTqnuJZ0o22KAWJBBR8zORfT
fZUS+qoUvSu96r67C2RZjwt9OtQH6vhcGIPj4aV3DL413aDp/fD35AOc91tbsmEj4Bup679k89yd
IHlbXADiNuSjTCvNMDRExpeH4Ugu7xVzk+1M4Sai9lMp2ED0eNRkuthXvbKIzc/cKA6uKnJ56vzX
pmqzKm3rhx4u8vIOW3P/dy+JIR0jzkwtqNbICmY/vNDBYaA0Si8/jUd2cw0rMti2BuGQflF3r9j2
EuJHQSWY3fa07h3OqnLhW1gakvB5i5n14V9/V981vdX/yeXcNPaEmdKo8Upw3Hovot7PhbxMsdLW
U4ALzV4wEEE98UbyzYSXWEoOmWGNOW572aTqcu+b0KU7yYT8fzruNdCpWCtVW6d5nOBjekNeaF+w
jVEbWClGRu8uSwHReVocCdfw+kv/OxpRU/nKcDdDHyASSKnLy+nyMvELhjAPHZrPAgUSPWM5AulD
BwXKKdpdvSWeL96TdN6LiGJrJ2b1QDIOV9pT1hsPeKHBPnB99Z+CuRGfPQj4uNVHyqqHB+O/O2Rm
N0ijprJmrD9qEoUr6XLj4xjQWVvAshRqX1OM/NB1ONI+mHDOIx2WDxnNKEVH2WWaQ+ANyvDvZNU3
kq25sOo9XilsvRhy9uBztsvP9g/57DjI6lWBE2busjyIUp+CcneKRaGbTspgDe4pJEGNDByWe18t
yqJTMXWi7uhG4Yb4EpgdAPJI4wFIMgQWogD4ODSKVJ7TXRbbkw9mlVXTsxt1bUv4foaprdiVJGpj
mO9Y6GUuWchmX/HwcF0+TEyMGiKwKeoZKBopoku5MJI5RuYhqBKeh1h8krwnO1VzvcqW16QHTRKv
jLltMAvjw3TMd814EJR2TDyNNj28DFRGkmbKMc1UAgqKi1lcLiIRlbVJTEDQZbs/49hS4slfeJPR
a8kEAsFHRCBOUiMbbCBEnkr7azMAcTGNJ4W+LzACPRuL0IZ0683xOe4cWHo0x0Ohi7mzkQqRfclZ
Q05nZt7wmlVUfxaqZAoZyFCjx00HjHgBXnHIUiBTgXoBugtT6Kfyv/DQ08vHxyoL+exr7BQ0vwP0
MXOhKvsfpi36F9EYZOxQpztAm9Djvx6q1uWosYl4R0mM4L/jF5ErB7jBPuV75QOND7WnxA4Xyh/9
irnGTvogY8+ScvBHsgaRYaSFwOpOJAd9Klo8F0C/S4EUbz2n2EEaR9ydiueZxZvLd8AN+eTfyV1i
lJNLAA+bZ9w/EF58ISNGuyYncVHYvRZCTe6GUqBL3LQLKrb6kPRKII7Ya06aPLIRKk1mKUHTjAoL
G4LrYndvUvCMeI6sMnCc0K+kwCQQYDLugQnC4fPNk1UKRuo6kA2DSSoz9jIA4dBh0BUzMpVAChSl
Ye4K1n2e0U0SsyUwi7f1z/gHdVyU/v/XAo4ONO+no7V0x7zVRjz4xu9tnwLvEeYYXf99nKfH2X9g
OUcakTSxFmzpfWd1Fg/yZjt9w8UNWqvRFl7is86603PExuUp66DhgWZ9MSfqY0n6JH2F0LXI+XJm
4+S3EAfYbiIJXG/5PU8tnOe3w0tqRkakSl1bWjTHFG1IX4mhxf4uol0BknlZ47/vVt+d1A6bQNUH
OnKWME35IsYST29gS5DFAdACkpySJbvQb7o7DPxMJXgvBdpzQDsOgc6zIN3oymmFTRQgpeRfEewz
V2kUSK12D2kRezxX2aPnA+1NWTIOe9hvbSl0LdQ7OXrUbX5jsB8LguNfn41R874OlM9nAJFsvncp
pc9OK7fazXCkEUxlXuBJrMFz+3g7/zjCRq7tWjT/oTWyAatvZukkcA2Iz1h4j2pQDNsCZJD89Tcf
2tGx9EyHZR93aHF5XOdb2r4B04iy65VCmVfaPb12VTDrGnIVq6WXm35cykmHLH5IQKuWa7lOkN6t
7n+hEn6SamDSq2hAZgz5e4ccAA2F0OxBjV9UVNsRRBOR9WblyaYjTtW7Jl0jNsF5vwohhcPz/dxI
Xsf6Y9bZQ5ncAR3g1CY4P70HCT1EchgvGJapb0dBU3GG3VQkvfUpRRSnVRXxik7hU+whgVWwnXFX
+4rsjmZvVWGlIkFOlxPLeqrG+MP3aLUIX4+3sOePGbjDyyid2C+wP7sxpGf/FZ7ORRnrVPLIH6bF
JR7xVq79KhcBaB5E3lHUIg6gTJf8rytpLpGF9JdevNf48oU5NFq6LnV7Vq5a18Bj/cDho4mCgSu5
IIC0bJNEo/BmwQJpxHSRmAtQLPTMh5T1EoWWzgQOm6DTkGrlpKqIAOI9UrUjPU+0ECLaOU7RffDd
Ir9DuAcOR09qdW8cDx+ynn+tqI3oJS94x6ArX7Xt29Bgc5iL95Z4EU5AWs/VSyGbYu0mlu9dmWSZ
zmyOK7RBEjPMTUedz/9EbTfiRDI5y6qRS9XvDRXwW1LAilcB1N+rqJkLCxAtni2KE0BV0aHKae6l
wk9zpU8PPOl9pUmT7A+fbjANkHWBfSXh2pfjF6nlNu6F78W4em6lLtP3ikiLAduIqzn8kAhgvVH1
9CmN9F+VQdGipEnNyUDNM6yWYcD3iIV3XFqu65U0d94mDXrRquGTLAUz/Ed1hwo0ull50bjKi7O/
x8y2Gj4bEz1DcQiVROH+cENt81HcjNN3yXSkDnIXRcdtSlGG4kmgNW0EXClHD/LOAiWPiUK/K2lU
o/Vc10imQVC3HnOs7XLp6PIWXCpju1iLB7fv5yiVwJCDAFcPXtUNKjV2zd++83EDfraTyNAK3C+d
hUIE+bR9yNEkJcZkUAQHmkY8rx2knWzsldadKjH+DzHQd18nqT99Z6F08fEZxXjey+8mgYCtVkpM
G9THQDogp+cT409PKcmb4V1w/o8wUaKSq39/cLHJm7dhH/vP4ZkCCsiN5DaH3QW+9D7LfhfvSTSD
5rcL22/AA0vrYmdEQBDe1r2uyIq4BBo3J4li+rAUKCKKZvQrdZ6CgzYiMUPqnvlQWZil3qV0Sl8+
yZH+t+BeQ9ir8pxLn9FYHMcYZMAaAO2XtvRNylwiCpfSUnf7khtJyoWpDdgQlJjz48fnQalEZGMu
zMUVYoeY8w7oPz2QBd6bJsxyW1IxGKijpydF+poAoaMjmP2hp1twKO4e9ZH8RAY959u4VGe/5ZkD
sLtz96YUC/D5qw8hd4FEAqtYaeCd+b8OFUn3/iAOboj82+Lz0Cg606FwJuSyrFyG22Z+3K5P+946
qB4WKyVh9q0u/UL14x8D8qiV5xJ59v6eh6j5CUM3aUlnOnEmu95n7b8F9ZpwN1/Zl3wEd+6ZGbK5
UCBv3sg+VCwp8sA6PdqlW0WwVU012+wtNJDxFCY4Useuyx3FjNkgYn8eT2YyI7lixpegOUDTgMzh
/rtlhTPI+ZOzpUA8Iwz6vdOTAMgRzCSJA8DlTbh6k0DscO7niHgQJeDucX/vBVZtz+H40NZCgKMj
9ELnmVwoTL6vS9VV6Gc5EGavxc4FA/dnsC0NhjhMxTdc/QGIsX8KAipuP0Fs3Na6Tic6g4rjSK5r
NZxL10t0ByYNicoHDTBQ5JexyQSfS7E2xj1uP1mvJT/kGd7sElml/vP0hNqb239iHlrwqndrWEpL
GnWZMYsc8aXKykoyqVfsRMiYM3QVj/ObkhEgYvLNSd/U7Rv8LkfDMOvwgwuskfHgEeCoVBPkFn/A
Sx05jfj+Vwnvlqnzpkjoqfw5ojhX9MsJ8BM9ebnniwlaiw4zhaZn4kjE8G43rwi5qjH4Yc8jbP6D
w7ndahBsi7vl+/NY3+yrDNVSQlUWCaqw+zyY4mZymEQsy1Lm5+yb0laxHG6zAja2akKnpRyO4OXf
AmUnnWMeOCt8+Biqne6oXZF+E+oo8xq1OnJKvT4ryHkNiAZWs6q3m2eskMZmACCYALSIV7DrFweI
ESpCnv0qrawzAIazTCTZpbYWvzGIjWyyAp6mbSTwD42o97rvVMdiN79MMzelEy7uSYANrKs/wFsR
cGYpuB50rpdFj6YubCQ3wvgLaCFnBhClVncilMwDgo5iaDj0341/EDiNgEcXoqsEReCXYAvokdZH
RUYJjyHNMakWB+zEHqmwwHa7Fb7yJllIsUE0vqXJ90z1ekSSuXDxP5QnEE2/JqlZ6BYEE2tKZtE0
b29mlBfuXLiIOcKFrJoieyVKOiA8ElQSXL+zB7yYuW1a0FbEI/H3q4nI13PxseJ8ozQ8jRvrP5o6
uvQYYzIzl4/N4b2VaN1U9W2GY7pH5tIGVVtl5UZ2WbiqbxTR+IS7GjGroJOLK1eoDX8ifx3K/t8y
hfaOc5IYzSHu2wcjPX2jwLMNvZB/imTdXTAq1IiK/RvKdwjC40uRU8poHTJi37VMXIFWqPXa6sU5
0eeh6wGKrDT5oE7pW5cKrRlbrj6RJ69tIKskzQ6oEZ162tPTgXSJw/LVG1EjecdOmVDtzEjTr8qr
P/YSnX8d+mRBSbNoYM1uORFc0xFP5WIeYKQPY13Hyee4b8oB/E7Ep01fELHRVDrvXdEgCjPm5Ivk
KFThBDV+Lv68TbJxfHlnnkm6+a2ml5MVrKi4FVuxKof/T8NiKdcOCZpbQHgd2z/DVketLI1gjygq
A/DrNPIPjMcqPpZgxN1205VVXoVCYpkpK1MoPeHHzmZqA78PTtIwH+LlOYrINeU+383P3mBrcBca
n4uPEakY26R8rztjtnT2X+Yes2H2q/S9bqfylejCv+5WMszGGpHsuMx/LC/NC1aAPc4EbPWhoOF3
6f28D2w5kTN04Q+JCStOKWcWZwa5b1ZLlSpwwI4OKva6iExLVqftXzFEGL9iE2LJNIb4qe8AXmMA
odnAjHv/Q5ViCORavmmeyB40oHkZea4c6UadqH5swu6oBKufzuJpl/O5WUraaOBEwlsLMPmEdKB3
o3U2gTYR7VaGGylcnI99Y6TnsW7MGF3QqST2d9rcmBcewjyRlM4fHv5KY0IYDEe4ECpt+FIWZveo
bz1tquXnJUHz/QplqaoGHgedbKNxpTb6WbvYxAvWmbZPnZ+FquwLsT/+E3dCG6F9fEXT4m/txRzB
9TFld4zJl6+mhv019cQyJAwRu9j3KGb6dvqO/FwoGWGgzpzMZJuT2zaYarU97WWYnxLZTgqA8WjW
6MWW1bOehAcB5WJtpIKU+LHqwYjeC8P9vBIAOlWw1YeQgvXEJ5YMT9Ru8tR8TxrB+ydPO+lFN5Oy
duArlU708VmQlvFeNIX8ZesGbwUIDICekLTVVW0MEkdgx1ftBWs2aACkxUvKwYpoJDcC8MLwW9ns
aGEuxrcHxpXlMmGIjjqw1wRNzYKQldIJ3v/7nnSN84Sxa8lo7SZf0Sc2pPsPWuXQpvEy5zLTIeVb
4Dz33LDdiTQKGqXTWxa7QOyqIFRDZ1Nj38JMwnU9KKwu8i9fcJb5A3iSV6YlFK4Oad16LQo7GenO
MALE5Ia8HECyPu5BIwT40vscBxurfOFpHKy9EuAODrrNL5JNLgk8xoRLInWSshi1KhowI8s0sCb4
idpQPSJcHX5XT/SsPJ2tNId5sbgCdPtCZ4150VGRsDdC5AgaWPov1lC87tT7/3djTS7rbiMd9bjm
3ej4pJf0KVsv5ISY8OaYreV1+i/wOYoHA4F0cbCPCfsPzMk1SR6ja+i/mPivsIL/gL7ie9gc0pus
vs9uvVfdmgy5yWZNJ5p7HGE4FBMoCHaY0OoFy+b4qMmBu1D+kkfQ03cKF88yCevUfoOTUGMt7cHb
2PN+/TJmJ6lq+fNG5Ap/o5va2EWPJ1XSgSAS50qf+1RtDu+cY1dtYtq62lIZDGfv9mWQJ7MLOSD1
BwrTlR+BChuZkfg/0Xdiy5kvtoh1L2pOwh2AKtZ5AcnMG7TzblCPYMeI28cpYDfmCn3/npiiQNkr
UElSfBob1BLl38BNxAlFQs7Ky0AS/CkK0NCl9/yWTj4ggipsWaSAMLr6m3RmELvlGjb0Pxoq1GO7
GF5u+SleFMtNSoyyD/L4lH6OdQIGsTh6XdwWBALCzYZU8mfbtKR89X+NuAbc+ODFREwZ6l9b/rJQ
DeIyW3jAQQY3duFctMTE0c0XO546lKI0q3TKCR3T28C8jFxtR3Fyjy2j1A5p9LQhW+yqVmyy0ASv
Lww4s8y/TksZZW0Hl6TlZCXukjlXfIjgEDrUmMNNCKR2vRreVmoXTQzHkUN+UzTnPHzcvt9jHRyT
YH7XlEnmsLWqtLeHgBpRkWwIURWpJ1mTx91aSysLUNCn3ICV5ZLyuHB+B65AL0DmrRXfocQXIDYx
aDDplWC+vDYgCIxJtM0i4+bq0z2kmA30aNdUKsABFeIUKZHPf1i00D9wP5lLNXC9pvd4HDcXQIvv
Ocalb+zA2pPvvqDli4qK1bJDFwg476crV74rzHrC4iaGX2VZ/PvzOqWjKUH3WdyiARRxYcS5/A8y
rMG57clM9X6WKgc1zPP2n1zJBL33Rg4l8rUvqldgYw1Jv1NbvTAXLiBovxLYZeHJtfmiADd6Kw/b
aOvYmWXLUc4vUC9TBcaQ7H6fsbfqcGfn6jN1ykbpNetv3ETBHU5P8zVZBDmDfocxkrVUVp6j9cw3
veb8sbfUPSLeWnye2l4qLJWYf9tAjWSYT1gDDXFfgkNFeQDIx6uXGIdqamJLSUQqIdH/qMjfHwzr
LOFHT+1305Gx16RQQE/Hi8AsC0PbOXSUW4CTrn8EXr5AwGlrjIQOCeYJC6dm/o2T3PL+/UdPQoIA
Uc9EZCXZu2zQeZQKZ5pMajvdGc7bwDnCBoBEc1yP+baB6H7+J2DcasRJx2EcIh9tr9P0z0H9OfPP
TIy6NL+Mm4cm6xoY9z1NBnMyV4getum6R7K4YVZDQsBXWzcQqxtr30wgUDKXAn4su8C6Nut+pjc4
MVt+xyCR0aT+S2QIXVBlgICZTLYuryuib7ED0dPfj0ylMIiRAH8PwY78ezyY6kJAwkV5JpSh7pnJ
UwbtuGXcY3+Yr7uoFwhKa+VTGdiEGizsP8DL7bVdt8kZ9nFohbABXslTSqxzPCKo4URgJrN0kzvn
jgKP7OnK0KyUiQ9oF41OyFIyX+Y9iRJesLW5xoQ4+nHilTxWPD8MI+ofDUbslDU5PfrEsLe+JO/R
0cs+9z5kvNqB5Qv/q8qbpWWdgiBuVmCOtpBSNxQ3c8fic8wMDb+P+bq1eob55Jq6tmr3W/bPJrcz
ZwnRkLjNqb4iVD81BDY49poBPQ+E4CWdelUnzJLKedUBBHS1rHLvc7mhXVudXNQHC43SnmNamRlS
nWIzw3Hjyc90P08PhCciB48BMEAlo6yxANIQz66+ngZvtI/kia8NwOyC9IfwYn3Ds6Bg04+akRvd
jcaNraaTzYziuNM15lzpakLeDtCQdIbqpKsgFlbCxkSyDXGbfn6slP4IOMc7qHFwnPZk54w+frqs
QagzVyk6IEyu9yYU7LTYdJDKETqb9cHicVUUMI3+JOU1kbMA1cv+ixKdPcB5wAcno0A4ltlvXpO3
Gfj96NBLWyhMJvlqfJ/JLyIMuCM1st/0VE1TWwZQLgIFErlQAC5OHBy/Q2ETRlUvvFNYM+LHl84N
qpt14+GXq/WFA1a19NHJWOq/FhD86ftZVElr8++SaGogpQogSuK7rE+kSkVanPNl3MyhL06WXLQi
+r0mi6gAU5wqM5lMMiBIjShuqaYw+MX/d16A0F3/kX5XQLYelVrzbGMZDswI0ZS+IWLwK3dAAhgc
fS9x3MHOg1ej+eBQ1fS2CRd9vPqYzSQ5r1jtvW8Nd0apm1ZEa9/4JXC9ZoswpMI1DscYZIeDfhD3
T2R+uWcklGLuBgPftNNyb0ttVzTRJJAGAjh6J3TlF/AhP1gDv/8NQgqL4fFEv04BB2jImJ2wq26L
AlLreYRki1WbqQ0BrvpfqsSeZQ62wnOSXZkVrMFYu8Fqtp0PcfpzJLqelAOLWSismG7kRu+dLzgb
HEn8IU9tKPyp4N+/h2oNRE5Zf0vCclUafEv0kXv/IPFA5Kt6xp6SC8cZdsvHJCJC3ysCCF/yl75t
8iOPQH3ByMr5evsGugNOGE4963jX7w9lJw5/HjMdooCw/l4LIo5gvcYRjAmZgLkDTjFUA4aXhX8Y
AkjedMR8ZBts5geijHfkUL21N/DMgsz5DbrmxdZygpPmTCXpdkcOeDySohPCopvdyNFz1VYM42hp
JmWGbofF+18E8kIT4naTs0KEHaWoJDHPfMSMvBWD4Qtt+uAb1z3MTisxBzD5yCPXef6xtv+gJGlM
mUZ4j63uSQQKO3YFJkY/TjoqWkE+f1DdydqdgkaZ9aoZLn1UrNuK0byy9lQqUVxvqffJ++jBzRtC
0g6+sKIQkY8q5oK26zQt6vq0d4Hp5ygqBVfg/vcbTOSjrLUA1yq5DFzmpnjhERKRRp/+Nwf0aaZi
sidLt66upAbeiJoMY4dSPkF3+j1/7F+Q4lQopQa611OGOHau5P4alZGAwoI7Eh8DvU1OdZauhhtg
u4hduh/Rfuqqiv0jTd3krSLivRvqCuzwIexbGeHvfwJUEnFCtmC8FKAyv2h+UfIWeF/jVREpqg9q
6HCvkrzBT5OOm1GBD8Hu/MnRiWOsG+qGYk78rvztZEz/DYCTn6MDt17K4exZdOf2HIHF+kpk89ym
FjqSCFP1igWPJlusQZI+Nh+bDi0LMbyYpfmG9D4lnAGWOECAyduDXrQiWSYlI5PCTUq0u4LxZCJV
/W6pOlxw2UTqDKNOGByc/3tpOv2Zn9wXnmHr3YoqwypMlgQC4+6vTVGpnOrQlss0KWOUgk5QWXsb
G7Mo7B2IWhuBVRyO8NWNu6+G47xo9IrbrVoqRnkcNb83+AB2cxrz/+NAKnuV3AzPWDH51n4HGUBI
hx7DsKVxAw/aIuOcMPqYC1+kX+Y32iizEJ0hLg5og83DddG+o4GgeCgTXI4qHGETRzWx9YgQ7/cM
gbfKtd3p3U642AP8t82bRcJuU6BVVEXiw7EApeojwrf37jKPX+5FLhY5gPSfKyz+H/PpWOL+tzEH
yajPQHvAO1faMBJRej2XajFqKmXNQNrGbp38PMOr28szqWGZuXMvAGDZg1h/Pk5+ItiYA7e7mAan
ph8kIT46CSwEPlgwgW/cI4AfHDmt4gLChUXa/6zX/nEtYz/9b7QXXFhZAJMBD8OpBx+OEHypd7YG
HZoOO2rOR/Hed5TystkExKxdMnSCTbedS5Yb29WxfPYfHI0l4QqezmRw9bvAMx/yaN6u+gC4N7xv
Sg5Z3EWnA3Kwnqfyv18MWYDREN2yaBeeT79zQH0O+YErWT2mcKBjMu7SmgivN6ApQDvoIlcv8NJp
aMiDYwiMPlvSCVe8/GGErZBox64Byi/EyiCiqBCt2nuSKtU3hFfYdgdtxixt/BU2g8U1Re5penV8
JAp9/Gr7ujfkQrjT7b0T8QTRXYFApO5nM2jVJ9Oq+u+1Rx1kH50bxdeJmu0uNL0D2+I02k3mutP4
IAA2PvVRbHnydaPfWAzVuBmRH1wHVbs1w5BrNXstcVfM0m1De284b846HrU9qfyZondO9jLPE9g4
6oYRhuv7S0ro97MZJnw8gdlTLAWfqG/zzzYsCfdNpfJL5klqLqBX9irxvxroijD7uzUJN1/3kUPO
XTUXCJ693+XPbzWVPR0OstTmxfBAYYQvtlKG39BnrKq7qlng9mKq52JvLyk/c7+Vz52GagPOflWm
ln8PuuQMl4n4lCnCtiY/yIq8N49gDvVBvVTfhxDlbV5GSh9CyfxgIJh5gJSUoH+Gg1zW0WrOJJ/a
zrskMGkxp8W6VfZxCM3+3lVvoqZ77VLHl7Id7V+wYSVIcsjIq15wv1U8HgRL2lvu+nUePGCdOsNs
CrtRvpsZMrY88RwCYgiosdm4WZgI1AHLuInOuSOPzBl3w7iLk0cZ2nhM3UqCCB8GEdIiwlbmF0R/
PQE5tl1C4TDNFtP61Xa7RXVk/cD4v7G1UaQd6KHZ5tL1RBd7mjm7863nYzM4t2cZJ2+T+Mgis+O+
rg5/9FUadRkhI2uBz9nOgN2EjcGFBoHpBBbJp8+quiYLE4gQvYu/ExQMvn60OddubJHhLQhU8mCv
gX6UlOAxy8PKZpxo7hGWvqVXiaaJo32xl6XHLTplUra1lcTDKLm4VUm/IHB8DxxODP62UmJmjtf/
DDRovMf3unAqnN2CiAUcjW/iqc9+2b8arpQpWX34GYwCUYFQm8GCZ8sGuB1+IQ5XwEZRImAXtImr
4q3En1GtyDEEzGtC2kiFWhaSZ28+TsRLb9uvvs572F4oIKDlZ4WFczU44Jdm7vsgvpzjFHvAc3Qz
TNkROocThqeBYkM21UwYQAMO+2tQmHUgwZvDjo84jF6//zNEtxRoabdCvXvXYWgqcTV5tOyqj55y
C1/YV0xSIASD56he3/BnktLLjLaaAyRV5M1wzUG8VhtPanZXMjvApr4AV2NvXt3ocXxwouWNYW4P
ZZLV8j+67UeDKtfiSwqg3oZcPQqSlW6PzRjumYnQQDYgcLDjD6nMDrLY0VHMjnfPYLfHhRL0S+SI
A0+9QNQk57fBiGwVuNTg6nUDWMndZ/lhGnhwO6JO/j563UsTWFZvqil44H+QVOtWMHkpijctwvVK
Tk7VOrQMm/OfGdxNd2WvFmWCH7U/vgSTuCZ++zmJvp2sanZAC213HASkgbu8UX+TrYMbJtLgRptR
wNYO8Ytz8TGM7FnYmqBa/BHfMupJ99No5Wr7StehlT1p3/8MClttOG54ELR8C/bwQDAWn0ZcvHkl
r3/crElarfX/j+XahtUvWUKTX/pdZpFKc5uttAe5+Cv3ji4cMikLO6qKXC11Rr+l2zHzDQESLNUx
Fv03GX/AMtZ8uiyzc6CgACdNtuMVtV3IUeb/tSH+RFLgSsAQNSZyVjGU1Dbq9hiUtSBo1J7up6Vn
yGXSZ24DnsRvqTugEYfT+1gRthws/u8sjbQt+OO06TCsK7pPPUW9vObBAyP3NjphaPzWVcI+hOxk
R4xuuGNGKZAAzMAvtF3h3kqS0wLu7W52wIclYEHDAWcrl5c3bjC2sUgd2ydY+q0CtJwY8qhWmWon
n3JRbDICOH6UC5KT86j/eE18cV2zr9icGdyfrwYCHrwuJ6wnPUK50wfk/C1Jr9ThC+dmY0YIJT5C
FF78UOknrturFYuZ1bU6M9fik5DUW750QALr/LIWT3ulXEys9lsc/vQ48Ilha85HU+MieUqk7PIL
rUZ9mrIweQAZxmivx/7Xj2bJJxVsb0Iesucvb9Hepl0cyXffgZDknMzDNamWbTKjJ3uqsFetLESp
G+J1FORojWSIQevt4N0EFsKCqyxpFXre6LvA2b9gIYWi5SGkAJU/KongJuvEuNdYvuO6b7bLpEem
NF33MXwiKjpFIx85ksdyTeVHvUBmL05EDAqmY39Cm4vGdlub5K+MoXyrLfZtxm96MrImsDQ6fWEY
J3cYukmid5wNynf1DWqTYp2xQ2eQyk9eTN7G2WmuLZzDbHRDkSjqouTTngUF1Liq0x7tpqKuaueT
BNeQc7spd73MKhYuJEZEpfyqZkCHA9ODTei0mXrnTLltrXt4o8KdtYAjtKZi2yQ3E+wjP8uF279s
RbFkhliPyqkHjRMjkX2qrMS57rBhAsQQxDlMTRFCPcEscBgam3iyoqR/5RtdtFazV8yn5tHEW8Ij
ruVatqiMetVML6MuTQatCwefFa2pRLC6dhAPNC/QR7WiXZS0ECatB9YnPyFQoMABckNCoIDiewsp
dRVvikAswUiRXd5k3mNysnAtwvQ4PwKgnayIa5LPCukcuC7zW2YbEhNiWzsGFNNpCWjOHlHgHUif
/zQ0dLLTsJ5Kd7pdOHc5PCkOVao/cHQRpUCVzw+UVXysI5X3ujksqsXSz6HX1hWw5NsMjSvhpk2F
VS2HeBbYR1j+/MnmrfA1GDJBf3V3AhypEdOYN0UwKJPwjUC1iuThAk/JmLVNxJ1eMDLR5taFQURS
3x6ZdSE3R7W6MrOjuQr3EB8/1y2wRQcph0ifiL/ffMmvbvgrZJQMAYX6iWgvqfPDH+6FRV9RFcqk
OqegXfx9X7yuyzmTlovjDYPewAspHnSM+4dUNm11tCAfEN0BI2W0knUs+wdB7izoVIG8MZYPgD5S
z4pmP9q0sQUo1GYV1RtCCE+lfIupaZaUk6BCe9W7tOUmW7De00+4uBcxwEt1oyhGT3y/A8iypZ5I
a4Twu1RfmbZIqs4COBCB1vzHTeyoV938Q6L4Rtozb1MmncQpv32+fj2td/AyIZtsKb4MDNDmXRsC
4VgBat0J82CW+VV84qJX0GQio9J0Yvg+sRNtSUF1Rz18b9ra98yFbhHtihD1+iriNCE1kaD0+B5B
1ae/4T7mDaHnoOaSpQTyplXRFld+8zq6oXHCzUIL/gmYcZ6/L1b2TBcdgZGJgj/v32AikZNQvOY7
AqHbhiBcnjHIcTbBnefFYfA9kXrGx9m6rbuKIa1/i4gQWKY74/57Ce2/jsKYhEBf9cEvFHp6kQ6U
1Mi9BvGLB+kOBMgmbWyI1kewP3d/krhuox3mMpVHUdjtlOFU0v8N/zZMo4u2w7G9f6Mu1JEXnRiX
HuRn4D3plhMF5J1tPXg7HaOOquXpzjE7DBBTWN7yRwgKiSQ+sRdVTaN8A6RJTE7aJ14jw3Qx8OIW
qK9RFkF61hFcBi4oYAJoxanGdE/Fc8oB/4C4UFbtFW5gmmk4Yh95NyJK8Rp8mWAB8sWtKstGQ0+G
NO/8ClyohLdDf7OwH0bgd60PI7cHMmzmOkrd/SD4mDK8wNVDlzuSx33X8vN0Kromdh7WvyYM+Rem
GHmrgYbBJd1Otkbeh38yH/VQnBiKsJ7ihN2SdJ1sT6vNNLfGwxjV7snD4UcgbxBd1BEZ6tgtcUBm
GlYvgKkL5aCkryh4XbRznlNOEky8S86VnVbAPcsnbXK1V+thKGrMHDDLdrAEjn713dcT21vkNBHm
UMki5U2HzMZw3QisJXkjDMlt7PiwVfCgMqihsNHlHiUGNMU/QlKj4DSragdgUgT5SvGbdQ2IKwTb
yOPQWbGXDahEDoGBQtZnrflHkcmHTC3uhlAx6Jc/ijFTWh4gh169cLk2CYJ7Invu/QrmdcVawd6L
cVczEPgkfI56hOPNnzfRqyNyDpAQYUyy75Ak1Z2Ca6Ay+mcqLAjQKf2Y6wMQxNQI+yJHABUTvuYT
NlyV9VbvXl/re6q85DKCN+gG1ZXSEgH2aprrGN0YzTP0kfTIKnMd+K7Q+J05bk+OKh88bRBTxuUn
ONssJiUZFWK8fvVbu8YYgOfurysFWl+zUFQA/BtEHI+zCzwvNsKoVjJEe6TC3pjFLlHcjOd0zRoh
3pw+vRxd2TXuEHDHyMWZch59N90K6GUGNzP1O3Qm0s/7F41akLbq1MDWx0cgfUPm8JuFy1Cuey9j
oYzfMaI+ldy4MrI4728PnAWZuJQh34xgPOpkr6J6VHdhLGYZU5EufgzDOIAyX38yBjY5/pPAoboA
DTlwCY5jLpdgpfqjrYykWJe2kBX5GZq9c03Jg3pzXAbUBsjqkW9/S8J786V/dNk1iBiDZ47RnTR2
Mb+Ezu/FDNyugYvpnfKCk5xKbuTJANYez9xXveoNhTw8jSlmDP40KkEhNjD3jJzth0bHdnKXbu6V
Rm3PLo56OB2Oc6wyC/gA0QbG7eqxcVS2fOOclDWDLSIq8uhhKVbUzthwHdA8mp6XcMk3mOomkMOM
v6HaicJ27OONAhPn4RekjfG8jSOLmcaq0F8Cmz4m6ptCFWggBnGEAoUb0IDwrcceXHSHqWM4vzlz
Jg3F2sL8CihFTcy/F4Ll744kj3RP2X/fTPPoA8QTQJt+/6CCxLy+aEP+7BTiUCOJiNrQnjYtt0Tx
ztAxqNXjQPZk8keGQh4Tzmq9VOTnuQJLjSRbZ5RlnDZH5CaFMHvs2e8AZ16yzHn+SXdAjIowXJkm
Ol7bqSmhBsY6AUnzPbWRGR06zbgrspPKy4J/K5NqZ6VrG/8JxeWg/U0z4xIDelo+BqnPIGt6I8FW
BwtaMwUrEtCTJerXEoixd/jvwl4+qa6qFZLjWByE5nqCA8Q9HAXXulYD3UF1w19pQmeJQ0buGCZ2
h2cH0V0Tz8urbONIMud/ih/8v4ZVrvVHmwnjvgYQbwYiLfkhi6QWNmCNNHhimVbyNm5t9Fxnjq4E
Fg5W8c8Z65LRebqb57/as+0WGi7dSI7qjrmrEKisqNRBFouuUwlpgxvwWJwmRHZh98zbTkXutWzR
9+eIPX6Qg4MxILjUUsW176IrOpWQwCmkFtwvTwrLXQusgOXUw1NTpGN7r+OksAPDiA1A4dT1FzKD
jPc3mHfAvG/tpJYPrumrkc2mwM7ScxdYD3Dc3jLVCfSt2fTqX0TRUuwfXZkBbEaWIXId5nnmmC/s
B2uKMwk1UC+fa+t3lLZSI5WEELvJZ9CDOek5FXR3UL2x1pCAoWsOMHu7cyDy0ZEPvI/96B65kWl5
7TWVb3bdQTs9PbKn2mL2h7Q8mwhhbs5oy7ADCz/YCmTY9M4MXzA3nC8li2BHrzK+wU9F+OVBJqJr
/ZlgsI4YtZONbpqzweNjat173Quk7Ueo1vVac1e3RhdVFlfXD4WHMLuKPBqqdEq+yWAL8cViPqWw
rLFScwG6jI/TEmUkzDzaukE3CwFctflQpJqTYaCqCnS0S8/5SC57BO40AJZL/KwuJqZ14gA+1PFa
5gtOxwW+DZas8sItQzePx6jnJiJ51zCb8fkY8tPjyAWRRgRiLg+H+O6E50bFLnibLSTnDehKG2PD
Pv4Bt0r1IQ1lFo45yoMa8W6F+hs6f5zgHqs86fZZexdcDrfk08uqFyIXDWl9K5uU/gRzqMKceJmX
C641IGcfQS/Ogl3LAWKRaZeCX3BcU85ZdTkYXpN3Velp/5OVIZ15Er+/O1420ft5NJg22XajaSh5
qD1GRGGLSpzsZCwJvF1Oj8pe687fCeX8Am7QqDUeFG7DZAFOcsm2lUGrmAHdZk0W9GA1aWCbPv5R
Ovq6f5eMR5Ku4hA3zLdluevbHCQZwGTWOeNoMVlbUQcKsgKqBHzmvdu+iV1Ff7kqxwyMZTAfcQm9
pqXxYXB6ZNcM+sl6XAl3JKbmJQ6bigll3eJ7H+QmplkdUiA+iFolIgPPpph85OvCyUFFdcvEq2qu
ekntEnYUTxMXJ2r4iyniYaqblu0rmILUmPae1OxmXPXHQj//T10fgvnMTqteR2MPqs14JUDErDBM
hD3S7T1/8YBDQbxZQpkZ2tWn7hU5HKCtH24jaMsc6CxqRLwD5wD7cxGSF3ezfCQXvENQ+a44DQCK
PeJ4T8zb9rHHHM7/RaAvQBSn9WyEzAwUE4Giev1o7PCKy2YCDB21rO7ASAPtFAf3bNFdPPZ/ExJo
pwQA8e5iMjSXGie27XeApn/fdSqY10bIqKOndaW2shbBu88PIwcx9R7bnOfcfWValOWXM6P0JfaN
Sb2eR1SP0gO9+XxIadTxPqOmSpvKSNzEv3XswCm2nqlr8h+nWdOefPNe8cr2WA7HaXkmJsv67t2U
ZwFHM6uEczw7PH6VmCwXAE+La6BqWmOVOaSj1hLU5gEIS8oYXgBdgX+RZXPTsXdCxHd9bbQ4yBzx
54nxsHFjg1DUf94i3OcwQD/VaKJb7tlf7wDuiGifNQfz9w7wTFR2kQ3fLvzxgcYkbF5VucAz0hTq
/z50RsgVDFYP0sjmOIOHe6lqdJCamkuToBGpRq5zTE5a0etuJLygpUacW4rZWdS4sldlD5C0Kqwb
mm/H+B+43kmpJ8w2zapqiYnTE0AU3w2T8+tHSdB4zhI01vqnAsvTy7C0WrOVkQKhOF+KRQZ+sbwU
kmhJRAfwAfkBIaKaHnd8WNEz09KbAOkKppE8o275wExRy2uFpq9kpLnsoCgY52D9AkKZ6N0qzg/Y
KQqGlly9JMTTFJBc3o+n19w+iyuFDV1bYa0d32vAYIvZ6aGazY1VIMtnXu/HNU6aMk/FS5BPJjQ5
YET5hXUgTaNLI9AIVU2IWonjkgZdD33VaLqJcSqrOrsl+acIrr++XV1Fgkq8p6CZ5ss4jOCEPum6
c3mM1ZsnkyR3EoAYQV56EQIiAHMxx6MjgdahcACs4Fs/clJnnHgVTzzwLq++VSPTvSpLyAedC74i
eo2oOocuCdCneYUY6g/xKdbSUOR+3843iSNQYwiKc58A4mVO2ZAYRFK4O1HYvbI0w+Zs0vsIg+TK
hmFa+M0TxO8jeqWxYMchecA8o4qMuReTx5x3pPmqupZ+KRnewAVdlTwyEVZms9Um9mYSuxKVUvcL
/IjNqh0vmrbFA26+xlyAfgB6WZGLc2uMis2Qs1WaMpFxX5NF6Ks6VZjehkUmv3y5HASHVC8GiQWR
vt+oWksEiU2Rrl16ij2MtsqobKtzqfhotm3EpZ/3GCZkHjLkz06agJH1UTtDm+0uh54EaNxRrFV9
v/sXuTV+mqynv1OxASV2Qol4geq0vVcBc67HkdmBBTpyJCkJHx6p4OfwmfirsYPzOGyuB7j6BU/F
XpucQC3TgWcdi2rbpeWYyCo/mfCItnaVXKuymagT/mhs0PGmfLYBGiivEA915QhjEMn29o6vpOr2
wRxaPqI2kRM9M1UUUQiGrmryNuRqGu3kNB1etdZ92mK9i9YnkKOnQmgZDQrxkFdMEmcpQEDFlH/w
9Pl4TQTDjKhELwZelOkHuEy4MgccWld+G59jjPauA+vQTULkKLOT6BcbkTcFghyQZk6VRdnbxHWD
nVJMqBCefa0pV436piTYj8rwpPpynfMALLVH/jJdo+7qVrA4Uen1SM4XTsrJ7c+QTocF0SyepklW
ykzvPP08qobugLTqufW2Jgc/MmsJxVc/+6zdvF72xbf4GiqRoj64kX5ODG2fgXto3u0Mufe7fbA9
bly/aCI09TFd1ze9u6O5NCM4OMhCEPvA1xNYmDn0w/Nw0pD0UKW3N56I2jpjyUnNajFwI7DGCP53
ZgP6INvZx5mWURbCNhXL6VWPrW/67UR/8HvEom1BQjLmJKN/k2lE2Hb+HLUjf6wT//xT2DxIoSrh
50tpfekSiPpEttq8ldpfVb02+IrTQg6pSs+Kqf/cbmIFV2Wv3QnEQLcg0m4Lfc2NfqDQIWo7G10d
5+YBfYzZDAlQtvEbNatR/GmIrXhBzrGTjQcr0fO8On+JR7gNak5L8cWkMCdFMf/B5CGg8GC/INgN
8+s6vuB0o/jZPkGQCB/4gMbSFbLXmE8Px5pga/sAmgW7SkNCOkWb78BL8OaM3Jx28KE50njFAxEd
ABiuw5eXnhmBUR4GJDdwNDTg4pOWB/blEmOYvzrCO259/7cqhgACAddguIZPzTmBYOh4//SU0T7S
TjrGnz6Wea5PvkI3KA6kgv+OF3tdBcCFs2ltOcLFSj2WQPOf763Zf01dwo2FzUeuGLKFv0YYVT2i
pfm2yT21K25nF0pu9Qt7DISz7FtJuSPFXyw34/FLvOU1lFbkeJrSbdSfEy9hfc5TTF1WcKNbnSR/
Zxw7uvJsaqmgu+z7LTVexeju6ynqqc7MefYluoxnntrgWyeTwcK8X++pk+sip45DIY4WfSApz+z3
+JG8XDPKyQPuIlLV4dwLXqL//enEsdpXBtFRexuayMOev/cxSOTiVf6wz16kC1vPW53TprPBx3+I
/5UXTjp3NEFwtvNeL4ACx5XwAWWrAhDkqUgmfKIWlwJuuteu6uchduiP62UhsbWeOr56stfr/hob
N1uBCIaZY2VJmyngWihy+ufjYu7OEkk5aOb7mRl67prpixnwJUmE358efHDSiXKrQrS1pBZjxpNt
FqK5oIELF6VEUqrXTAefm1EQmahx9PyQ19ZMhCizFS5c8FHaKsd1zUmaWd847PMDX9f+FDGSMh8D
KiP4vmjLciQXV/Bt3e9a1CGzl7vpcCmacmmJZiejVVRH4/nTC5LVRmdPyJ6uhTMrFtlvFtGmtHFm
PeRAR3xNj+65FxeuwWACNn97ImgVdixetBEiBPU7oZI3hMZwROIFSRSR9jhYAJhFuG7bG15Kp63C
uKDpDwRoUWQUXtptwi+SxatqUArZB/SxTZnfJPoT0Z7Vuc/pg50dAMDokrlEr7zMRVDIM9XyD3NB
6uueVKnKlLGv9O3JL6QQVHWJy0mr47J6xWLkSe9qWzOE3NVN/6msen1L02xcHAiUWibNolqGuVL/
UKk3g961ILADR3KW/Tc/HMxHjH34jd7Gk3njuJF35C8I/EuyGOZKsUFzz29OwbNTekULLhW4DhKx
6c7RWe1kSHZs3QHRdiQzbjQ8DWcEAySsCuXWEl6GXa4IrO8szBEeqGLdq1QzBADbPEbdX0SIPSOn
HmUFuXBjuO7Z2miMYQsAMEX2fa7WtlpdRD6IselWY5URYcK4DhapYhvXUev8hdgtbV2eGw672iFD
pSXr2P/A4t6r44QFKWhZdUdu39S8rRnysziszAbq/V3acW9pcYlkcaQdLjfOMpnHkDgFS8tKnDkE
DurYpyMR+n48ZR7MG9rnB8S34SQMXGmzsRnGPL0v0IdbhHZ+EYtTDnYN1tPqg6fnOojVu5hHRb/w
Cdsnj97b9xyTvCkIX7FoxmiHko2T29pkak514HTlgiNAv/POY/BWCgYUIuEMWkz1HBhPot30DOWA
LzanCJJZ/LY3GHmeSsrlex+C3s3X1hnNaWIPp+0nAXctMG6WijemVQ5nI8ccu2GB5p/Pme1mLflI
ufXBKQ+tM0gSO0Dw3mZyhkrGoYFYi+9096Ol1XG80BWi++Cxsrh1sKbvZ7ClDFDBk7g2uKq9lgNi
3wy405Hq+4vBqkbcCIZEwXOB0JyrYm9nRhsLXWJA/8OFmIr3Km4euLuh6WpaxeSkOpYpXtoH5d1w
PSO/Q+I5iN3sWMYv27JDeapkO/MYr7Xfg4AbZbv8p9kmU22E9UasLy5FVfM1pCcy/Q15LuG43un2
JYy/WpC9snTaSzxVZREgtGb3pObflRQEk0QAhv50XzH/MtcABNUfYph5JHuZH28E/jFHY1UqRwrs
n9CHhViL5vRbNftpkyLyBNaYryeUJbaxsstSd/CMFdRzm8dlTuTXuX4TFNRDS5KhYGz6hDTAqEkB
XWVdrWET1Fnr55BAHwahCHx7bKhXNKJ/UFuwgsHjtSWqZ1BZuY82Q2rv2ol1JkyN9rB3O8VdfXlx
p1H0ATYgjvkRIiYTbZ5hXvl7TUc14fyUIe3ZLX+KAy7t7zdC0PsOyLQvJgqiWjB1tZYJrHJFrRws
w0IleFkJVIb158i2DZfrpb4XfEHIlr9Pcu6gO/o3KGeyO4T5Og5/6lpXOxd3XAdm0/bT1ihdhjJX
EfFI5kDZhmO+DRP8fMlWsPJR6L9bGlTZh0DOoISPOOdQk8g3NyaLcKqZVoSAn7k7Tmhm8ZdegIrv
3wYUzQyOYsvFOah6/VT3IKUus8iIJUGk3S+aQpnKtVHTQTETP9BBkMuSvJ9xEgNhsHAwL5bxExY6
AgQx3Sy+bPHNMCJ2GepBS2U9KX6Dv3UB3iAYH/1Wtz2L2hLLs0hwHxjhnpQNmKcPrG+QsPcILLaw
LJDdWQV3gdmTdnk67Oxn5zNEZS95k2pDx+GWQeKGMgBYpUyQwG97yZP3YbLMn2Gn5qQKl6alAXz+
bCM0BDfbswy49EXCqm1PU8YwltWdo3EnpzUEHWmZHEtrqYFpmMxTg5qm/b+saQn8Dgx1bonaNreP
B+fPNEkLLWvbPMfFQLeETJcb465xFIShnX0z3S0jbbb2ILBDIP3d4z0kPZEQLPvvjGZ/Yv8rr4tO
B/D8EbwW8PFud/ILbqurQIzDUDkS0yZmlX9nVCC0jzRR3mhkn28+U9CP/6Ke98UojQ0oWD4DGoWo
izrHQJGarbKiaJVtx/9ftguly014/5o9wmuUqzg1LLJ299W5jMLAyl7FxhaLi0X56xWhVF+pOK5e
8XWjXYBrQ2N7wwuRG5GGRgC0j7hQdPffiryui3ejrKfakWFkaiNxbrwA90AFZ9unrrH9usq0ycYz
rSjdFFT65/eXJEpcbnSgw/bmCLNB8VLUXbTlwpaW649nY8mZG8Lm/pBuC66sd1s46vF4Dy3dGGBj
+dHhkXLA7sdUUwmSDoMjjG0yw5rM2a2lYgXILBct1MHevFOK3zqRaTQWLjdlSsBBSW89t4yHmEvO
eatxq7yBpOTIepo2CY7FyNs+cG1gt9iMAAnpOQ+wX9VUJp012Oh7lteG/8jBMpkdxq75EvOamEgj
YT6t8g/2o2R/Cz28CrUlX0IxpIAQ3gJUWCsXblwKpxh72hcEAXDSgFAEyh4c2EBMkCQeVNjrlnE2
HpYx39FBWBD+WAPw1p5jje7I72bn9UInjWqgNtRKxiInSCPjFFxjyDx0BQTDuZW2FCNtdGqZLUHu
z2DsPDWsdyISYKWGkRYGOgc6jN0RfR6RLmUcIme4b16kVG/Zrin/5HBAb0TXRRHDOydHpnCJMLkX
DPHp/4cQKCo8PjZCa0XABVheD35d5uIdWZsIgze6+yVk1c/+nuEMyJoYr8QQ6vw8bfbz7XixhZjR
WdQ4PC4FzWDFCIVyjAZGX+BM4fEoIQptJfi/St6vxxXo2s7xUqni8BD7poRn0FD6/LuGyI5zDtea
sqGzZ9VNHBNo6yXSIDiKfqTP7N755zSOhAvPSm1kZjydVLiwaSRYpV5VQdRNGueNrRQqfEFTGiJ6
IHXWDRvLCH9Gc2XrPfqu68/ro5xrALfk5qytvxycluWErQ8HvXTZrR5q+uvuMTOZnEfmh32Uck9v
8mla3mfEVGrp9vYupSyxfVJ7AncKqVQeDQYIutjy9ApBWLDJKOEXWuXIHO6FKW1dxr8k5K+6z0dg
0QXatUeH4M4DYScrd60Z/WVjRCxOhesnU6x11hucAI7NAgOKAk7V1Gw88gNmcmwzREc4Tq2ub5YL
xQztAAt/grzTCAA254TtD2Apj7zDajeUJwiVcVXh7/S94BS8ia5DgiXm9oNKiRao6hJsEHSRZ9mN
8KjbqIpwM0+OtaP88S4nj6PmLxYgLBtzR05VXBydeJIns3s1tRB+pVz5/XYzPLUdqYNRoy63H5L1
/x6tqvfGJ14bf6QF4WxlRVoHqnPPxwoQJeytmN8Ig06IhmYiXRg4KQFvIdvX7KHwKhD2purspSwF
ik5BJzEc00btR8fuQ6NlVY9yfSUaslWIhT06EitmxablyADYrtseadEfDj48s2zQ26bcNgy/E2BC
YhAff6xhU3q8XZh0j/8q6QhssHqqR1kyk16rF5L6kDn6buneHMRD5DP7tARKe4AWz3wjIYKz2MzS
HKo0zBzs5XPTBlz0Ln3Vv4jtYqIwkGOCtjBVMvsXxHs/VJU0ei5gbtCiBwF63zPLm/w8+sCdvEJc
mq01TPO/L8wmg0XLKdH25n3GGll7psAiU4JHDtfX9mqH6Dg1NMuNmKTl9T84dAnN42lOzOUW29r5
f7oMKc9i2VcYvikawndLjasWt3MUfdg5tDrq6/P3QlYHSXTqMMOdNHXgj9NcROcxKN8u6xs9bUlo
ScAv9u+rLHVWyEKYkor5GmgFoozxB5USQwXd46Vv/rHmweNw4w8whytDKZu4VKq7EyHEBkeF1185
T/T5P4OakHo2qsWbtgGJ030JU2y+OMDjeDsCc9iODaAwjijIndb2NvBVv00rGAPMK8/EGDN6ZKsv
5zDd+QxswgZFd/WwqtdfxjF3DUfUBj3XXChu0CDhQrxzpwBLglAxf5taUzRQ293P8uf6eU7X0xE1
/YGqb6bfviZI4eBcdqXrZIfiohzTtfFcNhPk0/1W5h63t8H1asRgVMJZHvhXMpLTgiLlLI/5aVpC
wsTSodaax7PHj7yO4VWjgM9iMx+WLj41vEqG6bwxObh1pgUGJKkbrnujhyHwRsUoAQZhwMeFcwZR
FCj64nILdAG1pMjMYJCmvL+r2QmSy/xqZuwS4L1Gz3TfPpNuR6D+BFU9rM15wZ9eUxA3S8OGKVc/
R+8/iKhmquLCVNtBmhN0EI9/QgPq75vjl/jNpmsQjp0Ky58cW6TfWUWII2sAa694igVCxo2WDH3y
zWW+BRQRtYhl6AC2rnzEYXrM+uK9UpE4+IR+cIyt69HI/mfSUug97jNmlHaeXrXsmc4bzVCz5+ks
wKhezmOHsTr98lP84DpumDiLi+e8KPYn2MtZEXCKeXAMvHW8Yxj1j6O65WynPxZeDKE/QwUV6jIA
WOjPTicm8cOyVRVB9hbx7VICrUq/VJoKc48D2FKFufETuwkMKUTcJsCUDhHLjSk9K1/RuAF2bvW5
XDvytgnO/TTyMpQJNe6PUN26z7Lnc7UznwtQrAGuHrMqOuEENYDeZn8D2Z4Jl7widGcJz/+PsXxw
wu3icQ7en6M3H+nmcGiK8gGaiey7b1vUuYGkmuciCbbexbvSxaa8IKjL/xvi5BBTRXTMo/ypYCR4
3Hqq9B2HGY8YTwxuVsu8Don4cZkqaQXBfMBlBdhk3+UtQIhwdTUQ10cL/bdFjsD7jPSqzwR+7pOO
JBFxokd47PVRsR/MwZee4p0zcmneXNVOtBv3jolYLSnuK1znZvydTl/x6BL2CF39THcxCHjOmUCU
qDI4VFkSF0ThMOWFydyC5ZtB4LxgJHxoIBXgBVPR2m/Lt7LCNy3MH9mAdt9YNmW6IP3cnpoT3qQx
uV9PFrZNu1/e84Esr8uoSDOtQn/JoOwZdZEy39q3BtK9EQFzZMeOPgD86o5FVNzm+2kXbu1X6xQy
9VhBpiSuZzqwkseQGU/25lKQE/U3YtV76gDzO4xHqUoRTeRqIjDma+73r4t7+xs6VddH4NGHP2nh
2HvGSErX6epX4TQthnQfbMecTE9pj+TYaeujuueIkPBW9hwD0JLszaDGg/KSsd2fWwmyhBsCVj2X
c6xP/BsK169Nw+2iDKvnYANxvK6k5CI9t/eLn/sMoVXgxb+9nRKJU8Dzr65hUAI+qY1Yq/OZQJNP
ooqNv5KMwfHCz5AMlVndtNBbe4h3KU5uz4YhCaMylDvq0NBOc+Nvm3NNGsu35pE815VU55jYCba/
HTHoekW+aia/vsa4+CTLPHZq0Gc6SCFdQEE/5Hj67JIIjN/DHwKYV2orCckEC5W5Z8WZKcFj8739
QSVhW3pHbpsAqZg9yxK8XTCOIjSMyiajb6Hj6qNGj4MEw0Os3q7ZtF/ZZIZV6XdWpu+i/CnA03gP
0c1ZhnZHosyxpjhmEBIjzw5lH5ncZcuRgUMFl1kqj4gf3oFPIFG7hSNTFbXLWq4x/3hqp02+3OfL
Zp/7iZlfUSzRLvY4krJ9bMckV1vWCwRt6BgD7ggOl/4zBYIG05m3Uqj2LwM/hRMqLpdKREUmb5LG
NdmB6yqr4zbVL1pbDgiVGok+cP/U5trysYWHeDVSwb0d1qM5zvgGBIg/IC6rYnaGjRbrm6lPHJOm
yn5axqB7LwCswM2e8872Ji2nD/3ZFPoAQPTgH1BjsEmHHkOzDWwKaa4yN6xfBPeQ/Yco8B9dUuSl
8q7UnioGemQr8e0ZQfB7xcYBzn8nMKTrlqOGJ03cYi8d3epYUwWho18muRfoWTu/fvf+G4E2Q/Ci
K7ML6pyqS6OU/mcek7CvwVUYZS29IJOB9/tcB2sU2XHm5RDCgQfuyUhDNdKVHgk5oHFHZAxTvklQ
pkhOdjcIMr1lu6Fk226z+rehlTDHZ+k3DPmXFPzq5IY8s3NF95HJM5wv4ripTgdhN7zZvrUSXtZe
gHQ5ffsbfSPxlEXXK/poGe4dwMbiziC63w/gVnaKNi7Ff1CJTNrzK8yOc6Hz2xmZF+8FpaLIkqlk
x4wWXutSGS6xuvj9zowBnY4CltMnlmjfuxMRtE8JfqLnEvpdluzszQm+aWByntJtogNwdpA7/4rJ
0PD3AOnUccvVsltDMclRg9zBTtj4FVpP/DfIysrLNC3cU7zvzc85SfINY31uIYpTGU9jjxfF7m7e
7ABpnH5JY6gOjnM48w5b4SeCa2+/ef6+rRU6E4suEQuEfJ8kgrYtVSqNN1MA/eNBVjJYsdP9b6ko
sbXxkEAwpV3l1CaodYOGVWKftwScA7fdPwV5LgbZgLeZEkF7DFenlu8LZOzHcA+i6amlYv3Nticd
4N7zsPgPbr/odjzQY6xVeXQoNLlaTmNWfKkp9VcE6gQglMIEB5phFYa5bt6XfCm4en8HLGwNvOKB
9AtKXK+563sdw3l2S+kGN7T8koLFFrfsMh1DH/YqjXwqmqOyK8jXAICIjcHWFhW8MiS3Ik9KzLvv
fhlx7/HNarvtbUV08XNWhSDqFN/oLF8/RnDl7Cuilf1EYXK+oCSrr+oOWDLU+1cxWPCS6zeoDYWA
H2pivIbc/RqyJwjPe3udmUdRuZWveTmbQArPv/+LPd0BMsnQP6aBmtExquE6FUkGukNy3Clf82V6
BVOc3jkdeEJIG2HzTx6oa9qDZsrSxL0XDs2VyO5FuOmfl98Bwwkusp/ZKX5ee8IjmVCr4NUSdgJo
Y3hn9+haerkAzCditGJkR9XUICybiuDo3lJjKxBscvUzbpNR1A27TuiJdfVuaPvZCjbih/ceo+O2
goB1Y9BQikp4UgUV6ipkcNQJYLmdwMW1I5PH4q9OBKQs7lVE9Ct2QstBJ/l8snvm1+/xzyiuP5HI
dEpuqvDg8MhD/PW2fyUJAOZ73lql/RMZ5qtWFpq0fCmyFKo7HjJvqPSKfBLgJT4iSrMpFpUP3JFo
OS2Ax1YBqYugw9SelHGdYWHPGGC06pjoUICl8dKuZzdVnOYSbSw3XtAIX/38KvBukNONBl98UfFc
IIW69RU0VhHtNoLMkvNaHlXAzlGzZqh/m9X+qbY8G83EIXZHZbLJSFEBwBxEGcqHJo7zTqVyuZzu
DtFXOG0nNhtcDQ+fh6QyhY15e+cgqwPa1qM5Di/mZS3Al3JnxpAWjZzjyuwvyNNoJyYGKdyfxVe9
6ByL2297/rN+Ig9/UP52Sv70lJGiOxGEktL3oeIZ61+Tb80leWfkZUdN0FLNQUlZ514gabF3CRZw
nne2AOB7a2BHsWSQGuWQb4OOVs9ECKzJvTlfjqAwu+tLukkiyiOzKMr8XIgpYiuK412JPSwQdkuZ
DDkR4sEqb61eCd1zhpbseibbnu1tPRNVYfSznU0z3clFlIPeqIMbxjyLZbpbx0l7h4eZgTtKRYGe
hTT+ezWXiy7W7+wBx0dwNE8IoF/4SogJ5i9MOqVAWD5Y0ny2vr01yTYMMLUpjE5dVExb06GcoOvb
p8eLGxaKx0Knoo+agMCiSu6gdEdeJ9apal4qLejSl23uCIgk6qcQYuij1o3TL30Slt7zPKuYgCUd
FW8lDvTiFzSyegtJv7wWxMm0GTPRCBTqQj24uhSvU0b6TNMeA0CHvPO/r6pLnhLwE6LrxxO/cu5t
ZIeWVbAdJ63k5YVHSGVRCP+hHHLglS/NW/bTYzb8JErwbvZNIs3ju2pwgrdByIojVcX6SOFWLLcx
kVZdFNsy9N5idvdx1K9IScK7H1tlQhwmMlDj6eez7yAb6kzuYbTowuPUYJnJ0udIQgwa9oARuCAJ
BeZ89mKlMk5UzARXy8AFEFUHuwrmxhgxhFIb2StV5me9THrC2yT6AgYhEtoW2CPCbvjWoXvMsZeR
pprcWsokm7eZXtf6CBnfw5WUTR3Co1grQ/f7i3dN0UNOmWhjTy+WVi2cah96Vb52EjuHTvS1xtxg
zRzHLDL3s8LjOy+eh6KYlALaSLPE22gUJU+rqthyX0KAV2vvCD77i/VztSsbHzzYsYg6NnMhpHfk
nELA9kxMCjV6Ymd7kRlmP5vd2g/IqXp7PUYfIbJh/RRX1b2mYWCLAVlkwKoNXXDCmbQtBpelZGoZ
oR0qmVP7r2P/3DHcOBFvzSKUX2VdOyWW2ByGy5uiKRbWr0FNdoc+qPsw/a3ex0j9DYNNqkXUAl56
Vh8ewho6FKpUAqrH12R/AP0HMdVfX6NfSFgD2pK1MRnlWl50sRwklHodrrpybo+848Go+a8sums/
wigK5QvGH4FPn7ClEEXe8XsgZCGepCzoz6xjsWWXQO7dn7a0SyztKkbqJ3mYiAQryAgxhXYOpCaQ
LNb0uy/WAceat+xWsbQqnC2HMnVF1My5LjKMNftHSCQ0HWpzNs9kn6GonEeTq6Gv2I8Z+GW2CpHD
ztKQ1XNkoDFFInDLhaLtdFw0dX89v9WxE8VXLhhmQ/jfqeGYEcGsyH/qJzRA+19RX+BOL/t02YGs
BGXmGZsDe+hG79NCSS2p5qItcQ9bsBwNlAQq7rQqFnw1SamvSDE/mIzjwuPJ8bpQCMs8DN7JgSIS
3h8igc7faefD7t4BwCGj9JF90fxDyWKSg/fPZy5i8waOZCO3ZhVuqf/jNV0859CTfHhdQuJJjeSS
RLSyrKtAU0rZIvTFQM8LAN3tfPCSIF1pBTKBGx0H8bJ5vPiATPuuQBdy7lpWRgmJgGderRsywbnl
Epv/wroSwLlzBXxtTHe99zCgWpefD7+brgoQ4wdZgUvRa3Ot5dYV1DSNJbTE/B5r1c/0vcKwVyCN
FRaKrVyBSAqrrRBzLGB1IbEWyZEOK+Kd+va5qR/i6Wy71tluCi47AN49wdIBf2nNOxnoTe9WYrie
TWrub38PQZ5Aa3kKbysa8jziCgGYJxw1RN54gjP/Li71BlmWBbDTO6UOGQ6/mtP3gLAffPeSpXSZ
KbsddYfjy3gZoIIrzqWwsa4uCiEpxTrYbeUJ4bSUiGYInNF7c2oOD4bcZWYIFXbxMxu6Fsqeo4Nu
1Jb1sbVuuhas3x1wVkq42X2k/2NGDTUtSUdG5cXfytr9HsDfSC8upUcFJEQ+3Iup9a8Dj6tuMI6/
DfzDlDmpAElSuyfQTxK/9uYc/Av+0Vi8IpisDo7Xq46bYaYViidFGbro2dtsgbAptubg+b2m4hFD
Wg2w+kD8njQiT3ShOlJ9AOyh22hBytkL36AtgLA641Vtl9uWTSXO2jt+HUBqvizbVRr7sTzNHchk
yBCFBxyu/ptXtZ1GxoN7hTqeZk5kGWKrdillbi0xYcS5z0M7GolLVA43eC/Qw5lHAVDqbW6VkqKq
sTHIhf1qkMdpx36FhNQ8CGzQ1qc0QRlayPfpGUYo4H33qa9PWGdN3TEZS3QF6eQkZrf91JvnHEwu
tC1W/uJYkCvzOf0bakcPf296skDQbBkGsjUtWmvnBh/bDMrdiJzJMHST1WYrf6eZL5GiYVHSJ77I
LEMwKOm27yGqS5kY+j8B0fLoOKgMdk70f0GgNELtoKxTPMR2K+cZlmg+CjnFrYvK0R0SeM17MtCQ
ltE+HtGL3DtdgTkku6oxyaMpQhhT/qb5vxu002R9CtKP+hwyfpMHjbwW3QuaO8aQxpgx9N5D+AO8
sND3H4xWG2zh4uHUR151pOKYm0QUFJG3u6BUEny+p1W9eFhMLmBisBjc5V1TOSfdOdgeXx8k9HzE
odf6KsN8kSfuf1oJGulaQHWlKoN5/Ppp/wzwVg2HDQcSlJM0auOB1/vXmU8J4zUnPtM+Zj99GZmx
yxCDhUTg02Otktmw4gp475EUBkte3m4rac6gwL06PgAUgKEzQixUVphJgzSupc4GGt8BW8jAnAWP
MrsOBGBM6FS5vSlwsawi46z7AVQQnsAafVm5zHSrSEsDUNbHTQR5jUuWost70dccnwhG3PVROL3U
ECipFd1kM4RKNtqKcvY40AuXHW49pQwcPk+tdKJc9ISqIHM9mP3s6ZCU2d9T0hymQQcsJ9lTvnPC
mmxD0bScsQN9ENm3qSwJSftlFw35qIlNi1iFgcl9OjXoOgplxHbOa7BF1uinLy93pl1Z7MOACj+E
ettALMo1j4uKxWWKAqzRVZqBD+iFLrW20REjXP8Sy0s81qTx+V8KwmPfjOk8qFiaA0ac9Y3aZM2k
+PB7yH+PKGRYD9BGup149PIGNRDQk9ihgn5Q6vAxcjrLwCpx7huG3SXapc8YzFDav/4wukTWPgwr
XKDMqvj9jY/IAcdAHvmR7FCg+VUhY8R/gighuAozPZhR2SuB5XWlRYK1GIvZ9XvMnGT7lviS5HSK
r9qCvw4jX/BPPHqd1WyfPvhi2CYtcLB2mzgjlHj6r/yJw5TsMrzlGOSiQ1dvZSasCMORh4uqI6A3
QnrJMNmG6pwh4hWssPEAogYStoVIHRR5bf+Z/ZvNucbkRnF6Cda94Q+1qE+xEey6sS40ssKM+S/Z
ruJ9rAsmekmPDo/fGIRFPafaZLGAk2pAaWj6fQZ29vKWMCuzjqUwzJ0NCctusHm/aBOMIxmrtdK+
/Y1UVcBUfaTkv7tPR7V916XcqCe+QncDTYTIbGtubVRgijuXXuqLpYFb/H6EpnzKBCCGjr+PUfXa
xQncwl2wvSRIdsVgFJ8moH7yhujl8kzrZSWB+a1NfVMGyh6k5NgimiLILH0jiPcgODK4nNTcGhZX
v9uM37NqE8lwz0RTICsKTuDX08VlzU/k7Ob3f/0Rl3bsBLPvxtuAfuKW09Y1Zqc8o0KqhtDaBIf2
XSFOJQUpjOxvyl48du0nbISomjcHB32Ue/6fFdHBFc2osdZ695v+5Y+Gb237fBFP3QmFM1bVCZs3
l2pa8aiI3tkzzsdY5MwzSP8bCyDWkXrujsmdxxI0DXHg5uQWmef44J2Uf+nlsBfwYh9QoAwXrj4C
KEsEw9pz0vnA1VQ7P6BsUXAEB0Fv89iviHkgIPEh21CkcZx0szsJdvD9h/3onhbP1vz8yL3owaBS
tcweAr+YOvtHfxi6IO9oIPfptujCgYMwsQ6IyEukMTkoeFI9VjPez5DnEuWxhYT7qP8wZRzJU+vx
TvrX1YSkaUJXZ5gheUtJ0+lAR4yGetlVuqL4DYIuNydnXl8smZP+1uCvjp105jG4hL1VvSDl3ETs
0bau4og1Ypaaytds7crDvomhL8pD2BpOZ0IS+HmfxO7hOzK1gnf3P6YELwnfPJsd3WZ0waYf+7Tv
vAKwSuIJBMgK5ohsH/nbLUFza9BfrimffeEWX81oRJrAXQz1vPA7j5AoHeIB5IyhI2sfpYRZC1LN
ovBQIIZtGSyGjiDfGmWSVz0vvaNh3HO1wnTJH6EbAV/HM+MdTogjyojQCRoPvDOTUDMmjPxV2f79
NuiWukblz5hjqI4rLd+RNl6e7pA3h62UaxE7318/6oF3VLL8CJDAX1NhL8Qo12/+7nuWWlpTlmjJ
jcM/9DtZNrWIeTtf2Dn8MW7iLYv5ME3e1lHQF2rBP/lriQN0irwpKfHJoC8K1ZgdOepOgx3x4G72
QwNMqcyqgvYUBs/163dgbWvu/t9cLyslAc96Z4G+PV8VIvRDm2JIpRfD6WkTxmsh+yoHOX+kRiii
UUsHgYvpr20Xlq9b1Wg9Pen9yeeDYSYLhDiWFuigf7jq1jC0DFZv5gxhUiEI9prI76IrySs2Tr/Z
GQkT/pwZcYY1JO6E0SgbZrnDfO7SklhoSUAh5s+n84XOfVj2eL5nSHEmMLXneNBi5IymrNm1b35U
0LHSBtLswLUOdql0DwryMoPP7SiMGuQi2Y0bMaECZaLbZa9h4aU33DH3ruBQICK6PuqdWYukfmsJ
PxHuKpFMc5+CWyoj+0VnW3XLq+poYZhCwgp3hae5WTTEtvvbEB9ZIzbAPUgHNS5qysglv5Do5stF
0qUpVTnT+KmwH/Ru0CmWM3oRIk2+ewWs2GNjjVC83pTMivbfs2tGClW7Fb18g2iNogtUkzz1NVfs
6iUBG/Hv7h9yZLY+GgKp5W//3DnqLSSkgqcaW3gPzTZ1xs0mP6GzmupQprEBwbOcuKkN2Ps3sdLh
mbBnsMky1WEN1F0eRi4sOVauRvZ1wLkcStpQ17RQYYAvcgVfTuc1MxAGZDI8ogUXsNjQSPWfB4aX
I/rifB0ZXvlvbIUx/ZFvIPwK0hKCwCwM+3tnFBLjqtPlLphEIjrkeHfwxkk14m3RQfBGyPuAnRqm
R0G3wK37AtM2Zfe1NZAWbrDgdifuGcS0SfR7ambpqcgLE70BWXeV99SFJ9ogj6FUpWi2J33JmCsm
538YE8Ey6wOwu1x4eTOntAH64HoliRR8DefNVfvEuRIUX8I5yYLOKXCOYMDk0l/l7b/FZEYceqm/
0a7b1h0qIj3sEyVi1y4MY3Qbysq/0RZ3c1bXXkmj9eR/VRqaGPpnnkJ7/ff+oIuaAb1ImNruE+tz
Dmi7+LTBcKUYqD8wjXajsi1upCMUi/cwCrAKI+8Zcbl1Anwe5GxXTK1gTaC59mpXMHyxRGL4m6y7
Je4xwguBNiK5hkqvLAczLVC4f6NujZfAv0U7LZOtGpdHjU+3KuQOyXwlF6XqLgv//UyzH5vcXk9G
PU2lXDF3Btx0Vfee8HHOVn88Q4xUXNz5YIXTpCIRMwt70TTWwNittLk33REeUQQf2/UNTlhidJo7
KZrL86UmfMPfKqwPEfqRsTjkNj7ZwX1WTKkq2PfXdMQo9I/rfHKcP3xukJUKtL9GX7Szl6OHqgPa
ZXBCmQnJbro20fMY0t2+J2WuyETLt0t8oseSdRcBcrxKuOMJX97wZNpcBlD2DwLLxBKxzWepqNhI
twuay55XazJjT+7NAsyYumkB/Pfztg8Wl+Gz8hTSP8v3OfEt58p2odwGkmvguSTzzgUzaDjNGwQW
iZlSJDR8M5nFHHbtQKcNT3mrrAN//R7ewgRjL8P5KXqY69tZrfvugTaPeBpxYra86CerkT3aiTSy
PUr3721qFGacBtorIye3vzrNi8kqnPQbhQa4yKUO6hUNQw7O11YKgk2/1hOVO1Ny131VVQlzK5dg
R2G7ovoEh4Y3y+ZtiQSiNH0aalqx5DplD0Qx4yV/bS+rSVV/ET1lPw1Z1pcWao3MeAg5hk6FPPCF
7gKH5yx1VVa7A9HYF39+5j730WOBREQuytOcPyhd54He9qEKw0Gt7XDaxQcbBCzZ0kY4FwJnxf+5
tEDaqqv5RYLWlNYjVm34vAQBvwCfwnAMHtS/LxrVjAzY8MW5REr1cGnHaps/qojyP6R4aaRGsvPl
5E282+Gfm0LQg6cX9Lz1pybj01gwl6/p+X+DsLhZ2mK0W0QyG4p7jWmskBaCTDbNILaXETwM+G1K
w3WJurpltUMov7L5j894lw4RWnwW4ek9pxqSrBpdY2ufcd4t+LC+7qvDzG+bulP2tWFcLB/62PNJ
8cys2yzsVuwKhhnQaHfpM2l4/WoASbO/CWDc+HkKRNM5UBbVepvw9s7xwaImPnGylmnHLnjs/FS1
ixrrXTxxc05VtWKKEPm2luQ6YChU6llzEcd5HdM7A7NgOGqhC5nHumoO7zk/utml8xcxM+CuzWBl
RGcyY85D5CNvq57c7AhqPqwJvyfbboAnkugmyL7DMhVLKOtTXGyCUScMuWG9sm0eFXL8Y84u/0F4
1e7iJNjW1tza+ek2jk87nAikLbG2n23Wk02ifob1Hama2Ma3rTBPihd5jAasl65fUsfHE342APsZ
b9TUbu/mQShbo71Ci2HhWXJaNUZEthv36cTTLYTbukpzQm7cTwo32WQlzdaPueBHKp9n00p1MhZq
dglhaMbxagzUXp9utYVEZ5VCrvebgEOww0GqvFYfhgF9oUMq9s5/nJhbatfhI9ogCgqUq4Jc/llx
/V90/l6/WWCc9IK4W3/2BgXObaB/rSQBT3qC6gBduaD6g+dlojTOnnURDK7XffvdnsEV5GaIZrKC
6Hje2OLRbhgy58GRiMU91St/ZGGYy+iil0uWFbTVQjGJLgKVkkp7OLENVCB3+lAVBNRbcO+Bg3A2
xFwnugM2VhvMN45ZgWtOwKs87KpRe4O4u74Y4cUp3l+5feXMfmMwLbAf70QyfhetGjRMD0v9l0YL
hoH8AzSTWMdRJ2w3DMq7wLg/jSQ+cYrhBzfgFkFznF5e52uw0hiR9QBI3XHTy/PZ9VAKwH+vfLDi
3Z3evMb4JthrZUDhz1PCD0e0N05aToPdtiO6bhrx+Ltflgluw2lmO4FAzzwrSfvsIz5950KCSE2I
5hNf5ktUcVlvRhNbsJvN1FQ7dmnN2Bqw54541MZtdzneIwF+ETsoFvS5BM9oV9E14hrLqL7za72G
gGmMqwrFQ7na1RM0h4mN2fOryuSzTF2mJ5UL/T7PQXJRnwu+3ZKc8lIikvoXKyM0VRjO03ZnVh3G
noxPXxsQ+LNyUmJH4Ynkpm0Cfd/hlDRZaDOj+bnMdOlROzZrXE3Yc2PcJkokfBC5S03oBdUOKDTN
GAZULYYwiMWX1xOjJ4XF+B/MKXbPG9c5Bvi0NPAp+O7PlUTkxFi4oL4RWY3ejJJBKyAJJVdnP7XK
NgAm/0NCt6FmGUaomZa7OoWOU8DpD6uadnSlrG80/fnIbUDZGmoMhWml3oV2FP3HGtN9EfZqPf9L
U7yIu940BRjDmJL5USJldenkNfBa7j3Ku6EYiPH4Wvjj4cUTIczVsren/hTd9PqGGhcKtJaoo7ns
u6Qs3IqM3tJZKeRkCTGWs8gZc2eEpPNjBIDaAklO1CL+KL/boYESJLFZc4ub/0xu9uNt9rd2Ukym
QSq77yXLtZBEUdoSb/OaRq+qK14tLh66FgyyRAnqRKiJqAu2HNAQHZnPkbve2VBNEJG4Jxs8v6TA
TQasEEcEYY76bpw8XEzaqNY5vsH4ZVEnB2CzBubVj7enKDtCSwxz8nZOqraiVnXSis2KuPraj1Kf
Ky74pZeOPYzL4C5EWmfYM+nyk1uoZOMxAq9TJ9RstWCAccSWx6YH2Fu1siP4Xd9S+G0JU2GXFlGe
fHAIm7oDXrvW9R/2MjfeypgSHx4ibNEevPzHHZl/Rp9liScH6vpBNtz1NCTFjhUxei9YRAIDkztn
TQKisiFoQdhL0oqIQ/DEF3aDG4QUWDQSR418DCos+7EzQL6wkSKoP/cLo5iuJuL5dBnc07+MmnoX
9v49F29a8ZIAvzpIFiEsioK9bGetv3NObTuKoWsoupEyIYkCIwmykLjnojVQmMviLYROLJWUNuR4
OndcgYV+68cMuxs5HVTz/C8t5NPwJ0N/qtcjnZCRKfBQqiPn4srBW/GJO9vuR6Hu7nEdyEbeJ7HE
CMauwfWqIadn097+YmaIj8JD0X2c7qxcbrEQee2irjMsZZKHbCx/wIKDrpvzIYIjL9fFH2lXOxY8
XzKm5FN0muy6fBC+Wwln3JLHfjC2n2psft+v+Xd1JA8IUGb3Sumyoqi5+HHzuF3O5AU2BKWIASWj
QtnFPEa9gZBtcBUigVlQZvNMkEmLMb9n67uZOHFMp8SL62HQjpGGlxohFAgq0mdWvpBmodgDlhhv
Xo/6PCjQ4KgVU1pIq+x/VogGckug4tYMCEt5LcHIfqgi6KM+PLdAK3Zc1Zs6SLNwgIIEy5Sg7qhl
y9ond5m2NDp3UhEdUc8HJK2E+Xe+dh3tKaYuJYei9chbOr3ToDhBBG16t8bwO1rc6P6KNLjZBKLj
+fMQQ6T199detTna5/zmE9hb/7atJGvWBvxhB4VOo2RSShmpM3gTZRg9glPfPo6m1y6RkrtXasJk
JSFBnGl+3Ar/7UBwdzh0/0107gdvlkI4u7Gupi6FeC891kWBz48e5Arg3imp27vU4+RPcHsVtiNj
PHy1uAzVnLuTNBVdXKYTcAp0tSCfqvv6u14+UlBZzYGDE5VCYINy+UVLZfZJcOSQsc8DI0xxciST
ElW9SGUFi1s+Ph/QtzDFoIY1bNMB5TtwRhvsnpi4wPqwrgn/AxDk/1yctN8JRi8cqqYNxrtWKmrN
1QRrG/MSMo2n5QIXHc0DEQwk9EMM4L9JRpJiNTFVWnizLxlFT/WGbbsmlmWhp+HT0qGdJc6cXsfe
9r/9gUXXPcfqwyKO4GWP7lUKZPRSuzeGy+BGkfdAXugZuez3AmMR/jK7CV/pKwkE07A2qhiIBsJy
u1beZyIfvaaHkK26hxC3CxKJ2xFp9a5srhiLw8I+PVw2pC8eAdBoWG8YZR8TBTw9K8RFCQ8gKmT7
/ZfABIqz7cG3eacT9rFGeTnh5yuUqVNpWUgK3X1ZHzWSdZQnuh6CWFycuzD7ublWLj9gh+fdkCLj
xAspyYs/rZpW30Z9X76BZeL2L8qs+J7joWcMoX5h3njk7AnOWK+9sshLFly0O4VJ/BoOB/k6r5IQ
HgXJfrPPAaPRKtJMSDF3+WyT4Z36A3f1cAydOiUjLD43lUnENSxhkaSwPFV2kMhspUSkbSh9OWAL
3XxgqE7+jhmytJc5FYdEoM3zfHB6fesiHAqCy9pcL9Oo7ihL4/sr/W3JexyXt8PIYmkgQYrYwXj5
0U7ttNMhcFYhwqY9gov4rDoBMfpLKfR8c7SeZibDu8icq5m7JDwdIVQV/OEW8p2RYz9BApeT7p+e
3iiVl9Z58ph+3CvaLm48ftuP2gCWj8JR8X4fJsOiEbQtarRV7rzdaaYo2WbkdFEc5KrlJv9ar3DO
CSMLCpUmgg6QI25I8ihIte9jQwgJpOLpMw3vfM0JoBWzXpJ4GymDGP5wmxWRYrkumwJMWlPslFsG
8zIWqC6ja+BQPXkIrokdV924AApcCGmJk53gBtF16078i+eqaeUBbNN45d21h7N535YlCCMgbYyA
pjxN4mekIiEydM39NWYNG1zZcSvhsv9X7tMa7GTpADgv6+ZJBGkt5Z4nupiyRzbckS6g6MhrNcFZ
Y2kmTEdPrfxHQRwioUnnOP6wq3SjC0eniey29vMr4v5eRuWC2mUO5VTVsbIdZz52csur85mavU/d
Cp2j1q2xbLjL2STE3bHo/KCAv9AktraxKJQkgcJJlXofGS+HL90RhrzZfKqCnwnbW5nl04cui4L4
q2RhymdwwmmSKZoAKv5tRbpI0Lfqw+wRypm0hqxHp3/XXwEIj5x6oCiLxVggxahzfrcnczOrVkL8
iNg7AjkLi6htzjG+kLncDOEg3Twam3McCnVa7RqFnlGXSJ4xhPeLfUlrNGuybljn0DZh5Fq7Edyi
mcuMno17J4R8E16x3C14k6SgIbXYTUFLhdKSTaOj64O3StZIwhZFJxhEmeRnHOfxR48/3adl6PWP
oML0guJFZsVSr4sNQ4Rt0isx9lsu7kX0ohTTvY1OyLQDAJ1i/7Phe9F+R9wYOG1JN4d1o66mKFoL
5q1qfZLY8e/2rlMfEUIn0c3HAqIFTTQ9x5RK4DChnvo2nzn+sagdgCqJy+K+4iqepMDhsfLom2Wq
nqUrWweU1W5CgM+fAggTBDOMBs2JyepMA6SoYLDYp1FVXlT3+GzvnkTHQ9HSA1i8nwUBkPpOCHsc
CxP4666ECIzg5lIjrzDJdwXcE0YZ7kGu/WX7eIskWjLgySWDr7BCCkGCT3jllNxQBP9xvXFDALBR
NLBSQTEgWbSnelTzVMAQL4dtzOxXQjrEbLuUrt4MLYuNBLGWqJFAnJzwT8ksZXwCieQ3S1x1TCRs
ZaA3t7Cz9gW0Poc1IVIuKzmKPR1U2muYcAfoRQxwVfKFbna/xW8n97xQh3ozzfRt8nc9IVHRLOfW
RnlBKkdpJ9iVVGPNDI62srrpR8FdECfPbCvAhiuYmANQDZEGTsnTLlzvQk6DI7K0FkMKKMeq9Jg4
9UnBap51HSCqpWohMgkcrR/sW1XtJ06kvuf9yGjdk4JfoGza0QNAFu9h3kR06juJ94w+qcS6IYDe
BH2/m4+VAk2qWLz+doIpg2eNfu1fJhbx+bttnyX7SMuEPeFRw5LbPpEgpprMbTdTC7C8rsyC1aEy
ywzmfXRHkbeYSMx6ZPkOlPgbiOw7OEsStJ/uQ3RrYuqaNhDt3wdxM4jGd7r6hieXbZG9Uj8ClMrz
YvNtK261W3atAgpsEFQ74W7vWELfJ/dzDtRGxlwbd6713yZYt0AnZ3H5SB6LqKXyYU22ZY7BEciA
b4TfyYCGE8ylbIZwxPPTAbeavsoz2asa2HwEoBiRjfNvzlHsS31PCmWhGTIg8zwwohK+SxqzSq0C
L6bBgLXLlEDvAaK3AbnXdLcu8gx4EhbjEtikmesYQjQV/PNZnP1/Fui/ljZAkFnp3I1Y0ObW2UYf
cZj9SnltssvyWsP4V2zWXLcMw6WUH0Pd2U8awLU9Z4/awAWDe+wP4gbp4Zu4K8XY5WmDlf1Y/e0m
6gnSm7IktZ1xuKDNqCOXN/YaE1kKXLFLkbGmlKRa4vgk1XoF1gXoBVY5I/0tK1rweaWia/NAJ18m
aKl45VPau2c4sJmbK8UNS6Qa9bolfpt9selvM9+N4sCPoRBM6PxAeXagvih5YJ1kdrUYiJ2Tfqx1
NncfUKvqrz4apmBXDtLTvzsUDix3VY0cxE0X+PCp7O1gWVT07vT2U09dsCEv37ujhD+EjHH1UXc+
yluZznx2JnCklRggKt5iV1oo47kXwGdgtFyFWqYQw2J+KkH0KNfxQV63IDMplcdu9k8X+2sYeoaZ
iAosUqbTkVXUwbvv8kgc8PIp0bmL9PU6NvC0YVXJkwZWEUE+t4IDwUxvmLDcfhd1T3sXSqQdQ2GV
B31hnAZXo9RFd4EmxTYFXDRIRr9UHJT6MtQd+fBvs4C0C4slMvljNfTFaioY0ITPu1PnlaNuZZVt
eFz2rYXqNmM38i37I5nNSryTHyjYnedApSfgpj9dZPIdVwaS0d4a8kYaamiJFctGmulAz4c2MOCz
az4lQ7US1gWowvzlKTjx+G297qPLUIvWlH1sJ4AkeUSXuYD3QGQYWqMzbScZo1cirP3wjH+AB/FV
fkGE/WVVJXPkcPYBpVa3hh/a/+8GWabwA03w3MCuEN3kRvfrh3aNcbWi+ob2Gc09gYWzoIidMoli
HjTcarylKiEaeFx+mcLI0TQFHxsZ19nSwYPDoiEdPyFZIsEVtXBc4NkylnPPXw5UyflDal+SzmXh
MDwdmbcS1Gm27sqoq6YVuvFQSt8g4lKWXCT7vmAUtaU0ikkjWDSY6STLwuNcmON+ZWYgIgQ/EY8B
99VNsYgAWlTjbncYidLQ+9DY+s+DpnRzaewyX9b5Q97XNSq0XjVDB7a9/VcTPtTVG2G5pslRTZNf
Vmhun80yH80Cc4QvTElIu7aLA9CyLv0KMpAmSbvqrvK3Zeqqiy23RtuHzmswu74hxbia/+5VSfQz
dMkKWGkeztsdeBuNBuzOfhejeg6Zpco8RlxA/1wUtirJIMWR8joKGzEf3PNcn/xTHhLYy9wwXmLc
1/es5CaS7P3n7cyZx1qeyyfee1S4z1ZC8dLsSrKEZobs29q1ag5CXylogsAe5pQ4lH+F17CiGiDq
a7nC+kWActEitG5vw9RXTtxM9TlE6hAo2JKz+hds6nHoF8YyshMtrMqWDDM8LGwrsRkFC2KZ4UIF
bc9Rzw8ziqCr2dA9Nyh3arirVqvMJDLC4aY+K9QrUDvJRfCc0h+wFde16uYpdNMbc729ZslLdrZy
W7kCquR4YpIrj6+D+ns36M6x1LK90UgaRG7Gj7/aHZrTcSvJUqYWhA6rKRaSPO2hs7DZtGgK/jug
0T9ZABPxE7e9MZwY3yx9DTnxo7R9pm13/tCOGpahgt6Dsm2d1BxQgEBwf2FZT3xySS8jNGSRt9b8
obUKuL3r79ZWh9Ece0piHD8wYX6Rx1rbc06C/tNltfX4nZTlua+7DtsfGHFP1rlzYccKUCuRRs4y
qYjO7jAnAgREAVrO1AMdH4BjCf/IcqPh6wbI+690ZHhya1xi43g8/4EaIQJJsaxX+mB/Tc5GE75W
MfIVHjgyyKejUk3m96DULGm1Zp8bVK5cNlRyArs/GUcZ0aNH/UM19ft3LbKV9vzxRrL3P3OK55Z1
TrfH0UPDX7PoV9IZRwToFUK3wkS+yjiNcGDefbm1V+M3NRh/EsL2w7fOq832obQCJrS6szhvp+fs
22zALRI5UK/AM3EqIiSoSMuGjvpZ7K2Ysw/qMN9KUB0Kjvw7pQcI9H6xxKnJUyP3BRs02KxiL951
FC5rntIDR7bqlwDzD8Hp9QcDeEkGyJYiYEHME6RUZ6j+HEUx1+yGy8u7SGrtWeOIJi35caDxojIf
4nGVhTUiOorwJYm/IM2ygPaBnTcBiZ28sLHFyWG7tNWsRHz/kfHtVWUawTu18tIQ3+tomooCLbs7
XzB3iwHuetfvyVPlEXzNQdPO0j7Oo4IiZtjmN9Tre7w0EZMzBQ1+Yepj4HxqLlxpH+WWj8XTxuoP
uYqRUaoAVj/+b6sIeVQcvldDc0j5C6c/xDWnp316IWvHpE7LuBBu3+D835I9OSBu6KlkcPBVzXrf
TCL30gesmzzLeRY2Embp4AHLrTqKRKO/AtBon22qXXCHhRrf+9eGR/4zfyEJpt3G0CpaxMKhS2Dc
6cZZjTrGAFrGnavSEdB0R7TeJSkArwnMmN4bcY1AoHNhzxNnrMPOD3nVTTS4OBkV36Dteahdf2o8
qBoCspPpuDN1KuAmB1EqQrHSkF013/46dBEAmWkLDz7Ww31RZPB2UBCkeuTqn/1MJwRj9Ll2PF3x
r29NxOWuOZXOaoAfcUl5gLy84qeCf6bkUFiMwqS96FJwJo2u1d+BimZbWg27nzPmkjh3r17dN76v
cPbgIQ1vbrbOeD6fV6QgTk1QiBOO+VglLAGklOmzejeYXcTTP9SXLKgusxev2Oo01YGi0RtVxyib
13APlc/MAh5DXc9KlBCGpzaR+gK5SihMZGkJQHUQrlWNgBgPQqb1URK7E8xVF7UTmerA4GIviD+y
Zc43aK0HAFPq0zcwKuRxqdCxnSGbCqHPSceUWTrzTQCr48cVQIIQdqOBu7kwzbhADmsOWlj+EjGt
95FXhVE1Ho8BmOMxgM7HgXF/zV4h7DXX9T5I8T/hneK0eMlLVwCFYjF/PExbL4+F2k6dhObHFGeA
h3+PGkNw8f4DXsUnsenMOjlIfRx0oSFm2Uya7okPIc4PxBAHoS3GcgBNaXFE7kqAJs24FTZ8lhGB
yj9YWpO8QXWRUOy5QU4Y5LRax0JsXXcIjprsVdoQVMgliEXCPecCK4yNSoCVYD+7itzJq9ZfszR2
LF7Ippz7hug+WZy2dX2j4wSoXX6ZCpURDxOI8B8KkGZ9uNDiOMzyy4s2QyiuD4Z0BB/zIbwM/GI6
KWtZzf+Wbcndo0IAf1AvzXRYptJdspmNDDhS05OsOTO8OD1+Cr3uW/B2bExGSvWK9U59R4HSLyJM
XLIudknq6KigBYdi8r7XGsH+2MLlC6DOeOYWDoCeuMojoWwOkPb5rcazQSjsMsA82kkHO2wSwqmD
vqqDS5ihDgBeuXyORx5P+f0t0lEG326Gv+bOgYsZQjDeVLtlYF6kq5rTFu7ZQk6PCX6Kzbj6Vm9n
CL9F+GTU8BmSQUN1Cn5dABYq+P+wSPIWblMZL+RFyw4QjQP+8QtjhJf6ibu9BuZ2+X12BBIS1dAQ
PXpoPNiukHQ/8eE0FOaynGshPM15n4h1RTcJ+DHRcoLkbV6BaJdS/dX9R1nzjHIjd39bAiPay7bu
p15imt3OuTxwVsq9ZYY3HzCIV1z7YHg0XTY1GpYl4QauGAqmtPY0ECjzsmZvPHjZD5hLlqViVeCs
FP317Wr62lofW5gVQOBkGNfIrd4T1jqM3diAs8Re3hrYycRsHOcfCw8+dQf65iZteCPfPkoed5Xr
pwyiRb0SALfy/2cYHdH+dkbrUHul62um55aKF+Duz1MFotAEPnMgoQLk+lwKBj5cBY9gYUoKcvAc
1FeKHad7i0eBRjAXxBqdJEB00Efpl3UMw066apJ675wlF6GUquwF2X7CMLWhgZe9s5MNkSZ6YqK/
Xl6yeT3GLUKe9GMYD7Ts2/4Wx9tiJgdQs8ig8HX73AVhGPd3TcXQbu4qPlxV1W680w1L5xcfryaG
Dn+99ZgoTPuyqlXunLDBKB65ieiTw90cro6bzk5BxXMs+onFAE9O+C2yzS19hc1ipcxl5hQEs9gn
yphq1ZgOTYRqxFXReBwyGo/YbgHhMpIjbuR1/aTsXdM0fdNzzB50T3uOG47bYUachY551qiHCOjL
qaw7d5YZltmnSwfvAuiEMcbD+ofqgcgJpBRJqJ6Q3OfI/pDpEnn/aAVfvgYVkJPdOF07wsoi38CV
pmDbol1Owdksr4W2IfL4CLB6YHuplmayms7RVNDr2AiO5ejjqytUwnsZW4rf8rRpFOntflkvrXRt
Vk9NbM2sP9xWU2moCCM/8YHwF9Hpgk8jFz3KyXoYQ8ZGZbMAy/ZSVQmqsC7Rd9PIKyTFLCc3GPiF
Hk1jVDOPjwnK9kYW7RaQYHIXfSBTNCQ2VUBwPHNz6YI+IBNzrzFQxZKQ2iN8028+jFn7sS/30+Hx
vjo5o3brv0O36OvkETneB5MfwNrWXIcfTPZWoyhUK1hyWI8fyIsj+2JEo7g1sdJhZStFFiB98FPA
ZZ31rP4R6v4zi/VVPljYsLEeyeW2v0ZkghCN6pyk2DhFdYcwwKyEdhQ/aSBYC6SjoEAQ137IM7vj
VEaymX6PB3tSFTiVTsY4fTj11mEBis0jd6LL/AQTM9mPEX8jlVy3AM9fk/kMwhRIlMNMiJESLKMh
kPP0d0nW3jvIGcu8aiMaB4dmashYrGFSl3Kyy+42yrgugFNurY3Ewujm+unTxvY1DANhapyoPu3l
4hFkJr19IHAA/yBz4/RigLnJINWAG0VlDcg0h3Qsa3XXuZUmc1g2Z+3YmR1vB21JLjmDhDE0Hd2v
xxscmCI+Mbcus5bni34Dt8qIpUenNlhkwpv9e+BjgcLec/aRS6nlPiTZHjMNG3i/qFQSXLF21Gqy
Vb+ZdieeHwYnTp2y35X/Hn0qaxsfaGrrpkVojscYyoLCgnG4nprAc4Lk3wg3P7G/REV3Qer/1yg9
EZJLpa9JU2kwRU5JQlnlfyPY7N2Y1aA+dO9cT2Ld5Frgy1pWvaSMs1KkZNWKFOYXtfOkV9JyZdpV
8Po7fNrl4yXLxSXag89ZkASEs8pWjPa2UAAdI1E/OPzbBWi5ueJp7tWfPqJNyuwsttZtfCZlzY6o
/diElnw0w5imIqAuFndx/fpPrezxwvINTpKVS9kYN8vN3ZNcenrzGUASYGOa8tdvABv+xQ4G31A+
rnSYjGnGpPapbiPmV0N5R+DSH+hr3HI8It1t/ZJMJhf1O3KVQrZ4omGuBH+hFWDQR0vSMFWOYRjx
dWqhL5HyO0PJG+E+YhP/5i1H3sBeTunhWM5E2teS3WPbdLU4Gm16+IgUHA/ngSFmMSu2ZOELPUQM
Jlu8/5Heg6dLNf/KO4wpSn1TaE6pkZ5uNGpTkPsxLDJhXxJPOIiLFS1TawqS+fMVHwUzcSD49p8w
blcUEhHMBjGy5ioHSWbdPHmlVrfu0ni2x9ZvWkt0BwbHvMvmGq2+NLrtAZlFghA2L03kscIRMcSx
+G1/L9Wu9Wy9CBQ9AO0emBJacu/Ksp2g/OECWTiX6WvuvYwFqZWbZVJYXxsMO8hkDJcHJ5Q95r8L
SGFSsP6WQsIJ1AakqIrjewP9+mxHHT9ebaf0K50PZcEjO6mtED/7YpwsQ07/+qtUHu5aCWu/0EL2
rw351OOvwbedtcsJpRvll90KlMaQvUr1et8RB6NLzADWUrfdPBaz+pb5Y4rOxYLbCui1XrZZs0zb
x+yQeLDng4LmUlc4P/Xhwh1lpQnGBMUo3tkHy6NvLDHzzzYILalkHEQu2/9JdHGUGE4rY3T6TAMn
gZIm6MI6aE/hOYdb1UD+KtoeKuFi7Gng/VTy/IBb8BTrLXvIhkSFmndrbKwYudJCCek7t79faVcz
NRJAl59Ial8OD5LmmqzeHaaZL2cv0w7st0u85ZP7SxC+Y90jKlEv/ajz2pNiP1bP8ggZUPhs8oMo
rOn1cMoZnLWq3/SyMwmk4Lqq24mJTlbEbrlc5xkyj7AQZto+Vz/ihb7DzAm7lj5MZ02L6tF78LNM
CDGWlAgBEPmMu3835kxWfPI303Q0ny/scvZB0FVegGWaSHh5hqGrGcLPad5PDWtqiPgQ3mpCNKSh
nuj8JbHF0IBW28qzmOuLS2YUQi4oA7B53KcqW3TT4gFVqH8cLr2+TvZofQYyhGTHcRd62olZmfCS
hJP5yBiY3NYosj86xeCYqd1VmdYrKTUy/HrDXeQNcEnHbM/dN9lmsAxJFAFeKBat/jeoDb5j3Bpe
gvxg3dkgI3HzayebSeWK814bOpdy0KIGrVFsDdTKUdgb/2sdQXHG7gUNeElpxdCanJYHJoca3Zqb
2Zpc2pQoxzLF64PW7WdKjckiEAIn1PdiDXMWedypEXngGm+FFfm+6BNgd4vw2yX0c6JcOwz0mWXg
UB7VCTKTtuJd7eqCzeUI5JPquhYRYNWBgLcjVV1Kd+hRVKH82vcEYFUhkio0CpivLpc3Z4s0sF/e
u0Rx/6eeKHSgrsSaVbFCYvIenApa6t3oA3CiIYKvkCaqawkI+R7B7BkqKhx9/+3YcXDH5gOTPYBt
gkq83F3V1NsSB1jvpMTfdTvYj5DtrioJc8/BHKkWw1cTN12DFrVwvd5NcGQJCnjZqPNte2nUYpSD
EmygaOP3qJdfjGAV7SQ68pwQRGuZznY5ERo5Ow2i4nMdUv7RRjzU0pxqA0X5G9la1yHcar8whRgE
g1lBPr3DKN0yzYnvIOpWgeYGCofEeTbyn8Eg8SBIUosGc9QvEn++pMRdw2GKxfWPwbTQg6o2vRYt
aRHQaFJAxaJguG2WVXwbTaUKtvYSrCQHsXZo75Bv79uhIAMD+UJXeR1Rks4rm6cNsyVM3DFo3qn1
+wT7xHyWN6ydLMc1rhLgT+MeDwlDQqMf3HNHfekcIsteS02SSJ/LxFPvc/evAE4P/r3y0uSyn60e
FBy0jmrwyIszc3etauYil6lNxZkF45B9lNIVwEUgDRB5pLO+P7LT5Czj63PsSLD/+0BhQSGV5wcv
f2uRo/7TYNzy2Eca7TbH9AAW6gBzBCxxMtroqGQHApIzrL1qKbUNXtoOfX7RCe5sjRxXQJmCYdbM
RbKLL42Zo6vJDcYLXjO7BzpHf6pyvX7SAt9gaXZf6Vf7fVOfgul/CAZJZqkHEdyop3e/+ArF3Eyx
YBjuJfLqdScqU8RCD+aaJTxYrma2vPo3ZqJBmk/4RdFX0OPtpLSNv5ThJuXi2FZRuzzXZvCAxQLv
SyAgJosl1Jv86B1RsUSlLmuDRIZkPCZym9stBteXUANPaFhWyciq7vZYBA09TX/XuliVNvZc2poY
MbhPv8LuzO+kW08g+V9rcOGP0aT0YVhKoHKybUAYqNdf/lkM/zDvgOtHoehQk7RGcNUtPqaIARZw
WSEq7x4nPjESRoZcs2Bz8SErrqg7+yrLgb6u5XbS5cloyoFQ+qsQDVLZgAd0gMTTuGPZR5Vy7ccb
jpwyH/nTQHm/dJs3qKryjWt9nAyjbIrn8Cq1nrtOTpbaAGzvpkDn6yxROnAP2bCZxlMKZpPqZpw3
sXjnI8DbiTI+e2RJoOvWfVUCoYAgYoBmiKAr/Gw3Xz1H33kBCgqNTmpXoXB1eBr/uMFJu2H2oYAP
btcPh27nix32CEuzNZFQ/D4BLpyWnsTeaSZUAwCr9L+PiURtYkMw9Vy1Y9nOMrLoIyY/dIj9zdYm
YNdSorwFaAqZmWAFEoD73LtiOULUIqba95XUT4i9Ri7mmSTf0TvyCl/GJQeV3WR5tA62mA0v+zNM
FrNL1pF+MIJ8xiIIQ2t2dzLrGaQ9W/4KCSvZ9q+HbDT/LsicP4gMpDBBJU/BEjzrOfEYYGg1OnOm
Cp5HgVpCctZrE1dRG7P8SUBJFfxbx9Av1/SW5HSKolf4ziLBANWlzABADmoLgKquqdMsAKv+OLyU
Gj8TT0kcINLpZaIHS9580p6r+epKrurWybBS0m+wzwVeRm9YK7aQbR+vW0SBmcr/SLVeAsbCDD+q
P1ATxuFJOzPfuywGK5jaKTWys09Fe93V3DFa/fZXw9oFBDL90cvanhcFdKrUg5J0eJpdF8G3VkFB
3Ad90h9CeekUqm2aY5Xgy+ydj7yUiXBJCuXZo+25D8vHxY0oh/Y2grbF4bgkKVaoPvuJ6+0gjarA
YITG7mHRaphlzpreeU/U6MYyK3wEGXymki7cYgow/SNkzoFaYkuO7+51ZpeFLi5jYh8UWC3Z2rGw
iQSmaNIG5M88Ga5psfH9+HuuJvJySabM8E75V4vL4wheiYmTIfARqU8utklcL5xxHxxFqd4lDPJr
7dKfw5IE8QLow5VlPtdclt1SGF43z+jMvqR/FRW5sVtaLnLSq3FLbL8qVv6Zt7QZqwK03H/rDu/d
Sxc7qDNGAzmXKGPV9ZMyH9JWmevKycYnaN9kzBeiRnAbrUs10Gz8nvVTLsVpDQgHTzpvO+fBn3oJ
jl/fddXKlnNS5mUFuL6gV86FRWt0xlfsGofjQtPtlJE9SaeBLbjRts9vpkns++kQu4VgUKwvMwGf
HYKvRhartqnckPt/8hExcXasQhUBN0Q7Bhpnmvls5IGSR9jnxmVXg0/OnRQwSSTxqtQGRlgmgETO
sTtsWh7Nq0HxoaSFwu1LL/MyuHUIQwCKkZ9rAsiSrpWC1GSnpCBKBU25ZaqRFOmj/6JKN/sbWFzg
oo2xngdwIKXH/3yugRNFep6omHLzhz/HJ8T1MYskIw+pflJj/oz3vckU8lkKglno49QBS03uO1SD
3JgjlYsKltF3V5T5zTgi2CSbyHW7Nb81xY85IFZRB3Dp+c25Yz4n3duEPCaizqAFZLunTKNYv9j7
dIVHsl+B7YoRIEuhJcY59zsNGS2v3FBML16yhOv+RAWl7rg9ZFbEpNRXn0DQLJiQepTlZX8NzQ8S
n5aeEqiaHCbwc19BVnDmwEFiCmcrTV4xf8Lm1vgWhcDsv+xJOJShoV+N1OBziTHgcqfu2hQ3mm8G
U03p/pZ/ErN21D40m5qjvRl6mXn7iFkD3Oz5vLgc+p5WpDF7UnkciqARhl/myq7NHw80DPWgPhii
y7vdepZl+ADs+FMbOT2ydxN2aSek/uWvTvDeHDu9j0EOd2dgoUCj8QQoTRPtQYp0mnH+3y+oAJrn
4DoI7x1UE4UIVyPAuHRXZjKjML612Uo7tx2vcUhhy3GFqz9DKjpbGGZJz+rRKEmw4Lk/Xqqy0BDZ
ybevwANQ9ma20LJHdpbuI/SJugUeQNt7eOdygXLXiP5WsTS64hTOKc5YRLIbf4UOhESf3FR+Xr7H
4NRdPypIGpQv9LeNYZnaiRXbTNNDgu1tmIc5eOKYXWoK+/osNop5A1p6hTUD/su8qvFzACDWzq/p
DoW5sdfNybc2kl3woWH/f8pQbCUYkfYDambNCbcPO5bZ2XPOrBurlVrYfQTND4VaGjHM710VHaZm
uw8+U1cEK4QGvhLTYXi6NjveVedKEFLIHA/nxdkzmBDthDEb0UhdJBdfhH1hyms0oYEWrb96yr66
ntTp6vf5Gm5+qjsVvEG8H5zv1/ziU/Jlv4d1l5jCXXoAnxsyWRoxtYuKLrmZYyL3yn20j/FfjqAO
HOTLws94gVPD1bzxcmUtcClhEUJCo5U3hKb28+TiZk6lwO71kHgGd2efD0AEd2msT+OG4F/butlk
zUQP8UXOcsH0LZ1ofqM74NcbT4tzn9EHsnImr8c8LmaKuZdcj1JlHUeNDPagIfNkD91ByxLg5VjB
6TJomn8SW10+X99x9wGwJCw6HNZT90nwsQUiJhy5bAEC/+65YhbcAEqpEOtrVwPmNXso9H3w4v7b
KIaJqp2AOwWj1TZX6QpFEfeb0SnAnRaEX3d3covw96TQq2p0tpFD+puC0GXyNDET3GRtEgpMz5ko
s612RpSbtM89PFpRaj659HIViUNg+EpAq8k+Nb4Je2G1qy4G2Cu+jUoyV/MrzH1TTBU3p4XPMU9d
9anErfq+o9OPFmedWfBIwLqyr4M8U81D9eYcTulS08vh6zo5zapoP944JotN96xW+PoFnceHrSYm
7pDf3IvyySM/9h3Gc/HVPlKhS2Hf/Iv/A+YuLMt/MIYZqZJcIn0vXjWDeprPymCd0BQOAg3ApYgU
0jOsuHUyV3DD316fzZxJIHK7oDZVaEvagB4doDQp7xGMzSmKSBOoIHS9SfkFbatz4NnjhBnECMrS
g+oTahgFzVDtcnNm4TeJTKr4KW3e8f1j8q/CJ2nSzbzehGpHD/Wcmnjmb58jaND07KOu/8NDcogu
ZAQ/yxN9O80AtSJR/3lVK17TwU39m6coiMiXZnZ9NmQhLyHv37EInrZSbQaJMVLD40PNnWPAUZXj
mvomreZFvIlVMYH79jloPxiXr5N6ZSbxNWoFkQ0eYCQGkX015StPfqKbT5Qx4LPSoPMfLnIbeno5
ju06CnrcfzDF/6SCrwhGQ3jBKkFOirdtNLkieDFLSuL5Kqxyu0fSpfv4I0mVEW9IQ2WOfq1S0b4+
TP2ABf4dPwfsbPlyICLs+C3QgTyYoqTcH2I4qd2MTr5ZWJfcAXc2QJYi+bolNj6VYxb1euk4O7jS
43jJHSo4jaScvpTSgpZhispRolJNSQUQqKtdrv15QAsKKjClC81F34w8dAd7ZJJUDjaawv/Tru10
iMtL1u2NqrAG9Gfq5/OcyhH8kpDfe3pRRDEV7a/gA+f6n6gpvx5NadCiBfDJGwW95CUkh9h2NuBu
OsoYSzfPExreI0LeoCsEY+KOSF0NQNxko3fuE6XdNBRl3sUA+7XARjzahvGXuihBKzN2cgb/hWY2
qse+DGsd5+boybue0038irtmpJaE0owFdRcWLz1VWDVbnw2JWq2afT+B6IFY9MeKvMP52eBSGndT
zMQ6c15HOUkLXrY077YZe1EnnfTctsBPOiXLeK6V8bvM1oTyYgQft9tZMVqgPo525Q/FRPmK4eWr
vNkM2b1iqTVi0FjENSz4vr1bpPYuhWl7NQuwccp8odKmRqA8gFVU6B8bIwyETg9eg9PEY+iggEur
NlJrGxOnD1ZEJOuKuCzLgA5gv2uEAHym+1DH5FgdB3i5yUSu3wDCSVpt7PyLy84tITWjhA4WsUxJ
F6w/Hhc4HD1tokF3BhTVt1+n1acxEmjI2b098uyrk9836vEUGZLKPdKcMWBhfCmEqL3zVXnvGn2M
T1Os7lLgtAkCv/NbpmSyJATiy9Grq1yXumXEU7lpKlCoXw+IfvQVpcxYhePFtdcVPEKcBq8uO8Dv
e73awSwvmG014UO4782pvR0mU7Kw3JPv+g5mo/B1PqzxqPUtgn8Yycy4Rz9Vm24OYJE9Uo+qJxjF
wuWTi22jpOtEdkkkwPNEdAT4bnNkzekRLKBG0SvnKXLh8l7+KcerBbE0ZFvgOPwx7B6lT6CvMOAz
CnRQbYloGGi7elXU6JG5FpD4g+XLKnJ5xyEFPOS+YMjHwAsRbu4lHnifY3JdLB70C+tCzLCPHWA5
3PA58MqsL87C86/XeyHIYjv3Bd++AkPBNbSu8NjOZ0TwVF007G21n34/8V/FHy/gHPvIr83L6C8a
DDo8mPxDuk8iIt73qJfNly7GFiEW3dwU+TejL/ewUzppzlZ99sJgFJfa14xWMGgTRatg9uHYBP6G
FfJIQt63NRkYld3VgUkf0PvMb767MCbwRthuHH2iRab1c3RxvQpiduIracYocCKBiwA3Gzov9QHI
nPih+IsTnTpu795ITyq3BEpeihTmGyLQogs7C3lrXjDex26tz6nEPgOxCXtmlv2lM64yKpDjwjeh
HUqlcx0JjcxcmX/caHiI32CW5h/bq+OQAd9dVwCb+ctgTQWSQTUCZStdn2P0asOtOKweGy93103A
C7cR8UleuD0DbD21u8z2D4oNeuB3whDDrlXJdeVtDIECZRcQNpAsH5c+b1d2Qwtmoy1rwXzlcE0L
Io/NXUhbxI3mQLu3ibwH79Swa+hsYyXU9By+Sq4y4nI3AIa5iL609ahRO7U/rPWb40ut0HGG80sV
4fhYpV1Fpm/mhpSP7vWQWaVuXV9PQKiy3rMz4UhKYh4fbOiUvWap9lZdy6iTyUIyl4SMIf3zSgaA
HqnbSeREmzaq0Ed8ixj9OEdUc4NXYMA3DnI+dmXwWolpeg+i3n6iz/DMp41lR/sp7nS4nEe9+pTE
ESXaAsWR1IAVdObVu/j38NxgY/FJdmp/HrJbDEcM7Bkb7GUBnDPFTFalJprqxNcSMProaXUy2ptX
nAKjJMhlD3+YTQNnadQo3pk3nr6izbuOp70rRGIzQLt5aZlnh8/HdUDZglCggCItsUZ2W4cIWa9T
9zKdDhSmRlxhE3bwpLbzfLpZkt8Y7uFa0rbyiD3zZg/PQU/Hy6sjDfa3/RXyD+wo/Ng3q5Z7tX04
SwEIjipuv7u+tKjA0664ehEdaBHCNOqpBDLA7iheWVELgdq+mgX2nogPWZJmrDL78hIop4ww7iGS
7HZNiot5fhktSE5hjKRZ/zEIZFfyBg+CSQlN/eVTHKVQ3Ndv9yjd+7UNNeBPQxP3naSvZtc9L/dy
VqFQ7OL/etwVcVY5/Ws8zToPOkuG9aPp4/I2NnXBPXdDTyaVLFwOzz6Hto0hApeOY4QHmgyp7YV4
kQlqlLMGVLWI4eH1HBFfdD1FIVpL4qTqpGYTA/l/+G3h/1reVzemaxbi+hnqXmlkkraiw4OdFsjA
2VacDlZkd6nQ7NhihS07XH1WQ71CrINYN8uJjl2NBOgnCXizSPNxhE0JkiSsv2WU0DCsDPXMnw05
4DrAtJGhMa3GvZPVwZpAEiwXP2hyL0zSDXNyAsyNHl7ePYjefP329zdp0np+aIUPeIWASx3Tpc8n
mNT5ROtu6j8RKMaV0suYZ1XcuPGfO0fxG8qUWuHNgQoZpU9F+Dp3n+s30ARXmCxPf+BBNl6eq50n
f2LZXSUVlb0KQErts17wgy1W3dzwNpgO5HFRGBLvxhV07onPNjFpHTNTNQCOo+CGLFpVA91iZqUU
qd/N0leTytWiU+BfptboBaqP8y4ru284nO/XTjo6AtlQ+epFr2CepkztgdVWllfIUBDXN2GUqm5k
A0S8DVearb3E/I/h10vodw1ztcHMl0uJYadB+YCPKeIGXTCJItPmDwk0qTEhjoljhnSiGrbA4XkG
tFUxnLxC+aKMSq7s8Z+TBJXkugFS1wKtmQbUPVTR4fNp2aHOozjxNt416q/XWQcRbA75xqNW+4Mm
4nxGLn4q5em+cy6UNFLQjBzurlIAmJRJ4kvviaIrYMg7awlxzagsJBe8ua4JcqRwX9n89OsmtW7m
jeYZQzljrk+e1Qtx2KYdfBiCJh/fLqcJ5w4ZrABHs2CeMYED/u1SmciU137iIqN75ME+8oUl2RUX
qfI+H5gkudW33uoCXkxsUwHIKsCKPKutjOCq8pK1fEQ6opYINxLSdx9XZNpDdxIlG/Eck1CVF/QC
BdDN3z6/rGRmSfwfljtRDEQCKVjgW3HZ0G6R/XzJA1Rxs7mkvzMHhuB6VSuVVXRg4H3OE1yPDAB8
iz5DfdE667n1JLMWk52R+jheUEDAgrr1KfqO42javH4JpGvB7Lqg9V7a2m39Tao281dMcwrJPHG+
WhOB6pJv/Emxd7PC1GyK3SGgmCbUSugz56CS4gV1+ZPIwiu9v4f9jFFPAkT9a+o4soN1K+Cbzab9
ofhbhBolP/x3PRIM4IgMqPKbKapQUaxoEFOwyqg8YxBtDjArlCmYKFY4T5CRgKBZX+L8xYu62Nrd
gn542INNzEuU1o4yQbDPuDqekXAADKK1EACvrTyRGsU+mopxYqCmGw6ZUgigISgG9VeJ0C5GGjjy
wnBWvfKIiSegTYhfOYJkoE9ylguMNu4WbdXCBkWaSqfjfbXNqUE8AicpQ+bhN8He227E1+m3p8md
INJtgP4M4AXcegjqqUumiPHjYug9SfC07/qSanybemq5oNW9MOHJsgeMb9yIRRB4reVkyxKsgb+5
MD831CCXkifWJTslFDV79O8MPb/cECMcG4hwZIgKiNLbV8JAIrbS6NKOmfKSFHM9sWBRbESx2N8j
E/2GrBcPmS4agyA9krTJAXbMADyAHkXvCJTO+Fcva/n4CWyDNFqQvony1BDRcK9hhaiSTNy/qO7O
ZkRBHuEsUbxsPugwShfj2DFCjVLyfiqKVVabCExLCfNCmf5KEHQB7GeBJr+eeQCai0N1At02KreJ
5OxSy6qUeKqn4LpsnGbpV5vXy4WxAujBd1oq96c/AotZ3fBcpmnzhbJIUF2GpZBMvAKYMzx7hi1y
HqvbKUoqKWf24d+GqJFZPMwtJ7lk7/ftddC0txDN6Nadx0nXfNs8+Wg3EW8UhXlxm+iOX4lyxv7z
YaVmHMYs0/6SqakfL1EoB1LW12OCSYkF/8SRa/G3fPdE3skc+eOkkHmnrTiX9WzSQJmMxV9/MEIW
faWPmyQnaGtcEfW4r9ulDbq1uyDlq38oc+1kMmdCgoIVxKEDye3t0rBOawola9xd4e24OEE9ebvb
CvDNWmDUzEzTx9vsgfiO2+ak5qEdnKBkpRgdwUzDeu2w4KpGRnY++rlYXJW1HBKCaLCwU4YmcrX8
iQj53RVjyfASjoW4Tpah1mzcFqU7VISNRDzi19VF4yMx4Npfp1Zotf3khQrgI8O7z1kIIK83ug+0
p2/jfXZjAh/0ysUXvUIKshrMOHry7iCaaAeh+4URnnEW+K25i9nA4Eu2rpikWWaA/nQ623kM9tIi
yftl+iKNk4rCWnBLEX2c7B8MiZrSdFM3XtyBTHZaeRDJXnr7fvW7/9E83zMW3QRnNMzhAEobm+Zd
S2XcOwKdFlc1D/Ncth9qxWZDVtP2TBcydJ5eI63xzXCf6ScDC8NleGUf0CayyVxhHh2zvZZWwZvY
BVGFrnFh80cmUxhjwm5Io4bWzoU4M27e4C9pqiABQk4a5qAZA0PWvHMSQI+4csztvC43BzuxRGaz
aY+0+MAQUROym2grKn9ozw7cQ5cCbPK5AP1eDTC9kd3rFIAu9Vfbrl9eaWCGtuZUpR3g9VKQyHnC
27nBwRcbi2oRmdXROjs26m0cOVFLJkzALJ7Aah2Nt4nhQDiDj1FLGaIqkRBgKvo7kylgA9X1U79O
X0X1KkY99qvnpmcmnHU+MIpiKa0esk0tJfsyhpYmJ64IccLODhxqe/2Z6Gvaeiv/EMNni21RwBxr
12WoAhW/6fHAJ+l4H2/U5NA4j//3kkkJ9hP0JB+XzqJ/sFrEWMZ4eHmL4NcFpoE44rXeKWWPZGE7
HfkT7FUT047ApHlOfLdtSuKHrhZ41EzEbJSRwtmwDxxq0nQFprTFjYRLytbR4kw0PROFGliU2xPJ
aN3nHefi1MbtO2YRVtsmSwF1o+naavOTpA83v7nWNYRU3pZpFqDKFKsiqfhq6tWLD2ZvaJBPHoND
x/cE3whhEHSOdcnz+xJ8BrVs5EZg5JJPpzPlAVcGP265HMQzmsEMjKhGTcXbk8P6hX7+baXiB3IP
m3vUWo1vjOpKi1Rd6264mEWjniq4dOQFr1Xdwcjf8VplMY/YlE2XCiLiAHOBrqm5MqIG/3BJFKZ7
+M8fsIJfN9jcYlN+5hRflXy3t+1X2EovkvoDQoBN+hY6qP8W3wZbgRj45Vw0dr9giGcbnleyMOYh
pZNfv1nyMb0cHBKjQiFqiS3oftn9xS6TC6X4wHWqITVlemVfhRx9KoXw58gHByoYXidA5ryMrIiq
iht1RgUyI75jq4blZTRRxXw1E5OuKcOkNw7t4ZBkM0pKQjrAfEUulWP3Al7DT2FC4P7hj1uqe83M
6uS8dJSD5PbfuwkKUMNTHxygsDSQq5fM59RVgqESgBit6YANMSdnUnq1tk0PP9PupfIWpQCu6AgN
UCY3a2j3mwGdssLtRkSZ/p5K5EzXLyyoQJFKC8KEMzXF1eiQ4q84hQZYu6BV8pmAyJIbVkV6y1EG
/cqRNWk1d0bkSnYVB31kxzW3aDp9dtJ2PyPsD1X01aTNJd6wa3fT+lSRBdAE7x0wdL+02I1Ioe9m
Rm8ynSUcsHejruAQe4BJZ7fLghtnkZrmcityAWhdicWfSB+lZpQEnUekJTT5cujZ3wzj7t0v8Scp
Yc4eqUKy2syXr+9OCIyMCGLvvNERevXO/ZUmgmsunGyK63/OlKdpwmEqCtSnpM0t/ggKGURboh09
C6Kowps8hCph/uDLpIZpGS8sCFZV2Mz38fAC+kAjc0DH/PuPSHZE8XHINmKLqXlw5NBfZr8+idv0
YKlQlYT3n5Raha3DPIO5SarLrGfVQo570eegLjouiWEjr3J6v7hEkHZSM16XLLO+6ee/NtZVQXno
2aJRsFVq5mSSMPIWCDiM1M4iZ6PgCxv0+FHyH4NcWpSGrPqGGNL0vZ/vJWx2hC+IypQPatUKo2mh
5Yd1Gr/R5eWlQFR/Ejg+bWIlDdttGbImXAdbySYNyjosea2n/2B8hgAHpFkTXThgFFWkgaUKyNdT
UyRmmZZQhYWLyaI0+5mojWyGeyjkntdDABZhVaQ6r486UAOyBYTV1vJsZtZOmuj4nDqSDA3xZKm+
3g1ewOwl4hVhlyERqz6YCzJtw+jxBo5sqoTv+ZApkNoDILdJElrKVOXYUpy+gtdzSf/oe9voGUqR
kvc2hU0WYqMUbdAZ+12Ig9SjO8hMYMRp52iu/7Cf/T5reyac4lKV9BF0gogVbQcisvCeAskHcUG2
eFmpHkmo9/KUtzImqLtEtmXCTpfA8D1YWWIbV+Uraq3XOa09nJOM4E8Tm3McNrKzEuP/r3+a6VOZ
aVVH3uFcLLMdeQ73eSwx9Y7d6Ym7BwuD0v4RKySbs2JnHCZ6IRwpJviC7tpWNXOINumlT1y/vzJF
bBLBpFCPWMdGN90OofJq44pJVsw81qi4tfERUIt1jP+JRTsYCmZ+JjquxVybY/IRHDOGWrVJuUQS
hm4LjGHA7nxo0UXdG8xlgul7W+EvLaVISSctj+LOf9tDmJbgy7fkQPYL2M8u6ehgnXfntBG+xlh8
88K1JC+8WN6dfJDTRGwh12FS0XtoRkYlNylLGfTgqOU/J1gh5n93AQb3nawble7eo3SnDZOdXhvd
/WNx6WYXdDV1NS77AdHowVJKoTVKa1dJ9dMFtC7sytlMaAS+cCqmNXF5Wm2yQhPTOvsIgyVFJUQC
TmdljRPrO8LJwBkBQIL98i5ByBr0OD1ZcvB8xo0v/kljQb9M4QChgRjKdytGMg+nHpWLJRcjokxW
loVoUP3WzHMozV03mqOTxxC/9wdImOZYr4Teo5mFNfOtpX+QZ8uSAAkPslJA4JKVOJQuHEN3wnED
d8tATcNDS1axjVtMlBQGM1YZn52zqmNr5x3Z0u2X+pIFIBpu2U4EjtSmw3ImfAoOprEkgzrcl2O7
mKXHEU2xlK1m9OPI1N2MRp+bwbCSqvovGUU3mBLV1eWAs43lOpUx+iLqVxbGQyQQyfwlfN+ak9ET
37dGqh7Rx/BL0MOoIMeIRs9hk0i3pkV4Fn09Q5wsdRTFpuy7uJR5AgVzVHMvKyoul0uVSypFxRFg
jRNwYgW1EXpDOzaARCS6CVcYArItmfUPqu5vRljDlLVHJzN6qINmJ+wRilum8Cgt27JHCMvumP+Q
gIJMFkJybsjHU9qm0gty7MALhBsZ8Mh9QJStRhM8OoVZ+ax7PzNSuJ+AUGeuBgwJsZVC7Y9L8NLh
aAsvI2H3N0h577QLYW7VjaeViF0M15Ha3iLXCWd7qRwuFvctvzFj91Zynas1yjWlCWtfHo/yGUx0
AL5dJmnR8gzEQFC4LgstVjVHBlIYvaAUSJz/1OctmhScMPJMzcHICA+otlHMi6djuY8GmTRdS7jb
sKGixwRGYB3yS1HXmRFE9QIsS86EDr8xlfDAGjlkpGOPXWrqev8GvVWshILw4tOFeqjX9k0UPCVZ
0eA2JM8mkctA2tGv/IK8Y5Vj7qyQsKfUmK6/H2j0/JeBcF6CqNueWCp0EgBoftdil/wYk/TCCDX0
1hPL80AQJsy7OHM5nl53zdXuIlAChacxHtQq4JwnaO+hTByRNg4jhFM2psHoPZ2j3iEMl7gsw71u
LFWBWbJ2OUGJAVF3ib8vkuvwHyWiO+UmyMKJvX3lOl3KrkKgmi4IqSU95F7ITJkLFMk8tSGwqFok
8v7cHz3+Grwt1/8TQkdN4ruEGtr9AcyzoCLLNrsi5LrOpAHi8ehCjy47BXfWPiL2CGLaBclaCIdm
/MUrjH0XiQfZhAX0LhEq3K2+gewbvhCy7XH3EUYCjoB6mKSZYjYZy6Qx6mMPFchLn1lEuYIfH1Zo
MP3Ac/ycE+1LAyOBWjZiAbZDvY3VNawJ0ygbDpusCdLFGX7db1b+6RHIHCWAFzEGCyGme8Evgi2L
rtT+HOmQyno+tzIFTgOuh64yZWDDEBPn66vmY7sdHQlKVGVZhI1OHL/rZ1LTRy7bNOxBZR5L6AmD
LgK55v01LYk6kYEhWgXk4YIdKpQ0lleIaHTLCvUVPGMJJOg3vfqSjqqhSV1ZBty44Nf7N3v2j5Zk
qDgfR+EzrCBg2gixaCzZpeTGt54CBf08SqXsN+Z4agKLVaOwpeu+82RayZHLC5ExnTb0IMMZKTHl
vcYgG/GL3rK4Is+Wrd+/MDO/0/pelqqc/1eYrelq7j7+3NrrFjTWNC1+N2ctzDKK5SdsuW6oc1hL
uIaIz/f7Ai+uJpp9uLDwmjncm4ygembQtHr3zrB5yJdAPmeCSkIC/rrPTI+V8qbdfGfdGO3E+TX2
MOPw45+cMmAUwx5Y3rDyHtK7QUrQ5WqO7OujRwJkEitQp0gJpMwI1hUjuGGPfB8qB2v4ZYWz38YF
EzRwUP8oScfwmA/2v2s6pdgoxpSAKVez4dTjGznUYrkLqQiOPURJvNzBGh3m5fZx/pufsquir5z2
BpmAIijDJG+VsEUb62LYsPeqJm2Q23YCABRJvFns9CfsF8xY41QhuPZGGu/3VjPhOpjZ3iS+TM3u
Pr2hI36TURT5Qsue7JqbsvEvrk4bzpjJRqYFMRH207Yhj3TBTkF9Caj2uIp6Kd2LvlGTBMLgxI1d
sCUazuTPDYc1YSXvgv36pBS1bTvA6rGRAxfywSVfjCIjzji9zAYJR0cWbkr1sKV+uHYch27TP8gq
5AlMjCZ4h/pacOSSN1Nzuurw+elrsMywwTrEi6SzikBsoIAqto4r/kpD1o2Q9fv4rMprGBFn3lty
vWfmSgGzLdxkw6WuKRfU41VUJsMbsO2gezF4r9OqPrJCRVP5kB3P9n6+kOaUR68WBkooZH0jddz+
hPEhyrNFb4zTGqr6JHLDH+k/1YELw9gFnxqVoXRPR7XxAXNLUYVHBvOkrmNbjRSmPyQFqsWAyPY2
eiShNbesZ/h8DApYVxlHpQf3LsuZx6I/06jXtxllPmkCpaKc3KZR87xyeVkDk8lgaBsAjhBSJLzw
IZZzXoZRcX1nCwmyCIeKWVxGXcog6gysH7zm/nHpIzoRrGlHMFuPYEn4qU7Cwd+vPrVjt6mMoQ5L
BZ458iKP6lQLe87LmFeQkT4biD/erKWX9tc/nImdXIo5YzD764Y00pizV8rlw3eDLSUaWxD5cVj6
0axaK7/KXzXKONFqaMBsTQM/cKuEzujM2KcqGeWVgSKf0g4P7DFfZWE6onzd7mmHr+WKQAEIzV1X
w/oGqcnDPNf7kumdpXVWKcntfklYB2nKtYnO/ZKMmLViRDu6UBeuqheU0yUR/t09zssILoNba9g1
6hCRresY2wQSA0G5Uvwl7v82C2ZKXWKjZMyjcNE8DnkbCUcHPB9BDWNtyguf6nX27Zovw1o0AFaL
3dEo1fgU+xi3y7qeCGLF4EjJJLmEbGtSXrI6N6P5tgV8JkZwrTAdVaHTQUrNo8nvTCD4r1xpBVhc
eoQZR3j1FtYrXvbYif3IaQHlcPpLuz0DuXtJtDqv5YJNzygdppOrA+vFZhhPZK+xZl6WjuUsq+Uw
MKMZpV0KjDOFCsDPuBQ6m028ulopAM4WQMMgKCCaq7B9jSsCCC3qIbtM1lyRNNNkmFUYNIWVF/ti
h42QI/jUVhzgydwqiQIrRFmIKyRVNGxLBAbHkwtIVI8e9QBGIZPB3ZXZoB4gK2NvWsz9zkV+UYsQ
1WSru8YpVL9Kj4abQiOG9NeCJrKP2AONuWJ9UmoMvWyXE+N7SV9CpclXWhKtXpuDe/gKEiquHamh
NmRYdahHwQs369Koqy8MNYcc+8vcUBlLR4AL5lv/N3ysQXQjZ/scRUiiBCAt3L3p3H+jU+pCD0V7
kHrcILD/K/3qUazS2Vm2dyE2FcMJnwLsJJCHaVaU+p+Z12GieCU+P1G7NUFA9GyMcIS+1sPm88/O
8AkbGLH4pRkZ+r9HkTEbJhAcFr241dgGFiubSidnq7kxZbaUwMcLZXmt2z9kpdzR8aH0WY+fG8Kt
ISDEILO+R7V93QaJEeaSsNSHXHV6EWoZfpfjmLXQbZNmJgqu+jRN53/loy8fb+Pj+NOEc+YjUnn/
LBCxvDSf0RvIw+UHZ2bmrglxuDGpDBamJDqSeGBW5PN9yp78VXeXCtqp5tx3HRzJhlBNrlVfL9bP
py0jZ/SY6W2uRnJcBYcwzkOLYklIULofsWFtEItjMiqqNrqJGp1MURWFZu6kRn6IHwfIl0+yuqgN
bUJPwUAx7wpgdcoEOGaBhZT7ivtrCAXR8uJ/A4c/KjhLhwjc3y2DhB1K65DVpI2Yrgl29BSp+fMl
KMgksac8mp2cBeRu/mz91Bfekb4QhmflrfLmbmHv4IaAtQfbAl8dyIJ9U0c2anloIiwi+u4Or9Eo
Y3lx1RpWSAjyc5EUgf4lXXiv10CrMPAR4JpvKED4YMakJ9l8Y6p5tCkR8Nt7GTsWDv7Ts5tBYCyx
8coksqzzJI1q+owrtN3o8tG1rGIEBLHgZppyZll3TcP3CdBJ3M7agM8dQqkvkcGvGRM6LaxVDDMn
IhCEWKA4BFZghBB4O0UxEfjjwC0dCq19VH1+HBOf7aowwL6d55/f/W1wGtoWOxOhIkONAdtrswxH
ZNLkz7toLTV9gIYgcar7y6/BDZCNGP4xMA3k8yxni22eUaMvRME23jkU5cZ0ac1/tLEy/4NOOqIV
efnKfE1cLRlJkn2eOHGcGzkwZj3FgI5za3Z0g7yFEHDRSPSRuEQf+fvpbtPIT5j5Ai9AxYqbZ/kV
jH5cBsdYVH8yOBIAsKS++kljQx0KbJ7K8i6UMfcYh0sJrLw7TLaq2NbBJcrwd5XygVlcy8TUpKw7
YJPuMqyYxj7psOdtszV1m+VaJ7+D4Zd22NC1XFhYEy0TkA5+4REsPJr4AdnBMGiMa5frcG8QBz31
uJ4HJsU7l9uzYdH+Tw16nvD5ljKouTgLOUXxxl9QIZ6OYmLTzsuFSP0MmtREOGbjwNyTGz7WzLhY
gqvjdT39rKurLHkWq16MsW6soSYflihGBc0oKNHkjtxW0jQP7QUzr0a7UXNh2Dg6/mRGwdRloJB7
2NqBe/i3FC85a+/n+fKopDsB5CCZV4cjEov1tMopzfeDO1/UHbf2T0/1NrUFYTRtTr1ZNfvpYn4o
GpKABvjvABpiqUf9mBSUmLPj0GU+qaMmTdrW2lSVqsbTL3vjrTHz8ousSzs0H7O5O1DxtC5K0fo+
K51tzdz1LOOjzAz68vbxUuFlEsNV9e3JXAeML7mPlBbi7QHjUmLYe5r1xB/azZJhATdRBNvBUV1+
4zs0iszgezfz6TKrULb3DmjbjqUXj4YkOh8mrtjO6KemZ9kJ5u3n8XuvKOIrwvsMWQpvwUiMCQsP
45d4EaLD3Xy+fQcM4EfVysjVy5r8bYYhCyChi9xGsdchwoU3v7q3yKfcNDL+vMp6lFZ7c4p7aNYs
Z1jDNaH9RR+LH7ajrfZHXk+jJmfCYH8E19Q20eB/HN0ekWwa++RUlKquljvMDq0mGdudjURszSPV
xOXz8fI4///wxwbO6JAan4x3O0h9iAaXjbZ7T8S9SCK51Zgdm6GC/Cpi60DeGMUIijlC31XA/l3m
LoC3o/WA44LFsSq8ieb5VxTPM7gUkPwl2SpJyT7BniQsmEb4ot1KlFu+FCvcAnv+HpuToCNOgs0t
XgzAVd72BVpUHdUm6Y+E0GJTm6HreuLJJRrqTxvnJD98N/TzSv+FIZwjF8C2c4z3OqeYDEEJPaMN
l3StWSgoFan+aW5JeEv9X8P6a2KuwQNKbM2eCIKyIG5MZ8KQLysquwFJvF6VyG/BeR6/mwUEKx6S
Ld6Mx9V1iR1dSy+Dn6xwrPPThBgLiEmyez9vQp0RhBNipjQQ/2Oll8L7CLFOM1ni37dh9Aplm7KU
2jwGqdBxnEO2GVKy800fiL5t0ojulV3fFbaPAmGs/8Z80EMLCUMjDUg3O/LwXGtKszYJz3KBGB83
B5rm4vZaxEIno24oALtGHsp5cSDaj3reo9ECu2gz7K4ziEryDwcbZbg1YjRv2/lffbrex2q5Cf0N
M3keViGKyeayaDI2xzYjJsP0absDjCFud6CmMgfSz09QWQTHIftSNXr3yqzYQ2Dr85W1hdDMSWf+
XNg95d9zQSpHEUG52YD2020kBZLz8qSPV1Ry7129EF7G0kOMpzBiKSK2IQZslWEVTvAgsc6GEyMm
8Q1zY8GXTF7hPberZnQSqhpsS5g0PGJ+HmT/Igd3F93T0Frf8+cKLXNXoePCYL/ho5IEAHWwJtLP
3tVsaZBFhjXbLSVWATjjR/teSVHQJXIDuC72V9SDUGzLgY2zqQvv9TRkSLaNu0qz7PquA0v3iAXm
MROaBuLEguZrK5PYQExsp5zdsIslQOcrRra5pKOygpsCX65RZHpo+VtZw5N9YR1PVomkM3zqxDH9
W5CeHrmFT25l0n5dbq1M8xvvOVwoe410B8IeSgOhKAbE41nwMO7vo5tjz9D5460SZkcWbLTtpBhs
SZfHldegi1SmwsOzCGAO+VZzxyF9pMQX0NUS8k0G80zRbBO4+1vc+J6pcykuQu9dC9YRhxHO7Cbh
BMLvh4Q3gkxUGOZ7QM6sOGWRlUPvY/maJTfLHW0fsRZv3bFIfGSW9jD/kbZJIL804W3Qx8TYk52W
PRmdmIBt+jJwR2BfrwBmE9dhoxru/dGU78EhH5Qnsj/cVITnLlcoZFCfffHelJdjXMi214uRNcUm
T+rfu7lYlKECio+R3MLGNB9XxjmR0suWbRCVzHzk2SaDRmL90MJWtt6hAHqAcgrLykJalkrjPtYQ
8zm/3qRMKYLPekk9VF9/Qyl3fhK86lHEM3V89ErqvIESFxs5MTubWPlKidbSwqAPnrx+uQoIbq7e
iOPF1lCPw+KNW2/YhhGVtErRCgIfUuIj5JbIsxB2IfSIJzTfQJWnjp0uUS+akzDI2Q/vsR1OgeAm
rfuXF2fiQQSY8DoneyUrhLqu/aq8cwLWPzYXHLYQ+VFBugJ77zC22TdpapkeZU8fyksnrW6u8v9a
NPyNQ4UulmRRyipaXJBGKfjGIMWxhvewingHpAKn6EO+pw1tyZE0alUb0WCDVoS7PDp2X7TP2Zp1
DeXmBbrJOnV/Omk7TghNKmtzQVrBj2WT6Afmc9Vxd6Qz0GUAXnobNpjWMV7HyN07cbEsORarkZB1
k2vLL7ucd3RJiTnMK94/WEq0eXc0ARz2A+8B+PuQpUYUHb66ygRIIu5yOfFhPHFzYcFljNSzJshy
/cypvn2AWFgfXtsWkqRwe88EQr1tDRbf9MBEnakGEyIL+eTL9iGFON5wVK+b8siqIlOScMpAFXZI
/UkW+gCJsr4KvperRSXD8R9WVymOf/HOgTaJiz3PHgc37F+QijfhYzUW6s9UwTSi/2pNH1JFg56Z
htkDqcRWTElEr7NJPnJpefzvVqZ/t2VF8+2aChlek/7rLugO45Y8usx07rlaMKej1JqBxKim1yhZ
CnziGSY1N5XPaSyBCgJEU2bMdjAm7+91SERCbr6J+dPyiOQpWGwaUyrmQHnes9hYm63HYnoiPDWd
j+VoV6FwegGloERuc0OaGS7rOjhPedF3tEJPKk4vD+GHL068AZaMkw6hkGKo0lMY3F2MWxh2/Ive
ScPkr4XMkS0x5GsCJ60BFkHJuYeOgIcGw+DK/9zizQ2YVy6T5abwaPAB6KtGE4JClFkFUiRMDdyR
108+/cviEUZS7vgkUfMMyGxBNHmGSyruErEGbGdLLxk0XWjkXtUIAwTrzPgCoMjQfAP4otuQom5n
SVZBjJGgSmKOaIBY8IY0JBldq/7fes68GFEsX0lOw2Bh0LgVwNxy7MPVYWhCa6SAzrIWKMztQkwP
4SZhxOcdRvjP2KQqU8sF09AODPp2QZmI674c789t9dnHEibcwJA4HPtgVLkKM41IDFog/9PDaDu+
5zYbAXTksr/40E9/j9Hw8Frkh09dUemt12BjtzeqCQxCPl9A8L0TcObTpQSqM23iZtg+HR9vYQBH
paUhZyk5DFn/RpzMWPAvH98D5PsPGTwqxoVnojs6OSxVJTK3vBp5bLD1kggSf1wsWKQF0dypONFW
lcm6gq+qHnmmFY0VvFYxKbHhaQt1zbWI6w4crNKCzgbntkkJca4iZyUshR1EFVsKZralAdMJfYjT
yXZPVflr0v0RBt8KbIVxA8ail7So/ybL+HrY+oisJnPaU1cFYfFw0o3vHB77+kg+bqN29BU9OQeS
l+xwI5H8Ibdsds2DO5kD4ta1bHSSN5GatM6m2IHD0xpMmerVtP1EUy5bodpiG3AMNlCye1nqnaN/
4rLLbDikPTKZsrMeJDivxnAegS2VvMEApT8C0/y289/AvKF0//msTHeTRcuOSWZVRoQPpwegz97L
8R8o7hkTcbsbnKKAxThEgA2HHjYR1Voc58lEkI6gpM9obR7MeNesM6qfSDsmB/56cDjFI0SB+OZk
FSojiuebmnFpN5E6KRfFGTUQ8N6Ltzo/JXEx9FiGGqvf09d+4NEu3QxuoWNhQtGleP2mcqbeQc2b
M77Yw7/d9AumavbYTFd+3/8sz5R4K1zm4uOpv6dQag5uwJa+USlNT5xFud3g5qD+7IE6pFDXAQm2
CqcmvDBd6Sa0PlxcZjNdnmzveOUO+vBurof1DMY6ulRsyCrHN9KTlomJHgSZNw5XasJLonzCWIOw
WOpWCnvfhugC50/yd6KSd/0coFVhEaAk5lPDsmWHk0sX8l4h7M/3C2pSrif28gsdAz3BjLY9tNOq
qIzJ2dDGHA9Mg70izUmkhZSr0QKuCOYl8cwfedeSnJwGh7F1ALvyArjY4Iq1dawYxcuKE4uFKsUx
hq44NHBCUG+SBXuL4ouXtW8UisLADRFxPAWI5aYp2pKAaqF5PzOFMEAqCzRKBppa7ZD/+hbK6JTk
jE6XLDChIKc7biGRkiIgjcZzp377EJGND7GPXpofPUFUpKx0iF8oBk/AJGRvXwErbmb5dx3NRJAQ
Z9PYPC+4UX2cNPFugGYiVQci1fYN2xgBgMO5wPH+W56gn1dLPxU4Z1QVJPmhJUIp6XyRHqzyJzj0
S7X46ty54VZhyJsU6V2pEAxdY6Gn7NZAse1ihZrMnCyuUoGc5f93qw9iBwnFm8iAgGm7TnF345cA
IyTftESqz+OSuk1jK7CRqSSBkCDAJw3UjopFXMUe7nDqOYu9Y4HzAsyLnOrN6EmGrVWNyhkXceX6
klt4APhKdcRRrDNMzOt1F+yLtcLU7WAJdof1j0w/96I07xQZ2/fCYiRuB2Ss6zSNBFvlOQBxQmar
1y935c5ReG/n/Ho2IKq3t0NnPyzoN0uKI/TezgdJ8bcxgRSGeNodTF9ZCPz4GGnohtBeR1155Lrx
nLLNhzr8Pu3Uv0/Q1KrcjWqxXNEJ4Be+ZlFreBs2Z2Kat2yhZlmQFViPxHJsqukVqDZdNYkqGDL+
/S0Fvp7VfMnXNw8pJmVtvJLk4QJl77SdgZaVh8FIzAYXOyrXXfJOgPbvOU7jlpUnzpOp/THdfk6U
ZDJSphinFltUUBovpjVsLKd9+mxfUPnGtN/nbcPWm/kmBx7cZYruE1qpCxnpaOmYhltkldz9ev3Q
BXvBNq4dOPCyhNdb4IrNOv/z/k56+1cZdIM6BoC5KlbJVeXGSm3woCTIWW93zMmUnLihALPEegeb
oVfl1VSbSUPBwX+W9kzUILydunO6cWVzVNvqfAeoP4nLTbFUeL435Irlu+FnKJkQA8NR4z9KDfOo
SDntmMSqphj3lMmuj+GAhI9M4O16qos14LDz9gOZAOf8zmNcAc+UO2iKc5RjWqRp9LkcvMSzGLP3
P1M7RiYk/LB7Ms4OEb98UTARpoKp9zop3ZCL34JgwOavzhB0Se7WdZEdNqk9JW8qOxZUCp8RZO5Q
LkK5l9skvj5YsN+/2w4CJNotHzSnaYE8FiWFQCLNe6dHz6yyfpbRkj4d5uyTq57LKpwHJN6kiygr
FwdYit7k5/rC/tzN69O7R/kOpPJev1glAq7JDUphiZblMnpALqhTtrH6ER9Zq+E0unP+EP5DeOr3
ytKDyBB/dFi//fMARVj0UkV/aWCOSlKInG3IbQNdazscbJ/2ISYWxyrTwAABJ7JgnpcH71PonZBv
anRBBxsz/nWEWslNEptjNB98aSGD3Yi2Fha0AnWiETgjrTvu5dLIgQHD7srQUhdOBDKEDC+7mzQc
YCyrj2DO+zOhS5TYjJYx4kEUCVbE+84PVspO61jEXOq9YVTekJBlximOmdOuj/vfP0MAKcqRTi0N
ZjwHvayUtOid3d9ApDmgb3ATN3/SYUZBuWETW3wUPpmSYHSMKD07xLnkZJieMeV9GFMy7iof4KTz
YEMPRNqiuDm0aFmNP6KlJdDpIccuyjqWfh0Esm2AVPLqwva7lag7kjX4F6tuJdC9qKyby1VmeVIb
z+ntBiA70XW6mrKBTc4J6+5nIbbXetLU3h4qwxqJ7KSK244L7N2e+lYtbeaBjN9BgN06he5CvyDu
K1ggeBXhpsm/c/gS+yj+bLR4rbk0fXVIhXOq0AF8S+0rrrMmFnOGYk6iFp9OupslUFZkEMCn5wIa
SDXyJXSRYwxIB5PZgehbJ0U8sN1FC44u5IH8wcT+n6Q0wh3WJGtRsBXYMHANpqGnnFDcuc4r9d7c
TPdXtIHW3PtVltFpzQgiB7ayhNx7okm6/Pt2PpuPnph4hommIqvk8JJywyh/seFnyKaG9qzqub0r
uSyq3gWnsC8l0P6SKx1Xpe2SK4FXTldJWmFF3yq6OyQqunuPTiRe5/ZYx6Vdgxv/lnjHjn1OvV/P
zvdB1XfinVTIsWoghhypxPWvxhEbLvjxK7hHC/Wmd61TsfJ99FV9nMPAE7jo7yQq3SguKpSIvZ08
/B+HGPN/qwDkYgy6kabb6f+w1IJJhxf4+pTDZlCXKsvxQit6qlN35EqSw1ESZI2WiYhBfoCThN1Y
77BVTWnEocQkvscOo5ZEbk5ksiSDoSgz/oZJOzWq5Z0dQ3rA8bbe9Z8bshBA+Ab89fayUfz7XsVW
YN/CsRIZPOxJSksO4a+PUy5uK7YmCxq+j1hGDRwjzRHgE3Pq6jdx5+/UrEzFXlJYS4vQpDy0yE7d
h30Ow7CpYv9N7+gxgyxPAgc8Ue7foabg4bouZm/iflZnElQJeF9dDI62DKoMjxeOmmU/cy2ee+2r
8I0HvSEoHFJMFTur584XGtJWJfInzcufdDhMdGvLqVCOTCFK3M92NMl3hd96m/Kt7j8HSTdSP4K2
hoDqBnJVUltNB5fgCYnZrarveVPcmZnRiUQWoVogv5H24LY95VQr4F/Rca1Ypgg3Vnv89wW5sCDI
ENztQakPmtLEEbea1Xrw05OsCwaaRl/XrFqEOSoLKsC71TzofmV0RolLuKdIXm6XDDu9nUyx2K1j
V0ReOn0G0fWtvnm3R5G0epolzhm0JdDV4K6s9N5ALu5oqPYs/u+CnKa40VR/g+bWGGWFgl8tv3IQ
kjj59gd0eEkc5QfRVKXlM29JgAaRxjFnbCMSZd333IyVdLFRZSlka6MVNOOROtevfUVLr7dDUep0
ICqt3vOqUFhDEVOKxrf7QuaWXX4qaK6WkD6KXfFZ/BJ+wB0QQBVUhYaEdck0etPuwsEcY/0fWzxS
bpcBaXqw8eS5ZiEY+ihdJT71KzUG06Vwd5LLvucQr/LQlhDIeFYO3zUknZMnMKH5U8biF7NiQzap
DvgsHT8y0VTiyqECUBGV5cRY1ALgSuf/rbd6DU+6PClu0blUnFt5vDl7JoOWMiOZhtxUTjPGRQti
vlhbwAZUC/lAHrBugA8ajPJrnGvyIgdFjD2vfzAyFIAlg0/0r2m9L+FU0NAup/UqfuffEIm+PhwI
opmbpdDCdeYWqCwWLQGKfkgPR7aj1f2Nh3XZq28gSxVijtLPHAqUMnnLDPy3zKs1kfvRemUkfUFw
svjm7bSrtYXuzDCzicKv30vB3K+ERxGDl6tNzm5SWKVAlqS4MtSb/GwbLIRADrYx++aQBN3QKwWP
EBlgHHnvdXyEyAUCW+df/wgfWrKC9JAzm/AXoEuQ1q6EWIOilJHlpWCQ1SnZKYu+Es+jT/0sz8fr
a0+VGWjes8ZZS6OHLiZavMBu5qpjBpqbhCWyz/Yw8DFXpbV/VnqRR3J0dXX9H3Tm1nmROWUsIOQC
/kWuMSJRWaNhjQArYFu3gZ9Qeo6ygED31k58UB2qEn/JpZ2ViUUiSJ21q7mz7ZoWtI5UERex3TXa
d5UcTBHkHqnlOXf46nNNsQFG7UZD1wDbbncsKYtaeiiu1P36GiVAPMNs4cpHhn4Em1+/qd1a1Hxd
BnXPKMK1J1TmvYcYdAQEew25r4/FiBSoHY+S3IDYEDl9Gfa+2JAA2o/lNWMOfslgiMVL0V+CqroT
vJI6dVCtW0F3/Gfw5r4oGUXeMPYivni6MS5qN36mw6ZplLKCRurdDDX4nXB5jarQCYwklUCr+w7L
sppqNnjPbEtUtkCKb/HHhY0w6ejWA88p4HzA1ZpbgWgi4ngwAZHp0/SbHIhjsfQ0CSxuAryxFgNh
VNt838rFj3QNLqKWASns/T1oupHJ+Ng5QBZq5gCosK71TKKN31VH0uldYSZypu4V1elTsiV/loY8
dimRBjIqGa5p1Fha33qLMv7iFdlpEvYFPEvHc8PihSTQDfWu1IULNcizNfzDtqzA+2Mg4CVOJDTw
iHV60/qFJawiARioK2k5PH2BjOKZzv4cZgZmnIEA0N+VgfYlmf+aTKy4W9qnUlcbAq4ZN3+0FpLD
+q0dvyeUuK4JS+88cylFZJIslEa+evV+Ed1xfr+cozTAMLrWLlk5Gi6MfN9DceEjZGkvOme/b4Sj
pytAAmlhAWTNWylx3PC6QIs/9Kdsw3i00hq/QPbAepMHrohNyHTJ2VyUFTGeVExqzZ9JDflKi+bT
2UvIvVN+ftCam3JoKoPWw9/hZqwOzw5aVyGwe9720/zHmHF6jogaLGfmIXjbswQwwJzqiskJh556
VxgwbjP+S5aX3DKiDkRHseiLOZpSGRhueKUkm5mCJksV0s0YgU+OE4+rePD47c6QClRN83SzFCDy
nLEGUn4xSRx1us3HoAzSpVKD22Fv1WpXF/NOAWFB3FPfm9BzOT1sCHYOdklNFIPRY6N55DvLwjAS
I096bZp2WTT+MqDq+kDZ+ArgLwZIWwPcyUgsyTuimx+jUjd0G5Jqp0ZrG92C/6TSrbgra8hm2pvK
m6rxGv3UWOUvP4dY5wRLBaFA/VsPOGCTVEd0YplOPY8oDfyJqSP8Y0xR2zkERxnqnPaLPf6hUpH0
/26peMeJFjA01w+ND/iMT8PVnCkPhWvnnZUwknzU2GyYvkRoYsqZCnZCoNaUmcUEswD9GXe1dikC
kWPhNpa8E18MycM7O9kWMKupitEEgSBPv6dORxs0DtqzhKxbgpkDhsZttBIWDqRenw71a2dZIpM8
+28WQwh31M20+r8ODPLC9AUypA6Z8yPEduOzzB3s4/a1K/va7uVdhDbUZqsWEloTAHaAdsXlOuCH
ehb4sbTuE758UpX/PenCWzUwx2o6H/T5z9utNQpREtEc/SgSqrznYw1DxuHLP666H4l/1ckwc7z2
RK1NCQX82k5dFa5FxHAf81U2KW9+bo5JbVQb0Z8ejsUwFp7Og551900TgJh50vwuPnM0r+ope2/h
3UqKaM8eCmW1GJRadc9J1dwaXVBVxHnmNG2ony2spZjyYUQjc2zQnRlBfKiSC9cIKIL7k/aADqcX
jnkl0rJT1gyKLjRQVHT9WCH/tzTmkLpo1m8T2FIIivYj/qlYpEahgnve3fcejXXmq+XTd2k5pS54
weWEkYMn/bCcXiveZrdTp0foZ9btf1RCHn0p+8x/VJ5PRErgPbmOzXerd2XIIfKdi+kUe1drDw1v
e2x4vjEdGVVzxl75QLWuMS00oh2gEFCRr4RL55ohJy+v8NgMjGmfdkScm+pjwZk6bSQpHOfLAWGu
m361340+AMTQaxkogcmuawoeMEgm2cyh9Nh5Y9fyH/vxg/hkUYQMyyNAIbB+yRIxgSYyx8iwCIka
NDlZgcvQoAD6QcywN3homBWZXgIQ9xOgyn59xAx+3RnVl0VJXD5rdzlyZ1Mur8ebaZA/RplHATG4
PxU2vzyHwO5Ua0pQrfDK253P/i+YE3dXVZZh4EMNlFYjj7pojv6hyhTSxO7x2i4l4zQoPEc1eFln
Jm3s/SBPhwCi6brAo9NmIzmhS33UHK8WkKWHslXfA9t79HgEwsXQRpNKduQc3QMQ14GncSrtpJB/
2ansFG/FW0DiZkrwAVAj9UX/aDIZJwpZ0jzHyNoD5KGWlDkj2iJcNfrNlLhg8W4qjdo615Vf7goo
hbqa+Q/TSmk+NFbmE03rofm/bDVtYjOYRdaKZDX4dbhEaNYzrGPpQF7FDNobfeKWUdYDJNqTlt61
+SCa/A89qed4Aw+s9gi0OktMvt9D0REeSXXID4Muw4wlqsxjZCugiWH3SJZaUql3yr4l1+Ae7yH6
DObNF1kZdyWrqpY1VNF5ZvDN39nQKkHY6ujKxc6ZuyTHkHc4EtJDC5bAX4yaZuEt1ncWtK2WPlbg
OOl8ZMPMpROXn3q9UI6P/VSlLcYt8DcW2tjjEN0na6v+Iwyi/6tSymj0wf3H9y3/gGUNrdAJvh9f
uaAVbR3xs7bmK7DNj3mPq/yNu6MXBVsgBZQ0/HG06M7WZKE7007Taws/xDolSlq3e5FrnD3uSCms
nwqLY32IFd7L694RvwTl2GvAHh53KrUcQlhwRpy7zzOJrlaIgN8/zU3Bf9muTzdQlYC7qgoAVtwa
p0Iehdjy6vF7jKhkZCSwuj/FAj809LC5fY3FQWKh/qGckNGcvliGZXnjUyBaRBvfaCrvdrKRDPzZ
R5DjN91k0RaPy0/T1p9BqVnpHLIguBjCUNUhJ+DiTVS11KArOxW/Lx5TigLJcKGhbN/3UB/MJmIV
q/nx8HP4uuirAT/DQSbEn4XoTuN8RhXhh6EHYnwI2olV2mS2UQIBSYcOLMIB3ao6w6eWPf2gNaV4
1pu/FGjnmePAIhV5hG/a+2daYKmZD0YhYj+zzNBAIS5BgKAev/T9FfqyK4oSEvQrBNJSW9FZ5aYC
RsqVBC9+ZUL6zW5Q0YU5cTjPMe97y1Ad625kzclyUmg6hpSiLgTqS+SyDxvIMsChs0yMwC/xq1bi
bIEy9ukG+aT5Mmd1GVr8qNj8KLvlt3R9hRuuIS9SRS7X489m1LYX3+NzomiaOhWNp7JNwTp5A8wn
H4rRXY9pmXWWU/RJEcb7qgzfh/tCsFd2hDP3B3L57Pqh1Mnd5gDL7nFVtpkCuL35MRy8T0/GK355
ha9CbS2EFxXCAqDDTCKYBC9zMZxzOrwgmOvOqxsQxMkOBn7wHqdVwS5miDPdKo17dIasGR5+vd/3
pY5weUNsCGbUKVO5a5bDfxMsB/DNbGOr7lTyQwPNadeD3xwq1baVOdKajMJQy/nJy26ucgeZ6FJU
4vlUzB4GqTdwrsqKFSc/8vnYW3zntrnjlFxkSlXIuSKCs+j4gQvxpNwXtP9z7AlUHzLTmpdOBwOt
ysv41rNS8ZjUli72K1Vsljpzuud/MUMFFT9rDdE+XEce1GjSIg6lCxxkSwgU4JKMOwtdjMAZ/ZTi
9neUAQ1nf5nKyOayBLF1Gw7UB4pfylwjmxip9XlkKOfUrwJpaHN/kCkpl8PGTjiKBBktHORtBHCp
9WRaGEZkAstKZI3+JFEZTWguhdmSA1dg2MdAGlPa2uJ4gEJZt4SWKdrdePaWo6Oj1yVvAODog8oa
QBLHxuIs1JFWa3wEZ5k89NrjPwVqi1XxF4bwp6b7PbbN1PKKsq8t17mmMxaH+hWYhdnVVSMAgyei
eDcgXNUFR52tcaMs/tFliDDrDx/hML7O4O+1MO4M5cnpUwLOhiYYrqNUhHNMm53GU+pK+SoFDJI+
6n0yW4yvOArl1zJR1gLLFoAXGMibO+NVIae2I37Db6wLApzCJtMISFAsHO8LV7L5N9ZtaAPDqB4U
ABSQRlV8kpgyOcz4UuiQU9La0VA6u30z+Fwku1BYVmvCaAP1MGc0O/m17vxKSjq8TZ/Me8I0cuX/
xR8eOO1ebrCezV+tM6AuO/qQ4l59UTZzRuJRXACDHq12vrbGoqyvloleBiamaRmzPdW5tuU7i5Qq
LDD3reMKxsexgF+ONllqgAQ8tp7y4RdBpOflJ7smzwIhaawnx2BlQ74r2HeQdXEU3VP4Zo4n3gIl
yjx27LMGFfbyC7eRWX41WAoXwibpWh6iQ4M7DDCLN+fbeRXQrak0avyEukh9u9O0e+2fHQ/hqqLC
HRJWwrqQuPbEObkyP+CTBdVFyvGT1Lv+iCEsZRAcWPmvhMSdN6UZ+pdZGxEkN1h+9EDck75EU6yg
/jJIXutPNEVKX10UBXF1C/il/H9ryBM8uWjwsctVaWbIhILeVrt17glayhKAGy5FXDr7o/DjyAvM
nuP113oIdnDF8A9qT+2W1CWveelbTJf1IphE0MlbtTDNEQl3eFW5hPrjYiQsMd2TyZe8xG3vQ0Re
NthPXDEX/VR8cml2CtEGOB0cdz7sfv/9ZPAZZ99c9TQlwHsHN0NGhkSOoLh6UXBK47I2Zd7yAoUZ
gvrATO5KY90Vd761ZoD27ZbvHCkXTthm/12NsIpaTsuTcO/l3R20k2ynOTMqthXNWFs5luXD3dZ9
8lmsPwEOY0QzWsvz/RDr0vna+afEs3RRw1x2n3j5j716L9U8Yi2ocbTilR7jQ0VOG2NVmS5J08QR
ZqKFZH7TJHDP3jdxmIMiZL3OKHrM2nnHf5JW38+Mp2+WuS/Uz612rbrqEYI/o2cWzUT0rEUV+OJT
iK+c1FEITuhlyTdTGt8udR18B2iGXwMDl+goqHIIYDVD3sia1Ne/1xVtCHS8e0uWXuJm+B3iKdvz
QSVtYxNHHU4uLj0qvJ+BJ4WaIithBI/kkM4fPAfedKTTsccZX2OPqfXVMRZVg7UjajlRCP83RhVh
5DoSerkyGfunF5kKR7IlTrs2vv0mQ3G91dNZYaCNngHDaZFMX42/ngNze0HVoyXNPAwygyJYed4Y
YTS0RiLo66F8seJbtkN36Lu2OZ0JWMT1YM3kvU9z5cUMpcXj7tMjgdThA/DLtu74W3XU5Gbp6VAZ
pOIPCHhi7PApREhyD1nfVX7mhS8RFTJIwfo5Ky7Tx3m/qoWTMl2XVowxY6xIO2yb5CvLbssewNpf
ORdWXf1dehD19sl2mCkwHcur1I97MiwocYCQkJc3SrjCMZ/0Fr0HZmJ513gHm4jwr9jh9u+oAKgR
qxxC2m0MNFPAaviu1RMs1moDutYX/q9a7dnkUg6WBa7mPETn0RiDYUaET44leen+okBtK7oRblmv
6/QRwytYjGrMeAT4tIlReZs9de2lD0qMsAbAauRPcRN56OdBWF8PvnKHFo0F+CS1zMJx26sypj4O
YLmiY3j7YzXFBrirCNjTyes+KZ8MfBy/dWpmPrxbuTOFaCVH2Xrf/CJ1vFoPaeilu7Lbs31Gu8W1
fvUHgQl7cLjRaGbZVKXLrgYKPFsUodatRl8OfHaQOEkdVQGDV3NUyXijJGpaJKdjqts9eoR6c731
rryXeCmYmMEcoE8Sfhhju++Bgm1Ja77F4U9yoMK6v2/01oVMadgPNE4IGJi30LYcDGVN0o052sEw
7Kx4tx8+WXV/yHT2gbT/WGoKkOvoB7ASNw0tM3pm6K3HoyywnQGbwmLgDTJJ85GamSPqsYmVeqT0
4njoMOm0mAX02EF3I9D5woU32NBD9WSExyspQYrDF1NAeVAMTq7mDHpb/u9qeNozewSydYDInZRj
kMzdMsN9rNpvSzBELeJ90QWkMCK/AqWOXD81wAVaGIuRdj4jW55hq2gWcxsTw7IR92pljLDZv+HJ
mBpy0VI3Pa+uS+4XuM8V6BjfKs/UxhPoiPUoKWWNwMXq2vaCNWUtu29bvgtaaTcADw6yQXDR1jot
dYbv0xzPcrbUXX6ozLin27U2ygRWBrbVTwbpVUnpLw2M8ttdAymLVwR71TeGPTK3zAmir7QnMI9e
pdL4RyCTrPL7O56eSlCqaT0n6dcoVfE9o5xy1H57rBFTG4ZXoZsMQpMHkxYfeegeThoE44dN9IRi
aqhIp9/kYU0sVRTLxIMKW5uVeXpHPSNc1hYWOdKobu9uz+oecIHtfkIZe+ZxVprKeQY8W9g24eIv
c2f1O/cQRHh25Zbg/HY7nE2PmHHdi94EqaKHGw7+pkCbjvyK73vPTp+y6rhiifqL/vBeCw4r8iun
4BGiGfCPdvHfXezjBP9TLZsqBpTiZTDiZmgojX1oxRlcaKBOW9QSuTqBj6pbgNsKO+b6hpQLttXn
xZqfT5t/PSQ0D4qieyBCkL341dAF+kGrSbBFTkSnSKOk7cTqN6Udxj2WfpojbMN+KoJVXi8Tykth
IOzdr6kIQ03eC1GfJpGDN8qSx1LsbFLRge2mWtIkzcGy5ot7hnY1lsUeCbnnspHR22tnzxpoOAq3
SSSTvfmFECELjlsj0DKsZWe0wzpIUEOLWVBiZ5A00l/tJQj7Bq5hTzSZRYI0hCYF2Z30QEPE4ZXr
Mi28x1v0W8xB4WmpZ7pb3Pext/qTjWCw75Pk++3HJPNmdxpENf8pZgBp92WsFGIzFkWNerZ8Qitl
hcGLVPcm/tu4SSE45Kd9KSkfVxRZJP2h8LNrpterKMHG/RHpmbKhOsZ50I2CPmq0D+b35d9IFKv5
S/GsLpVVSxxvYbrBIeeVUlx6sJz04AKhg5hiT7bD/cdwZHSBIwuLlnSEr/k1SDNJ0lGoa4Eg+twt
m1TNJmQo4VeVs/3VddCNmXsWW5dTvBOLgzpKNimHbUlbzcqmhnwlDTn3nPgoXP9dJR+vkosmhywH
98Fz2QTU8h1BsGOb/PK17NCs4IXhiQQ1YlSMaEBFdNOgy98HpycHqYMq1j24szKRTLjbxoSHKiJD
bfZiNsjsGgRs4bXdRycM+IXXJYtRx0To7GRRWIudqfyLXyoM/pYcaiUANuyHngTu4gVEigt2h3wC
QYsipwualb0Y4Xx8IndIqOkXnOa5F9T3TaExt6VCGc0bnQSCuuvhap4Teo3xm2LMctAJ/1QYfnNl
8UZVVEf1wiTvdTEPuE2x384zr2z2sI6UOYNfZiDtULuWNpHwwjdt80fo+KcTqyQAaXZ2R8tCiiVp
Ri9Db4FkDgNC6n0bFdkkZg/H62bHprWC7xj5Ik2/3vvf93FumvGe3WRUGpEvu8INoc6AXhQST5Sg
Bf6prl0eRZEjhytQ7Ib0jutxE0ycLXOHDqON9Jz5iJfaMp3gOJTJGADbLiWOaQKEmw9BFs9q3Uni
ZcsqU94X3+LmJuGF2cS2VJCNH8yXXIo7A6+6TavrNKyYbo9yuC7Nhbiu79pkKpUvUHz2IOyRjMH2
F8iB8kYfG/qqLdNj8qkU1588OIgwohfQ1NZfUS5q1RMW3xe/9ky3hgzMPkZkkjSy2vPcPzz5xDo2
954qrRfhmwujM8YEUoQXukloSVdxtqKK/Kq4716RQ6LgEkjmb7KT64FEXXPoixJAt1OskwjFIPHg
Zapjg+3bNhM3rx1yAgHyUmo2DUE3D+CrQ84GxAtdjUquzQe/6nP9I6WvBI7pMbxnc0Uy3HYGPhxT
s+luzziKuaHBJTtzeoMlIlxhokw3VeX/POInRMyhj/jfhN/WhE245tiVeKLyqbEru+fOnRdwa6no
8zzUraXgkyVALVH8ahuU2dEFZM8jf1WygdQLtzFMbKf3hBjux92rxUCJRaDv0qPYGoWAEsTcdf8S
obl4uKU5y2WELPF6Q5rlX/zwBA/yYXPtkt07Ksh9yMe4rSaauGj2plA3Iw+FxrvI50ulDVvtALck
VXEHb20CPG6RINzsqxYaibcqbEcvyc/yJkRDM9GaGg/Y6ttyjcgGUy3/M8xefEnJfm/M12OfD48s
4RwYunc68CFY2sL6Wrsd6HwM47o+DSB98NdnrRPGEtL670AhQv5CN38oqTbfo3SUNGsJMj0c+YHA
8A1jApTeMp396DpeQwnDEwsk4/7vwmEzV/dZU1ZbWaAE/CxC4Z8C8prqsjYXQ3dv1/91cSWyg303
7PwuCs53ov3GoqujUq+oxiQZNY9YcEpUOYJmLDyKd6rbrqyH0N6hMt/+MAbBWGv8ygvr5bQ5TGr1
3DXEkfdddZG1lJ2+lIjX8D5tFAhHGvPB1d2ns2NKyOCPm6EBGa7UnTUrGFMCKB8V2zJe3WTqo5/n
gJe2o6TGPBoGErhuuk5/aV8+J0p1L+SCCvVz3sdK/Q2AK8xwA+VZSoG1fmb3CIItEonlApaJiPTg
7E8iqJh05vrzdpztk1xiJ5cDik+jm6umMXZUheQ4cRK2ZlNXRsZY2J42B6+hVXvM7KoqiBAw63zT
J/NPeAhR35DEIXvAYX+gMAU1Rj+k4XeRBN71NOJXzYiiw1MBjaorhuuENsxpONqvsoQOBb9bTSLQ
0SbVKZ1Y2+HbTJvNWFdR5D1xucJJnTlEFr2UdwZNoD8P4hIDh5XO/lpa6ExRe82SMUPZ1/pvMM4I
HWw/ThF5x643OHCIuc8cqL/4C3PbfoqYXKaAaI/y2iRTpwbyGAvdOlZjVXF78yNtrxYhzBxBOCcZ
X9P6K11wzPJ+X6Sf8abNO85KzNxW9c9/hWWLo7rhFaZ52kUG+dGIzOrLoCQcHtXUJy2cWw/cSUD3
dkYevIgdfdJOZOP/EJcUYzlwpoA9PB6cis5xiHNupv2VY2oFv5hwkwgm1HCjTd5e90SlwqVIrABu
2pMxPw1cDPr6BiMWgn5tWKdrzPbU7v9RpmQU+pF5NYpGoN9/trndPFjNbgmY48S3PjiaY986Ufyb
7dF/YR25N5dBduJuqOeUyb7Q3LLT0HODR7RqAxGOMwS8Gv21h9F/hgcHR6pJHYCzf61jaJ17+OV8
lJmnzf/nIT6C4ubt+Tdr5A2G/QQd+2CT6Bpgth3KaZqnu2IheqGZtp/IATWG/lEG/vHbhxNiDjm3
JdyrW2m1UqdkjX/P+rwKdyifWy0zQc5dHnxavMZpIseh5mMj/ylBRqUHgW60MzrS0BPvX0i8pFvs
E9XpxN2B/8Kq2LVw6zsupvFDDvfTdROoCtCzH4S+gBv+dRY7HVLF5BBj/NgMnlCoBQd2uldNqQ1I
SBgZ4AHUHF6ZO8/mNR4/gjnU3jV8mo4UTPITaj+vdF2VvYiNrfKsBcBQGxGPXpyYDy8LO+gMC3u6
QS0TTyrY7VZySzuxzbZwCnBw43TcTV7G/T2BBF9OOyFZfiv/qohak1cEsCY20u1i6SC+yGEI9Dqd
Z+81V9RK5OPV2wAfRNzu4ZnHIELbst+aBnM/JkuyF7Cmz0YbRrw4fdoy1Ygj1MF9P9sfrE50pf4y
DlC7SmMjnA6kF2CZoYUBPRHITpkV5Vs2cxOEt/Ckp9ABUEir5xaNdM3ZYgArDLtIcPVPveNKc+1q
PRR1O7cONF+8/xd5sBY7S4rL3ZhjYhVBz7COxQcMVCew2k3tgGDE7dJx/aQnrDvb49gpnDrAjJWO
q+gKTTS8u+NO0xlzNE3WSkIYbJYN/Wpdp51ocDp9ACxBA2Q4qbAy3QJIU0uwMA8O1TuKqIaos2sC
HJ1hKLJ7WPC/kTJAW2NrFwYC9PHJ+iueqkY4DOe3GZc/3QcanTXfNAUbxLnYZyHUl4XTPkCSJJ9K
Dt6SiMQORTVjpHF4Sya17tbqeYG5F2s3wBwaqnVhl4QQsV40f84ZK8kAG/NELNW1bdKydfbl8nFZ
AUvvaMcH1+bV6yp8f/vPaNBcpwOnbiwn902/Ueh6MHlbgd5+ModLxjkldq7po8IxBA6N8jD3eG60
tvJo8fmFTg+jkhNdjTVHo4uz5I1w/Mdi7qggzqhn1ZI30KNv/O+JTX9v+j6t3oCthE3htLY1a12u
uuAOID5DN9oFk5GQaNRSInYQY73MTnPdNquZh4wPmOz9UHTTRPiimXK+VZGNwbLzjsO9luPS5ISG
BZcCQZy6zFiQsEuHCuew91UNA8Zu9xcgonwiSkXGoXeWk3FXBOq9JxxROpnaJtxB5305b0fzFWkb
wbH7SWS6bmhZf6wg6UXAR/kI21vjhn1dSRIDp1y5iJREUuBeOLc+JPkuvAHAZuLcrwlMV6Auye24
LOIQKRcFmUdL4G2WGsBLSFqIhDlJgUilbCGmtE5ZESXoQubF7PX9OcdpCeYRleVxwl1FF3/QFLYE
l4xf9OoekuDcHDJltSYCNFH+BploUTvWGTHt1lOWWvjqJ26Mo2jmEHmLe8+leeqV1WNjJRuIQZJy
2/+4e3Z/pRO9NSlaDpeKLSdShRZTqPitWB1WRvSPCSlO5+uhEmY1R63oUnJT5xcxHsPSHHoGvNAf
ZECccPbZ/iNwMx7BcQWHprZT/7fYufzXLMfHLdFbcv3GV/NaNYyM6dq2/cZlBHoK6JEpLCU7I7uk
0wqSPQC5izsMdy1BuaMzwLL1oowcyHhY6LVzdPr6nW0Wit2toCir9wIweTjR9JrRiu955UkMZ+sR
hLwMH5vJ55dL1jOHe/jUBG6YUz/2ztRo7Gklw1idrEWQKAIbAMT+iXVdh9EQviEE6NPilkLxhYC1
VLK1RssF0DNXdeGp9YX/J8ZvGI9R3a/FZdyjUcUETcsfMQVa0Kp8vkCtW0dIc63qiVl2NkavJZpd
MGrcqQ/Qn8a3TZy8vgLzQD38/RI0u3s0GGUxAUNUz34aUKAfXeH98a0AkoIn+7dIe/RLkpR+2b/k
/s9SUUXSnMCQ4HrRrRuP+SfELzY+4i5h01Pn7n8KUGk1VwDg+2E3b7Cx6xvC4ShQca0Pvqzk0xlI
Y3uKDFKrNKKa208kDuPAwB0SlJkSsZsj2vhgytIlVU/Tcm6ap9kJk9r/AoZOMiV6mdtSDhvWSJd9
gtzeQd6dMkBIO7OEKm/LxCsrzX4NVCkCpYqxAnZS/+4tw8hLPOKxmfnMuOqlAVn66infA3qdLg0n
cMjnRGcEEdqA/G5CinduXGS6m1mVdG/iUQZVjiqt+kagYIfdT8At2QTDRdqFpKTfGNsRjnOY2Nu8
NIrnAxt8wIU3Y7GEjU08b8mofT2nSI/EbAl8SpVLp8VEQkE6CQthMvyVQV0zrrKiXDgv8+qQ8Uw8
PmTHObBnTepsmgAnLMelxcY5WdQ3c6ceuPQuAibRl+Pr/GCsQiA4cPYCN2el4jB/prZTlYN+ug1B
Ptx/MpqVqOTJRLymIiVNy4KSWvRYs+YsD980oI0CVqkzGRPGVDs1BAtArih2BkxRf/tpSNzJVnH1
fDAGBS2njpx0lcvyjitzbJX79RbgL2ntvgfNTppzhAsNcZOpr4+8TR4GYvzaz4Do/pAv+HIg1CTM
lU3j/KoomGci3JKCydh3aK0XssNhpv3b6M0TY7dqZhlazUYn6v0mCOqQph75yOIa9HDZHM6J1rGh
NVbDkDBbEFsW+1OrQ6rBpMlwwZdzNIOZ718/2Su7qMFZtNY0QZ6KrSt24k/lrE+UElKTHofeCsTb
NgSIBVciTty9GDMXrmNDuVxlJg3XQO8MoHFq5IGdXpfjOi0kV6ZW2oehSiGRWbk0/ocguQVE1O5q
423HBA7aX8TE5HtjOiibxEuj06pqw5GWy7nVM7tB9NzMuNPX0sUJ9io/DBP7HL09RE00rzxzkQeg
SK2AvyZZ8NJWHSGANfP9/y5wI9KKWun6V+i4pIak3KsFDtYm5wx1kbqdPeT+KI7M0d26mnqQPpvR
EO83LB+uSBAZMv9gwwVyKpQPrrerq5w7tFOTsQ/nRV1v7gnygbX3IB7fCz0Y609/XYbgHZ7LU0MZ
zwzz8vqqpwVDHRRXRkiUNHBq7p3GTDbqeeI27BNkzuHrVfGkIr8q6SySQhE3dFxfyd4f4qoVfc74
V6TjA1M/za8asLCVVIorgyiZalUEJXG8oMBSa0zK+p+92Xm+uqDJL9hyrGOk4t6/2jl2YK9/a2IT
lEXscRb2h5WU0eqJuEFz5fx0LJ6ffikiCkQo7CIfkuXqDevOdEwAK+jKQMBPuJQCHW+f/asHrvfL
dXqaKkjT/c3c70VRZ/m4xjzL64WTji4jrqWKeZ8NS/P8YenM7JwiaojtIFhrzSCl3dlcaxKOCJ+T
p0zPxuPymb12ew6nrY+dHsVT/kMo0HfTY0K/QVXPzQnjkhCyjTf8USHcRWAhRTBU6aKWP8lnhyYb
lf3fu896iNwma8tep+VJwPe07jfk74MRHZPzYtPyWGJsaJfHmjgylLpQZM9LTswUkeKFUAKUiGka
tCaqnlWjW0W7+XlGkm4gOi24QJMQAd2V3NBZxxPEgiyvBtHs/uY3sv4eNFVzm+QgebmvsuluRa3M
YKUCfN5w95WYvMSijoOp5QqPrdGgLwhUzv+w/prpPP3Vy5LGpHKSCzNh0NzrQAh2H93qZvUkZ+0p
GM0za5qKah49cDM6AtAu5YRViph+DN89RMoF9t2dUt8/XjhxtYjTHvbNvOxdiCk9UfQBdandlLpb
GYAr3uWHGQauZAzSyrFJEDhnOEmifWImqW0l7kezR956IkfP2H3VUmppuUVo7To8MFXsdRD47NDa
JvlacKwbMckh+f/KHV1oH6vjjf5V+pnuG2mRojEYKGG8bGBoiB9BWEw0azbc2ZObdDC4ji8qCkKj
YPXAguRETwerHkWPr7Ik2uyu9L64arhLBbkTvMtUn1Ji/3NMyFyWkIRru6SxRcxImPkQtOprpEWL
Ns8XiDwrVKb1cWWVAAgTN73bMnqbECbaGz1JRcP0SN4CMkZvn4qEJr3CqWy8JX0pfAYakSYWElwj
5LK5tJFicUrtwJquGqEA9Stpfhtyajn4legrFqEVr+ndysNIk6Z7Unf4cKwVQpNU55QP9Fks4/HF
q+m2XQDo15s/L3o6cPkaqfK0+cAkLCuU2Ws+I0tfR0HJqgF/0BD2xLynE8c0yTMFkdZKK9q2GNTs
m0jT9cz129JYaTVyPPjRHx7i1abacG2/r1C3/ZaTobxZ7F+gmvRu27NzdvsNBIFzFHAQJjjeUQyK
+zO+aOZLwcLUm1mlGcyf9a7erS6W/2DsZ/8nQs4BFePTT2lTlXG4pERJmKDWQwO6wXu6+41ZF89c
peMeRBoJTP/LWd6pf8v0KYSd5CRR+oLMf/EdpmHT73Ti3AEpUbkVak+AyySOgoJcaGtjnEpOR4ok
WZK+HA/f5F2xvuwf3/X1wIg2KYfjDNSsWa1J9DXkIKbZD5TIoomKzO23d+GmWYnBfOJ7RK9Ne0TE
hrZrMdvoCt8ANJqxzmPX3xpJcUs1ZzWAeJDzrtvSBsd7r5Ha+NEGnsBeUCcNWfikn/Yea5qSvWWm
z8Qke/uqvMextLMfR0QHBsTegzqHbd5QgG8gvlZP4L8m5JQFhbLrkLiffmJ+71yJC1JC2rqqaaFO
oc1+wHtOfUan0qxsxfokwlXqOWKX+HRTx7ivd7MJ8nNKvLqj8D4x6zlU5yzLbUhq7IpO3Jot0d2+
i074BJbybvEax2R/LPyfSB7x+b1UQssiZ6EpXgJwUc2TgzEfICzDb0tpIqBEZYg15PhxsLsw5cCc
CmoONvd/j01DDdVwrYWmimU9f31u7sb6d1AflWxWnOSuGLnllnI6Sc8StAjHGQ6i5UpcFJ7MVyOJ
AXWncWlCX9GKfBisZNRWFWN4UIgHHS1gwk3d8hRdFI+5RVEPM1kyMhzyMxVi+k7fRUAH8XgdsSLB
DKh1H8/F2/xYsNCW5f66LPu0vp0yNYAGJUs0YjpFLXFk0TiXCA7iii+PfcsTlPOCjt6c2tLNP+dD
wrtXf+vI6XS0g/hBV6n4lR//TlXm86Vt42oqZI8vI6GkAp0m5yfQ1X1li4YV4DLXzI3Bm3JPXne6
j4qn3HUAC/ufml9D2a+WXaU0GQHEGIP9OMhGYUF+8SLYAMuxLmbt0QjAnLKEjob7898hW5jCy8ts
TbJ3SLEUfE3yor0TjaTFeQUlJZCTezyEVCscogz0JPzQCxN7aKgSbWArO8ISX0twqk/tSQEmBZcO
vi9wHZjpd3DZEQXPfIUZ4lwbT8nZBJyHtrlZhvB/trNjWw5Llkkvk8nC8ze1XlxGrixX1rHGbFXQ
OJZ661/uALzc4EvHsKXkNggbu4D5piXcCPGDsE7279CEnwTDvHA1xOufK/UsUHdogjD0i6P/hflC
ltYBixzAVtUgjhlGhWGM98piex08NPUTx4Ekk2GCH/pyCNYzFUMk+eGAuzq729GBpPmrDjsC/eFY
fKwbrTJNRkbgisNXWKkh80cCbc7CycDVLgMMR4/piHOPSVvFYAHSu7b/fwkT2UYbCyog7yPrNvwU
DUcr9Cuc67pJGL6HHpk1IBPRZbJO6IaYS0x1BVpOT42wAzphjbz0GeIJtVeYwFH4nRF13M28BhgV
fmnYIbzCCixG7o7Z1UNEo7YhQhUBdqWjubY4PETg/jC3LnD8/U4eLekYKOnT/ShpSCr8qcsnx2Io
l6q37CRlLiHXTvHnBBImW4g/u+8SmvR0zaTbFY/fUd1ciICye6ftJuBOt1tkA19k8lGgwsEmfy9j
rUrUE8i8jqUndJyiscoYNlMICnvjn/T+G2hiYqTGoA9k0MMQu84+No0Xeh2YuIMNvrU4F7Gm2oTu
wx52Xn1h8eITGmGR00UO/TtHejL2GNlK9/EPi9O8G/omd5bEkPbmjM2vNDllVzIAX2IiCbOk03ZD
7zXDAqJ23UjsAK+fVltYjdhXzHv+qdKmiHIEBhvUjfJKwTNTNd8tRUmMv6XHndTd9dMfa151qSTT
5J2cUo4Aso1LLnE70qzHC9Ke0y8GPnkjnijhPYLYJxcFKwJ1lkgV1zx/B9yp0liaEjf1wUzQOWVq
GSVMwCPhPs9pwhAe/JLaBT5OD2mIu2NaNf9P5WGYM6O7dKl0t5tAos8gv1CaxC5ucul+x65mBUJN
fuEiDvlYH0B9MRppJHd6GJZapWw/B3GJNZBO3nj3N3y5Q0Ye7BXGNUp5hKweH3GQLhNMr7brtgUE
9p6T8oEok7dB2hrJirRqLRdE40lq5qWNzuMUwJY2clkGUhIMiVLYzFSpGA++y0P2dYY3dhTrGFLJ
Fu6Sxz60uJK9p+X+z8dVRQCZFm6swDiMvnnGRT+5DzPyCDJesF8/kG+rvgBhN5ZgivXLJ0MqG2oa
/WCKT9XB4ceWhT2q5axWT9z7l0H2EgfyfAwftHDeStWzonasmGtLwdOxVhGh/b3CFab/s8zV+pZ3
cSpqp3h9xKzNDF5wcZBJ2G6JEbmStE0dyOjEsSIJURHLGWZWVRUoE1Jd7HeEbdzEKzxaAQrM4sJp
CXKWHEJ4ETWCRrb9YeiAbABhhj/M4dmSmxwvM8kEiz4udAZzuOWMpJb57UHg+JvkSdwpAk2jTsrw
KtOxGl9o/uXtpLPNYElAgMHkSrsYBuIe9UeT0RM923F15xp6S41LkhEv0KQzwH5/cD6RjEBBFuJO
DcYnlEWJanoOcctn1EwzfNiqao6HffeW5FHfUlVVmyhxXv2NqaAl96eq0ZvN/pJfkeOHOml1l4cA
gVUtUYP4Q7qlhfMUugxwAFmEiut6l4xcO2vLFgxNbtMUvys5UXB0G0Svxsri/kPDrHa7HgeCMFN/
nyc7Yuv2XaIGKvthffxddRn8VYwyOgFOcZazkj040F7Yy5IJLhHnDOMN3HrsP6cXb92rrTfRk8Ss
5kK7mtWYfPxqCushOZM+4Stnfj5W86rHYV6dm0QKHQLfBSGwnWhkZRrVwYbJ6Xt/RyD5Vffu00uF
qQFUXEeG2ofYDiSljoTqkctGZayQY6RQ6wzM4gGZeOI/h8uIzEsBl2zc7tTDmO2uZyuG1At01N5K
qTEP802Luv4uEoIMmR/PljvAhLlBn+YUFtycTMUsJrBQHLl/X7aKJWB3uqvhcgfHerq2Lrdb9nyW
iAdVqCIOyGLN3Lzx1Kgbam+niLqpDxTVtv4FQ+10mjF4YGVEdAv955RO5RxKuZT5yDbR4SyLyJ5p
D9Ogfs+hFumtmlQhNVXP3zKjABxnv4wQHfMUHwyiUNVsBBsy2eLWtJoPfp9uZqJYJPxmbMO9fsBE
QLpiLbMdg2kpdGR2rcvr2jnGzgi2hqXT6RnaOemyq1QgQt6j1uoN3Dp2t/4aELKWeo9ud0sRytyp
ZDCTfZrHrA0JNvY2fjCrbP9QxDXH2ekCL05ZGebKE2l65V5JNh+pG+0DXbAJ1VhO+eVTBUtC1Zx6
YvoHOEQQKzf/WNr9jSQ/CcK1PNuDZCQQaw4lVOkp35T1uL9M3jZ88cfmVYDv1KYTahOcOGoby0u6
kaSLzTluQc8ZCGA8NdYaKCfjPiUPS1a81fnFr7eMDufPtwK7NUJ5eMGGnqvhsRv5VRIQRukv0Jg8
FDmdduoRDoyTYBQg1aGrB0wrIreXDtygNxD5uJRdEB95Zz03AZh4N+UBNKuEqvt9aRhEywyDJ4I6
Nsp7Y2QKpWJ+wH3ZD5xsRdmH6tKlvBpseiTc1xDzQr3FT89bZoYu8K7maGgfnNfSm3hhpTfHD+JU
zh9reEdzfISU2CG0txuVFTdPZhQYcYJT6g+6dfl52hmXr37R+kzyvtN8L7oT4/cQzoCSAxkvicln
HbXlu0MYW5MvEPG6JwUs1tEIVhZSLSVUwVJlYWSw02VAXCbZ+WW8AV1SQC1pSjZlZaX0/Jchhn15
eVdeYicmoaI0Ycp9KIVcdqjhIjpbOnsW1D6mn4nvuIrd2NCb+hlwHpGeQWJFR2VmcZb9akpGGvUV
r/jLQf+MKPXyejoOJFj1/wZ2v7/9PeqNwYJgT5veuWO2UplcbvCvMGaDohKkcu7q2Z/53OMCXy35
B0pfX5/2JmttTS0gFC1FKPU5UoHXwZMnWPbd7hpyi35utxkrfvGWIfKkFwjtKWvFu/rzPXs/VYxi
8+/0rj8jSa2NXm/iM+CFQGlYszxv5BPOG8H3PUUdFUj+2bkp6IG742NM4a8/hF63Gqjq4A3GO3Mq
C65ImHyqfIoaXkrSvMW4ygWUBrHO9/oo9etKN3PYWrPYgIP51kqB1H5Q78FPrXMNpV+ck9bOiGuJ
RfwnXvtQm7VgUvPsl/zokW5EUdvBBLq+uujrkPeiQPHrD8zquY1I8DHJvbC5y2pvRBlu9I9Ttaek
9xawgqvZGNtaop9DzkcJlfid3rEDMpH4MjrIrfTr6hlAlFJSTarctnc9RS5k/VQ3xcKGln1NAkq9
wwmTdiQYsqv36sXnDM8LOGgpux3yibYFmkwG48h4q1dUjbhXUUR4p35SRnzxYjnTVxfIjFHzcJN/
kzj2Z3t9itG/OLEGqPNb4/hZh5pQTIMNtyR3Bl35QGB8FXwjxtiIDEdygNZnSe4o0clKxYW7qHB5
jTAyK5ThuS/rstPjmpKrynIyf4GlY6Lgnir/nf56HMvJOGVTC7rfUrytxB6IGnaSwqDr+UH+PbHt
J0QgrAMOO3kBe63J1t0GgJnLE+ai0Ld7wY+ytafIXLxOcKEuaQMRXzolADvWiriXk4dPWmSBkKIS
9JbG+TF2Sp8jmo/0/wdqwWwRQWmT8ciGCBp0qHCdCvXDPiCvM8+vLXj9MnNm5e0O7VG8Ppw2CTzV
QXU5laFLTFWIEpF3atj9wZYnThFK4TFGT6d/5PXox+GmGDK2BWOhnhnyD0lHVklydRawzmrxzD/Y
kVJzb6RECFPJUacbn3IsOdsWQbI1B+OcjXXNsd5p7Oe45nfgzauXVNU0lMm5jcD3Ge9+jBIKpm7R
PxU2ZUnOScyPR+rsF15pPXyUUt7KSuYolzkU27x0GcH96aoIDGzbYfFtgVaLiBYIKy0JKpcV5wPU
MZpk+xxYbkBorZ79rf76dcFuevrvKRMalSKh1Va2WJ++5maac3DvbTWKM/NBmPhmt4XMDLrXRWeR
v0yV9+uwACD0nDkO9AEh8f5kmQPSyetYI7Hx2HdW3XxHGYOyBz7/y5So0/bEkOrq38fJUbFH/H5Q
Gb1plE64ny3n7KenUh6cFwZDjJRdLLMiYD5Vzs8wnW2ntlDEyORxmXJgJpZFGO3bYxT0msjqk1l4
wDU+kHzNM1wyeeYyJlpONswCD3MGP2VhrYBH3OksQId31LzGTDjw5YMHxB3KTIb2s8fE88BZykhB
TnACMq/RJdbTl+MVDFIwNtWP6oWYUF2O41Hpae7xsUirTtINI/rxalhaVgR3ZmKDUyxz5lUUi955
QWMUVg17naLftd6mSI6WYdeyphbXYPxF4rAgCIk6NS3c4EPS9l+mK4Q1XUYaQU68i7Gos5zwHrxr
TuMcZ9tIW/YYMpShDc6mdKbdd5GYFtjA1+4buRPVk+lHBg02d/alZdBWbDJ9nMpdAig/pEkigimL
CMBnUNkQXMAxEgd2Se4s17N4iUZKPBp4OE2hvgWRb4v9gnTqVmAQD8goSu/PzD3G5RuCCjyt97h0
Sc8MrV2LTb9Kv++Eqn0QvfJyRAIgsa5H0n3cO3eRP1kDJbSDtpB/v7+jGHL+sTDZ3SLih5z7mXBS
J3sb5lkNBK1do0MmPSPlSzFx58rqM6sICBw3oo0hDje6FrjNRYx2yCYwqDJ6teDpWLGK0BZVT6Ni
/sPUr5Rghj7CZcmjUf+Sey2BiLrOd8Rh8TSg+qHbe277GfNXkyxCeR8ldPLPWNR9E3XdnckKUqUR
iBZxsHyMkgxsxSLQETQmCrSCYTU8Z1gFHfEKy7GiCdts7wZ4xWPj3VuwC1hY7pA9GNln9vssLMjG
rCuLb0yB0UuSJ43UI2/aHCjjNbHw+TyQzfvqXrx5w2jXo/I/LjE6kcENRzLsPXbg2RytGbb94M1Q
PoxGGTyMZ3ARSdAKHMy4S9i1jvzru4wCOHWfWqUxAgQSeAbpzrcFm5YU/ATu4LIpCEIW2Y7Oows8
seqEiRRJ1+aUj8MQLCbdfRwqZAHTJTGSNRYiwz7E5SQkWh1pUu3bjzsLXv9UA7z+IPyUpKVPmCqa
SPhGhYElSNlByQ9SWXPvhSv8Kd3LssNBpDzEgu0CSxmQQo0imRiuLQv4fo5incPTZqal7nR8Itbs
jSWZZnhSEjzjLO7lQWwrhdTUBANLMEwnZNkMj3/Bvtdhv3iM0l0vh9NatuZvLx1YDVetRMDSqbV6
QLMUXYWk0NUqLHa/n4HiqpxyxvxmvE2c6mJJ1gNhEV/tIplz8q8WeibiCiwLNac1rnMBW0JdKwT8
a3SOADnihndCSqKlP6qNHsGlJmLXU3ScUNLONOthVwINVIPxNsxqKQ+zuXTC5P7Yr/wjwpOI2j18
29n6/HvWOWumFEnr6znGgnbU8GcYsDmdQMQ2F6R09sNCLQI8lTSmjjroIVD2TJj8mNCGeXrKC9au
6ASNKXX5MBrj98Jm235Wer8gsTsCyn86X+jrEICyrItIQrqG+1UaNWETRZbJlUBVQPvx+Zadz7bm
GDEYCx+9THgqNh48osNbUV1bJwza33m5/IU0KD4wYNvOq4CqCsp/GmV78jlfYA7eckACFUAO2CLA
Vw4nVaYXUWeeuorA8W7F/H09F+fny1O5P6zttFYa0wXzSsEE3pHY8HW12u7bDZL4McFrxlUOCpIn
yT76uUHHO9cdU5oM/JAkV0COXJ0z+OUxIWupHj7rbQBldcf0D1byDk07HL4snsNZitHAk3PpORzH
e0D9y8YbxmU0efjYiLCComVfBC2cUKcSuR99OLD6kXFeuwTLF1oa2zTzwU0TjWU6pNME/8m54JmV
hlW7Qv8cSp96nb3OlJV0J1ea+GVTevy9PNfBIMGaJaTGE5Hg6r3V5NydtYcpcFSXw7qKCPShfDgE
dV6ikha4ugOYZ0+EGBwqdGZ6DJ2FW0sVovcvgdrv5txDGxnqbqgnno05P5Fi86E7l1VOlAlx98Mb
pVICUJ4J2aziZ0TP/YPlDMT86zZ9d3Oy78+spZESHzWZew4xxw6x6ThKpw06mETgaacy7Tbih8Mt
pS/pqfQKK/Z5azPnjKn6qe76RbGSc4OQh9uik3EUYL+1El73IhYdiyUkV9RDcIsjJQ0CcU8PemBF
OabZl7ERdrW7HWay4k9HBdSAPLXlL9ffgy5a5OAe97SdB5OjYApKdvSKKaK7xPrLLJ82qEFeFCn1
dZP9LrqVMfc+54Y3L6G8F30uAYte3noL2ZuMSt30Y4Iw43gR/cVzZ+R3UMULvmPgne4y03F7QwLo
cizgEkHHCsK7e2WhW5k8rGGbQItRQ25nRTMpk6Cr3KIOV83FBAOxqhTf3X42A2Lll1JrFiJH1gxE
l24BXBxxMzX7b2p6Dd1QIMW0AXh5ezICvyQtFhWrufXah1hYRk22ZpX43UB+L48sqqItOsF+8eBt
Jw+c7ht0KSk4p4zYKcFt/CBaYZPOZb8T8uwcUumsITrfemHw/ra5y5Y1NYu5DZmXOHSFs3DnXtX8
oDbOefNtlZwtM459NCpPD3Kc4OtNWZI9pzyfstNZpy0FgZx1twov6bdpx8+1hg7p8BMzUAPFpPMU
aBk/3VnScRuheLfgzjvdgFAGk8Rap6ndGV32Ht2/1C4E+ilnhffFoUp3FsFuEVinCR0kJs5Jl9D3
NFneTnsisrBFtzE1J3GLf2+fAk0Ja1yEs1fIrvvLng7KVr23VCNOzhXnkRN4ahSdMVD0Z5W/SasD
92d940Xn7O6RBaoEEAxlMKFwDcST0NWEcxpP6XXzG5FtCqLUSlEoBeKL2z8/W8Petpkjh6DYXRLU
b0MY3cRIRR7a8G75UsyehPcjhhOUlD9Ac5hKjNFti84XaCQLpint12TGgD92+Wwgq5ymbT94wKsM
KoEXN7xAcBQAsCRI8o8E5z57TLRvRHA01Z8mtQOTbQ/+F/KQpzb7fJBEoaBdh91xtbW1AO/If9Dt
vHX8G0gyDfn4w+pLJC+23B46pKZquNMMyFAIPp01ZCf6fMyAx4uMhd9q/VkUMSQG6aOSxYJuGBRv
iY6ly0c1n7VoKdpUoD3l5XoRkFKQrF3Lx1at2VH/QR0Fq+CssobTiqIbbBU8XHlq7mOQ/lBAlsDc
siyjgdCVJ9jOxqj72iIK2JdhDhVF9uhQoemdMDXYCRhixfpgZ7dlfcsSqIyKXH5m4/lCoZeUh+62
UKenw4CZCkb4IWnpfFy4zGEhDg1jNyj+4sIFiCIofVHZ31V4lc+EoMWCGdZqVzT2wKvGvZ4ZDz2Y
zM4bB9fL3NuCxn7pqlvpVRVfyUUud7h3o6ymYdzNBdJTnQuzsR+2c1NHOuGnE+eim0NOzSYLb2hm
Bq5Qk5s+SVtS0GkTODMkgMfFhz5qt7Q/movV0WNJLWcX0HLUjd7t/CdO56VEp/pPSjNHeIpPfdSg
0vN3aYzOiBd+jWKOlMb72nUtKCrSfhcgmdZb8i2MxZZqXzerz4Wte3AwtRY6SwNLTWIPQ3nH5Y/N
M/ibUbqL+2MeD+0YKcQQ3Jgas7OHluWMyHN9sVCrwFna7j5iVTJ3fpA4voOC/USBopoAClC1ozKI
jna0rnG/zFObZLQtHmjfrhmK3TNCurQ2s8AR+5DDlzDST37qKQH9UxWFJQFprKA7y9Mv3oJFXDld
azkng8CKrazTvMSkvP8/gsIwe9mdBiNzqmrg3kzCvxAguIQSoyzcPIkk4rS+4J8FRVe1fajobf1J
2P0quqCDzvR10fOd7uygQO1pQQte6qaEdJwsGDiQI0PfnLRs9zdTT/z+pAFy/z9JWav6DizSNDug
dRiQYwIAI9SUCpWaaBqYliERkOrEwPX0q4gJ5idqroa4lc9AmClROctCiOZ8VhEqNygJW4Ibgkte
aGiwQ5mGTdej92tFWwF7XKzZ87Z1P9tLMWOw5z3GE5yeDDduBjiS1zZg2V600mCOCi7vVWG1CxnV
P/dvv7UIMub3tPhd+rQ47fek+8MtjJ5cycGbP8cljfee6eyA6H03t7SbWzYqnizeToCB3y9uQOcv
6HgtTeVziHeF72NeJbzkifXOibOnNffSkWPVZhloRrG1OtptI/+pE070ljhfiGDORigbWfh3d3Qu
g/m8K8e9WkIrEQ/hhb/00iztRqzpxZwLufmg9I/npdX5XYqlIRcg+r4QCX87I7K2bSeEg/hJtaMc
8JQY5IH6/TDSlv5EFyIsUuTv5F93jMTkqK+N3u3csLXvhfa4T5Szp02N8od5s7dxomRaDEPcD0yz
dLkOTkki5SkpmzmUlKvwRy0dT3ae1I+MCdOitawTKTQm0Ad5ZEC5elacp076Vu/kDx4+USHoWUQA
REaZal/47MClcRdHfz6jOJg30gp/Zv2YB39i7baWNTv2xIPoz8MojTJAbUF5Me1KzVxgxt+asWI7
q2xwKfN13yvYw8qzpH9+BBfps3gqr463VX0C8F1AJhTYTWgUx61mwpOuz7qw/+hFVfOQ3wXpsmrW
0TY3cYZz7578A/z8+Mx012AXZ2nbqkDX81zvSvI+6Uw7uhCsEHqDhcXyNctcvX9FoRssMrBpeJVL
gfoaHJY/yKfvo0robn7eh12GZvZuniyI2EHyKlLxIp1c1VEs8V/eS0l+E9Z+FgH2D11guL7F8Gg1
mgzjot3oX2P+bshqUo6CualvjDM7nACJg8LnwoLnm6C777Z/AoscgV2fV6VjTDXRTS7IzEjAW2sp
a4uUsupZMHx3cNNDA/KIPS1RIXk3xYsEqDV8HELV6yZt6ABQLWKxoiq0FmpAMIveRCAli/Wl/Ydf
BJjCTxo1IOE/niknN9tMEPy7+Zw9YQIurVuQUd3pTHlh0bLwUmCnhxqqyOSZq8tl3ESTEGAL2nQm
TIiPpEY0oo9eGKvxpqI9p8HfGcOf8awhjECwqNGKp63sq/sg5BftSN92cdr24BpyTAuRLbEMsuIy
1zDoeoyahBetTtdQzVWKi2IaRZuxrHPhjuEqYZCSvtfD+QmP/pBDZY7+1Uhrcd7yx3C0FpWXYR6V
rlt7AJAxbJBVCuFmGufeo76jfTHudqmj3boKTu0X9WwgV/BQdsRL5+LI8J3+8NReowAEzM5IJd5H
dlvp0caM9ZWVQMHgTeDHXWOIwj4s2Ld1iuXnOiTWQCwkkDZORBnzd9cpqjwCumcbZjZG+MkZFeqP
OmRK3wALU7/ODvWXXHfHTtmwHX5SJuw3m3zTG9Rcm/4Dw/INnEF37CDpDN7rJ0o3Nqujq7Qm+t7H
l5qazifloBXOYhc0ZYAWhf2qpC776qYG6fz9h6ui8h37Tyms7GBSxDVmUscV3TX/w/3InGEPB3XD
rSK8qo1+qIwmzmctZPic4NZ//4HbHXTYP2VUiWqeZBhWi9cpgRH4lSP99dP2WlYUNLG5euN2iKMM
xbrtSGe+69tE8Zkat+chh4UevwD3dkeGu26m+fQJKpaxaZr+yE1AMtFPHjiFs5vI2o1rpt+Q8Jkh
yw6kA9XTiDLE1Ohogt83pQfi32hN5bCh4LJUgMMOlW2nDLJQ3T6VfnCHy+iLAumSDBcUiIlffqPr
WbGNS45VRVsd+DErhxtcjqQ8kVgU+lk2YpWKpnr+W6MI2QrCjdB3sLkM2H0G821YTn+XZE0tTXz+
5Tzm72Ep7JW7MXzCdL+PxnZ0D5XjZgg0Q3X44gOwlxffE2Q4edVC8vhRq/SFa8SU1WID2QhqHVr+
N7CF3mvkqwupJzpPJtPbtU+BYuZlgRTxYWBk5Lb9GQcnvOv4X6gPPO0bRxhglxJxxWWsBEC1gBxt
ogAY5YRsdwuC9o2fdYRb2OMYuChWYMHXCjcmwqzRxDZH3q7Uzg5TiSActsG7AVwzd7bzLcHKPjJm
E39g3CUeHmzV7QEAwhIcKL4rPoDG95cZhXCK7jb2CkYXN3/LrwBmqIFpGvNzl8owqk7M078kdYvA
h46XrYb/i+vwh2TAE1sc9o3Bz/DFZLWv5iZWXFA9+hDLChnjZPfH+yO+bf5gYO10Z66bJfcD5+83
JfVhIuABdy9qc21W7Wtt4OG/GJ6C3TGYir/RW0a8pebcnAaQqRNguD2W457QLYRGExTOPRW09qca
xhoDyedZ34WDaXjkBveQtF5ikgoYJiVQgjxq0eqZzhw/c8WW16ut2LTe/EaYJ9TTYQhhVmrUZVrw
eNBEgM98iezdtX3VxCQFoXpuEQDSMVU8YGoItRbEpeV4pqiPmc2VMKRXvMT+t8du+wi6HpaHxwy7
gjSxUFyoaB3SvOEFrvb+Fuh96iK6xw88pEWMeTbI1Y8cbaSg2teKMDki9xEuv/3dazEgmBzkPUw6
d5jqAAjhlPTKFYmu5Gxc6bOJZBleBkTQ/ZMz4GdwPjeTjavQs8PcDW79fV+0wlomnVEbechR2A8x
KKf8L5A7Y4ZTgzfrdEY3OfHHvJoGFo5TuqhG9CaeKYg5jjIT6PcdG/fjBHkcviSCZb61R19I+b2j
APP9io6XpF15uUqzLviliUKF5OSt3ssLjlgQpKOpmomaKbVLb6LHBuMcFIEZ54oIN1gutAio5He2
E1mmT8FnC1uy2oDVsUJmGoDpZrdWce2xxwNA1ceCQo4nqgpf4uu2oIsZlIfWLndbX2v8CE7VraDa
Cn/miAdDV2dVVYDdtqkZ+svU6NxR3HGM6pHVgrjeTECcmqNtFyrjv5e13QB0b7LeEi7cdyvz5Pks
RlcjZbFmVischIqISGVWinvW4tKQmkmAIOAld+A8MhLb0Hf4FKe8eCC/8KVRzR1uevkkCIU4m5cA
UMnFL8kzGFAt5LZkKSK9wLhDRXtouxHWF9EflA9kkE3uCnWvyWNK9bgMZJBDkPNBM57GMXTaZZYq
BUP+y0gdtQAnaItNUbZxNJyUrLermXp27rCpHDf14nnegN/HHuXZCb9XXhFPQ9yNZRJpYJ6fA/GY
5y8SRrimq4lk2Jd+k2pfqnammvmnSb9NfMykt8rZW3AQreFz/oh3AXCanEFPg1kBMTmviITP0bGJ
YNxFxbKMMkFMG1fZXWA4PuZnzyJ8tXHGnnjzM0ov6pCMbxzlDGebYXjeOBOmHWUMIMmS7CZFx6oa
YLZHlbOTtgoKMIeOs9n3ctZtI82d5t0+WkHli0cAS5IX9yeHgDA+HiGMbFpi0ReRgReWw1etd1p8
oqFGrTX44rQ0XfnAy6jqzxb8AO9Xdnj3JvVZ3KjpbpjqRbUbKafqygQHCs6M6p8yfzJhp1NyDkll
zEm9BrlEZHHyQ3y+Up+PZoI4VoBJabBJu2ViCmMcfmiJJFhXHzoQT7x8k9cJFc09HdvmgzpqiAe5
ksVMoyYBVg7mDSqcGVRQv8p6m2wVK7Ouufr9rgWmrkxVCWeIpwo8omyCNAlMiLd9YcFhkw8vhXsx
GzC5XRF/CEWrRO49uX4fHPHgiSA7cUzsI+GLJSALyfkdYw9CZfOJQ5MjI0Xk0HV9lDhthIzJF62T
Yj3AasVhCxklTek2nwk0Nw8rLNnHmZ3gkBERdRehAeauOeyWj1jvFc+cwdKg1V5gWX3K0aUPtd0r
7fO8A/WMJpu1fgqBQSjjarvYOOHFmHHCHnBVNE5g1p/twymqdsM9N6ZS13jACSQI2ndUgkTviGWg
8aHRYSNqDzSOO2F6CpayIl0C+udukViSTl9NX0Cq7vJxn+bPE0+Vy+Avoyq2GZgSEz/GrCfNrTIX
hre7YJ2ATbu/CpbxT8u3tVFmaRodCOtQbs8ACFm4wZ3Q/jPCz7SFc6JXpE8bSVvpOB8Yh2otvkiq
hmTYJWzAGFGustKakio4YiVIr++/nlfbTrb28w42CouN8kiMD9ZYuZWjiTqEx9kzRbbEgJNavRsz
Qb1ewCc9SzDQue87NTrGBTFP0rtWNE4C4gzj1OxBP4BZ8YKMNV29TGN8qbSrBcBle848kJ7vx7+i
kP8I+/8Lmbyei6PC+lWqrP4tk14S2VM9QyAMJPGpbqmHmFbkkN0UHskPbnCljHGT0/LL6Kp5tsEc
zHESHt3xzg72OB/EVTU1n03lRvigAr5EN9S5jQz2ZMrJIoOFs0VM6vbhfoi0A9peRrWrK2Hx1OcC
pGYS0jdbT8Km8Nm6I/r3YC3vGAiHPMi7uXElIig2QByDaPVNFMKQ3osLeTBosb/V+XTrc5IwDUHc
WxE4rpzEmfnHyZ2ECdSpF1KGqdrNUmXW1Hs13UX6KcHh0cHCq1a+/QYCCjmTGlTWfJBgu5RbefZZ
zzRA1cgEg44TuutobBQd1EMZG/avKv75IdiAPZMyF0Z4xW9UdbwVShkofUU7AuMlTq2So9eRL2BK
zxL3O61LKY6IohZYzbReJrYvGk0YOGQyYfw305VgSTLQMc5Vo45l263NbRqKyPSc9pzoCnsd8D6d
jN5arRCzrcN+C3IZuW6v9zlgWGyB8cYv50/KNxHVXGa98P0x3YHdHltg9KvWS/XJMoEB6Gmbntu9
q3IEZRTKwqH/aJmPdJxxvMcGKWoIPnnXkgbY5y75OJ9D/yREJmc5wagr7Pwbj8+1VABzks92ruSo
AXoPqpjIalvcTMuwP8C4UjiSEt6HGCh9F6y7VTP2AoxKZ/w63+mYOyPFFMQCKDCJuQTosLd+jMEE
D2DC9oK4Hw6JbkKMgdiKTyXGO3UrmKMrJm6iwTbHaL8Uda5I4VFQtBgTE+G248c+pf/sgKDUd4qN
BslNH4Le8JmZVUFla7jB9nU7OJPpvirbCg19opyNQpL1NyZKSgyzaz12o3fx4Up5u2LWkz5qEh2q
Z2rxGFi1JNy7pcScAJaQ25LGhmgCzus0IdkgWikqzU19X3jPjozNXKqo3J2eNohZpaXS4gKe2oD0
QMaLhXpfYlaGoBwSwvEMiSb5rPToU3e4z4h+gIzjdemqd3QQ2Yt8mdLX1XM3AcF9yJUl8XgaXfUe
2AGSB5oRbMDgDBc83qRDwgGNOwYN9TugpL8lRGi0m/20sE6/9+Fjk68mK8ildJOXCZIbnWBTL+9L
gNAI69hBxzLusxmNw5p4GXbPAhddIyS5V0TC7HPnTyfrJwPbNa6idZ/rci7O/h0GmcAdinzzP6sk
dbsfiTffnpZcaXV7vw1Y1Y9yk687cmIlfoadqLBVjNEx9rOK1yIQjXYo6+j7RaXs3e+67eV3m/s4
IvFr8fZCRrLalajcTH3Y2EQFCkb4DYiZqHF9DLRMuD2Gjsn9F9HRC4H4HtMK6iskQmWQvqfcea+0
FvAjpxK/z+ET2zQaeICISRwpaPdXAoSzwYzQWd5CoTcwG8A1/tzuFC2yW07bkRmWJSMyMZ//BNDp
89Kam5j7VKiLJ7E94zE2Htt++7mFxuKtiaa/84woG0VXUQKq8LI5v/xsnkxwTZ4E14Wm5muRxbVU
pBvAz9YuY8QcjXVGkBYObe6okdmn1MjabFqeGDUxr6dSPiRa+UkSRujY/1FRcTf7Jn0iH7N07mZg
5TB2N3wN393HS1pJuSpfqB/TvFPfIcO/CBFWj3cUt6Ot2VwOCtrIL2nECy6rktt84kAduQlVJ1K6
YOJz7QsfQZOHwmhuZSnprwuURVmNBRnVprCLAg9fMHe8IqFBWzoMHMF/2951n/OuWD7K0sMNOo0i
+wX4yhiGzjobprwMAHXYLwqh56wzz5EDJfQgKJE4SEnsRk3+Y+dE6JhmZmxiGmxMG2As4nuR47KA
HjHPxNeF+CcI3MObTDz2xlv9h/GpCB8xOh3ma5dyValq5wjl6MpkzVlchYKpDurc3T6/2QmUm3oH
vkEY09MBqaAdx762H3r16L2glX4GvTti7IuNY/AKpSXuIz7Y/GNV2gN3/kR5AXEojh6DZ3NjRTi0
k+5dd86xfKKTEeTgDZIXJpDcSDOy4aYctYoIl0lbyE+S1R85LX7Nmzy6WeYdClVMXkX/w2XBYRYr
yJvlasPaRXEmKfdopOGfY9r+m8014h7WXaXikYt425y6ki94wbqfxU5WvBT12ToZ5dvcoVucq8IS
k9mz0h3regaYvPbvme2Tk90bRxedGuvi4eG2bzLM+DDCQeWxrqICxmUU3Kw47V93+0eIQFWWWdCA
l9IYtCmlTZ38h0VawyXPfVKSlU68r2iyJUwCZO2PWHOnhoQ/cTyB+w1XWFOQ2T2GJlm6fDYUjltl
OO9dmiYZGBrO6EaJwlLtruAQAgZBtj17bKXEe2eW6gjCw0pH5B7Cn/dFANyJJl9cBQGEBis1ihBl
YHIGZqsh3xN8ZXpb0UN8mFdpbp8Fz15+89yrwZeNvollAwiXOeTrI5Te2UCiph1dPyZgFhVVNj3d
dgySYhbCNnt/iL1HXb6NFxQxKv1eE1Lb0gTPuWrnFiZT2DzsdGszVyPqtXISkM0NYN+a4gKOXe+R
RLbQqqhmcBcBIHyhvfTI10qgqJDNBIfWxVTaNJuJxdlGCP6QxQDLtz125zOrCC1GP/XJRfAoD+D4
4B9UEGKFRoRRGeunwySQJi682qRChjST9s+HRPPrgicgyRw0IZurQ4MdjXgFV8ksLmf/GmVAx5D5
G828vNY50r1NxDFMFkwz6OGgLFFAtFmeZrGBp60RQ2CsU2sKJsWwYVzGT1OYhg3efOcqw+ms/3JD
OxCa67yfvTCBzLC+2ItrG69pPhLX1pPt54+oM4SnNRmyLLWuzqnYqWQjwBQ+zrcW/YFmi82T6Obg
NAR6c8x+mxqKTK+O1imdXEvV77/11Rngh1IrL1G7kiDtXPdSlPQk0ccITola19NvwRrJWeej6xfJ
kZw+WSxY2i/JTROMUSBoYqyTquYwqViPyh+h/JFCFleXAR/A32Vd19cBYLuXqn0E0vn6GgN4A2eQ
gCAFDDsyFJiAhHLj1I2q2nz4U1i8egCxCdYq7OMGutZT2AV2qnvUrcNGwlQIgocuRQ5RUtTjSMN3
rYaOwBKMR3fz+SqO2TY/wg8qnFfo2T7Y6I1fBlqlH0e3d2oEyNKf9D2QlH68nFUHrFXZgKLWogDl
zPUh+1gYZ32JifHCBWpy0KxeSTg7F+dqN/ksQmYrBYDkVqw6O7Z5rirPbkPg8+rGnMUzdemPMVn5
lO80H4G2ZXHBPBYEpJ4m2znaaYJFJlk/+qcjlwY8iT5G2zak5x9rAZ0hWiQwD/C9FVu1W4fCj7K8
eNjDu3DLW5kdQBDc3S9p5ve8u1KIHaRUkNVJsglaXC4rvsNeBAoAk98ufIF9SVsigyvrZA5MYB94
a3MdlwjecEoM0T+6qXHmsjcNj+qWkAdwJq4Ji2vLU/M1p0zMCVYmLMb01pBLP7TXM5XFNVRDsZJX
8qP3QGCVqME5S7xYDzWV0kC5J1kK892QFxdqzENRromjYQctTHwAPBAn4kHVjacpGUUTK/RdD84B
X6xSoRkIAiONJcQ+ZAYn+FI/FU7uLmgkhNMwSRlNnEs7OE206ThmTp6dkRULHHRHbPguBFdxQ1Kz
W2tWSmJYdOio8V49cmNkhN6d/W/tlwFDN6EJDs3+uN9E0mu+6zH8wLG5htC4K8Bzfv0++8wBnfYP
uAxOgdikYUG4XDovhWzYdN8r96maBugBEluKZ0BQLYoDVLLih9MyqWAibkbg4KbqDI+f+rhFhcym
DxoGMYaD6hM7oq2EzNqe8AdWm4amGJmpwjLDhaDZcE4jAtiWOcjvxfJOk8Chl9lmERv5cyMK0ePX
o29hNpBQrGFKPraz4yS7QDVs2ihdjZp/Nn2VMvF6CXU31Wooo5BHwYj2bMmaBIV4TqFIVmrwoVSN
62lilBJQlWSms0G0wpFdeH6GAb6D3Mu7UooUZhNyEiIoUMXjGB/rWHntUfsnFZtYYVkSsADB/zQs
sye4r1rCvnq+0KxW0aHsNc0w84OxFEM8IoZ29nznBBjEDG1nwKtqXz+mxXp147YF4LKAyrSx8ecd
i8fK6GSF4/vXsYuyN5i2x20KpqjKnCI28JkhE7gFzVSIXain1SqWboYqbr1Zdskoho2+1BmsFVGH
tDlhHKWVO9dle8Qwq5+J5/PkMB8ft0cRQYqUEby0auCXkkjSCO1X2+KbrQx5hpmHECWQ0zTKIMFN
hbaoFiQQwwnOI34a0OAis2tMC+77NlXEn5I4c6aQUAVeS9fKbayKAz7XFdbzRBCa7PYJ+gfk3qL7
H0vLMt/ZNVUwbEgCLZfsL6M7K1TZpgZWdqmZ4QqQq7gPTDYfWHcFgGn3rfw4fwefJnh/Pm/1ssEK
pqsO8cM/Q12EyVHFPPvdZ7S1XNMNQl7cF/Cwi05GnvSkYmjIGNN2MM5yvY1KHnd9Eut6ghijvrq3
WXMFAeiAltx/r4YK7SKcOnLbgYHVQ1uKSrhYZAk3LZmNhzdkz5eRQOmjINOYVsN9mv0HOQ+yzWUQ
obVltplinWKdEcx1E0rr+lgIf9pH28qbWTSBnrn3GPAHc2+IKKUv2AnvCO66r+tdU9BWV/B+EV55
yAVm/6irjlEhyucK5MPSbNN/wJE2b8D9uSUiL4XEX75d/wzpn0ISM5LH1AEhcPSnYzzb6Tw5za8q
TuqzoTCWBHl7/Etk3QifiLe84R955VuSMJXXCODKy7iLbkTwLVTuaj+XwBSGlPrRNha8cXd62gOL
8RenyvUiY/P4uGCJ3UsdsKZycUAXMlNnOIEUA+ok/aXiPbLjiOOOcr/L2QMX/PzoUYWlZlymNLlo
0IRHggw4ojoOGeYMXl8ioeAjSKz10+hsOwx8fwabU9PPEk2Bhx7k4/Ck+7u5m+mYJ/mCD3mDKoi6
FkTmNtpJIrh5b62DmqnlNQ+lMEmlOg1o/SCotF5hFhzP5+0v2WqMOUPEEA8c53e2Psuu1nsQo4Ug
PxFvBtKlJgSNlbx2p4WMrJeEr5kfT/z9qFQdQQub2ksmvn1wmu/vGgaNFU/AH3ZJkIqqtOX9Brqk
ndtnYBbCWb+dVn7tSg7fB8pV6NXTIy69ZJxWGYzC6/OAVbmRdVUIheP+xgVMeAk7rxQir6RmguVG
3W0hefv394QCeAFpVRb6jdfL82G4LNof4deC6E9zTEj9tY5sKaMQg/IE9mpuEqYgSxgNTVQxe5bp
KLO1S9Ofk2wIG+bS3RJ61Q13xD/JCrbfYpWQmZ/7KofcNsqN8/srbyThV7FchaEGpcz50Co67nzc
e2hVUxRPN7EBmCt8oZKXkka8oeeA0I5F4B9EsR2Dd760am9plHctmuSwZHB94YLK/OWXGJCR3ZUn
+mpZG0yfjPlnSEDg4ax8WFShx5Wot9cr7VrItWZXgqeRC8bcO9mrVr8x/EWZm0FofqomyOCdBKPq
aXcIX6t3t/OPD7QnG/fMcQKYk9tEhny8wEpKdM1AoC5nVXPP1INwTkPes25jDaQBvKf8FLRjh2Vo
CdeAl0w6O4QiXrQXMXEEyWjIc/0qlyt3PJGpsa3k8bMwcWpFt495mmEAAarRYd8+ccTI5dXTStds
muCm5vEBC15ko3g9TiMo4yro5zVpzYx2pM8EchLfo9qt34OjdzOGlhFAnN6vitjAOK238hALMECm
cwQcnBsOqH6uq18/ZBv1IYnu9YhISpnqyEj7E79irV45jSCeSuAPtnGvtit4hPwuDbLlWIjt98DL
WiwscTnlEn2blfxDdi3DWFNPK68nEE6MNf44knZC0GnVn3pD9/pQmrC0ikaAODk8zu1I3Mp4oV8e
hjg0p1YK7so8HlOScSA+/MYfwn552ZkZuoUyG0QiaarDZcEIWQTsRQL5BIEV7uQ+uGuoU46UfSKG
nT/o6OYadtJfn3qoBvfWH92gDU0JWdzro2q3H6Haycoodb32boDuCwnLT4e5hSVk3/cFejBUdr91
EuoEE4yTEnUdys3slKG800dZ9Ywm/jp0+X6v/S1xAUf4tyJ7fdZssV6maHmGptg6SvPgL+dl3Uxy
kA2lthHVG5LYtuP3kLi9a/GPEOV06sMFd7UxCm6u5TQriliKsP1k1D1Ieu9sir6sAby4rvwbgO0m
As5Lt1Jt1hqZvXspIhlR+cEE5AZQMQYw8WNBWxObLwEEEKPNk/8+1piKkyzcEoNEM4/AkGX5hTBb
Hq3WAJUSc8sPEdFj43dJ6aiI2Ko+qNXCLXVUIUfTm+WMpijO34LTdqQvfJWZlE4JICG6iGSbHDec
btsawBe5t6FGh13dhqZR1iBu4wv0vBe4WemtLamMKWW5iQwA/M+M3T/Wdz2kSxuzmIffT15kUjP2
zNRgGbO5VLzGw7UXzLEJA1BWJd9kxC75gpU7tch/MB93IBP27QG1DW/7hAMQG6XirWTb6qs721+t
gToBcmXhtAB0IzwwITctnSs1yvQ9gcS0wwvPXNyIfD/euB5DYrzlLeVEKfycq79fFTFPG2rzkMbQ
x5gKf468TZ1MIMyzmtDrcGOzaAcYLUXpjR1qzTatsUDJN9/aHwRkd/bTVTBM8cHKTauROXQbBC5P
ok2F+z4z68jBP88C781aeH7AJQSYenBTmDTm/bdm23MYT5brhl/9DXCi5CQ6F9rdgwMw7WKsoTMl
RhAGeJEHlBBkopE1z9elJiuY339IxEN447yOth4xeWpccRNCIIkp2tJKMBngzMskf3/khmjwJVyT
qu6D3iYQvrLMJIpxdrY76hhvv5Ucri/tC3eCXDFtjtSIzNxH4pqWXouolsUaXwyVlTq8Vw1E8hgK
hjklMXfs6Tgq9AIrqLTTtizyIZqOkvgs0rfyUqzcKkMexEXuMXi4ncVKkPA5jyZcGwGC3wtjKBNm
uB95nVft7RKFkqMu5UlqWVGkf/ElRv4R1wwtgdI2npyvAQ/pWVvFy/GhqYwfXsjplRjMMg2DjiW/
8WCsFmLC0m1MQsJN+XC8U+/jVfPp70vTv5xTMDKR1S7VI3W6VrLsixF99hJn3Rc8TbQxCsDAGR5+
5aLMmfsWsmpb9EPft0Tq1sOvXGhF/CLFyl7DuekCH5wWiFxH9UsKnxQ75ig94H4dkxQMYWYbHuig
iR554KqEwPI0xD8KiZfoeESB+kBxnXZwsFYieuQ8yWXqQny2rkGg35O420HH8p0P4QqFLSLZcKlZ
rlQr6LoZ1qJDW3akt8ySdUUh0w2x98fJPCbrYyRKQHiYeSFukcRWU5oBdEnH/sooUFDVC1pcG9nS
yrMZ37FGQaD/9HTEBdnFRekBqSKRJj+e4aRlEeND4TyS0rB6HdvwxJv9559I3T9pW0/MneiQ30nn
eIBCFV7MEJux7cgYQ/TV4fo2YD8gycIaXj4t838x55FxeN7Tdn9vSB5DfEbKISiPYXK4PIxqG6mV
Lx/my9Ih5nVSyK3D2fSQJ2xEZb2bdfj/4Bvx7ilBNfQ7Hea2PkZUR0LPcae8Ybn0+K+yyQeT6fn5
BUtKYa9sT3my1ponVg3NsIQmAC3ig/HhV8zupq705R7OHuzdzkKNFFtvm49C7/ADayTCpwYkP6BW
zSmEgJMr0aaJx1fURJfIIXAQD6W/vRs42YT5QWCklTUC8m5+cx7/W4kwx8iR8gGQlx3wW16fzcYe
y/Gi/DNYGQVukOpFWfCwl4kCN7UAE1LVJeheLBzlaX+U91s1V9gLTklGN0k55vgArFr13TK0UDYH
/LCQ4JEMmV4UuzviljEnk+xvvXxSgMzzbzxewLBcByRqgGc/jchc8++7Sv1LUJh/gjH0DohAwVx3
FGYNCxl8hRT2bxj/Wr1HomnQOmQz0FuhX5+TPnb4K0DSoX5eaDHWj/5RHLSZhAYPSQrak9Ddc/PW
divCNMx320hvzQq6ydBCygZuxHpXCX1TcMFjKk8dHh0u8UaelNixCSvHod6IxXKd3UF78FoXQJZH
tK8AGty+9/tGohCpaW2dbMsBjWBJnIUmx4PpVEnKWTCqp5ycKkkSXnWy4VN6yjko6CVFHGFk4NHt
yAzQM7EMEUPVBY4InVW1/Zt/3n1i4WJlzSYZM/KVfNV9yeCMvdKJIqDh5DrFPFS04FkBi5QULA41
6lxij7A6KDPjMh2CTFfBAxknMen01x9LqPC6PLlj0IvTtBDlK5S5spCllTQLEFvzVv3VbfKaup/v
9wMz1yA/Oxmn46yh2UUY0i6sZjvsVDDWwEzbWdfzsVQkUAItuy7GsTERVxDdcBAjry/u1WDZ9ugN
W40gomACL6uFfHQk/vVX87uBPyW7tKtiH7651nJyqMJDNM+NUa/lxHPs2Jd7EO0VunQ2ofapUlPk
qwuaLmRdTLObgMWxAlFq4zjfxT6IWsAGmfrjQOrWrtMfztiLLwUdpcSU2V2VWWdeLPf9vZ21GR7M
lIHaxZ7r5RS6g/ffXLBt2On6Hv5hpzwC0ZXYdWeUXzUO7hBBFRbLaOeo7lcFJFONqdXXutwF8B0K
AiohN+swbK91yXTgG2Auf7zV6o4J9wdYacJwMPHoUCi+aypoQRg5Z0kci664kgoTuOF2hy2jtsbz
kPVQzVbgVFp5B0xSG/e7opyLohicUZ2TqICBnjRczyvrp24awRGF+ewFHfr798Y0ZwES8QWbCWbj
UQuGaT+AoFFY5SPwJcHktQU7+yLpK2xiy9ADNjjeV8kMB56Bxr/0tpEZ5N4NHIbMrv+XhR1NlBYN
sKfulJ6X0fgA1RMmboGt0ujnciKTq8/5RD3wMhAicOl+K5mTrHpZXh9518jJCxA1Zyowt7dF/89M
FN9gp/lCOmfXYoP3uI7wAhvZHDOIO6CG+907ygFmIpJOFeUeGJPjOrmsTT5GgbAQetfRSBEVQtw9
8aRKH8h13Pb2P0c5am5ocyZmGjMG0HTiLivODAk+/WHJjkSWO9hp8PbfTMU9vzUQPg0B/y3iKZXG
BrA2hVLtZFl2bHwRGPbGXjSlpRoRtX+A01gy8i1e2wgXAko0j80GMK54BugbX+wXEjxlALjQhhuO
F6P+XM5R024vvA0OJICRzF/1poDqsOFfD9KATwtAhWglEkIdEgSDKYV5d/11nTbLTBgVp/O52WM5
+KlC1YJYT6zXFocYESXffdLnjaQwRZNCFc9UH8F8i4Kl/A8Ukx0ifCOLmSybgRGAnnukSN6e9b92
2bzfc21/+OpZRPq86nyotwmiqZa4yGstIuAO7afuYThGdkNq/eYxTFA3bWm7ZHqWo1IJzxtDELGq
b5OpuaYtEFVIomztbcnCQFwDlrBmCkEE9RuF5fVeJ7DwLAgWoefJm5rWqb8wMdYPzJJygUvERAtj
NTQjKso9FN4hb3CKPgUvjVgkF+Ar2bfsexuH51YGslA1XYr8CpVks4Fka1rEzOt2XvSSxd0axVVS
AYjRTIiKR4TRiGRryyNB/jvNilajjlJMt9nDhqWUWmL8wbyucHBb+yrUQG9SIMMiep4HuTBc3nnM
2yqI5EQlxZK7mlygMzilOXG24ic59TEJsthEE3SC9XI+LF0s/dtbQ4yBYD9trjYDwofmO0ckF0aK
NnUL08LkRNGZgOrgAFRws/dhAcWhDYQPUaldUvSobGRbgxR9zqXHWP5LNk2cL3VdP0FCkdTSQwSc
5Hcyk1SkLOmy8pylMvFxL7bFSSpHyX2Bk9XBkE4MtzYOGbFoUUCzRG9ZslFgeQCpCUW8i9iQ5BV1
7Ei0buSQ9u+7SPCmlLEhPd8HSQ1UJdojgewxlehnoKu/wTbjKyVr/uv5GZfaRpf8OsUWhmNcHL45
Az2fh/CPL+yHBC+ouK0yktEzse6ZLQRID/QlDLKFf7Tdl1E+AzWg25AQg5P5O9oSs4oa6MDvSqiN
+CZbW0l0dIql2uWeZWKGrjkT/vdOB7o2anEopZm/6+RpW4sPq9MKdseKJeqj6f0eVdqtlGb7fCZZ
0/eLoAgvBG09mzOuLhr3FR1+av/+W80E6jHBvQ8uBGT81cWVCKcyFEBjMS+F0HORubd98VpxmvRo
rB8uGABxqXUcUzHIsBbeozWm39bBz0mLOUQp3K1zZSZ211D//bxSSaKs9ygzgYkXug3msYlpQhLR
jbla+GDYjpYibNMj1cFrrJ2E971Ds3qdFFB0n2MYdyS5QytioUknFD45XuGuoKpMDtO8+ti/ek+Q
PB0w4CulqJCFzar4BwtOvC5rOecJDi0H48J8nQgZgOcOQ/rCiyLt52Gh4vo3JDMINRUxhZtxo4Vj
z7/AwLvoKz/CGVQBB2wMmU6c+LBV5BlDoLM5FUQTf1dsPZC88l/w2l6ZLMaIR3z05FZvU7M49iIW
05gZ9xOW+C8iv1JYcEeh57zydws1Y5t1qgslBfDaKmrJNXTuv60uv6oP5JdpicsN/QTqop8GfpZ7
NZ+0XCqN7kohXIvCr1EJYvqXS+zV0XWc4DGZAfd640Ivkb7iLYPhPbzwbuXkky5K147jRuTlt0Eg
ZFDwUGWa9H1dgt5KMsc5VVgolhPnoVCcX5L0axa7EwabN30+IoqF2Fc81BLF9W+43BUw7ip/2NPD
GhOYXDSKZ8UxNHV5ueMjElc9yyyoVW6lp7XShQxq8E6NHlCEqvUIEVweIrDjoIWZA/eOBZJWygGY
s7OX52ZXyzy7PIDNjSiAfDAbXuNLKy2JUVOBZ7w+nWuqwBj/zjSVzH1/a/EdfuSKs0HeZ128ei9q
FS/DtDlgQbJ3mZRd9zkBqTO/7W5b7FnWaeqnrDZvBI6Ir3xxcyIZayAURMd6iNyTTP04K8J4YbzA
odDzdLZLiVPX7o0ExZmqEuFOPNCoMlE8r/nh7UvEK5RTcfqVUWlzlS7BrBRqC5RtUy5WY9iaYLwb
OGow3dm/k6UA1UQxdK49bqYQ+MLXgD7j9HGyjJLB9UF+tk7RLkvuisxKDZYoZfNbSpDEH1+ms6lE
FZn+R7Ht5YKD527mu1+sT9XsUkEWZbe79HXqTyVrQ7cS3hk0osSsEHpLIWnsIcgykivWSKfdboK/
LxGIMBhH/oIvhS4ULnHU7F1Y666fo6LG3wSb/jzB9iazCcNXHYU1p106Qtz+7CmO9TYoKqM/MHih
59WZlbv5AK/vmXXC0ylW18cUkEf/Y4PsZ/iosa3lZpV9s8SCoC48JjKm16BrQVSFOdUrrZU3Vwsd
fNZL73jayytxPdGyiH+5go1lO9980XDupJZ6DybiCMuvXfI/cO03lrsVxUb8qkS6FwpzWhjYnEmI
515RqLSk/FnzC8WWMhVCC9GjMpQNqfMzg1qqCvYf3y7RXvuQrb2G++sWXKvw284PeUBufFvBtsTC
Zp7B95py6wZ1VOHXIet5S1gcjM9F69sW51Nk4RLVSRs0aExsSrc3Pa1tk3IJf6dzbdGmRl9V6Qyy
FtLQ6IG57rR6h/TU54ZgbxuTtMPEZMByv2eBvMN2uTjxW+tyiC8PQDkkn34Cc61EeWSaV/Q/6MCA
uKoeQXguEog+nwwkQVvg9UF+3sfUp3z18/4U5tPwp6RHkwRtyGzHpRgObzHZDujyaqQjadamo4bt
k2vtc4LgVAcAB6/yNZ13n4VUvkMNUrlhnG2MgJDGCJ9RsTJl9E5XnHS2pUzTEYGasLn2hy/NSVfc
9QeMA7G3g9HPCtsrf04zHtcNnX1N3RqsKu7VbEe9Y2bdkVCrQTL/CdbCSTKs2zU9LJnmhxwagQ69
wfYBvUg9e0rz5vQhxE31NTBh718eeuhc9TWxkk2u7DwOU7AXTanGzhhVcFJrR3HMhdTW2eyNO+vx
BD1TFWO56Co80YcXpSxLcljgU+R6fobWRGpK3K2pIrrVmElp1BUOEjXxJj3V34aFA2/ya7NXu/kS
Gmzgh6rJtt/Heg/eWjCKeHBRVGH1HYy+9tJd0i7+HRUlzN9eGHE0+gp9EwGqSgzq79scd6GHPFWa
4RF9aZN66OtghB6bUADu+8VVMJcPXl9LMrltDO6utWjM4gi08I/xTb58dl8GA7G5WlYiSizP+Q3T
fkiwzchnTL9evr87kyACvX/PX9Uj5O1ooPNlkSzLBadnGa+T7K5Slu37V7CW7WfsXqcul0Q4GHno
O/PjadOQbaFsFwhhlWM4ezkPfI7RWAt5cJ2t75JVcLBw1arYFVMNXFDmq/og8/K5JqGZM7PzZpkG
GH87zNKTYYWhK4x/kme2Jra4QLDsz2sB9ltvOnDqrpzCGWA5UORS+3e9dp2nWuvxGJjHPXjP1/0w
EigZ+/WpR1n73UcNWdiwENcOW4gp0nDNaZ/li7DMF4kOouMh/GLDtnrrBPI35RhpUMEvfybYWV2M
uTW7Fnxxra2PHrrFr2uzdjh73lxvqja1COqVnF0MTUCPnrS9VI2Bq3ENWQZ9qR/LFhork2PqtdYu
cNLZvutsKJQYeDdbaRvmgvX6tKZIV8pY+1z8b7KTHLMsjUJz8e165dTEeRsaPO3VZelPTedtwDnZ
6IpUnu+eLvf1pEM+0X2QxDh8j7DnkA4S9WWvXMCa7Hft5wIP+Oj84FU6qglSRyEMMwT34Qh9r+p5
Am5LzzhWmCfHBepq4qzsuL7F9bh3yoRon+wnLbCVU/amMJsUcpabKifKJUWApgMVxfEHFIUo9LV3
13EyJr287vQaGK/0tOjq1kXQtBt6u72UW+kcP2Urnau7DAuM4NQsCzhvI7ZGcvtgFJgdUL+LVEGu
hKk0dnuXz+4PLZCWcHfums09JRADrwE+1eqtrut/+/zg3wKBZdP+pOpUBd6vE3e2C9IO1lZSKELm
qK2HpdCvDbQ8pVvdRbQLTmWnhAOSUpv0wO4wNdXhfGeHxnX765zxe2O81DT9rWv/2Frj99DcVONo
HCXv2xgsclXsIxFtPE6noMkg1YSjqa5QCpXi/TB1S8T+LvnO2R/MCibi6fdD7f+rfrSEpfAfrsSQ
1IrJBuu0aF54p+TEw405tNbZoKzd/kSbpLraqRwCVxBRIqOyI3x0/r14mgSTl04quefD/4DxJYLF
sH57nLEwBlPgfpt6kqlSbqnX8PPOKqwX20rygB/cQJFJ8nTsYrjm+UR/vp2Kq9fctruAAZHOiGCs
U13BvAinpL7u++JwWbSwDb/Dr/oKBjCLstV6gGK8AyRV+5BV7rhT+zC8vo5+DlaTB91yhciS57I3
3qkg2owvElcGowt6hwH4joi+rxfvJmXjFN1N8ptlW6puV02YPzdf7O4SJGY1VUHOHBvDFxk9/sH/
Qa5YCJUvuy1fdea6HluxT+Mr0kJKYDWg7srYCStGyyJNmyLQFYytMEdcdG3ngzeEHB10virFhrrA
ZzsiemoEmvCUZDCxcY+n/2q9u8eV6s2wqwZhr587IUY35PSW7zddsYdaAbqa2v2bYH9LoiczoO+d
RGKS9z+AEXuUsiVZSUHXQ0woSS4b5t0UYlJ40S29M4My9vDBW4U3snE08gBiLO2AB5epx0M5NqbT
vGERnI0+ZY0w9O/I5FytdV3W6BzsxQZBb1Bdsno6r62W0o10wzqQinZRX2mlg6jJi64XVHrNDToT
jHchH2eRVL+4i7WVsFU7KZGqmFHyz62VYJupAWYKNTihcrCZKkABqiIttZqfCSfYNnKbfqSYwKHP
H96xbV/T/So681XR2vsIm0WKto5Bm/HJnW0ZrF5Jj458mfU7+LkYqG0TAebOhAhKLvI9hBn8nosa
R7Oo9cPA11M6FHPYXw23JSJE1HGVKiKskSSGEFRohVRi3SeMpsVjdKUOVhENeKm5D0gEFxdrrgNi
KhXrxCbmymSgG4bLK2o2v6cp4rsVge9HdumV/UF15DDAmJmxb3ttcH8EpK6gxs3u0emPz12hBVso
6/efuHEGSULRvnrkTh+DIJS85Rsvl2JJakuN7Fuxq6AtAVvzF2rV0VehcTWfB5uQ9JGTnxc8sA6p
ISr31qMVXxNHvqYSltTMKtnk+Vjg+ojunF7UHupilFpCvpVWmIoFKkcRdEkAnBtaL4WLCgHo3IXz
D+sOyb9jSu2CQ39TEyeFTO7mN6xaoo9VGf9ZA7d8RBH7IvDquH1FIBaQbx/6ERAWQ8wrWen5pINj
YanGpW7149+UXQfO9lnS9KlRo8sM5PSKbAL15LeKNSOf2dr2R/py5omQvZqLB60J2noA0czy+zh3
bIcbWUIQMvhTyrZ9UcGyJl70pMWBq0czr9S06yNnEX6EDR/Y7ZCsq1Zx1X+qhEJEl3YM4srGL01O
mRvy/MYP8ohmGmyAP7XxHZQX9a+4+ATasP46QLreXEI0XyzAPawcHMg8Dz+svoEAWAV7gqEF+Tc2
e/lI/Q+zB07+H315UjbOX1FChRWmuzmjhjgMXQs9gkgHVE/0fC2LAnvHg0r0Nfq832n+15QHZSho
CbjmnWAB1rj19908PJxR2zFQxHFoo1XBIbTI5SNN9fkcOsahAPs2o31EiFbuGPfYIHaUdnlfi2En
P+ewCbivbKmEgFPzJYmAxa9zrgz7dHkjMaa8RWtPKrASU/eD1lC8dUxVc+BrMNh9PAdCWhFDrvWf
rUodrSUmHYSMcI1TjXcVk04jLfMZw7DpyZF+Aumzf0gFwnAvh+KwK02LBKFYWLPfqBD4mAa8ucQr
3uUdAg3lJq5f0ahRPUtzOrLIGSWzK7SQNlK5GVV0vNgtayVUtNsffB4/oSIVSSk6JwEmko7rvZvb
vhHvP6cR+1LKC+WJQn2EpQIoMqoNALXp3ZCbZ0AipeGYmT/6JlgtIm9EItlGlDNjUzBPcqA/RzSv
JODuzB8u0VCa926rT80StW62ARWTq9Xz5itZpAc2TNcbI2iO2cyw2EPMH/cvLfTOU7Z0OvpZU/U4
Adr2bRWEvZ8A60mlqWSh2bkaeh9BYES+HtB2S9Ke2/6OKptZSPydZnG9hBTef/tqdqNcStMjvff7
Y5Z2zWKTzah+v2lm9aIWMIfDhnqPK3C3ZtP6Khmvr7WvUTKtO6A8UqJyBzrNdZIyV7YvJuL/jkQs
AB7v4l46w9AOaMreoEWQI9s23p+9Hv5dHhnFsUyxqaKg57RokhJH6xv+m0dtI9lnycJJPFj7pGmc
GgjJTWhHkzm2k5/TKOmqNEZDDq61fLfrARR++0cTu7QpdnbkPyQnObOOgft9kVbvo5R1TZrrPeUt
pd4FIRxV2Vbz1gyBDzeWTFqOCtYKZvBNjqwuJlVchIv76xNGuDGXNNb3bh/nfpLLAecyKOMVnNCY
M+mVmix9sM7BFI5M7mg4q/zMk1F5vDlCSudDRTfU0NMYDko9+S5Zjnn1xRwbJ4Xw3rp5DcUfOeoS
uU4ciLYI0XlPVrJayw/+mvZGzsTSTdniqSgDESV2tlKfRRsYI4rxsbv9Bdau2Uft3lMoCqmxbpCv
1EzkaShmeR4L1DfJooFHIbEBvgbOU4CDlyhLSrKPuQCriBDgebo3mP3g5cnDYsccmut48z3evq9t
XoDaUJTddtXUGMJdgDvFYFKizN0tbzqwd0NHqSTQFCXXXiu4sGRI/SnFkLfcJaQQesYZZumCUdF5
6WgPKpnNmLM9ogMh/Ij33yrXTWgqe5fFhPoHGMA6ePwJ+3kDgDGqshq+hPAed97EtGdGGR3CsHpK
+wym77r+d+Yl4IrQYztzKB2YrO6C25NnjbVtTiFNL4un0O91Yw7xKVpVGKu44o+S+aPUoy9Rm0qI
tDGO4kXZewdEqD9PLMhaGaht9CDVsLb7mG+XJu95z2XxbaJ5SJ/nf4IMyuiqeOcay35B48XlA96w
940Oo1lQBXVF1q363rk10tnz0dk+2BdpghMfWIF8cwxOPb7dsBp1tnakCTEcvAWHCwrbVTdTHxFT
bwHe4ki+IekmHcTNEPRdMh/zes1gFyVmhTXhS9Fy4GAsso6jwcEYly0U5SCaV5Vi6Y9y7wFE7CwJ
Eoy4/A+mp4XfiHalUQ2/OG2AyP7ChM0MMXplWt8xkLe7lxVrEA0X0LjPZ+oZOYfhPl3RrFzTK9UX
SXmQVBD14VYkupd9dtXDR5akTUjVneewhw3ci81IpLblN2LUsrr0A/QN5m1D/ksOQsPoW311CBWu
XOOVGbi3Fnu9GBQvfyKWENmOw2hblnfhkLByUhwV96K8GsPbz2pVICnvQNrDnen4E7Wo/1vpNkW5
ztAV+BT/sfy3tJ/lEyy9IvRYTCtI8dmkieB/A5cNPvavqmu0eAatQxjFAiLFoQnpIMNqDDUlnqTL
EjETVVacArxiQ99BX3qFJ5BvSQTVNFQBJUTTVAwLqKQX0WTm0evVTMYxh7uGmgzRSsA5IDfa6twu
AG0Y46bwf36IqYXpxwBAw8zRu9xwxZQcBYRAALDxiySgSisVshuqVrIEghAmeaI89F46YVfwJOlL
iTeRSkPebCRnUKzz3OAO3F/fWQjmBo7F5WRGdpTjLBaiGjBwv3suO/WeeaYm0ZJ4dD16ZYF9O1XY
Jdo0LGClVn8Tw5zcEpnjY1mTRhBshVurLAKxNLSF70rqzyj42BTf6eKSCDkVqHUK72qiMKmA3DXq
YlXIWd5gzh5rn9uQ9ljOm6z/iP5V5An2WKIiehwWO3bnvUpFDIB5jlftabY1Dk8KIfDaVc8WZ2Ao
X0bUCCt3OmewhPKihbnJD5VW6jxAk33VaBbCq/vMXwBVKXmUMBzQ065Dy2JyBkDOgvEi88r5JUml
UgnBNm90rmWUwul5dJmBeD6pzE1PJOZNreB8qZqQed6SxvveK4fBQwKCp7pP/DLiB6DlIpdWIDio
z109r+GwdtBExRTa2AqXkj+TrBkyiBADUlYpDCPtD7KiTkX2RiVTgo2znTgf5+evPmdxU0O09hcH
RSKibkKoEGqlVT1auYsPC48Q2Ai99af5aQVt/GACsvJU9szor+40++DMvSjVRyaI8Jb7tjc3kZ3D
8H1oXntNvtGcrfbSz6UbrCl+iQvZPy+KLWFMC0btEVV4mhFD5G//mgfJ+C9yebENJwPSU1UNHVS8
4P+1Fqm48MoJV7gNEfoauC3Ene/S6Zf9rWDXdVY/dre8kfYSznc5yqfIqoay24FV0cPARivk+0SW
1FNIrEaqbzq+g3Jz8JzPo4pAJiIGeT/cerLEEaxk8yeT+/KiivGw/Mk2/4YhHKaSotLUg0a2a36M
HpYP8YgqCpze9ondASfDNNcPWaahWwf3kSMEF9gHNb3gTKqEX/GqEtlDz2VSxGuslgkaN1hPnLib
NL4M4PW67HUulAYwNpxEHac6nylKjxvQZ+X2gKqjayW3qhx4QHVTyx+eLP+d3VOmi4jF60HhMQ7m
E9O6fpvNpk88mBgw1zGSRRiEmuIKtKdC5X0XA/n2tyuBkErlinnd8NXD9AYTFek4y463bK3fvMbJ
OlLJsOrX57zr8jIWyd5b5oMkoMc5MgErnCKVoy1Ld4E34XLFl3nAtLKdN9TsbNF0BStzTaIMS8yD
Q6wFMOLs5CrnxVn9g9jQd4xjMkET4sYNhBF2anxg63MsFzUikII5rP8wjEPrEeSj95n6L+DVkdqh
Bm75i2YFEuCQ08aLcgegOkvNdvgo0oeuG73xY6riDbO7NBNbMFIpryS/jwLltCEJNAjfDRW7K1JZ
Ct2RwKVAci6NwRrWSYZTaEEs8yoDAFwWczecv9J3A6oWeJwQTWYjVsCfc3SUo42s9M0GCFqx4r4t
+Byq/+uMSDdJfkaVID3/rhCwFostHLtLzpGVot2Mvh/HNQE8zuc8agPiwlx5gkNwCP/0A0ANdm48
8flFqHAdFu7kUwcHcJBmAXGcpb8KwE9qBuvA/ND3Etrmf6l2u9943iycgpSYSn72ULdb5U/R0tru
919+4spfFcvoPIiZLTlxIhGjVOYF8AZ+llWGKEk5m6iE1BEX3/G/xp9wRKQ2eVITRydBR7IZPyBr
NUrF7zLbi4hO+f36lVbP8E5SNCvT9ntQ4vGUHriIHvF7bNo/F4vX/wljOB1gRbHITA4Kq3APYUMI
0lXQz6xZZqvkDvRkJ7WWx8e7ufl8Wy5eM1Qr+gOUlXTZcqRHGRRmYujJg+ECpGWaAbsIzNbX/Bfo
M8awJC2Wv3i+BQpfhqdozp+dmtUhPJwtU6k1KwZAssNoEc1eIaCLeTSzjP6nXQOevUREwX5iiFEY
Hfdz9dPwqf8oQNxpMwOAkqDHhNqKZD1rBKDqThg1PpVDEBRX7Ms17iDGO0ytms1xOwv+i151oTh9
DZ9+/imTRBRj2CIb17C2GmZvokv+js8Ncx1P1nfZcR340iLjRTo/sagt/rHVLEfsmyp/1if+XXR/
epWwWTXouQPs1FGUWa75UMvS5jTaPW1tf/voVvPvGXhfmhvL7+Sa1QrBNkV14rhr23S01lT85S0u
iBqHSaR1KZrdvIYr7uLa8sxyHlKCztPfnsEqIweTlIX3Dk5hQ5R06q9fdA9nhK+sjkNX9zMfj610
w7wiwpixIPo0DZY5U4ojjpXvcSRhgeKmkmO0CjIsBYiNg1j/o3WuYrjk7/P7XjcDYVbxX7C1dqSM
7dtFwtsmDoTGW/mGPmLuaQu5AB8KJuZULQEINSbmvBqm+Julfxtxe4kY57oVQg8iobhVRWdmlstc
+cTEPoGpRSdVpR0i/G5GxA+fOfOZZ3+int41TKwcs0dtvb1hDxTM/WTRs7OPo9yx9QZKyLjArmas
RCnJCd1xrjg02TsBrInFoBU1b4lyZs+hr1vKBnsBdYN3vXywSFDYe9/qRfbBoDMpDF/IW0b+MZBY
K7TiJf+mK5g/S05JmZXueopo7w3ORIS24uV93jwifDHqKxCPlgHLHW7P/m9IzyMiuohRQta58k7Y
j+BcZN19OpcGJxckYOhqPln6IrczGVCeLiO9mFEK8Bw10nDdWBmr4IPVMblkA+XDNRVa9m96ORg6
2OD6HNRyd5d9Dd3vfYf6lgdK0PImo49/yn5S2jxnE2K6iDxD+jTPpX5YXppf0KKfuWdJZOD7I9H3
+96vpMt+hPON1ZFbl33nfIuXsrEcRPChYGIHutx3HfFdc4/EKaxOI/vvO5f/YLZi/BE67tsXxSQW
lrGIvTlEINeGIgIjcv7LpdAjwombP8h/r9r8ucphhRmPTsS9CvUAIlg5xhT5cULFi51Bsw6Cs+m3
7BUL+7Y2uSXUTVIJUKpT9M5HHj3J74IWYV/cV+IxbQAmONVFRs99Bjqe6f1IqxPZ6ihavowTUvzx
J8s0RnUVxu9iOeDhWCzDzHXwsQDqnRr5eGNSkS+5X1Jl3lR6sce/HWFU5/r9QuTQUwcnr8MxZxmo
EHxVsacNCDFI2Acp9KtaaXTcrhhRNvTtE2+XL2dq3ImfiQpd8Aos6pNwKQdXd74xdLTEoickz+Ge
0oRH7ETeM2ZLmXyl0ceit2hpDRGYQuwu9Moigiodw4nPj3yrHXPF7Cmvh7ef5c4RhoE9vVf6yy1G
qNWCb3sjdqvQN+cW2bL1iu8Fyov45S3ZWoINWpX8TWiZ5skOEPVD5QckZeLtGhdCwfzJUh2lhkrw
xNWmATH6+VqNh9tgL4fahL4wQB/e6dWvT+UiFn/ydyiK9N8a6B7HR/Ll9YWSSadmYZj1g6OoiCYb
nA1i9Ba9QT+BAkYkwCcDTi/AOvzyG9lQFhrFGAsfYQlgUiqeEyfflzk8vv5bgLA2csPybW8OFanK
bh//96X74LEgpLhmGzkzgm7WwF4+bM7+lkf2IindVaYjL2X2S2VAljXXv/BaROZL/DjhTw8zdJou
1BbnyZoUVLFCPORcNCE1xazOPw64PuVRHqriUGWWtCrU3wDoV9Ijm40F/rEIsO94l6PEtUr5K68l
8bsI51DSL1xXgwvgnLOP4K1rSsgaGSPenamgnM7ftoUFkzVpQADl5s0AxCHc2sAUzez3b/u7QSXr
zjeQ/UURetzMeKgdgmx3jSnPnTGgZNXqRTdrxxet1jwuWRL/t3Yl2YpX3sJMaC/fh7UdC4YOQyxY
2HDM42ZNmtDCacNa2W0lVLxYzDqBJSOIk2YR6aUWksJd09H0pAk7xJ+zt+GIUJ1rhFPVfNbNS348
+uvyO7YVSqOgnLLcnUOTGt8kYWwcfGwFur9YaEebtGIxZfep+CbfPFGlEwV0P0bFcNg7GOGT1XkU
pjgowPR8fb2YsQ5rojszNpyItnuM/ZkNIR+dwr29b0J/5Ilexf3K6A72dOQWzuowxEio7TKJu5vO
TGet+FJVaUpuf4Zv4WnhvatmFmeDJX7lKIEW+8Dsw8sRAeIVClbqc8VWYVpXCuIgY5wlHvyUKn3T
+poODje6TgjyyBwhknN69lSK6ioRihL0dvCNEKrnaHaegKmi5vvuJ7h6yQT1tkGfwxPtOnpepWIg
UH2QIObiAeAFQyCqYmXmAEZqYINmBs/pl4+3HStH8iaRotRq8/iq5iMtMYEyf7S6QcjGz9m+210i
QEI5Z8Jc46idnRilEr51P/qDwnlsj9itAe7nFD+qHMAAaYIWBr/Fi7s3Wtm4XhFEh2o7Dn4JDcMR
T1/+eLfh2/tdrcUT855+9+Vxz7VfLxiqLU8yh0VyoYaFDhdai7EQuzsX96nhSRiSIkNs6nEEgfzH
PKmO51kis+wGweLMUu0ro4SU7LautsrLMYtT4dUmHV4QMK6z5b3ySvg6Fg2CL8m62xmrSiDXjNm5
ISqkU76Uox+uhlx6bCu64b5KJvrt1p53OZmFuRWSA6KTvf7sFkrdlyPOW3KBYmKslGigiFEpfnJ4
+fG/4ek0emIWIIWKFE8TO2NjjiP/H2+OolZ04cSaOsu3uS0sCAJesX8kOVLp/oj3Pn9tEqE8dbgy
H2hmtscrCJSe1d+auj4RC8DX5lNHZFjgaq8w6rSJjEGP6qThNnDTx9ODL0nV/yGiUgGURiLFv3Lp
Ke42xtr+IbyuJtkucYsmEj2pWlnJebo/OtAD8ep3820QbsNZKSKpH45JoIpFJFFmY5pEienM+llQ
yDYL70P85kpAQmPKDAGe3Z2JDOb6L//Ut03XXgWBqPwrXmXyR4Vy809C7HEhNUrjVQMkWIgnEbp+
HBF19W+TSo3daFsza4t6lcvIlzHFa8vl95GcMI99cFuvue5PzAA5CoE5YfE7nOfSYNE6o0k/hQ3p
AYr1XMA8E1ixqYXdUSRbw9wspNlDg/0YfvFSHxB1lxJdW2EA3AtIbBeoqrNVsNfsrFyi7D8yfhln
DbUrtnNHXECoZSY+wDcidRKLXWfhhfyQG/tAG3LHKB7swMZCmxm46Eccr7R3xn+UKiwCsqNGGK0H
5hTcNay12dlA6Ffcl2qxUhFICtlj1Orcpio3IWzB8PVa16p8PvVcfWK9U8P3BtXXGqRivbvW+uCj
VEzrR4FXGTsG5ZhVO4tnbzzGGVyGK3wnl+gO1ocYdnMZNPUtS2n+qvXPUJsbiyzKC+C0ywVjPB09
bbhMqx8jpxkwIRp91wPC08dHJ4C7hrag8Gmw7MNOwa+R3hg1AfGxOro7HX7Pf+Qrere4P2XfI83M
aiCJJkxrH+QOzdqhQKja6fBYiq4GLRDu8URQ866R8+cpzyl3Si5lEy1d8k92udi3C7AxTTTJN+oG
rbuizWO3xkS2lKAUy1Ve56EWJx/jWQmboYbLohAvQIw3HKGvGF8PtWcEe6yk4Ri3jdK9IceH0oqQ
rFWB5nYILR4Q696PgbcvukX1+rDULFO5zpQAiiI2IhvzFcF4kYtwBHDKlSLV5B9gv4z42xQwiQh+
ZN7vXnML6dR9KgWYOgu95gPWz/eb3T4axHbv8Nypo0UmCpfzU3BhMdgvaMdgUfSDxbPoXL1U1ZrO
frsVsBhcQxpVGP9boHN6BtRZDVniPsxH+H7u1xSlT3Pr0L48F4PxEbH05DbhisY3PHi9q8lySZSj
EO9HRfrShWQD7YzYH+44CgaI7A/5vmsvAxhrE7HDiw1dIK1iJbB1HTj8v8bDASd3GKft4kWwmT2h
xQTnaJ46+WZeYB6IHJzMloSGDFkftm29I4y/ig6HFb9T2HNj7xEgWZp5db0ADzfLjIfZ0Up26kEm
fxcdeGgMk9z0w5tqyJ98NqqUvBTiyKXZDD1Vtsb17LTRLdRbjWc04m0Zpzv1p2324shMKqBVwCAk
LAHR1Nicn2TnZoy8iu/w1reAidbdlh7mLNpiMHzX+EgetVnDTtGcPv7q9rB79hyCK5G/haV78IFO
YRy4YkT3zcv++UFQ8x9ide48cKWAmDAYIhTiHjx7g6NO3QbPZezirw+r9hbqzUZRuTa1O2Rp7AYI
bd9zizbSWq/3HNAITrxYQjBxPSou2f7EJusqylz8bjNYxI/P4+/P4xzKBdyZAftYG57UuGYrvBuP
EKW3ad61NHgh1exYIXP5+cUlM3riYhPH4RAjpyN2WwyIeiA5aRWAYMO79pE8Kwn42TyKaHYszuFE
8Y3+j9UC4SM61etEhLE9TxIvT0JI9ZNT3dMSZeZWkX7J6bo2xcfesB2WQakwssJ1RvVP5PpspsZx
uz/wrZp1Mr+Jdu/kAt/vEDVZgZai04sobuWxBqrf8GtVp9VV9yg+BAQeHav2uprz8k4EJK8F/Rug
aUI6v3cR8bUaJ92IyPnLGbEbcDESzFUyE3n6bpVMTBCdC62s4BBzFgzm92ukHxOjsKqkwbVQBz0k
WQhpaFT1GjAnOcy34tol7ykK+oXIqolYyR6g6VkWF15B3dBeQGaSsxp0ZZMMb9mB5Ogg9FSh2nvo
IWqRbBbzfmLkAgj2AIYNCFQP9oR+QmO3aUp/7mMzhlPfcvp6at4g/CQlL5qxMQqi5MpRq8XXLIiP
sGnosj5KMTUSdkqnqQXq8NWPDpxe+g6QuYTd7FU9ouutOysZPojVnB9XU4ITbzpMIMfmMDgi4IyI
YFpytor1u9kt9d/BqvjMM7SIb5/zvagnFuVznQLQTFF0V14bQnAz93WaWdMAfCmKTo7Fo6FwIYcL
RLmzP7ZQuGY85D0ZFxG9DTqEi/IyvJ20ZiaNGavV2Kblo9oADHgl2gpjehb58xSLdrdnHghlyV5g
cnuBit2j9y50zX5x/Q7THZQ54GkfTbFFLYq5FIJfa0oonGtFLrl0nG3qGD+u7ERqm59h5hRtIiWA
cjRYx5XjaSSo9KMsLaa1ZwXNwZJLjg72zZbuTxrlk6PUnIHCw2kboQoNTzW3BEaU7iRE7zhMgwRS
9U6Kp4+sqQHe6oOxPvDsQT8al1iWK91w9dbeD3vrG8Y4zX35vti5OoPNQvP++Hbzb1wkWIajAoLQ
tDDgVg9pm09p3zj4TPAy7BDMkdEYyqaFd79enHr6lPj1bzr5MdwYLY9oN3LUnWlpCXG+mC+DOGV/
GJgAq1s+IviqkdlAo2wGc2BB0h48RRoqxCpCxJY7RWor4cN+J852106yEEY5+Lymlk2VQUwHng4s
2FKVc5SQxkiLIpCLpJNuMM4v1x7tGyDHPyjg4VRmQsNfLY6ig+UTzLCj74XsV9t7WLczUAmhZ436
xWgYISVLKahMX0aF8EFMujo/tY5SnTpjq73cSrMEjqmys5PvogvfnArzf1MzTZ7d4YQD8p1DbLvl
9sx+QrThbGrPUNu0pTOTxB9QQ0GAFa0Zd2Kn8NC6bd/D6BMMkBF3dv6v/DycSiWWg7zDgQt4Ghsd
GTjgUn2pLAUR7ZX5AlWCzHY3wq+inQsDHNhr9OojfN2Zqp+LVoXVfjWKF5Ox/Sn0Y6bAvcp+x+Vj
iZbSc3sWV+pwfDgRosYzLp7hAmVkdd7rXZ+9am351QQIPE39AeE8t4EO/931y+YPC1emXIc991tl
1a8Wn3sXmmwK/0Fe7fogdWSDhMn1ah961keEbQb7FZ/Cod+2Q2KFDHuF4VrSQ2U8f51dD8Vz+gIi
akos0A5ZvznqlbCqo2hg2GFSONThWUREK684fhKPjhehL5/vcOsq/NCLTzbQm1tBCmzaY/v2vmtK
wkSWQQvRMDK0w0XxYrYd1fMlsJ+KL5/TYeei11ExZzdE/t0q8cUJOWvW/NBs8zc/pc4YLwZt3BAo
yGUM6TyEywpcCLvc4K+TX9hgJEP1CZbEAtcitMz75jlGwCcrJO+0jMvblKigyqoHxRXxVw9ZGMYm
aQYU1H+Ag3PAn6y3652MRAxCTvX/srghHt6T27F5wV72G0TPQoXwJG4+bl4BhNOxJaL0SsBLI/0A
Du4mnlnUwt9W9Qn9FCO3ak2lwoBIkBsdX8SpyqfDeWJ+sg9fh9G2PAfBkrBw4O8CVbBnMObUsOzF
7yP65M0fyD8FlamOsLrrSAHcaRKCt75wVHO1XYnkNf16N1KUDa/gZeKfztSLsIfnBsH4RofJZRVm
sMZZGmXvOA2JWhXrQ7tck4ETaIZ4gxXKxAfDw8kHpGyA37PpvjdElGpKtdU3gliXIrVeLJKARda/
z9MaEDhVMGqNLe81Rs6Exey0kVCD4xmZLL2uyg6IsBMtRICFVmFyx+5b7wQzBjtJXs+fx6Fqo/Rt
rGhKNjzDts3HB9KnW5/55HwYH03JDiMHQQzsnHoDpsHrRb+T6lBHtBffXGNj2FHyp3J07n+1zhjV
n6jCiPOgJ9F7d88NCbmmrHfOOe6Aopn/3wttZon+nKpycRrPKLFWNgd6FUMA/5X6GnJJVLCYIBTk
DIY9qmIUTnRCPPrCapYDY4WltOh/YrFjwSF0kmuI2LxHvmuUvtjs3GVkkKaXfnw/3jBX4HryIWdv
lVQ2D/5cix1gwUcbRRdwKpnDf3v1YV1SBlIAbZ8eTXqUfFc9iZmCFrcmtny2Jcy99i4daNNZmcn5
AyatJZCUeIXRv87ToBLY4WLzFr05u4xq4SHURx/yjmT3vXFfjT2Mw+Fw6kwmotCYMDC9mlmJ5NYe
hiygkksGED1KW2T7mhjQD4uj/bn3m60+tZaL4ol3+2fHe6+nq3mhSSaaJU8+RVG/tMnmYejktsS7
TJMHQcmYS8AkvEVzZRnlrnNSQ3fQkDf2+xh6elAColKOKphTbsY7ru65QOhjgEvfIA4JMb8W55kk
LHjEusAq7Y/Y4kTCvXa9K9X5+EeNQ10SmSqf7e7TwT73iAThEG9uNPfKWyZEtqJox/riG9VuuQCF
s1q9LOry6TxgNdTIleq9nrj8aHw03OVpxg0KWSc8i6Rcm+iKAMMHzDoKQpkNf8VJiu/BOtIFWTcT
6jl5AJ+8v8DyD35briCweHB5gm6sqE3KzkHcXtAK3gT6BT71afSSTsE5DV3dTnMU1jpNKmw31w4k
BLT8+A18Dy9xE3b33UnZ5eOvvmCK8Qs1FDskb4lAbKsa0+cnteSNpTFgKibuKaSCO5WWwDXrSqo5
nNUXfZFSmhtox9pkedwcQlYTDzh9QxX7+d5ui8sWLQy7jJSt4xknHt1Bep0qwUtIAwUPKjvWgfXL
coq5FUtnEg0mYX6LFtJkdlLrfiejymqME86vh3JbtKlcolJs6GBMO7Ma99x2MKGY0UKHG/LOZX4p
rNCdJHki0xxfCAf3RH88ohIbfIaf9tDKEcLE8mTr5HxSnXTKQ6BjFKFqiyWtNKLwG1bmQNrrAqwX
CKoxChANXs9A7ercOhacGm42ba2n+Zg95XGQ5QRnQNU8Ycaccpe88tDL4yExeFB6+pnHu8PydTKe
pBZQYyj9fOeBkLXX8j94bcL9Vq+cKVqTmqbXEtpzM0Ilklyd4vsI3DokfifDChKmjD5DNUIqe30B
17We5uMcNp4oEA2KBoAHxfs9iW89GoyO4ZYh8ASLaf4CHxzXciIT5T+cd9+n0DMKfeyGqHZUQ49M
1onEW/Ua8Ya9Feg6L8ItyG6zCWuT5a3jABppJSkuyQaHxNU0x+Vg522xG+qaeXLr80aJL+naogff
E5brDthCYNMaiwwmeqPhK+nDxuJyo+B5FkcvOCsiA3V+dSVgjaR70yyuqBRpzuw+8E+qsYWmU4Bv
GywIq20GNmZkfaI0h92msksFI588QsBhyrVgdsJrDQWw/H8Wg4GBxXhWggRXz01vSJ9sqyIaaKFt
k+T25KGpkhPfyqU29BYu+kuznLrlmkGvNMQxvolIVg8Xg3t/PsO8b3DoYCj38okNjtKfgqffR91I
tSO5k8WA0vmM3w0hpNFtqOAEMGaRWTGvbKVE7e344+Zv7ryTvVmtXxg5OlTvTypfsWC2+NplVXt/
X6zBAEjRn0e1s6WL9sDbE6UzTK/GYt7MMtwK2pREu+C/G39ttNS1xBNnqzy3PTE+nobzaKuFPoS2
+jLLCEGiM7yf4m/z66x1k6HZ9vSvCcPa/UZr3E8cmElPklYCUtocHomPht/qwiI/9SZKwup79MVr
/gVHAnaMlgZ9upGCsS/eUVBQXApMl619jnYgxPuqJGjTfg6xt3mdddziDdISCB2I14cnLdDYqB1b
eBPxVLOUDbOSSC1snWprrccgvaaxp4b3lq+2hxNBcw3Rw5+Rzcx1+ol1MSgOepOx41i8oRdsoE3H
T9CWRubdgqkr6XtfBIIdofOldP2xPgQ2yF5XQ5tKDwtM1TksRDeKFCqvhO5dSXYmPli3VWNWZtyL
5lb1mvYaMIPt+A4LYt7PmcTu9vLI6LY1lbfSPoA/xa9T9aVLM6lgNolKN+2S74P8VCaT5K+9QBzC
Dk6X9NlMAnsYJvsLEe+iEOsLT4mE4LG5DZIbrrUqNoUkCFDxTg2HR7PrrOg7JOx3a7CnZrwy2Eai
NkF8kEWHFvnRpOWAvTzkrVy0BbjTVnbdOkqP8fAEwlu23NpIg430SP1pE6PctqlUC50/uC26s1Kk
m+C4bVpKGtn/9FgPm8a0DkhbK4OOsacoR3PJN464fsb1FF/MctBsMoV7R7tlWT0nQOhVH9cFu2wa
I9DhWjkMdF+fCTYpYVjAl4RKoEJp8RiVrkGcK4B+Gzm73MYK4eazJGHaGzIjvVugchgDSEajZboL
vKjQcOU4cSCwPZ+gmubL9zt5cE/9h5H3Zid+wXAxKV7BvJyq47pA+eCMRWIngadNv2hLuKXg3qMs
B8hOPUQ8aDfQswl42JSQBb+dny7lWqmfynm3zu8c1d2VQebfqVu9TEIu6ArVjHK0yL16m3jxFpCp
Va+LZZXWnbUTwn7ZdYIqfGhB1DnlaqBKhr2DS7rWFfmk2ikgRmKkCf2tiWuvZMOxatf/JMJUxxSK
jyTcMhBVCnvsT+yxVTrE+5qfsdmFUJ1fL2lxmdl1WzYd+zhSVrhqZ3HqzHnQt8gBGEDYZcdq4wDq
4LqEHj93m2K0U9CmOqDqhzTcPr8I+DhX/R/E8TF2R08O3g5IEaTJXpbDrEIKDl3QE0wrG2LuYngM
hmAUyaaJrUZpfVDL4+gL1Hh67cW3/gpzIvQCgWr9fRKxTk/Kta95/Dz4ZUaEZiA67azKjiY2qOMq
jqkkORGG/F3IdphiLdF/OsoAwIMUeGQtP3A/tM76uzElXJ3IkObfiPa6jNi/3lzP1QRclADxbGvq
832zrI8UZpoHXEySeniPnfjspXznk4kNNxnvrSTvkv55k7ovT/Ot9mP3m7e0m8KqFJSLDmB1LBFQ
PrRF2BkL15/4EoYFUoTm0sfneB3tuzf9X8MlF9ZDgjUbyken93Tf5YZNDI9+/XRyKMtrOtGgzUlN
VPMvEQeQGoE4no4rCuQ8bXAl1wbtOCD2JN8LsnuDtPhS/Lpj8OQh+cf8SRpoURpoaJi0kjHlvSkE
65apWrmk6F03ZgkMm1CS5UsQXmxxO3oiOYcUXTBrOvFq/9yQZ/xPdRk3p8oYjSCuCNNfNWc6J0xw
5oAsPBlHatJ8SHLKgLjoNl0o67uTEf/d8oxk5nV4Ni7XkYps5ci/oB/jP9eJzScoESptKLU0GoZ2
48MZsZxn2wq4IvHom06aSfUK+nrA2bprK2cJiqI/q4MvM7dn1BC2Vlrh7m3XsyoWEV+Der3USd9k
/G6U+UXcfUQIOQ1A/DnaLyl9rr8Ea9RKsSUwMoCFu5oiWpSbcYGjqlHDTxcZSOFvdkHu6IB+htuz
Mf9+qPvff+sA98MBf75LX6TNkKOBKrtMAffoegNKwnfiIozhf8fQDoJrqgrMdmMsNahYyoKS9V1K
iNUV2zE5PiBspyeZejcavgNy3i/xT4lGD/2rZ6vKGu5Nr0KJRQL0BTg9A7a8G2UEtl6u0WfNmlrW
Esf03TGQYmenx65lmkv+Cdyni/spMycLdPR/chGDzsjNX0mMnCfGJCy+RPnh7VLRz4Hj288HMc92
Yd+YHUVpLxrPnpkLzTsWfkXi8QfUAdT9in2OLcF8NhDZSyGCSRM4VLr3P4HtDYmAQDYtmbdkXHOZ
voWMayie2EY1oXsd7j3oFGruWylwjWNqYKjgOmAdhrd1fZer9CckE1t+6duhWaELpcVVEQH2mU0V
G145+M0QtGjtj54y5sSPXhPH1etaZ3MR6aeg8/BklOKlIlADyH1iBsVfUbqfOFwEqLGt88aVC96Y
jqWE6yXHDTImoEC/sC1iQu4YOkrS1ezMXItHDJ1QKUoF5zGXGlJYL8StmKBig1ZeXK5xv8hFki2v
jhXXB76fNJs7MHWiPAz/BfK2JzB3mtw4DDlBXWbNPFFcrrvu0NCJJ61Z0XhEdwojgnbP0gvIKqEU
qNqtiwUwdfXiL6gXvWqkpPmEqtQn4gUlDKoiK0ND1Fp1k5wui/y8xVFh7ifaAJFDllt7xyxKfTvt
RpBmL8tNCkiImL3KhQcu6Ie2FMSa0K3PD7/lx7lVWuH23ZsSLm9mHp04gOkK4DIvy2B66bdF+CX1
E9tN2ls+mUgNeGnBWEh3Dgfo7ceojoVJQdzzvOgDiuATF9+cKM/otmhEcQNgyO9fQMd+OTt5ydoG
hh2XJBFpkNxBRCID8Dekavo7w3Yge6+b+QAxVBQzLE7iLPMOUJgJqB3iF4nFvA7dwMagi2U47Xq/
rvU6aXkuv6nSdElLNedajJQKXYMUdthcSEi53YB8rE52Dy7OigWT88CaYtr2rSnLk+oNZlUr2tJm
24k08oTn331Mt7n7JmLNg+mNcDxR9pV+zwn4rdXXBhT/XRbpx5SeFkZmOCMyarSNdGLgdnSRq2IZ
dZwm+LehBCxAaFJUOyOnlCDbShC+BZ9MMdbs8QeGnOkig12fAHVBR/T2Txcs3kcISXn9Ygy2hq0c
u3uiyLcuPXoLB/skcgqkN4nk0m+lqibmB4+dQU0oo1VshcmNGFWwVak1TmQU2iRK1QwczkpPFz63
FyJu0e8KAvtGvigooD7DYjQzx5MKvJ5WaX4qqLJgOgAOSHvP/2/GsWsOoIFPZPeDErifk+jyUCPI
t3QGpp+IxWu0Nb50AtoJXm5OBaBOnix/jJAwOy5NyhVSL08DMmFmBu/lwXPfsGCNxA79p3cbDYOd
NwZPlom8Ksy0wbmPecnBBbf70tLjrlwal0lzzqKuCFTNX0rlTHPLguS/AglNeNFOUVk1PDzJkKRE
xeljy4vqN2CQ4bcAQZTpGhkSGANPHMFDHklHue7XWURbqnn8a3G/El3nk2zxIR8Iz+rbbhG3weIk
VEuJsy2nzmNougt8ictPUSSPZpBVrZ3T3+tU0y8p9C+kSzLlA+CCdz0ZS/sssMeeXBxN+wzE5HZG
Y3pOsAoKebg7J0mkub0E2S3uqAhQl80sh69VcM8urmO+a1fEOhaWzaLZGB1oJH7rDxITZ0oxGSJo
A/YNFDemXmz/OI96QHSt7lDRuZaVB14JnJrcj4BwFjgS0aIGj0IqKdI7GFqhUWFUThlAwej9z88A
zq2V8cITV8BOmuqUs6cURgMy1FsLXMafwvZ6m7S7j6vAm+yQzK1chF3jZd56rOSeNLpV9S725LhF
bLKrCKtGin8GVY90LLMab8v2OxN3PtB/5xeNNp1nLq2N0vuGQJyH9MB8b/GdzGQr7CeFqIY1Oei+
+FO0niEjtfiY9yQ9GdENkKFDrEajo6cFdRUdnaNAwY29gkJAcBdKlfnwuaDLKmVavuEYH0xp4p9A
2dbhSLM+KM/AYvsp2JbIJVjzbqF9p6azskqzdCYf2mvT+Ng9bULOqaREw/bUun4RR4nRfUvzEb8I
/XCZvj7xa1/CK3UcHjZd3+o30ZQ3Z5G14GjEF/7RTjNSByOIzcUObgM+t67cqMlifu6eLGk9hkrX
QjiCEVWFf1XQ7hRJRNiQ5BXoB1WR5HHc4uOQ6eRyTW3kUNu62kdr6oP8iLVa51ymrJkyNZoAFVuc
NLXYbpm+zkWoHyERdcDKK8dC81pGb+UPth/UXfPLE6haR0E/5SJR91Is+THF2I9ZzInSlze0F2+C
qC5R4jTHgtABTybobi6Ga3S2oCtLXX/m4UoHWaEjMbhhf/Ct1VZxJX6JIWVn3tiUaQN0LBCFnoS1
12239PZHZCiedottMP5jD9J5UUBO/A5Oiy3DVvjLaUEQV1PfNbI+8DQhM++jDPJOioUlY0gH7Ny6
nTfuKEDRmZIykdvLYR7nyxzeQPpn4GoIQWuZ8w4EPEkinBTbync0m66gadv9oCmJv10Y9ihVdbxK
kexJnq3blAUQPhTiqdyLPvD7QKcVBx0x0uF1S0sD4Z/y09JqdA3OZHtDKEFf7C8duDKmEnyt6ZgI
4VmiFHHVs9hdl8Ob/Tmh4Co92qR0HomLQMNjXTcxpnscwT0XvVfzbNlPs/g42hWOU3dKsmyTE9H3
6EtHaSwaMJT14P4Xt9gBaXpzl56E32KdOC61eqdem0T+qjoQy3GpsiWkxmVHnRdd9E//M9rxJ4vA
NDzrSkyHQTfbbr3aqiT/fE09NgoUDCPvlM5633qw3ktky3+VPOKBNqbJFfv8U32VWG318vxZP4M8
8PX2ysTirw+Q95yhxzECcVVJ+aKsxNyYlFrhGwvT/Snejc+7eNuLIVBGuDuan0mkwCPEdLdT81KK
X3kjUMdN9QnULTOwp/YI1+NllceL+vrOgsmktT/N+q8YRMAgqEcZZ6HVDa5hgMQ5GPDRVNj6z28W
YlA8MicEFCdtqyIfgs9HeksAdsVSPCJx8K7SIBRLXwJMn7zyIPEg/fpAlIh3KkiMXfstUWNzcuU1
fPkR1RHPzIq9fdD83ct3dxaQwxyWg4VP66g1llzwQG1Bm4PMRwnL3PNoiuXzJoiz/tVS/nphaXev
ig9h98RGYWhlH7Eso3FtCtsz0tKvUqoZ4jVRRkTGAy1mp9lbQt4e92MBlOYfEYflk6xuaMERo9D9
ZlPJ2HYKjyCnWIc7D4PbufAh5RSqO759pr6pKy1e4cGkNUPIfYbyXTCca3rjYr+SO8rAAcZMn+oF
Elk3liZ5fK96gquzDp0490LOpfbF2kXOfucU1oGq2h3EUhpKZ7zQbGWWOMElhADj6RWUjMo4C1Jw
mnF+4TGWSdzPWmg6lm0yVrA+r3y7o4YzmQVX/nezZ+GlQCDaikYtrrW/Uw6z6OwsK79/YO9H2xP9
PzwYFhCr60zKXh4x7Qpni1lsCA35Mabprcm7CBOY7/bG/1BlGeznMLBc5Mst2lSyjoWIlvSTZ9y6
EtDJtXfPNHWPUaMRO7Qvbt73ortyIbawIJfvhitX9fpaSbY2+sbAa5Qx5cNPHVUOpryL/RYLLV7v
DEosClbiFTpKlc87GRlT2drrcl8o1ytfE8Ud8aAtDP2rLoP1W4fQMSe/y0GQY9RmJR2LXRfhmHOO
dbOCWPVT0YXfIynXrpTmqy18UMEGjwtn5/Te6fNTIew7t3WL2+UfVTPOyh1Oq4RRPAKL7Shoipvx
XyFAqPW5HqsnNsfHa/IN+LPHkWO88cScgTfdaKxGrHd4IWrDtifdFCWafLfJFcpsfY/2MZykBt5i
1QAL8IowOZjpjiKjmTsqYkOmKi7NqJhTmpHiHF+3noyuaWSGiBHjhPI9N7dfmFtlThAZLNb+Fnc8
02CrOyHSbBNMizF4m+/ELetaaOUiaLJop9YZ9yh81x+eHym6h/r8DDQArHL2Qcn8ax+isRUtrFju
eEOWyap/FW4KzC+WfZz8j0hMwlYoLv10Gz0QRG3ZllRESHFE3plXY99pqgcUb7vMOSiHupUVaXIw
d+6JM2zb9OC/UDO/IEDy8cDBZWR4sMPrjMoeXXRlK7Wn/Tg4kKs4OiSu0s/dp76YHN1rjjI7AuC9
fTH2lYK+Hx1qzXyOJ/4PT1NhRBTvgqeUYlXKxDaruvcQiDXmxHVr9huwpegD1/CQGsir+9IC34FC
EObx2iFn1mVw9JdQApE5xjElHu/eU5n8JVymNjr1yTW/3o3mhBBYdQqCfLXuaQ5C0Y1D0vo6KAlL
JVYM6fH3mvDY8WvtNyoZPwSLZrAn/v6BhHo9ZqpSZ6sDyB7csqaUcHa4wAJtTSXZmzdB+oS6VrZl
NOtNgltAaUOzf/LpI1F3Z/ZXXbz3d47c4waPSMFolwCEFn/tWQQgLs20Mn1EJueFBX/xOkHHfScr
VYac2GD0X8/sRBF4bcbgbHr9s0jilCDeZOLmDk65KXmddea7KUBep7yEy6hndRNi3sEvOfwG8naE
p4v70YJqMcO7kDCmic7DqrNNvqCq3tZj3Yh81StOZEevAGRcA0BQKKPc0oKGCvHzWHQTH6RHYCBT
E3mpWQcFRhGr3X71Ds/7ymOTim7k4CcqPUDOpcCtvA1r/pNiygPmCLcVAg4fj2Jvxtizv4jVJNqI
ctwk0fcYkvTxR9Lz5jwel67BmRaYO616MUzMt3btwIMPkJy8jATKsXIteeII5U+U+YgIMBddDyPZ
FY1IqXeBceyZpCJ2c/hYZRPzrms+nsU7FpDeW0EfufF2cY1mhuhiOVawgg3MhuuUtkgqg9MJTNIP
+54F5ZOJaL5amBhV9aX9XBRiOK1zq4DL0cOcPSQ4I/boBIbSqJxfjzRCrCKwrumwUy4TcU1ybyt3
ipZhh/vhbgTxg56sUpJYAtTw+tUimGrP8rYBflSYFE1T17WTTCQC1cSALDB0Mfhfvci/1XEj6l3d
H5earQIHDT/GjZSAG4SygL6F6ISaei+uAOBYOGEfRz2f9QeZBYv0ecG1DPj1ZrrPZo5JOKR+etal
xbJSkT6ff4+PO0XP+tsHGKCnqHDf4R18HcJVc0KvRPEg03YwvC8BpOBLqzcTdi1IyyCAfQ1szSCG
ZLlKFLv07/ZNbrMY48zXxP/Ase0HvMjOhj2b6itq6ewV2pBIsbN7rZbvMd/Z7PILLUzOOAwtS5cA
PVrRxZmRdvzJk4EksZ0IyqNGzsXIyd31eq/EyxBql0gABdtJQLMw0dr8RxzT9sujfAR1f8TC+MJH
xf9b4f9lBPK3USlxvAyl7m75vuETLGCRjK/aDOlC4wzRRvIlJ5ui8MEde+9Obc2uGBxYyIV9J7qc
moxuq8nSks7xxadlCSmproQYWLZ+OSqP4l9jYygVLQKIPwmr369+uA3yw75rh0+7UePhWKC7kYjR
4ID3SxiIsiZtPx/sYHmHd0rUjJ+jBvOVikcFRwm3/Cq4eSCix/XidRW8OB3Db3vXA4n9Y+ngDl6y
HFsrGsTrs01QMYqB6vUQg35f/Xzb5Cw1KwEL0yRE4QhouA5QUVkPrzkSPI64OCYh4ko7aR8h39lE
NXBQKkH7D4dxhDJKrvFsjrVH8tvn3Am9qWDfFHyTQdEhI75ewn+H+W4GjZn9BGhkBcuYBHN3VRqS
uVuZKEEd/XrgGZ32iAFvwBNa3by+ETnnfKHr6Gf7DylfCP2ru4eRc1Y0034M9SeR8VyQqw5Nh3NA
M4B71km/23zilVDiz/M8LGqJDKt3486GFdSFZDJC8JIVQ3cC6QSXfsD9/31EUV83Nkb5TbHkKRvF
g3PlfJBEhqJ9EFpxmWlD5M1Qbc16MmuuJynsRXsHcT5ljZxcotCg2o9tbsRPekl6zjg7wnDk5FlN
O2+WWKRLNUoy4W2wrd1AD97okDO1QuJFtE+MrBEvPNZzFpX2uo46UY+e1vBwUh04m/feon8/gK2G
wm+d6ZQsETvcnuMQrXiAyhvi/VqFAPFcm14zw00mIcPmRa/S/i8RjWMOdtN/LWsXhWjhF1QN9Jc7
KBY2KsnXdaD/v/VvQAhe8xSclK98s5sFuZcOous4y/KvQjOKD+5zC2/eRj2RZtOHRx47aeuIeY3Y
UkeMBnhaHGFhV8AMvEH5JzPQWkgdPZTkX0YPLqaliPpCULVukK9Ll+cm3rjqNirRelQVhWhmQC9P
f0D/1bv3eJWHcS9QLUGyfSvQPXAOxiexkv0wCBgsnKC+IZ72vtB5PYMhxHgRZOyreA36eB/qXOLD
CxQyl96jRz5X+qgWNozh4SQLed+S9oXoXLMgMf/yb/P7wfIDea4ko3doLsdBZAMkBqDCZCAupBts
LIsn9bziKVMJ3BXzbYh48njkTLcOT8MH3C5YxfaDBSftBgie98JR3K12Ma0xxqRlNxxDto6BtZxX
s3oWSCsZ24dFJT5rCYxgFAMW28jPgzCNvRvvCC/VK1eDmt63eA36rWPxzwZSCIpMroRrQPwpEN87
C2jWvrZI5VmSNt1rQpMnTVEEaRRevjDbTXxzSVe1HeMhdWisz5TDWG5uZFhkrnJV8OeQJ0clhdoQ
VH7PObu+6vSJmdOQGu+U6F5rZbBYLUztCLjWbMH1SATQDseJ+6wl89tu6/Z+Df1yJzGTnbU5sWmU
0ZpiaNo4AxqeyRqUIavxkH51cETm9bCQmuNw42mnqbHbXbe0Ox/Uet+wbDi8Q9Hh2l+95xBlrp5T
b2YtkFtuofhPb6y/8nUyHm3BVzDZLGIc9uviT3SilQIYJjNI+y20/Gsw+2DRmUIXefyC9zrrWnu/
3BUpRVJmi3D+VzCF4Tt+VY51jH84Wwhs6ldFNUaNjeuKm9b+t6AsI904+KaO702LhnydpeS7s5w5
TGA3mw5SHAPCG9rAcTjLkmIwCBiM0ONxVHKmnTXJ3mFQ6fW6O8Kuk/1B8AGvmgJLj8w+9Jcmx5fP
X2B0nIGL7PrNwuCIrf2Xws8KAodQNA/pSuLwkeQRgUtMKuEP1BricAkxAdKcUnB5+AMCzwW0U0Zd
zlmAM3Vml8XPXUJ4GmpFtTvFIFAH01uUYcImeFKlSYILFmQZ1aMG6QJbLMqFg/XX6geBlsxWjo94
JRpe/OU7Eie9zttK3rFOq2uzaLBhCoAv5LEHJna3p6a9QiDi1dA8xHiH4wq/BkPOZGFG6sCxDU+Q
+H8QYvyz/hTwsfh8h2bs59DqFEWA0SOQFlnce8BYvtU4AQQFnzDSGVu2RKxRsnFoGc9p/Tt3o+Wh
pyapcrVRq1JtrIyQxq+O6ItkEZtDdtLfgCdaa5xbSzpEVgHjKlctu9Iwjfty8p+z1j7xsOUMf1NH
wTuBI97HbTr+bUvbajyeFMNVaYcQxbi7ZHf7Vtee1QfjbeNghq8V8pHEKyt8G8mB3/4Pc0fn+hnl
QEh0EDPESh/90Xc9oSLCA4Lq5jfFGue3ywPNBXAzKWlihuUNgXyejiUmomc/2lb3i5TiqUinulIC
ErsBMcYpbakTU7vz8TKYIGL22g5WYjerTY/sjn2dpIvyLpCojGYQphAjRQsF2rIgHQzhkewvpPaV
iui+2pQt5cz6FjzWlFgrxnZWja4BssElSH3TSabJSCB7/2kHU1HxZForlfxHkK68YHKOWkbgTFah
qebTAhx0cssIVA+fZ4XDi3XG4XJQPtnDxvuIT8KO3y5VhpmABe0TRvrFciQxuwRdkiPi2t4DcZex
jIo0RWNdxriGo9URkj6PCmcYLJOot0IOeGxbOtzfU1L6WErUzHf07EFb+OP4Sx4D+4YDJrnRQ8wW
YaA4zS4IGrH8jTCt52U41hbX2i6zKl9+S1HbUyKUc4Cgjdh0q89jNoOXN9Ij4jg70CfkOCzczAi+
aU3R9Tk8wb9i8XfCGPUay9AE5kxC3UK5gjn3IezV/6deW00GpfiZf+gT35HAkAoXBuZWTSm09+wM
id0KuA5pfIR0+WCOE37T0h5GLNuxODj90PZCf/Rk7OGSCdW40186FOqDas9I0vyffzWq84QyULvP
Y7vqNhf0Ch2jNHEihF5scdSy9YOF+TmIhhXXpL00jmkaEgpuuVStGi3T/5hJR0/fyghQFiaw2GK1
T5Qxh7NLJn4AusMIhcJqtcK1C0x0dp6l14TZCDp489CdyXJCviFEtADy8fawE5sKLvCxfcBpzPdq
DhabadUeoaJmk/Xwg8LIJpN6qPwAw/ruAUmMX4CzGEODGTfCKniOtkzhdBHmA3RNWhJ6g3pwb9o9
q8VGb7G++m/5ozvj27rdxxu0fPPVlTOLE8Z7045/3n7wBl8B9BTWw6owQ/iL9RPEF9Zj/FtWS3DP
ji1o2t/JT1FUk4r7+iNZSXPx8sA43zGXL5j3Lb8GO2bvZIjrATeg8njp1VytSaSliNLYF8iYmELs
C2XHAmBz+F+ZnOM80ZzN0bD3WOWTzDQR6dey0iTVvVPEDMIRHb/5krgnsJJohHxwRE1LXrtm1yMm
PfHJsuXkCRnITiagkUX8zdrAtDS2wsVh5jsCN94pU1TbK+OOA05rHnZTHxdfX72E23EeaLIuUSm/
S+UCkH4OO0soDvBZS/sDStW0M1Ey1FL7wSEFvrOpdN2IlB9xOvcMAWoGHmGNv0T1NUoK1QTmqFch
efb63ukXiV0lIsrESocflM8klE8P9MHIa8Or9AtQlzfCvX7UMLS5VRZj/ea2rLhX8sHw/9LRYTk3
ZY8mkS1PEblALxGOEQsEkgQefoYoxF4Ost2h5VMMURIDZZQvseMauqudwsLTONGdNxGJTBzJerMb
BD4zOKuEVYjwtu8e7azhx4180gqEUozDHJ9hvhQ3MjQMrb/ERArTexjVasRpfBpV9fm3GSNRxgt0
rQRyfm5PC3S7oEdiARz4Yx83yQrhJQDFLPqibv8oTND37xYOhj9S0UpyTW70chDuA6/KZRYUvmH+
HWratD2uOL7RN1P/psCUuZr4WeAVhSb8yF/rny4eOCHWYyYQDlyQWWA0u02Czr4i7o2F23zmDkTi
E5N+B9tVzIWPvDGXVks+f8xT2DywCPAzc1JES+5KsMiP12seG7ehOiWGx/uNP7JyQXs3Yuyk7ud8
dPLY4935b6D0m2Q5PRUxk9ECwNWnH67ap7jex2wHYYoPAPXc/kIZ+ak07nKB5+h9cWca171oAwA4
bN2qgYyQNx7KsTIYBawCKiPOVuRcYbE7mIPULza2H+gADKTuCqpIZFlldjkD5T8Oqb6b6satPa/x
3Dd6e/nCJQUpd29BrHEZWsPLyTbUajEuCFxmDYEiXuyDsBKsNPWtrQK/VgvdMBIvUQWfbDekHDAX
EDNvNIz9zqY5PYxm8TIxOas6InE4eJXKY8wEsa937CbiNPVnDy69BTwUyywR9ORSUHVJJRoRK+oW
eamu8W/DDPCuvcO4rIdFPg0CpGm7tZeANCsn8G1I7N9Pyxkkyrxl2fB2OkNceeJPznqSQXo1zz/O
re8brJXkLdoN5fAvyd8bI+rZbh3I2tvWdygsenrbynJQblOfQi7FyPIQGBTdGqmW9GTHKEl3Py7J
w2I1OHpldR5guXyQZCI7vFQ8JhrwXvZH9yM7pQ37vrgzcfDT7bbBuUhCiSYE1IyXoyymw1Nikk8D
UJOZDNJAR5GXfgnoa9XvjPk0Ms6ZTxb4cTvM8SE7bj+mVNfMIrXAndjV4GPW7pCrN7siKfMtm4+c
hM34OZAikTv4Mxx521yjPm0b3oCliScEgbJ/vN05mi8x9dCf1VzvUO18UlLPWw9upISPJZ+Mmlqt
UARcW7VgztNBjyaO6DFrAt+Ypl0LcJatGhY4zc6/xR6IEYtFhL2ayArsL0OKBrGnAI85N1zTky8s
jFXWAMirUzov+kyTJ9/bCDM6+E3X2HR8YGCwKBAjF0ctNoRn/EjvDO4mtp4t0bPmTynOT/5PtzER
DK3Q0v6jCy16nQKDadXSWe/CBxPnY6qIngZuMvxrTD8LnfoVxfdl1qE6U6WPUfyN8KjcBq5SG8PJ
T8hN0e1phd0Bgk8CZm2qbQBvqMglFm8fTa2LFaaxvSaO2mLp22zzYVIajr19L9X1d6osKP4ubdn5
RDff7VKqEl8sqNI1EKBMC6WeC4o2LYcoH3FzmBWLMcbMcy/Kaf4Ptk/lD6/19R66HQ8WTCa0MMO1
pk3fZ4+eEjV4vnmzlhDtSnBj5WPMKNe7eDlprtx1Cxj12mjb/1pqxHK7k5paZqgMPEV0naxpnIVB
Utp+p6MQStn1qW15vDG3f9S23a2cjuPM2f8jf2nLUKo+XMksi6Iwm7Bb2o12rzxCR0q+UJ0grsIx
/9AtIXVWi+VEpG+nG8PBBXx15ej5xO99PsT25JuFc11WKiv/AO3LvJM+48Vr1bKZ/Qvm4GbwAjaC
6sjIvgoKzfonFo1U2E1ia6OAaHvz8BwVODF9O9AV0kCJ6eOfZEtg5rJngjI2YdksCWIa5oRe3ow9
7avBRLrCcd445uQdxKZKxY8Fbrljbs8klNiNfCayTMFClygbfKZr+/5ZMFgr4YWV3niWM1wJ1RNe
FEORPfva1egGF+0OH7gm4StJXPDhnotRDK3jiZCVM2I6Bqae+U+yVGYC4e0mnq40rJhd3fPH54Xk
aHqqSOGZZwBRcq6ZIoOCrSHg+qA9tkPNmrzbYNqZ6Tb8nUUwlUKSQw6OJzQmzGCqUA3mueH7GVJ+
xv3AW3tF4KKFCL+WdnebmCtFpit6PecIr7l5VkMNoh//t8o+oC6V5XnalA528zc0/gouw9g/oYiF
dT752RUX0J3Nqdr2mg+ypJg/+/ayyehRlA6p+LlOV1fyP1AgjlMETvfWIDStxOEDmVf8GioSjm9M
V82ymSbSsqzvqNFcbWlKfYDdkug0pF5sCOjxbtz3HvJRHKK+8Opih5bqFfZb0tQ5W24ziprLV8IL
tD9ryMNLx75zQyW8H9MfKrzRJcKBliZCbLe+WHKY+TckH6ZbCDKZnX4GSi9Fl7vheyZTY+LldMXW
WO1YwH/Q+pMtgqrsN2CmfTg2MV7OQclWnAePo84f9q2JtHrZbWvwkrxJe8Q6nfdPLbyutw2yqjJY
dQzCLHEugk1dFE0yKHNHvfuCrv/A0FUU4yKEXjEHjnmohycRGRkVkPvVrJZZSqXn4fcQqTdNaq17
/RoETu+aQKbsDgtD1sfqi2I2wOkZDA/3w2VeOIDtOeuA8q/v+b7FDPeuw7zWOYk7lhvBcmFSf7/D
uFUremgCKF3D7VaInsVRr5wplF58xfB+9A/tBX+RQhXhXchKCdXm9F3EAN6PhsNylD9uUw7yMJpw
I7XvwIqd95Y5rpezQsyLjbNrHNyqEZg4PbdZiKKOChqR7U0g/G7HMdkw0lPPu1OOoSNUkpQLYfyE
AY7Fy5n/VtN4v0gkhiVo368uWDbPf69Sw42lwOoagk+GsXNTYAAlhGc16ft7EYgSATvyUdjTKfhc
BjUzJl2Dh6pE7EaFEpmtJdvZYJv1vx8zfX/mAH0qJENN1PfIzivvzhhQkOGPA2pnZw/HoH9mtwOB
mGPfE7QseX3KgLz3++j9H2I/5au+KSVieC4u9Iqhq1+s2yp7nv8lXvtw1P4oRbyLLyJPMrg7feq1
qHN1EEHYi6i0JDIobVYKMvzPUafvjQ1XfFIJU2yL6ko7BMQsZdVrwDhp4yCnKxSfz+C/8cBllogS
sr94kJXfjrPD1gdEHLU2kRY4Us92v0kewQGOayjsdehaLIkJA5fc52M/DbGUJHUlpNnS+5umBn/I
0tlouKiMiYsXC6iUCetuDrJoa/o4S6HT3W/mJwHAKI/L26xfW0z2xxtaG0kuHazXRD5gcPChkctB
RRlFqZgPiN1SavRlMCAGPcLEXcr5sn3A0DmO88D9DKBu9ospuDUe7VEY4goCF4w9LkyhMOnS5YoF
/AqbYBnA2VEkX3T6Vj5Z544/wEzYxykPKAPVXwf/Q7/KWouxl2clWO0yqMQ8ueRPqdp5bEPmhh6k
0I9ocWNS6Yss5jQsdTuWs2jDDnfVBBwXRE7fit92PjXJcEEtMhEJ1fr5NcLg0wRDXKTfut56wCFm
ypgfD+BOToWuB2qR0pi8JJNXsjvNcLP91s9wvO7RsHGbgtOcxgk2os24fgA19j9Jfk4FmNjJIMDT
OhTpa+Jlmcu8teadI4c0SDUb7Q0ktNe/e1VrE7J2Eo6vFfbKq01uVYzsCYVPhXrP4RfQNYbtzgsv
t7DnuZQvS/9UMnEhQ9Xkr+SUL36s/wD7cJl5gdNUuFHEn4jdeEnP0pdHByi+T0CdsgF2MoOVws91
fn8WUwjIRsFBmp0xLPT1aNPYGkYQLrsECRTI/3ZKScNkp7rRawltgPA9mLo51fgrgjtZ287RUHb6
OHXxe0RPnNXGPnCEPoyvcKio6OlmpSvviCp0FUhy8TWSfSW0PnIFpvNf6WDYUMzxLiuzvI0TEGkL
shCsWNaviEeNzGG4pMuKb95N9QMr7iOb8diKaGhIHm40DNEGD9B62r+Rt55EKohTXzMKsSOUn0Id
sLYrdIldonTIBgw5q4DB6pfYKj2izXjlWIGP6eZ9otHhQvD7/TC1/0CqyJJ+DoUXuj/8hn/PnyAt
NRKR7MkJ4iEypL1ktAcTEqS+3uOKPSbfJCa4/uGtUKXDB9Cw7TaJauwtk2xyZRLLH4V4YNYbjq42
E5vWxyd7MulBO3XMWdBgIMfiOCyjJdowH1Ze/51pl7Ztg6QAlETQ/Cpu+FTBsTJnWhc5ovMrg/hg
79Ae/GeWIRXSiRuXewvUfvyiPSHWTNrUXWkzqSNwAXXvbjLOmy2tVWmDGbE5Rn7meYRsRQwo5IHZ
uRDMoJzO27/EGePnvXPjg3zJhTga7LiJyNz7PXHDHug+xYHhk821kuacJu5d1+y2M6aDGq7cu7ML
PSQ2u0QqhiZh3PX1BIFH8iBGJr0pxqRSZ3I6M1h19OgXD+NCfRqbQTQgOxMsuzjMK+fapzl52dOA
LqzqQqkI7JqtUEWNYjg1KybMUtgNXCR5Y2ziaaWc4WIaFSTYrva6FnxC35UiBoe89064+KMGOQUx
JuTcJEWmdqVO6etwqLrI2iMpOiEqbRvtBfo1ysKkdME2Ix9/pLjrLU1D9rTVby14YbxuQzqqebVZ
/wq/QlLgmpfNKXwukmz/11GJAXyCRnnkYk6mOXQ4IZ9SvBAA6zk/HjZRRWzcYRAHpoB7JCAhNVRv
s5ZU9QHIpU8nfS1c0tqG7r+yIEzibkg7YLMg2rq2C58dJbuEXLalnNRSuPXSUvhzCC8zcFKVCxWv
dKnhzsEZPCgfUQL3zay6hpn9NGZ3wHZNq2rCAggxWORSsv0opyvrRb7UomSU6dGiSqvyLv/8VInK
4VcV/Okvh5PecNsB+XylU5M/4x7n2o4b06MkdZbXJv1DqOoKlBWXJLslv51lXJ7wQiPow/Lt1/y/
EHE0Xq71VF501nFBip3LlBNzifjW3ubmTf/nBjl+RnhP6EQ5QpVNkfHbpUG1yLctSOZ/IHI/xd96
Ks6leAL53zp/182nMNBq6nfllul+6We48w0PUEZnHDSdTx9xveCe994Qz8+NyCtAA3J+fRRVcF0i
B6vO/GORGixBrTBPyc/mWG02LM5cQN6usN9ZpZKTdi7UvZVFFyxIn4Ex5wvAdvyt9sLlcsy+LNyE
ERNmaGDDzSdxdKpp/wLLpdOc1vargoUaAq9ABinLVndMhh0Zo+bkcOdUjKwhxhFcXKKTyOqO5ON1
zblI24LmkR8aNBvz8Fz/r+jXjxRhoc5HI0/nkHqzgaCB6ceAuNiOpKnQ/nMnB4GTNDx08WM1Rway
0lY3uQU1BevHQ8gd+ppud3Un9YI4A8aGxXnA/BQe6j8NxrFrDXEw/BbdsbOWixBk8hxsdzX+JVTN
LJfSpUO7NjkiALfc4NyGTUrxePAZfr/pWDoLX2EJW2dqdKoDv60w+yGmaHws5xW78XhRwNO7U3E8
Ao1aojYXjmRyaNkiqhU5eVsOB54VzdLnQbdjczGxWvPzukLQ9guQgcgCJnEmaknBKOOFevaOrLOc
fHOSWBtTc775d70u87t+79Cqec6BVIaxVawRb01r3gpypU4QwW6ujcMkDhYZLQU1mmStTXWIeu2l
qGf6WD6VzngDnXJK37lNkR/9bpw1lNvFkXwiLVx2l/ojuTjohyphh5GDsC3WW7iuOPn2wvpxWS17
s6n2a2QgNnK+tlnOfm2meS9HqzYvqSY9lyEn2kOEfEI/wTkjbIRnptrjlK+Mm3hs/9WvwfPWel5P
NsNK3Eiue7mVBXNe6ka257114hf9CtDGt1S9ebj5BspfXFEXZFxvQbNSQOxuFs9JulJFjFtHveuF
N3XmILXJE5UYVnWoZAk+NeYJQwrj6rr83UaUgwK8gq5+YbLzrRj/bC+kWtaO37GyOGBR3KakPFJJ
/OHz+kczn+l3IGzFcN5CPkjmLbCE6gamAKIJF4jKWDXL52x2iygGUVBwgIVsoLX/ibWfpKdGWZwP
P1vGJxK2VBgkUMZusQo5go2nVuiAc8ny/XSqJTNRxKMtnaWI2H7/n3uL4tMnmdSTnhk3bVKsBN8a
ICx1IyqJNVtdjWqx4pAyi7blpgvHzfi2I8BxdZrHhTMA6u0MhiarFl8vBQV1x7oagQHvCXhPt8If
v4u3SFcEWYfHmHRcAMdTJwzBU4ijcL45PN6l27SRgvUd5SweuNgwvoEKdf+RASRZ2il2SCFlX69O
ixyNOHsgU0T/1/tVRVy3QyqqYO1aUrSl5QOrKTFDJtvyI07fZYtI89JwQRJU4X7jjyCZRlBOelCx
FRLx3c4kfnvFxL6V+woGxFIhfERnpWwY7fnYk1/ubukm7Q1ZTyeIN6BtM2ndFfZ+iz4fkoFYkXfy
GijMKLrU0tYsrpUlFc2Xn2k6YABTuqAFZjEl2dULafmFq7N3AoDVQYOBJvR8cXI5TlvuzicWMClR
eky0Z086zvhzGXxzO5MYu5gyLLITQBS5+sPL0EALxmvDJrCxG0f6xKde3AeqBGNohhNzbQoAzbH8
DtxWMIYrYVcdPK+yH3GTYwE6TkR1I77HytooR8mjf3r8tDQQ73AZzUczB7EOSS+f8R5IzDzGSogn
YuapTcqPB5Ibko3lh9y+ds3HOoESuqREIhunC2Mzp09Qg7jII95PRZT+0vS5beBJzwjXsFbJ5EkY
jKdHTZPeUkQfgS1+jGZnPjDjDVcVFtxf8+Fa38VhtQJZZcHUtIFg9eeIzKvegAnCpYgVnG4VJqnO
Tb5+uvYEoPF5Zrjy8S3H8QEKZmDofFNmy4txSQOZ8yKgly9mLAXh6K8uEbiCcrmJ8MJrRaEp//0f
hYR/nKKB+DsA7uiJ2hBJk7+WdLuvFzjTEFEEnOs3BbnVp8eOdC3Kb9eYhYvpVHaNRsFV6VzZM/45
lQVVpxxT9ZqlRfgD+z7FySXuMJ0ZwpaxGMBmfO0lMS43UCp9d5ueiDssKllqV33gZ+CdFk7uItOy
SlhOQgoMebxy9XviCx10gvwQS5pFTNToUk6LyzF2gfa6XUfKmBbiCtO2FTJqPTf/psykhqLYblLx
D7Zyb0QjERlFPhRAK/JJDURhvDshoJ8TypHsaQujFELiewE9b1/1gE73ykCURZpQbj4TACH5F1am
wCPIlI3MJ4HdymP/6oazSXDNWn2203vrFi9JGBaVbkNvksgQTWD+fRT1wmzVKfqvPW8cmRfJluTL
oLQ3G2trzr4RBwli/mJf/FHb0b22nkU3NE3IXkm26UP3CTcUsPSjT9HCttVHjCRqVICNiN/ARLR6
gevmSKkTztEckYhzkU6ha+bOoGmEafL8C8+0RzDzOduXNOCB7vmpXXZjTEayATNxQ/Q+wjiZPjmL
6wIzcNTbck9px2CI3t17LR1gQi73HOmOztA8SKvenfDd3yJpkR4ZdUvEGfK6xirSiCtEieHmrkk9
H26+mXjkG9JU5gHF7VWvvnCsB9bJf2hJ//6/GvjjgkDur1BD2o8ZlWWkf53PAQR18texosXpNz0w
RICDo3kQ6mUr9zKubLZvEiw2EC/fbyjvqnWRFdT01VZz4IB2A0TLEOsDMQK96s7dMnPgbOTnU4Co
kpBFesNH6IfopvWOPWstRm84UplZSZHZTXdGOjDPEgggtkQk1vDQFrfslnliubscCQ1GEqbyMsDl
xJN6gA7LeqbBb659HvA8dpXSncFwqvxw1KRi1LNNlW5j9SUtv8KXwPmXt5NKKTMTvMoJl0k8dqBE
78f3Tw4xvfPrPNskw5rBY+2TInN7rqlIuD9ijShG34hQnt0h6Oux83i+V0uSpzcTmHYIsRKh50je
+lKOQhE7YN2gaNZR9GyIlQgiQLDOjKR+CEgN3olS3jHpk6fmqT+YBLPY/sThLN8TuSBU2Qmt/2QU
7okj7+cCt925x9uBqe7BI8Lb2Irm0eTDihuR7RbNcFDAVBo/6WxsBxMGnxvv3vP1LATJXQVWbgN6
UKIH8RWnZYaOajPwV8DOMyi5K7NiK3Y7sxTpSi1gxjVO7vpSTccfFDLX2GCu3gY7AZcK06NzJCZ/
h/vRa0+JNikzIJJbR1zR4Vfxxn9palfsOaD1pm+AAJeQEJwmtH2ZtrgRZpLUKEPe/Vu3s8Np5xtJ
oQctKxuOUkZ/euOP7OaT3gYf53B9eXmtpW+gUBwfGbdzOtouZo1mubmvrvnIsf9x15MOte1C4q7T
bZe/NErEqiPXfi6AJxUBQGC3NXjPQfV3GWyulT1kKFoYoND3T8E8QB/IlDGxjCKm0ORlHfJnIwqN
M+Ycgo/z57/mzp+7x8qhyxp3HyV6HqEfutyDd5nhebLHNOZc3DBC+jNYQUvsZeOiCVBvJ78Lxcxa
7dlYn/ERmOYLEQPvjWnOLDytdmJvFx1j/ncOyL6Up63rQ8T0W9He5J66XgPAFAI9ibl8nA2QPh81
JqSDRjVxfNxxuRlkwmtgfg6LnyyJvocSQgXWV6PQfUnlTb0mnmwgJs955AVsoO2HsGte9CsxTk5a
Bs3Tvbc8EJht16yduIuR8tDmNVCD58pe5eVwnnBf6FVHTlugxqi7EalhzJKST/kxfV/5ibWL0PQH
LfSTVx3q62eWzGKLoA0gzGHL4kgYs2Rr1q97cRVSJwvGnHEFZWFbqNE2FJjEJicMeWqR1NPUHC/V
a5UUpsOJqmT/8BTzPqgcCzdxQYqem+3WvHmejtNvjx0UQ4gXbzZaWwB0cXeWQLtQvB5eqoTXpZy+
m/QMJvOecrEBCauyFGod3xp445y9sWe/BTj5B1yNdPZVH91B8kIAVNXYXNxlNDioBgKsuZZTXU7f
CmfmBtnQKRjyuLCghlvjwJ4BwJ6cm/foVVU8wSIeuqig/FXP4PFbDazA2Q9QgQbuwPsVKfLiPO0P
nCRwKVvsskoKmfv9XO4B5OLgWTlrk+kA5IxH82OBuGL5mQ9hC0uz5Qy9dgkk12FduP7idT0ElXrQ
kdodtN9tp/Mh2Ok3NKpBhIrqe6u9EwclO1I9oglUnQUcsl43ZsRFydCX18/CEc3o0QzvX/egVWmn
iLq7JFwxpE5+HjttkGBHUB8Kteb3EMVW408olsyqdiHmnwyi56YE5VEFRQ7OYZqkru/hkY/2KAsu
eSHzWVM+YMDiN4xoXpR/2IxCSFnkOoVXuSYD0ftOgDy6hDl1Tb/KVOOKNOYOY22Avo9GPKe8hWeR
L3VWEp7Hxx8aiNWNWD+lU/DO30EqHBggUfYFPve8OC5HgfVuTelMirLm3Z7NSJyXBMtApyq4N4xL
LLUQDJFOAic91Lpi7qCewDCXiPl2zJlrOtI5FawKmJPIMkz2PK/YzjcC8Ag8rw/shF7NlI0iGPK2
x0z3mA32yu1ar0H5KdiyCdA3aXwi+eoAm7+m3rwga0fdLdwVd7da9UNebfQ+G9Sx6gEQxPAwQPbK
ouBPk9SsBkflHseexo8sZ6en3TjIubJ/tIHMEoJ5NAsSFgBGBxfEu8vDj7B2+x/iPq/AA94ibyEv
nDWrUgmlWZWCtiabXv44oJhaD/fsc8z/DFmEu5zamNMqxRhy21P5V2cXLlFadjGwmcJ3FY8P9Uqu
2wop/P4a7ZRC3PkMhB7NbEUlH26JX1rjQVZRGgfTEm+9e3sllB/CfOKWk87TxjBxF0L18V0CHK7C
xHTBgMflm4Lua6rnGzQfgB/cF3j2XURjDlotvpnA9WmQrboykSrCUTPFrERi4xyl4k6OsznPC77W
2SsBr0bx0whDQnXRRpsSu1ZFcRNRfhbbLao+cCr+pwOoWWeN7jTrdtSGo/nH3H+hBeSu1r5Wvds3
QuSEpwrfJ17jdpIZDjFTUZ05NB5Z6fWaT57MTNFI7HoWPhnXv0lUtSMzjTcav2+w+Fj3nQqBjrNx
F8EMx1fWD/gjrWIegsP4TW28igNgdtBzWSJZfi1QV88tpIc4lZuGQ5mDtJL7RdCq7p/zWzRAUrPt
0DQ+aT8TgkJiqU+I1j0KLSzguG2SKv9NXIS3xixaAVOhoPrFfSJRtpj8IggTXxuz1SGLRfdp8mdv
+a0m3j+mN4HUxPs30yLZh1UsCM24LLkKWcLDhju8kbgcaD0JftzRz7zKZX167fbKLRf8IprOl8Y1
E7pXbEIyPvGrqII+vq6wrjr8WjUbz+8KmsJpUKK5u7GSkARO5UnwNv6Vn4qJw7BCK/kpUqMTdqFr
K0fMj3y4217LVLlOKNqyfr9RuITUlNMb3mAwrb4YRZNfzZH07sP41yldwMBNI4efBrLb3nTpmLek
zJm1VsNQ9ptLcf3kfHgAGbxmYuVT3vZGQNJ+BPu+HRUIbgbodj1gwi62OXuAv2d9F75Y9ft8ROmK
TZbLOEJJu/k2iglU7vWWnytKJ4JT9tkjE9lYdlxgoTngZrK+dYctsRwmcT5BWLZVXWW2MusKDb5Y
T7598AN//S0fC1MWklKoVmAM2rque4cW11O56mBaUHk3V7JPI06vLnK/rEMJyGgvAg+v7g7N8O3F
1Oyq2WMORXW3EEW2aMwW+P8H/KzZbfgOzsoweP5ORgyqIhRGb7EghvEN4BQBdePFjXN7MGQuxkjU
NaYVw6+YdgDMZ+g2KSjtNNJM1+nwwG0Eez1xTQMozso+OYJmwTemMRPbRWErEA2lHpHBPnSSFElv
5qJkFDFy00nOWjbQcyTjTj2z6WU2GILKeo99IJ8FH4az/Ci/7ktAaA45eGZW+mmDUjo5Df49Jy+O
XR1UEIsxdSbRu1SVjJLQ40Kqzfy3QYSFn0cjCkZ1XYELMWA1GeQ/EmhXJemAdJQfvcDXxgIbqi2J
e4MBEkpoxD9VByjRN0AyYiGeUh2MjsADi6giWu/bWIE5dJ28mjf3Gc0Pj+dVIvFd62bymT5xCYzc
cveXhzuRVBIJXI3lyxvNo5PfLhR7G/sdIcJ/mV6hp7wRNluqf+D6olu4fETbJ7Q5xd4Niv/KE1J5
8WG7jYRyjZx/UzD4+Bd18/2iD9rlqAIf0AwMi3WpjDMDhXLHdHgmr6tAXB3jbL7yVxJvS8IeQRPG
NPN02Lg+rZgAKi2XzD8j9D2V4rmUkY9c3HDeOvZFRhEQSBDFf5hP3E2y20VutbfLlh7+SPiddZA8
VK71P7tRkcWVTc1XXlUbAjaxs8RvSX9YliKzyic28c3jOSOGqQWYvBOHz7rb/yXSqlhrzDHMz2wa
Y2bGUG8VWkYgkKkono7VjYnL9nXbUADFr1TIp6wigmJZX4MzJv7dbQUsQSXV/jS9NS7hOJ/U0zdX
nc/gkIcFxWDLPYWwE+vCMzAI10g5BsoMBpNDWQVp1NOFLY5xtsMiu6qjZ8AIitMiBgtwlRj1ZCC5
aOCihS6ioYDe5XF1+uSl2dbyG+7mE2ZCIPqpJ7JOCVG5/z+ERdK3HDPJ3JHzVMXnUbhKcoGo4QDC
AWC5fYNIlJpSEgjbxc2Qt6OrNIt6dJLWrVAW/NAOsyjGIhoxj7OTQscb/hhVl/m7H86W6YI98siY
qASeJoXzcHEt/CTF/UyjS60G6L8X20PABLwtNPF+azjnMz7fnI++F+zNqQg2Lbt+NMlau08HnXPw
h0fSl/05cXMOVtEbnnBgccxiPJk8UYPvuiOxvs5ikev9sqNh9nD43id9P/D6r/D+mrhQWE0WXoSb
3kRqlShc1i7XFbjTVRzgOBhSHF6P0b5ScNEQMalIb3GIYYaJ33Yt2/RFpgJxFORAqCS0Ibnt4QaG
7YUv40Tr1NBViQC/Y/y0bOPahr/wmZMnd5P54nmkqQpSIkOJPJOTWrZqXupoF2Y380Va8Qs/qVR+
Lanv71sD9C/xzt6qQWVHOvXhbMcEcfFWeDPYxgGm0CAAD804Dmldp3X/4uEVLA2CH054U166SZZo
c+rddwRwdvK+d4UylU/4aXXBOJc+2yzsArmCQQTDeI6F1qDQpHNbkBrAjnRV0ufeGM0O/VCkqdj3
e7QecbryZFHampdAMzCztsivgHMPmH83bytdSOdPHqlkaDtmfTUkngSE9piZxq4KkyGbRTtT7Bie
6PgYOptZ75/okbqclHT7WwQMSvZOrmtMBx9NPxVluuGP5n0xlsDChYAXsqhQMR2hZNAKae5xh0Q0
9G+McVNodrQTlSFyb+9YyXKdta5itc9fNy38opcGlGGDxbxd9FYTeTTuXcgXE6lKYfOHx3spTi5j
gPjc1QTR6P/1csjeC99poJytzHV+gOkA2kWqWyi0aYT3Fd9rl7yZPpJJ9Itw1Xg/8R0IQ/epSqS/
HId+kllbhyOGxmPZGdV8ccK4P2HXbtEXkhcix2A9UZo8v7FX8hOLKo/GXI9E9mbCHPItezi3zg/I
jQEEMBrJv4ah4BFGU+4TQVbma4NkyvetRq+U3rWTvq60Z35p6hUUz9KwMO8I+22RFQeOnY4pwKFh
p6Py/S5lsF23dFEOeIC35mfCv81FRpHEOwgPZrSsfqXQiqJyArRAujZlL9hEV9x3QWc33+NRrTjc
WNlClMPdTJtH79tXVhMY7EEFxqNmpauA9h2X9fWcDeAaC1K2Gt8Hp/r4nR+iieu0IdvN3hL01dxw
tGmD+xesmUI0jpsg0faGC8ZWbVfqjo3LZxbFuqbBddfyMasEsW2RvxCz3TMJT0PfqpAghV+Td97/
kRSMHXDcE0P1+gvA2KwUuH8qL3yX+b8zFfK+Ci0QCNAFbiuIGHsanNrNdo+T9jb5aRto5M/YXtsY
CN6qhqjdH9/8iPr8+ZQXpT1yWLxVwkPu4dOPLsC7no0EL8y89Fc23RyF63dzsE5bNrAAIX5eP8+D
8YUAFVKKTBNxzeaKyHFzgg9NFkQ5wgdqAVan9DQDoPxdAL/xkfla6kulOc8YLqkbHBVppa5/JNy9
sFwF6ixnVYPytNFBftjb3esZ5AMYF+vH0Egk9Zizj5qgcM9sNNWcF5UUQGGIFN8fL76ubyO9fNgR
p4lYme2rr0dpbJkk8BSb+WbgUSo1yzawts/ocnNd1qF//F+BOlrc1g6/hoyDsStZIsCDTT15HhZ8
EhruB5FuVhXO5+2S866ctPX56TZqvWN/5jkWoA/TVPUDNamKDK8/vSy0s6+xItpOW/1/lLTgjeR1
ia8oWlUB3Z9vtucOfGFIXxnIRDIQPzjZUctNTH1GsisTqHXosevCRNkCnW8JjLhSb78O7xkdSboI
Z+PgA70YmiZOpxc1GJS7dvelu9tVN1YDtCgJ9h9xJt9Ca2o4G5pgGaOfj6oeEIz4vVB4reOcbEfB
soVghT7Q3bmtu5qXYB/5u16mtoajZrudm5u59H7koMFPS7YDAwqBK4Y/0uWReO1M5V5PAzCdE593
auHMrjKC5wysUQ4WpoIo2t/b8gep2P7OPMu26imkOHRGzIJhXwahvMuvGDQXc1wWkqg4t4DbI1vg
009QedZOsQtJWbcl1yl4AsyM66ug+4eG+2xTGZaQn6oG9F9wxWCZxBRldy2snEY2zpGtw7w14Fo+
Wt6RfpCKovh+wAJc+NozEGU3X/6bsrEJbGaBs9Bs8NOsBxP33k1oRb2chF7tMGNoXQoaKijmnpRD
Dlg5dIVUDKBgBt1HqefErcS27FTeLbYouwBOaOp+fR8QUyWoeDc7gJbQ+U/PfGrU2sJKSqIHaQAO
ObGZkFlkPbujxTrlzeeWLgMec5s5x15ae9EKnItM/DoSbwJD7h0xdIG1MKj1SUl3XVTF5HGrnQEX
L2mD94p7UKT4oX/hBWLP4KZaqnKhLGNMfGP6Y5/gGNYbnQD4tAASy1f34lRFNhz3qwVJ55mqOinC
0a+JjGvTfheUI/zI+AALWxvKiUarDVvozQ2eg96ilRxzHhVbs8QIpuTk6o7E9n2ryHB1diBFtbQ6
E6J1KviOkO/WM5lQITkFJdbcXlMVTbzEmQUwaN0ythCiyRqxDomutWNSoqmZidon21ScGVg+tYOi
/xCdpidj7euXESM7A/iCIG72SqdwC4rrQ1P8yIpDXEf5peeGRS+BAvFPe4HOfS+IhMVojqofbmla
L5Sj6GlOAx2LpjrF0Ar5ScgksVIFHdHDtcpWFF0oxPcyA1ImjjkblpUDRD1J2rTASpZgKgYHBvVm
EOBKmtjzwrltulHkN8frjRQ3Po5AzOknQhC2vquQ/VvG0UHJj6GEi/s1K86Se06cNWYbXRpwT3xx
+h03UojUVDMZXCNcKna1/l5B8ewF95WNUEGEuRMfCMs06BURp93BRke5E/l69JSlpTQIhUgIStKx
qpLbbu9vTnWcORJoB2zUqHMqOOQ2lV6YZfEnGm9En2lstnMhbh1NvOGnr9NDQSJhOakaWNh+UlG0
8cfmndpVxuhNsB9h+DBONS5kz/WWnOAc2QNSnstQiIDEwuc/Dl+oQjnD1ulDDAK8JXKm2XJHNGlz
T6Gc/qtwjKW98vyT76FIFNxQ8l0JD5diG4dyxICcq58catAbyBIw1L5tKcmPVaml5fISPQC7bsUP
mS7zQTfAKLknA9C37P/gTuaJV+kSz8M7n2Hq6v2WjI5g6DBuj0A+SmAjymEg4IO62nJHuV549Im5
Mud7qRGogVUloR4d5xMRVzgDWi1IdPHTHv6iJpdABshrSDeQx1IrqwEo/khj1HGBIAzRRtOGQXjf
HG0/6kIGjLyp70W6/B+Huq+EVF8BIJW3NNFqWs4EQ/pq2PjVSQ5+WVX2gz4VeLQ0espJRsCwYfm/
iGMntSx6gwh37dWHcpAX9PlUxOgoNK2GM6wyOZKxIR4xBY4Nj/LP8yqlPS6DIZyD2rrN+sWtOQYn
Oras7xMrbDm4q37AGIhVTRuYkXTQ8pgHbnGMvaqLgFQeKH45P2F3+L7oTMAA9Dw3rwHFSxM5vMG8
r0bsERyniV/8Qp/9SOix+ovnYIX2/NGxHtcirMpbPhoQad4KT4bIpi7N3XdFMsZ4xWwHBegpduLA
kzyiXmVStYX49KFF9XFXL2dxPYKZg7X0lvT/12cGG0RtmNn6mWHEcThMj0IbO/rib3ELb1W0IeAO
4vVA0bGQI09YvyKHBD7YG3Zpg+UP7YkvBfi2dQF6VLq8YgHimdjSTm7EYcKKyh9DDEr1WnR9Yl9e
dcklnf6C81dTokzgZlxD8eF1IVB3vTkMAkWEJvTUK+1X6XtAvhOwpRHkwfv2WhmMdekMK0ZgFvjS
iOxcTB3r9oEa0VUqNPAeCTeuEvup1SnRBG6LoQTZ3ZovbcgbQlZulxnIHYeIAsTFaYCgTZ0yD5jA
jrZalaLRVe+pcrp4Hwhk2pFNBuuMUqBUZJTQDIX1UwvBPWC2XSpAJP4PGMYQQXOPpc/1UHFU+EJB
s4oXZJyhJEQew/S3HQ89YymFJUTSR9ADPFM7lWrMRfaTaAI3IR4jHFdPRN4wGTG5dJcB54SW4MJl
7+qI5qxx8oEC/LVudbpGO+Dzq/vIdMfp57xk2a5OCnl9QxsRpsprSjgVr0VQgpKg0kaUMIqHdLis
yOhXZwKO/PATMtI2d44chNps6hHD0P0iv0G77UHt+Ih4gqp8ifFXV7mROY7bhmo6nacOlWXzjbdo
CfnitSs7ykxTHEv8wQF7qrDFD9s7w9GhH+b3rTsZmp3OrEMN3Kg6mTOxJq8eGqANb1rIgzbzliIy
gB1spn3BGmiFWzgcZhnnhaQzH+SKjftcXJpUbRrBsyevxGgSz/jVPZ1t5HbKHu8F84mHcRlyL4dB
2KDE9t2OO6UUKKKAZh2GwWoASe0NCvvZFSZiU3oKazka6hfFn7LFi8k/4yHkJQVYAKdET6nK640u
jCi3sm9QXC8PmxTadVOFs55VnwmO4lNy7UYHurApFiEn/qkJ02o0wpiTUoNq9YeCRcqDnnMKe6SY
AMIVwoVN3Hw1akJjmABKvrm2e6Y9KrMCvUeQdeJqZqxWysPwj1VltynVV1zGoZMkMBIxNvoqXgPm
jTyqqTo2nUV2hWRorEpWe3E27lc0VfpfCFa1I5ajUJgTgRG27UKw2yhzwRQSgUf3SVB4ip/Gkdlq
v0+sIcpJ0o1D7IeUBfGqDsqUYD6rrzb//LZ7YenfatVW/vRAh8CoodxFRec51DUGmu0jsFoL+4aD
UuLHp546twdwZO1+50ULdJ76wVJEynEgAsBRl2NmIlxVVKLNiK9FQvoJmkyjXsU/yxayvEdzLQFh
RRUPKpGXTR7HXoRZVflYWqIeswqhWVSWV31A33qobBkPctbPV471eJoq69TwCDOGOY/BYFKWD4b9
/q1XV+JizDL2W2TEVoBoO6yDsUye7mn6qYbT+TmUxck+ZiawGzWytla3+k4Zj2LpaE3Xu5jTuWGw
RlhmnJ+czuCXWJn/BvJiOoPAnQxgo+L8xmm8WqozIsRydHWIEA2VZQaOWIaO/AYhsu0VaqLZX6sf
vNLI3Yf/yXo44NRaC1jeR1Y8ac3kO6utE8ko1Rfg+aaLzgNxzrkjz+DkS7rjnE/REtH422pXxGB/
ddE5MGRrCYU8Ktemvz0+gvZ3IrvR413Qg5ZFEmWZFlV3/1VXOtjjqxjqgpAuLEL+n92cE4ZvsZzJ
4ot+a/xhsEZ3tpmlVAsZvQWTF8VFLL+5rAmidMefBkNfkqGjFFTaJMmwd9QEB3sZpJLPXJKlRZSY
d3Bb7yvZRlYNJgMIRrMoeU7kUxcfPNUFa98yXHwUN2SOWdu8Dc06qRR+dtUuDw4TsE5p38lL8QJJ
kojzvRnSGW/uJgmEJMoQbpQj051P+D6yhvrOHvxDPYQM+HlLK6KevGXX2dkDAkUQkXFhSaVXCi7U
zUeGnqQ+Z1Hk8q9lZmBdaqzZc6w9lJPZZt2shNMhEma8SArgJrwWoGG8TwRPcPyN7vGBb+8C5gfk
XmldunI2jY4cPZQ2c2CSUMESJIEs1mG80P44sMEtARlibkYSrBgppM2j9LpHfDV5Mfbml9iZfl0G
wQs4YNtSJZYG3zRPyhgcoeKx+/b4jgVaqHD0brTP5sPHemU+vWLKzaf4Cjkn/Azd4EGYU+snnoMZ
8xEUokruiUzbLW72SBgm7qCiPYGAlucTC+SeBn8EuXlIt6ntcUrBWUj9oIEEsl4atrSNs74fiVl3
kc2EYFOC1FCQJkwXXxICzR3BM8Rr4cZXnhxDrLn3oWo4nUUsJLeBi9NlOVQyjgURL3cW7gW7ToGl
sWeopzRXzmM5DUWH+lF5Or3nOYiEI24oBT1E+iIBHNzJbGe+eETF9JRcLkBTbDtFgwJZR3je2rlV
iqLdWVPK/MO52q4dPu8ljVaM2SgbSg+qr/ukp+vK/g6Uvk/afdOijqCNFD5Yau3DjISHUiR7DeDK
gCoIGNS4+Q1Zhy5mCbBfkdqbyL5yUAdEBD7SDwQwSplZA0zPXFoE2Bqqv5g3qW7ISgWm6bX61FmH
T7tZQ2XNHltZi8PlBJjn/AsTLlh6OHaVS0HCQY2QAZz+Yl9nijvYD5Clq7lKOgJd6j15w7aK560P
pKIt9lkjEqBIgYGkLLCwo17zcmlUK2MN8xTMaYPFegCg297CuJsVJK4HK936R9Yn+ns3nKgIRGi3
3kUPZmz4a6MKzyhEzV+adA79nX/hl6ybdtqhz6DjsI80WKMac7kqFvhHtxC/I01UTuiGS6yR2XvK
/XQEgcIUkrVK9ec9+5hsKwtEWnWG7d7v/SoGxNTvcNk7YLlGQvMjcCOysmiEsVAujoE1tEnJ71bQ
S8dwAy/j11Lw/TnMXbVJBkEVNpZdX9s76OQ8MMJ2KjWz1xVgwLSENxAE1jAMkOGGlF7q0hI7TvgP
+xvbFm0uPYoJU2pb1jNR4DAc7ltJSP4K3OirWTbrOKyxoEj5ncA4wIzRFFTINCCOuGnjbOvZvFMF
HOVQLjapSgfQabrZeeqaaM5wcWp2pL9iNmpXKWYm2ZaL7PlFjHdtKC+Oq+zsmhhrX33XNs/ECU5V
rE5f2azO9Akk08phgWX5BM81PES8BNdMD42QD083wunbWC9XGFSArPoGBK/rUyNQiGgnsGuNB4Uv
Bz8SnBIrrnDTZAvvih/AK4eGaeBkX2XLP+P7JMos5+NmX/yhfQvyTxeoP4sjdb0ZYhWBPy3Ib9oC
gSLeQJOzCYQLPq8HW6FUTa6rQM9/TZDn1hByhv7ZRh1MT7tDzr15LsZykyGkz7MBu/EN915DsAt1
cVMaLR3K4b86GtQ5kw7xDFjFTTI72+5BGOp5e/Fwjt62Jesj3ZDIm7FhYvKt59mU8HUPfOYmwHvm
ZH6LOL8S+ycCgQ2mmm/Zfb58owfrdYgBL2VfskORX5V0lqjhywMul1GS5Es9mqL2ZqX7XUSlBCRI
6ZsOicVjovEZRffcGnsOENz4PIAjQP4eMaYOc0JzoOuQ2hXlQuqoTDpePf2l6rf5iPykZQPEi5tw
dPFZ67oSuWVydCU9uDb+PfoHVJld600+7WuBtOKHJoph/lzqI0BTJlqgSmHdeursBk3FipcF/JSI
B3Ua5/3elQ5vIPao4XgijXEBiQlYa9LaAYE0MDD8xFlvHafMSmZay8ojWOuLSH4XcObTHa6/G7C+
/4gMkFRI55bItAikWBzc1XsG4TaF7pyd2Ngr52k6NViIvcVHoXA+tpZswaIo9nNevgE7ZVxo6leO
jQ6gesvT93mPkArjhknXq8kzXMS15g/TRve+w82w3bsbvvjdUnHtC/IpgyNorH1Td0K5Bxm6DDWc
+gbNzmKWOoKCzvqkl2HFrixovoKdWgxjGQdtrJjsl6tlyz6lWYcpADbSySlm6xfO7aOvrluSjL0V
Wllp23PEtJUo5pudLFyXJb7jNBGuICj0brplcSoZxqgBQhEBk+64D3STsPXqcSOPKtSvybe1Xa86
UqFuuCGMdXrPJqJeE5xrEVj22DUTiQjVMUAIVNCVsYtWFiqLN/3j6XH19G31WAENeZk7Vxzydluy
YePjbGdu+vPVE3NJ0Wn52cBR4FZCtvC/7dR0CgaKcreJeoH24/PD5YvnVdBAtUp8MGLLkdBi/Bqt
H5i1p+JFWj87FRpYgT8z2IL/k0hGKnGDMmOgRY5c8sJLMo+6BEPZ7jFlkvWeNYJ6E90I19b35x5o
ixfWggIt+SWlnSnbpjCI6Jar3bA5bkmhEV23/Hc+4qvOeTk+0DRovUXT0X/DHo11meM/QhOOiDYi
vmgBW95Oi2MbemErHo4Bmn3PCEVNF6FGcX5JMmHElo9E8V4FR188oNb6j8ZlEbYi+hdq/A6NYXkA
2blYUHxIH7P8RQb964pBU0yuLLK2ic75AJDV1Zv9RmwNjuN+z13uxrsbQZH/2GI1eEWKnR1/yMie
V8UgzDUMIPpILUo66z6QgPP54+3svZirwhtCfWPwAnJ7CqwBKBwyWD9gBB0Tj67im3KUeXF5JE2O
7AvaoFzc9sRLyErUaqPjKx1XbQy0LHzUpav5Ixx9ykFxonvxe1zyABP3p6AbcPw2cx+ZTEbJUnYZ
qVKn3Px8uTmUliaYuqvDVgW0uOINE4RCnQuJAGegd3l1GzHMsXSJ5MbWsLTsLUj0xhhNeDvU380e
ji6svP1lmT5dFc5i5EDexfeJU12F/sTujZl5XU3rsZfR0OkjBFGbiH79LzAKl9BdLcs+dz8cmJde
+eA8IrKWMJaRfwxWrUmKUm3PjVWwWMkTtPGP9528klKkh2+lbOncwz1gLVGyHQSHr3QS6Nygx7hm
YlMcG+fBwr8XC/xHAgOw+zFbm2QoQdTxWogtd1k1ka1VVYptloU2hNNGyXLBOWYbOHbzGJwVA/VI
E1BIF0eJSdYh8s4pOXl4BNPZBUqxJamu6iAkLRqvuxAypClsa0xNyoqcOaPV7vHR7YfJSUgOi/0h
SdcauVxBSCR2+B4ScG44Z8rkxegfe5KP0elU15WLOP1dkWl4h0PRrESR6CUXOAmR0yPdwuipxiUN
/EOS7N6yZ9+iVJkGlGamgQ0R2X1wxfX7JozHhpgIFaPvXjsV5p7ZlTjOAAtwBFJ36zf+i/0UKyfu
aVZFG8mOWuAx3zN1i5iCgt8LP0x96fBr2HhXT7vi0HlZpn8Nbs5oTZJL909ObnQXm///Jh+XuEPV
rqNA1719vt5vzd045e+ENoygXwW/+E6FuoVZLptVpRwCbeHZUw+tuHtoS6jpfSeNEuMWaK/72KTo
WOfXyRKQfHbR+wIUNPbslV/bBIT+djGY1+wPcTNEOY3QG9ctGw3q6aK5F3tWs53c9PfRNk7sblko
LVnZ1jdJpiJl118u8iMV/4PJ9b4qw4TlHdVYYet72r0AbxoT6IFUAfhZzw3Bdxh+D2d61fhs0Ke5
VZWgeX91QlXZadum3r2pX3FfdEh2mn8i1GCG4Wd8PQgWuGz/KUJIWL6q9b8XyH/KBV6xfWfAZmAb
Whh+sWMiyj07GK5VZCRDk5FxP8yKgspa5FMQXspSdFTbLWSRc4cPXP/xd/G9VfERg8Mp18BwPPPo
alDmL2S/GWXf0lUULIsXLrjfeWmM9cpFXJESAu7nMwQ9XBmOzv1VB1bnQZDfZU2K45NjdRjwRtJC
IUOp4SZXyDa8pPlbQiAx+Pm7wV06wIqX+EZx73KkIoh8s/xD9/gPlQoK6vS9qIbQ30ldEtXqma7N
LvEvTp5hHdbrj2ReqsvdzEt8J0lEM+ukSlXUiMo1aRFJ7oaino+mS9TFm0Eb7TjGK5InfZMuo1hU
MxD79F+W2klvY4gUhbUMvs5dGdLPsMt/5uSLMid8Bnil679sVzkH3c2MHxXoHwR/7PLrDJP42Fxq
9Wd/0ZG5CQLrCjT4zNNDB70jxiI39AOqgfMRUHW0qRUECl8ThPf1mFX+CxeNP2ghll3SXP2fYitk
RSyI55w3wIKhVVx0nmn3Mwmp9g0Ai+IbOS+i6GbsnunqSlOq3L5nAQrN9mpkIVCjDWEURs9MxHQf
5eox+JaWqu8w0AS4m6NaZ3k1w2xMYQLWqsu+GbyewMzAnLDFBCq+imASoBMeV4M6nVYEfAbgOKDe
w+2MCNgO6Q2hUXjFfeMIaaEYcN94tMHIndArlbUbtAH+xkN/gJNfjkJhsGXk7bT5RzcrVpoIECgJ
HQmDdXCCcVwEZxb0aXplZ0VvfUBI3T5sTm+vsJv+PKZKu6+EHRiGuR/xTqUoUf7xTZGlU15COlvL
AHVN9sF/M4kqcngeRW8RmeNjPXVJp8ZoZ5qRplw3HD04b35S10W6IVHiuMHdzZnDnGL+K5FYEy7O
BMwfsMKuJjCituK+ssA+l/bedAjOFaYKO7EQ1dc503nzLUaiaV3htf8cG3UIDdetHaYYOhG21neM
x/bv4ae7s/zVx+74BP/Pdu9Ri5Gm11g29f7/Gp+gQsTw+LJM8Np6jyB/XaTM7Xh3PkkpnwP9hjzf
k5fwUgvL7TQd72MfO8WP0We+jxltXdD7aQwGIz1ZfgEBs0Gc0JVd2279ltt9D5KYRvi1BCzXUzG6
pehcV535U/RaJwJg4z4eyY3TZSYIyIVZJIm9yLE6hXOIP6Z1JDP08BHyj3HzYldyv03qPViwx63h
ZlC/oAsqFaquVUkRUlVhm7vwS7RzZP2PspUjRo17breyVdUKCjcuuMp06Aq5ArxeuFvck6CNFrMs
SeTpmry4ywDIZFuHiFIsWcsGwUkjyR1GsZ6PBUD6iohfpbkQ3Nc11neo1XzEttpbgscXaFSCJK5T
kMZqvOhGSeqXR0EERW2YvKT375oOwuK5XGzGRWU+zt0b58Cu0YCjdz8svbjahbv/IzkijLepMeMm
4GLT/qAIWcXSVc8+gOWW4dttAJ1H76jxjGIjYn400zmYkEcae/yLgxQZkrh8isymAAnc1ykgIcz3
v3r+mTrINyV634OCxF5/63piEbAVx+vm9Sc1i9fflzym4KVoiH2iWduVZhv3c1W6W1SaXYxaUFUh
ymnM1vdAMZgXoT6gLSc96z4VIDEvhe1x3RUirAwMsQkA6EPK2Yz1MYvmpPehuv81A9ioDoC4An1t
vOkA/o7dZltviH/JnWnbPKwSC+O23ef4eVPH0Kz+PM8cEt4zTfLWwXf9iQ+mJYwMRO5bThTOemPy
xq1HcmfdlBZbcSLW8hX4JT3nE/cCZVVzJbjwK1daRUOiXj4iTsnCxbPA7SvHTuBfkYb16Eegi2bm
y7V4TmEZvL4rtvNKaYCoH8LXF9DEXIzDXPyF9fPlnLe21eknNyyUtkpR9pixyJJOb+ImrkZFGkdb
2su1d5SchpS6TSZ6dTZVQZ3WN0PuNhgc0qx3wbCur2UmKMb0MPLlr3Rs6mH0mwpsAs4zor+2iaBB
5mBTa+QkfnnOf3RR8oHMs1kON/fq1IHKsJwC01bIoSJ04tLZAgAZLVbpdntpaXGdFAjeOeZ199QE
gHbsvtxgO8mXuKHdxHo8h+RBvWHlCAavQ9LqJz83AlpXavZ8aafDmKHblckyxL/ERwq65td0ndA/
ez+2hgcHgl58K1oUkv3JfemNF5WcWKAsvZ+Ftfq964i/SKQ0zZZbGhHlREI8SdRdHUU6kDhndPXi
+Xt7+wfZMg0vZfREa36uRdMaEIV54Bm1w6sF1X3PTdmmUmGnMAWQOC7ThMS+mSgIz+CJzmXwT44j
uixugcrpS23J+wvhB4uZgoFqmpBXrwHal3SHcElFio6oinkpBodivDGD9UsYfe/YzoiMYNCEan4I
EOz7GwB2xeZt8gaADbsQ1svt0b+/ZLTBX8sPQwaDOPeccnY2JPkMLnYTHWE2e4c0bfYyLGkaOM3d
QREC5/q+AOzWYgErYZ3617v9EJ3rmnCMq4iDNdpKWWd6UCMlIDDO0dVhQVMg5s778fDES3pbB+qQ
pcVlYEBsSJ83SpD4so2e799ZuThu0fsr+7rH2OtXW7bwxx6OsMlPOdBfcANnh30b+TqREgpLW+d2
p29cx5lU2vRLtbZKhlQZy7vYwyPFpLCFYb6Gh5qkpdMbY5AueFdGoiQNJqnPwwLuUfs3WqBx7NKy
Denj7ljAXZPqj8316pEN1duOF3X7tPrJPcb5yBfgxQuKrLxSYvdeRFoQ1hm5lciu0AfMZtR0kd8S
UzzT9s0VuSP083F9qDYdJ8PM+Lm5ML7o69O801nbZem6TmjIknlmasi/ldYkW0g+Cq/D0RUyfvO+
ZuEHRJeRubj87PLX5f+tDNHMBs6wsU1mi26p9Ohn9FJDQ/2Ld1TNCQGPbFA1j3G4DdfPT1DfjCd1
mELTrJ1Y6+FUMPkDUAkbPtngDujk1zSH8pR0SOOMwDZ3Gnc8iDVCHpB+NOYSxZbjvuNJQk5ropGe
02NATKIfdy0TcVPfyelG7HjY5SoFIENCFZJ1AeFE+qZjIv/BLrwfzhmyy65Km3+oHFnQgUsw+34H
oyWnsGw8sHgKCbG7WTu99yrv9z0lNX+BcsMebsaNGa0Vacd0qkx36tmJl0QeE0+CLMswyfJKfZzC
MZMn/x9YpUmzwtr9EEzUn7Tijvty/NOswGuJim2mDCi2MOrR2sdm2BMIvNTK7sFs6x56cSJp+6Em
M6xtiaEmhj2rbQfmjUosNjnuwhfE6Zci1T0A+2p0kxQDs8wgJQTNl/tVyOwxSLQ33woyhyRDdPxu
wmp7DmP0ZNHXtR50q98BUF7UQ5SJeYg0imn8ejAqUsu4T9yn5io1p32JS0qSAGuu7dPorwAHnPi7
qoz+gANuIaDBnc151aEJzbCox0Zfy46VFhn+XKEcUhgnVFzXl+gLjszDOz7B20a1Vw2bRZE2s24f
qB/bGfQQcLhGz9s3Goo4sXpotCXRfYE5roQwv267AtqZ2eH2MErN8KVNWEo4fCzqYjHwDITxnQS9
MKKOJErJTyfKzXupnJtMPm0V44isvFr+SpvCfTE8fG4VS68O5NsNVEJ6VzDdLHqRhwZ7eVDTm72s
fepR5YJ9JSpMXRIQuXsi8gMgI485k6bmoDmRXjWcvuL1koyEdAWdYoECWLb0H825zY8YyfKSYa5G
/H+YJwnTbDCOUGTvUeW0zMGLdd+vHHD2RN3SquXD0WpDNoLqIlNqQBRHe7itQ51TJfo4mv3DZBIO
kN7iZU8RU0zCGQ1NtZK0UCx1S+TdieOl1nY4eZ6UiJRGAYoTunjOdaS9rydO3EYlCaKyh9Ae32fS
Yiqw9c74sqMuHDdwt/Ts8ifIPu2ZHaEQAsdtcKPpqcLiqSjiyJtj/WUCySNW1wl0kJqvOe8qXR6T
3XnFtAI6LPjsjqD8ycUQGF7f1pMzSxDWzAFIlcyKE5YNVdniYIaQ7bF71nErdznHBN3r5CIZN05z
GaMmBH9heiU5oHPq53uPc7QtuxpNgJEzYX+YeXwxATH5kczqkPpfNMOFiZTUdRCEmbFm/k4naq+8
TRfUGq4Dav4SkAutnepAwn0ut5xIwS2CwZ4nwxEpTLr/AnSM/pR9qTr9Rbv49rdi17ODwPX6QvN3
CUMZC17sehnv2t0vyLjeBzJqhjkK9f+E8HA9tLiloCGTH7Pp6k5MSpN5ser0ha2aeVnD7nkCbJ6/
pXLCGvQ6DgYAKDhMWakIJDKmAHWVhXg6O5HB5ciqUmA48MHrRIkIHJKY3tKPNNM1pa9C09HqDRDd
Ltg0KfBp1QymJmS8xJx/8e73IiKFgCupwgCauUV2vfU3BrUldrx3yDnrjyzuP6w1ZFFmT/Sjt5F/
2DeuFhPrRiQnZBNRGmPkRBXjMskKrN9p2+mTq5sjLsES6RMRM9opI9AX1DVEt9jDfWCFqzQRKldg
7LO+gmVD4uyllGa4P4f6bFI+Y2N6JgAy1zpZyYWdSXW6ijMOgMKF9486I30yialqiDbMaWeWssl0
UgB+ideziIXZoK0e6HqwTJF1uKGYoq8Gg6IPUzCfBJmg6YpquCb8Gdz/CDT+7PPsrIjDOvt0EhRL
XVj5ELhjCLVfutE5Z5wgivgVDs4rqzj17R2r2O/G/QOdL8Zn7RKD89XDlSDCP3hGKuzE0C/x2EHs
H6DXCYHNj0fM7le7xjiugY6ty/xUyWxz/l3uZ3KrhgJtp03nucwftQPRHkEFAB2HRSu+TK764zp8
MOqu+ajcUCCHa0MgroFwpH/7Mx3i1B5o/YcVV3hfVY11qvhymSArDuCplc+LpAEiwX+A25J1bLQL
blCgS3QeIgE968ATXlqNPwFXVKgwq7kMee6YHlja9PAv8VaEhsfTEO/o8lezeNAYhH8sons674lS
73BwR5HJavpOedmxVvotMpWP1i221RjQeUBMHcHAHo4vssfK8mnDL2MdFs2XlWaRH1sWWSikTqGe
Nk+5R9LxnoSFWlLHcoyY6XF2IMkANNojB/ail7Z/DAut2JU1gfuIiQJPhI3ldX+7dNCj1ACcHZ7V
+iYfgGVjAFv+rCsrbu1yzN09hA8qr/iZuaKCBDhvMSeX1rW4zpMkmXa4wyBPRsxD2Jf3KkNsfpiY
xE97DkPzMnFjtHF+Q+545kHQE0rga3DzFWxScrX7D0EoEPBaGu8ke0NxEYW4rvKdj4wMJT4Ffbqq
RL6d5Yvi6e8E6QxSavy+bbB3pqIt27SA49x7R76tf2CNXvWt7KfjNi51AMEj7a55Uao+6eUqWkLb
erHJPKwPcXXRQEvvh/xSPiScvzu/ZtQoe50myWiQf3zo/52SjlCdXMmyqUQu/weXpNrEoAdRSNe3
HCrPyL3ThNipj6hmqq156Gz+Zk92CBMlNRjzIw4Y+JKwD6IXQncUgD2t1ZDtdodSissNH9RoexXy
rj8hwEy6LspVlAAbuz/2NVuGlGl7edcd1LQIBVbYWMY2rzR9R82+9Re0hgUZAwDlFk+hVoS+ZLap
vq4QsRZTTuhLQKJ/fBACVUhN8kd+HiJImplycUA11hyGZanqDqV65nwqUBSqdk6PELwnMpWgqgmH
ATcD0rNJbw5Ls+V2CR4eldtFYJv8DBMWE5WCLPhf6o2cHq1Sc2L+FR6EnRB36BEo/qJrLqCfbDNZ
yD7Dc+CBPha6dbHacvoFUTCcXBRmK5pK4uS952zMRGt12OPLzsY5mukeP20N3na5/q+6+JPGbwDH
dQsUJSaBC8af6aRZYdtq/xtZdpylOEIkKeEzGwGp+Xsv6eqlvyCKSJIpn//B96+JRkyp6HD4z7/N
1PVrB7a34F3HvVMPmoYxX1ivEU3ANJEblGFHez1FrxjYf1vvWqtsfs255OdTdU9VYh07GYMb1+Qd
mLQXAVYMCD5olgtAXYCxHqMxlhoRL1V0cuqhcrmH/pZH/wew1XKzAYwgWt6tPvHXhok2xyzzbRll
ntH3sePQv+kbjECh8qQkVdV/4VvRw2EbP12olLqqeVxtNaRcxbvNIJVCE7x3ryj/jFrysS3BFsD4
A76GC3tahFE6jQs79jjMTeRWml2KJjUeqydbjYUOQ3PakzaIZ6Ch+2LQkwzBro+uZ9hRAfCBVmzl
vp2/nX4cJvRYdMI+ZcbrSp6GOBcx25pBg2Ulwnb76tuwCJ4d/KInnxFsFF0rFC4zlA/fqFrimo7i
JgMigfQbXJt0grpc0mQ04cruKk2YIn+erUn376K1Pyz9w7a8KIEUjaqBC1Kz+/f347adhmeCghLb
MhLE6EjNdQ0rAbl33UDNjgU2qnMAd6B6d+3kP1KjVNhAbgkq4wzgtuqYrqGlEFALrh5CfBRWYm0r
+fLZbzV/ILHdEXuQdxs4bJoYNW0cPc0jIWgCelsjAqWGdoMzBqkVuEkR1EEvqMeY7dLU1r9o7jj6
tuGWPjbuDBv9u5ysCv2vv4D7OLGwUwgLRoBbRLj4MX4EKOBikBq/ZUow+A5mB3VVi6/ejiPecdUW
PzEXpV1tTMqf2PHS7aQg1idhLIGtI2C6n395DM+C0yzdaTTXU5fOXfaNxfjdibS3MZ58HTB/GpCz
4NRmEfIWa5xrNcb+d3FbIb1Lb/hAXbZC1mYxp0toCf+Vk/3KhkUJX0p7cROaPPPvv2XPZupIxKXC
MEtR0w70KHOnoRhDNUFCg3i4aibbXFJyqtt+iHG3pR8TOp7B+m3NKd6pywDGi/f66U6jWi1Lsjai
pa4bJ9SiZNq00CgyVKyiJ7QyQ2nOEMAZy2vztgxK9ez4HWuKGTvkMahX2Y5C15RDqD9xi+Q7729s
dzY+vNIWAszbT/UEqZE1TLWeTFbpWjdz5l05y/oQqzY/AEU3Vs0YqV7yTyISWoThDv+/OHPfMUB3
K08jpCK07c+zijKfaOqXaf1zZ3N6uGPc9k8NlT3lG8cRvsb0yepH+W1vbFM8vFOVoxVCh1mXI7BL
Xaz3fLOyXFxsavrMwm0Jt61Z0mxQF9WZd5gL8WAkYC3c5lHmPP49kubfpipjquV8QiENCjYJMCdh
Vq0TLEJodLuVRdgB+LgOcc95WfqFavdF+RSzf8cBQ1TtD/zsfgEQprBd37e4nmgIO86OhzEQvPWP
1ksXxiMsmt39K1+kcUhTC1d0i0LQA1Z72g66nK0oEZvtxls+e5/3YZtkOtSfNNKr+HAqbAOMhdO6
Ck14+QDCOAIqPpT+sOUMCRd8wK8YVv5jIXPXYK/RRF7gW75sJ0XSu4nu1CLmleddETXfYkTZNbAr
ncUBtUibeccO9tDI44paEIPfgRsDvMYX59fvTE/lpUNCIpCX1BesaVfkNZrycX2um9lz7Lg4xvhT
Q6rWbpfiu2bxFSERbdeYo8TFDaZWHieUs1Zk+gZfAJIPqHmkYcPWu/sZbdiBWFE5aSnTSOdJwLlx
LbA1GlaII4Pwocvl9ye2+JWm//IMS+VVemcbK7tneWuPOCTAU+pHtaE7JG3PlvvAe8z88AbwmM2j
bcDFWj4pD9X0bpAAT7/wrtOqydJt7CpVJPn9/HoeZ5pYgLoA8a8u3zEt55DoVaBzJ17IWvAsT4N1
i3d+D51DWEz0/ExqvsMxexPpwMjz7q2Slzwy+JE4c3sHo9pJ0+KpZSFDEg/5lhM9yal9f7EWY7d7
cnX23IIO/Pt7b/Kd9rCjHQu04jAiT33Sx1QCNnXZAanebVnbl7tOb/0QA/mR6ml9QQWCj2O42fsu
GMOA0X2wXgo7uXNHwvlluLjVS3MENfAqH1qYxx2u1GY7/dFCu7B5ErCXJIp3iFaclqfqxcOPeZWH
Y+tVgcASnuDpI3EgG3X34V2Gt0K5G1Lx3sxJ+xJHt7bM+Z3h349gKRnSme1GnE0Tj2jnWNmInYy3
9YsKIkvIqbOgu6eS7JVtlcuPD7G0+JK72130Jg5pT3ByHyPJA3DlRAb5Ttv4VKgDYPfSX5iDqTZU
lf2hgql9FKzSHfDdjn2H8qYt+X/rpEOHFP7i/HgnLIeOrVVmOW9ce7z4o3ZBVjbx9MXq4QPV/wRW
Okc4nGDXjBLsnr64KQG2BfYVEbG7RO+UPSHNqEYog4VwDQ3X2STmmyhcMsQ9fx0lWcRLraLBZUkh
O1C09cqaKw/w7tTn9LFqEQzpjPcVZV1m2f3cUJQzYlljcA+wXBsBpi7diQ6Hqy2V7vZr+n03r//G
JzFs7QcTeNEDmjpXZnd645nvadwjB2C8cqWpVeOG3d3MtX1XNLWhxEiwlyksP3Ao7SoG1t8BnPLm
cAOkZ11mYJ8RhD84c5RFxt2GTOIq8GkOmQ+jBzkjkA1u0gnQ/HUiAdxRz50Znn7azi8uVExcPtZH
12I6QWaPYlUVXLLBbSmAJ4WK7W3V06G8DX6UbqRUW1G7k40zT69XVl3tLmQak4xT8UR4XjLayBmT
axE5ZHrAJ9m4/a1g5MOrpGykiEv7WntjjFz0hdHE0CVlElP6IKWc6092GEG1EW6G9tO+3Pk9SRr9
TEAIVN1qb5fVHw4G4uzdO3uIXC8pUGcOdP+JI3uGpuni7ydtBI9f2M23AeqD6KVCww+TgR5wqszr
/pUSFpUmB73qM4oFEk2GM/zzr756n+7KyrlXHeli/ZghAzpSWc/qlYC/2l1knGFHUYWHpj13wQTt
MIexs/Hn+xCM1H1MmTZ6CrtROdSiSmHUpBVyG63ruImU2hO3NjANqqc3WFcbGzP26kT4V1ExvMxR
DkUfeVv/RxNP+3MRs5iEFom77BgCqhZhMgBdwrvl81VhQcZTs/8lm7frfNLWp/LJsBlKOpPQRljX
hCoboUq2kc7VrvxPO0lMhrWbr5D90lk4yq7TsSNIAJfjbvPo2ZhyI4hB/rufGIBD7S+kS4wCLQ/g
IQsJU9/Vu61AjrNVVRI8dUx2LzJHH7oaSjrUDlKTommXpQZ/hHWRiRuXVfp2KhfX2Fh94yTkK9AI
jaG+ReYxR8ZYE7dA+AP13812Ew9sZdhw7tmwzrEqYKStWJDEO7OWZ4FS1MRYOA+dDWOq/Ypk0DDW
j7NqErmt0IWMpFNwwOamWPuyX7FuHqovy19fmNTa6+P9zI+thiROD5KFq4L1FEhzE4kvNERxXe/3
6xBTZvboGXan5qRYfMogk2zTHwnSKx0GS4OSK9fw/xFAeLPYhDgW9eJpfuFFEw7GcTWvFCav3std
hF9kBfEJzxd10Q7ncJ58tpnafDBZhydAW9HY/9/jEoc+FZpZSJvfuo0F5d+/bX7k+zNdV+ptoA7f
ToMgqTw4XThrEdC0zrsZNic2OTF6NNd5H7DDEuHdnvAudsjZPYzWy9/Nlgw4IsCjTr+mxIV/ftjF
Xjc5W0kw29xshrG47bhyYZyaAQUkw1PKUj49uuVlVd8yx4JlQv88xEF/KyQJ4beMGVNBq+2UVcxk
vKkBWONm4jxzIo0BdDuvgP+Y56XLOBEjMkJ19uGI3Mz17pNWbHM1it/khS/zE3ChG2u5a1c7XOTs
rDCRkbnUgyqqqhJsy9QdVLMwj7gBrcwyl1BwtPiWLQzCEuZZL5UR4fgjGIj+c91fpswYLFBOCNXc
EDTp1cMSiF5MuTnx6D3a8YAGxa3ky5dG8Xig5ITHxaqGxPLD+oVaG0TCmycoLGvBVusu/0lhQBN6
bn4059w2K7yIAdIzLFPHi48HyYkcrAxRKbAsXTGmgp0rZfj3MdTSQPKEUAMJ+U/2zF/XtCoU1fO+
N+Otlm/xwOPWTzQV/oYtX9ZHMkfst3VrDK9jKcxu2XRLuNELPxj32fooew9BQsiIRhfQFxxGzQs/
FSMv4djBDVHjTuGdcA325KQcq06wRM5RMjIu+QFkyJrHhahIpDnA/g01kecq3Asr1YyOn8fGiejt
kWIlnESxHQHNcb8G6G37b7F7+CkOzAn64BEvNrDGWZa8t857W2JDS4CGtudb73tPHE2G3wP0n9KX
A8Jlr1YlBWx9dNjlkVLPkQWtUkda7WL8K9sUS1RHAVUrs6gph1heM3AmAbL+4HVE5+FgMI9c8iQ4
NOnueeOL7r9tExot/T2PDI51ZfQTqi84v3D/LDvKe1vH1Piib2eyo+d+pHXfkdW0pu4xm1t+dSug
nNFJsT9PkfwrUXOvsd97oMvC8683VjqilP+mJ2oaxQOZhpgZGDLA7GYIyTN98G8klOoKCdLrb41c
MuwMUkcvhzSt8lGj+4Gs1cY2BPtIn86Sy0NwkLFdvMv72VCQ3OhGyfrVTNteO/+K4SNdhjYhWWta
BkPgw4sFNwOi8vmKWnkG8n4z6/dYv2YvPGYz0UDNASkEUqxsn+lLr8OG7MFAoboamplA2CUJY1dS
G5E3m9NGFPcZ1r2w55PfgldLiSdMq/Dz+uBi7URccsktZd+6wsOwwqfW39uUlF1ekzO4KAsKiffE
fgEipXkQHLUmU+2IgoHOldgzejOtsCTV4Fwmr9WMT/Uf7v7NeFv0z4KZEZtfgQcYMviC0XFqjotW
XfHXqQioFrhJsoFgwcXuQLASZPxMJGcXbWhQrZP8EeLsnxW9yLAM+d1T208zzQpwVbDaq/rQ4zjo
fBeS1qLwa2+LmWZtmIKXk8uJgEns2k2GvtXIGm5sqsbQ0akvDcMpoh25+17og/3r2iN6mjgY2cev
JouC53Q07hNbukOtAQ+vFeFbf4Ti0LrU1GvqxPmIHyMfCphWn6u7sE3L5+5zjCOHqYi9tPC8ms6m
VBTvd1kLbQCVFYGMoC5pjhO0QvcDMLQsj09LWukkjfIs/LOlWbCUt6k8WuJKx8Dy6e8UNpIFtUCO
z9CEchhOc24pBxMZ/Mz5D6fyaJMkwx/v4yl2Zru9ke0ke35OxE/C9bsd7sH+5HrKAa1qLAA99eC3
gsjmwpwaHVypmbE2oVVx+ottPvp0/UoaY41Jz+yX63rcMGehozWqsUEBOn35x9FCzhPtgk2rD0sH
DdSOebFeKtJkfcbhzPa00S6/2kUNzzP59lNEbmGEwgD9NY/N8BQ/LAnSRaVsLnZxyUX+cvtHNFF7
GzRF34MD4svNn4rmfSLkHPY8Dzoqg3IODk3jDzcmdgAe7nT32t0t5Cb7tTLclaDEOMBaYAjgk1eM
BSw1vGsZRne+uxGNlv7G2OuZ5naYJoabflVVmeNw9t5B1jnOSgeTvpXeQApVAVXUn3Vt4sM9y/ZE
YL3GSh5b1qKvT9I0AINes4aj4ExAZieuN1RBBSJq4mdAXBkdabuMKgGyw+1RYqZUJb9she1dZcqr
kOEyAcrjM94vvf7I/DeVqnAO306+erWf0JrvEfcFI3QyF2zrWzYQ1MkGQvNLCh7KRXbaF1mrDm7s
iyL+EL38VLPNzvb6qhQda5dqgyGyj80ktUTrWG8EUvlXs3lKUUd9/wswFzTiHdCodXMxsltegNG3
KQmrNX3vX5spjKE8jkK2ncCvUHUrNJluKNQ3WX/K8Tr3TENjRLSmC65Q4OOi8FBQwYJmu+zX9Q0W
XCMU6/popAMMj8D38YdekOF9A0+HYIWdXh3JyPctbJ6OkFXv3pq28PnPwPA+ldRIr/cwLMCWYnQo
LPVqdfSpqk4Xf+h9iZVz/5BfddBkE8GJMvrUBDEcgvfP3hbSGM/4OqZk90y5+OB/xTs7hxcJ950A
2rF4bcRVRVQFv9iIB3GPcef0AXazOE5I/gIT3xqiE9mI+l7BTazLRIuCtkjq8ZnQLd3kZRg0VBRg
0V5fO3WMcM5QVHR3ar8d+812LWU5w87VJM1RKiLnEZWEq9tuGB0S4QHoL2JK81nQ3WiHJzP/MY/q
bUbBbOe7P1avBj5jhxc8MelGpmyQxdJA0HToJDtnHpxiYVsKNshKIX7CwwoRcdyg3chRO+BG3HXl
4fBGj/wrtZXe3XTQicsNw+bEaL84xSCXE6nn1mxt6nljnU1phB0XaoMpxR2kFvU7IGxL7L72ewyA
aISkceN2zu372UWzyrHe2lydHWpZ2hXRr57WVp6xhpg8qRXYo6lRRZcDSrJtlw3fL8tFPb5eoxi7
ak9kWqsAGP+lmYY31BRSHrQDTmv1FtzyGLjol/cHEkhhVxF6dy6rz+giUZzf5tt0a4xZihkRyRom
ka7K3xKFqrFr0PppHF/qTZCNjdwlnyVEJJ71bdrKQvzAh3pnWW+5x+18qbUTOA8VwAwyNLUtYCxI
pgONo571guZyBBC7hsYfUmji3kv74aN7QzFY3B6FL0iWfghdNuLupRr/cP/zb8Leys3AzOwK3FQK
IKQQJ4LgrSu6Qujz5ScCnvIuPLZTGhGYGGDTESzkBbGzoiD8Cip2BTPa+d5eFC8z8H6e0plw6ARN
q1P9yjwOsSBUxf8S6giDWnMlRXi4mUrza8Ek8kOWW0BSgUAdBU8X5x8FmuNCUpMfkShW9e5KO5wc
CmP3/JXhXimnh9w2p9PFwwJtKcVds4Q5oBF5D9GQVQL09lCj/qmphi4l/HwsddV0JbvTgFCZfbJB
482jpr/wTxZEr3lG7ilkTjm0U8C5MoGMnVfgfPHqo4ZZiTxAqXM+JXF51Yh3rz4cNQkW1VTcYTI/
TE7mvuMZ6/nuzATQTHgGxwsvO/3My1SAVsnXi/FUbFXqPJBBJtNoZn7dcQ+BP6ieQ/pQdCOmnvZm
if7xLMx8ngKA3jeLuHeRZuwBiEMooz291u3tn4VwVg9Qx9zam3tor7MlGiro9tGCwasaoqPB6JWm
WOOEMxX1AdrrV5vy6waVeDz4fnU4upSDg3ZSlC4w/lAB0hO3pkHGC5viaVbAM8tR8Iacn9hwR2Nt
HL2Q2pZ2Cp3EkWXy64Jw1MwZ6RDDEDhUaJIZk3AQ5mZicZfdxBqcWN1yy0Mh2lnNW3AwhF2wO4AZ
O1CageNoGV5zLqrQ+r5KzD3MkpQI0YTTQw4Ik90rwD349K4BiNr8kyIi3y4hhnt7NYMfUmofC7pQ
xUPt4Z0kKFbbtH5N9Ukh4Bvn+seMJn9CZn2KzGbj44Ha5BpC/PlxsTt1xEb6uWxx/5rZ+b8cs076
nEZi5zL886SubbfzDSC42NTLfHOI8RrpMb8HBl3+8A6gWxLKySuw0b7/tj9AxCGgWFr/8qYpmQ4A
/5VvT4l43JxvWVsGO6IJMTdNyORv9fwb5JaHTHaUGqQRvMpmyv3c71K+EkgFsy5TR8zMN0QUIbXf
w5OEtk0jfI5TNiul9tEudAGpbotkaYF77kqTWPk4wAwDOPXexC9BfTvjrJcHUHADIPyaxJMgZwrp
ckIBNGM/wvxbh1FcDqI5tXkKHpKarSJlN2weXBbi8ullr1HxmcZDDfbUUYkv5i+/aykODML55HPV
eXW/NNag5YzBWcOp7rnYfyEfb9m7nfiQzh0Y8LVgv2UNtEN9UcXNVV8s8/wfY+ZhVIYqOJf0EOJb
MHwMhBbwZL3Ehqk4wKOxXHdqJ5Wfd+E/jydQ6/xMkWZxLxNGIJJIknOo5ynedy1qWkN0yP0IMU12
WgE+ucZ43HaYCsaZfSRnToYwhqMWuD9fUndMIEaqCra4H0iC9BBgLfwhqPG2PSn8lc9f+9T/f/G8
eO+reBKLUT/NhQ5GH5je0Z46HFPzGjTCH3n+24ETWzn+LtKPRDNrDXTR//KH5clDuyp04Eqv5hU0
BPwTtJrcKmA6plNUbQ1s3ZtflXTml0O5SXx6c2skU5g+si+SvYaDYbR7s0c6PFV9OOir5EgM1RM1
M74pA66CKm3bfrrXpb7WuSinR9n9kC2dsXfKEW6BsFMX/atvO3LWGvEHCDUDCLQ0JDnNCaPrFPnA
R5Jtg0ul+x72jcdcRZFHDbTyukeDwccJSiocvfnO9Icytw85351vtxrvYBXfkDO17BaqHYO1+gI4
aHior6wjF0grQtFCZ0uI7T3QNNxOSd2McffMDqBKAcmv1fckaNLAUokI9dsu62fULJbzQa2Z7Z5g
8QGegG5jVKJnTPOnoEfBQvb0AwF0cyQjnh01by8aYNVzqltpX+bfXuF8uJ4ZoE/7aLxykB+pCI0E
VvK0+v0ZyfsuD40tVP1zLJwtoADkkS0KJT4CpKlVEdop+tmyB7oAw3Bl5zzDJhAO6q6ccZuidA8a
LxHeLwfDBYw8JbexlPPv1PHEsBW+7M6Y2asCAKLA2cXquS6J3HHjj8bO43FUEdtrEK4o1wY76Lbn
OKHTzmTL5GsQ1+0+PLx0RvOJh6ES1p80fF7RGLkjBuCSl3lQQbGeWZcPxHFxLLpQbNJqS3YEq8WJ
SH7Jrc7xu642kPanF+pfzli4zrIKcG4b4IibpDNhmWOZL1ghhtP38v+m8e1RI/oOIns0ioAZZ2Fy
Jwe3fREFRM8f2kjE8Dhy8WufnM3wVpx/msLfSCtIyweEmSn6dPpzPC01XccE2/R61QUK2P7BvvUC
rjVGlZK+JVFUnMK+MMKge08FKK8/9TOUK0+HTiSi6fIL7gf3jNg6EiI4j4PZW2zH9hwxtO7lAjgc
1+QyH79oH9DBf6KfRpKMbreTQQVgL+u8bHbR6sk7daYImvP7BbU4cYjfUg3bqOJKy9FNN56rUzP8
kIUZrpngFWQzuJVTql9rf3qkDNfBqct3e77Z1ZitWJHu9rVWnhlCBljeUe3UrSWv342R4O2DaS6p
8WUnz0YyZetatuMOzrvEPTG3Ex2jfAzoGSHdtH3nJu8qt1Ns98T+2S3gSRqV7b8/KXL1/BiHbcEc
JqIx24BhWAqobKIB/xPY5CJyGFo0xq7xGfzabdXXGzrBFcI74Hy7QfxQuoOn2WXVTwXtpuc6Pykh
aQqpiiCE34tzzO3QbDqy6fn+QmHH2OLpyTVzhGl1IWRePKwWyksnXJ6dLHqDVnfgNn3p5BdNDf1r
StVugV3rTMKDPMVpGrztGDdhuY/w62vGqJCSJOMV5qrK95w1RTE0sqQQr4Q1eEK/0lqQNciD4HMI
rbHB1AhatuGS+ieO/XRhHO+Shig10bvqCOAmnVHxRKtz844jQFwjRS9mdU6CYu1NPsKQqIjiVWUU
orr5CqAxeOVY3gmZP4pfSWJyFxMTzIMSoS+yBYeZxK8swSySwsN0LogDGyhR0kLfdD5iZKl9LIZe
eUowu56AYCVLbHTLz3KbYiUTG7OHJRWWjecpY+9//qWZzl1xnpHt/F+ZsmUs78ti21midBHKBYf5
UvvYLrsorNEfUMN6DuKBWsQEPESikouziXjzaw7Xs6yn3PEotvU3h2YIQQsedWrm5edW6vwrlor8
kKbXtyJWVmhAyEWek+zz7kLeymhJQWPLy/sNp9tHm3pZEJ+/LN5FW8g6p59OK69yUEG2HQf0Za2s
1Us7e0adbiNcO7OJq3O5dFB46IGU5b7Vpyo9ZadNl8OXZQHCQyqbz/rpbQ1f4BS36OD38r8HuXfM
6ZhpRzZUkeh3cWyarRBUfHhwH7dQ9FRy4KEAXAPSEza9hWRosPpxOgEruYY845ljFoWVVdff4/yf
RHmYxi/6DMMlk73HMaf6g4WXoXwN1nOCI2QaAasGIWJZU658r/83I59O3L/TYpn8WkDxea5MX+ZD
o1K7O4FZEQ+8NW2sYx3K0drScocGN8sop79cNOY3DYtG+49GLbeXsJGTVb517zz7uoCu8I3Z9Cy2
DTPQSHBWoYXzksNNJ636fJ7KL1c1xm1IuNzTSrtcBHyBZCM5K0ITsGMf+Pk4oXuitid6GAl06rNF
rUwzWKYNlytYQKUdsxtBO7BzoMdaCngPoD8hCenJ/DKxE1CDtwCW0emtQxR/IWV2PZI4RCDdnmJI
oxpkalnj4LJ2i3rctcDwRvBju7/oBbRZNiX/6NVbCrbMA/z9ar35056SX4aQHv0bfw844tt6ATzi
RtOY6j1nhJ5Ma1Yi4ctcgD46Z3pS1CVXCzBKC6nupvAOV/MHPJMg3bqn1dm0L4P/80HMXSQEztGs
5YYLlWtAqUw1tvsDrX9gsEP7ZxwpV8hUxI7yXnOLosa87DEBNW3KBnfjylPj5TekZJyvqFC2GO/F
eNMXi7Yqvoei2kL0+xUr/tgAZN7ygxg4NJ7xMYKQqyHYOzSavKE9trsrHOxOTxuDKObB6vAUxAmO
6B6kjU98N2uiLqGI79CyDHcRMS0uIUDL8gARQ8i0kw+1KcvM+6cHr2aKyogu9F+h7kpx8bL4awWF
XlzTuiBbnwhdUwn9HAEdw0Vj/4reUrosOPCyJ4KRd6zK9gB3b9yMU3JBTHL5YxtRE0ma16dt/0zU
3EZoaLfomPmm8J8FKqBWVTIsN9QI90bVK4NK7UWxMLC3unc5Ky09DZ4VzsCgXhSUt0fRoTJ+OzbF
dk4/oekG7gHrKR1zAnaRC7P8SrNwGNVXZdrJ9L6f7TQAFzvqMqSlFpyBqIsRxu2AKxbp+kePb7hC
QEtqSDNHc6vLCQCdVnznRM247y6j3lvUpbke7iz1huMVhOmxIVeK25sXl8JI/kC8+5RzBsEkABVV
u74+gUiABYq5AcyFjskugX4KNSq1X4hk+CmJ8kS3rEwO+haTwfQXof0orSCs1KPMpHeJaKgDV/tC
t4965t0y9xY4ZA8dlzIRaNzZR1kF2YXoOSziZ3D2bbbP+iCfLmgPP3HksFx+5WFz8k+eqNbk6xoJ
XTTQ5lV/2NspCoF0jsvI2cPRNa/DzTtEjRQKmMyCYUlYMBBgCkcd/gF8vcQ66mXwzsBPO7Ac+dsk
IA4KLhU7UdMkj1q6o8w72Gn+sm6cioNDW4xX0riroqyaxSElgLRY+FSzVS7CYH1EykYPjExX0aD0
BkUf833TV9hEC186SgdqcPxF3XKALnn8kQ3qJzSks8f08TjYU2sA96gXuO9+FFu4DrWln7OXDo+a
HUBSvGkL6z4mJt2+8mD7CetfoaoaI6RV8vNw1JKr9LtxaK9t6IWdM8sI1lmaq3lZLzM7IarJtmd7
xR8tUF0e1zj7yjX5wF8Nf7iraO2+jQ8o3Pp5LzvSmo/1znNeOpxQ2N/u+v0YMyUtn+n9zUeR9sDo
6+/KLmWM+uhtL45VwUI9vyDahmsom97aXou7o8Vh7+e78C95kNGfXNG2TExc7B3cS49ULnAaRGNr
aypAdf3hMnsIwx1jbRnRNPQq5oPCCAEOJTE1nPPOxWU/ZjRahEUNrmu8H9HnHrQNm4Z3sRFf++9K
rWy3BKpdgVlO2pMiwAzxzhdVkc66vf49i79B0HLoPM548tq3lAw1Cmo7NiI9AD0y8IyeU3ZSGCZ1
7yz88pmFqjTJi5GnjqJxIcDUOAgX/Mncn/51WP7bX9KbyH/ai2U/QJ1qP/eoXlxXbBKagEQ9SRlB
VPvpJCnpC/iK1vo0IMV2v6aoyQpuX6h/wOrJpgba66/kqGHDy6aZJVd363lBl9L/lSneHlRM4pjo
P1X3XyVaQiTvwy9eFOoNUyAx/qWOsPm7IzS2+f6kC7ONh2g2u9Hj+gcEK9fCnAh9L7m0TKr5SzGa
0k953zsWC7eiPPG2PDLe//qfiYE/exT75pdntfNyoYF2cBZ1QZLPrHiuMjxunO1DrZn8zV8/Q34B
+olugsnWuYopL6d1xm26hr7EklKhEerTO1WFJGIFfOQIgmVyX7GZVUn4noXGmeAPMEVJqJVjmPBH
vlGzi4g9Kr1YrnTA2gvZ0bq7DoIqvcwy0/o2qQP7NDKn9XaQFJvVSNbi9E8ysLiElCyRtHVXqoNs
VoV7PkM9Ih5971sY59gxt2tsBskNExFt6dTXnh8AoucKtTQ3Eze+hU6o3dvK9LmBL9pmPyRhwaf2
mUC/sPMm1gI+jW9iwrNHrgUHQ/UxVAUDFvRVYVHfT6Vi5TI4+hHJNvfCVevXDfxnMJ2YOiZEy7HE
cdATkqw53yOmoOeEHU3GE5Oy78VRCKYFnSFKUrrlGIWKNG5YEn5/2rooA222pJNAFdeZUCydU28B
7MTppvQ9dN43F9VU9c9Z+VFHULvdDM3vGDauKiSbUR8eyzT5dvKAhvDAKzIa+r+to/Eu9BYER1bh
XoPX3JjO8oTd573xlVuygyYmOXEEcXD2URyq3q13k3//lcfnk9RMCQBAOPr7OjH5vWHyn7VmjgAD
da5MJ7wR6Me5HInPg+XyEDWd0Mks/EHM8DOZsj6dzcOOXTP8BiAwOm1TqqnalqmJHd01qC7yfHL5
iI7izBnCLza0G1Mh7dsKPvwf17v8fZuR53T0tomrH+cFhCp8ZkTjBv8xU18ERal+kLV5jiBB+0LT
Ik0OSXb78ROY4XnL1tQx1D3dEoXvspWFUWppUySZD3eFRtTzYNnpu6y0azQmzyqLeauJec5oB9SH
F8B75d1qQ9gMPPD/DwqXxJ9ONghpke2Gwp8TDsF81x9p4GirZNS8q9Nr56xYxqlgAggkGiGgQGa9
ENZleZzK9denC2tv79hWRkTaB3kD2uC86D6A8QIrncco3UFGT9WDfgpKkB9Y7/pAV7+sh0cek0xM
n814yBzzQqL3xCslCq8g+97uMjHIkJwAGGdImo3sqf3R9HTrvzNZvMSHYHjoW4AojwuvZYaWvJuA
/tEJ+V6BPZKpcEcGMfwdFAIUBlunZCx26X8Q0rQDWBZvSvLA6iwHEzGHMmn7xQlrtILMblxz0/i0
HTnAP6gDmVcaXtf8VUATyXchGwPINUIqlCGwrmjZYERz2Oyd5vIYC4dL3d1XrIcjOdP768jU8sC1
MfTa2xyFHMdwjXoHiValKUeJ7Dw2QkL5cAtHnroeY6yFRuuPaR8bZj33ixbv8VPdUSMzWiEAsY5t
CPwG/uApG7IuNvAQy5TN0lha7KQfgO68PKMXFPcwH/fTxg88djnlcGw7Q5W1/rJWjEK7F1Jld3xq
CUIJzq4n3jhv9uA2km8UHGEtqtKpkUafOb+z/yCLSuPbHbaDps2F2/CWds/n+ys6W5d179kcn1Fg
RO035e2jpGeW6doZaZ1rkyNy62JWU9p7M2jQc3gIsIvKlArsoYhu+JUHnaxYS5yoCpl+M3MV5zpe
bWDfED9Kyv9AYx/kW3eAikLAR0uZrNl2OBOtnvxijt6hWNY0r5URJ3O1uYH3yJK3XgjiSv/1TnW9
90UHqAVlBuQLOOZ0tHNsJwOuQRdS3X519zVR1o6wgQlpz4gFo5Z0/p0JhXE7SYT0SqDzqfIhEmBh
ykPfh4HoCvWFMZkTLnu1GzBuSUqAoJxyj8opeWAGTWBqfJ/cFfWubSm5FVBZAB1QEhNwREiuddzz
xXSz5yCeWjgXPgA545kesq22FH3bqW08ysnkQ2aH4WBfLXj/Yp/inEfok4eXQLELiSThy/akhbci
6pUJ3o8bTSevN2Vkw10o+D/XvZTYbewgHzgqqN2SIeOocTcyM1glwG2W6koUVAjkifzZHhV7cgjq
1M7fpqQI+CEnnrP2hOhimJovcEvn7SGRTqFczx5KrqjbWLcvja+MGLxpHrpVPQ0zQqMXMzuaMaa4
gU6KjGIK3Kzra6yf1T2DWAKdVH3RlbZSHdGCLvlWZzyzeX+2KP3E4jRFyPXH4yyV8zdP3MRVRMs9
LzEE4v2zlsfCHfxz3dPy9hgcEY8LlNPzgwWxOYF0smFMYPVcu6k9m1onbQn2FUfLaTIpnC6u6luH
MvUHZzLvUSoJwhtpkqZKE0imaKiSPjfiCKsJIwjwgkHqMdYTWB6okKJYGoHHkmPOXBHDPqFZvpA2
gFpVmBd9RWQKbaBxp3zXo52PwfJGUq1DshKgfTv5E1FNtkSaf3+QZH/yvx3GVhOv2++J7wo3fJnT
sc1TdJsxd8T+GcYverTa8G+4jMjG5MVFwLUsdgelFpl83CjM9YzvFMres4DM/fTl7FQc9z32r19f
TfOOrxxQPPxDBPlFr0UoOhGxR1k5QzG0Xxs7hguRZjHLj5ZeVjILba1ctltzHVfNCnG6Q8JCeuuT
0nDfxvGYjMvOT4D3P+tGy2ar1aTelW13b9K+gF+otZU/eTm295J/Kmrmhjffx/KzleIdsu6zSA9o
/SMybr45pNvc/2UWzTB2q9NtBv3xy+aBZFx669oW/pMOgMCiazoNuNbBidZK/kaPMpTXpFcprCyX
UPcnmfrau98DGJNow296AsBQu9Npe1maD4cxtjImb8YUeCFss8AXGEMuEeAK512SzL39VC/ShmpI
OqG/W4QUbSW+4h4N0dutE9Nawz9fOJTa3klaotKjef/H74rAq5YKsgXcQcOGDG0657ys+0oSPSyg
I3ikuCxrs7KvXebJ8eqz2uHvQ6fIEELZgm/CW/skIBiwxSXh+J2BCW4+LQ7j8nrqoIbBWcFCDF01
AZC0ex+m7zfTaTj1BbbZ5CvH9c0QFzdHaJb4lXrL58vtQuuzg/OHrLiaT/U+Gh98M+NtcpdsANMW
grRts7O4qfkq5T023nBPGpj1crtafRFxJE8O3/vwJvQTNTeT6e8MxNM/qpARgsBysUdBgmdVVmgl
qMH5oaioJdM9BjAP47dgXW+SUZsNi22tP30K7ORLUrY6eyHGN0VEjaXo48hKbGtn+V7t/YH8rxLp
GjzROGNGJO9kDAjQL4JmX0SJ2AbRqIsw7czveCQSQM/XxGAluX3cJRR1rQsKaBSJAoRY83AuU2W6
LPKCRzXHU5jd9+nh+Lmbcd/35inj8DERsJwXMcyHPmyL9/vYoj+UXlc64PSkaeSf9qnDo/NRPYPo
c2kYYko9v7ciVR58IspZtGAr7E9MDnqwOTP3Z8rKF2TjYDE9/5R5f8sY+pB2FGr57opZu8ZQnbf3
7vspBvRYTgYt7SaTWWz1zVfvu/VHBGM7pv1gfRwXNmr/36cynAv9d0ZseoD9HEsCZbiP26MGUJfp
Ilxy1jDZFY8NpoYnMJQ74y2OP8rO6wZHbrFPUS2tc9ilfUM2NB2mMNI6hX1BUMTIX15jsPuR276w
YPkFWXEvzQdHaKKMNz/b8N/26vfR9fCbVY79t6kJzWJ9McMO//R+JN4A44KEje8IAtKySIavhOb+
/Tye9HfBtNydYwC/eo3VELCcEuW7eLDbotyrhyOKqVrvW9FarYYRCb5QfL9GvgZ/zLI2gFODV/mj
TJ552sQUBBFn68RZRWSiqwBqMC0zNAh6HXEW+KUWKm2jYAuJOTkJY6mWe3bj77cwGowDt+K889Gx
+uK2TayRy6NYGmsZUx6Jd8yCKHRFP/cc3IMy4YclOQlrcmysPIYb4qPcTtDm2exo5gKMWoEOMhRz
TCCU7mG/FE1PWedhpLGFBrvaH219BUuSPZav1j6ZdQyo14uxgkjPohgjWU3XHqTkHZGLRKeePSes
nyKsIH93lytWXW/ZQlOPCxya/Eg3wGlVlP5lfFXnv6y+fsIuJeKchBwJUY8B/o4XdQ/PVHv43GD2
qRQNOJ8os6oV4GT1Hdi3gJhHBeXfkFGv7+r6cb29y7vhjWVJxjYU2m0jL7vLHN5svk8dv/DoH2rW
+ezSC7dHLYwAROkEMqZYKRktG3NM3GQX3AZs8WcizY9c00u329nBtO0yHlqhAhohKvywPuPfLEK/
ZyPileaX7WIwZLgOw5CvlJnyXfnnAfA45XPrjVdxr14vye7jCoquuEREKHpXGGywX9TXmNuKuspa
Evj4uKGvvExiz+HZVOUzBHd2q3nypq7d/neRBU02xNa7rMwjvuS9FrohEriFeFNNqHqyaRAyed+Q
zjo3zwyJgppDoqSh2bSh9w8qhLR67tGQM5UmLCwpQjdYCLENMCDy6rrLW1dFS8fGMOUY/+vo4nSy
v4VVZUEcnBrMlI0iAmJJPCbAlhnIcLWQtVAhEfHnZfYe/qhAOHU53GxX4gILgWT+HBp5QblUM6+G
gj5BxOzFx+LzsgE+QwAgG6gGAeRJJNPp6E1B72R52+V3QdHB58xLR6MYU4i/GfEqIG2cJb8OQvBl
c8j+vNAIFC1fL+/4RIvMjR3rD/srqCLeKAYUOEuZW3MOeUOl0I02KOVYeSE0gQLrYTG8JnC0KVfd
q5j2WMSzPZrdCPfOeAMoLQo7stVhZlqMaFJzKyRGAWeCKa8cX2wdq3XM/nPiE8qXsvhwezqdFJgY
oZ/tJo3zM7EJxOGwJt8DJEsFHRKCqFyg89RMVSMFWfsIGfwmj4WHhf3PBZg3SEOCkUegn1aRhNPp
BEfZm1rJTd9humRnZheMnl8oc8R1PUmQewDX0nqpAiiBkeSmTgtRdGTMU6FmkPof/4JhTDOZdzO1
OA4+53JVr2OWNCGgsMoD6Vxad1XZ83PY9WlsRM01RCQKz6m7rRzyEsFS64MwL+RjuYn42l8uf8Uc
3ng+AfSE2b1X68uyXuwGy7Tk30R7RLvML8pvWQOwsY3saSeNH2QEllnfSohcODbAWXGv91eUlDDD
U2LkB5u/POHW75QoB6UvuaVAjFxjo/AIe0Ir1LUubmhP9c33CkDQjS7pECFeExq0OLgXBOAaRhFV
XGBV704W6uTehm+hH1i9kKZzYKqhrQ+DLSeTuhQ8gSY/nnp/hry3fXVNkkiGt8b7b4y0t6TEAXsy
5sy8plskdWZjsbfKUTjbUT8T1Z4AkbuubKvdorDzoFH5TbLAcd3FpMG0rsq1jwJ2VfKL2mXZAcGG
kFGAORPn+79OHKaK1ZCGL5ony32svkguOypbh/ZheLGRb1EMZgzd2BILG5zxMdA+xkyPmowOZjZO
UCH1XEIt1rOIwoREp2JPQ/h/nA9rz6QNXh7Ut2j6ICYChkeLko2R4HBvVooQL2y999Okt59o9tCk
LIg8IbPnEH8UcJybo1hL5Yu7o4KEleWqzkqA2rhF7g1a7TUWQRWwNK3HPpCg7CwFyP6dmIM3Lz2+
RtXaAJbmQA55HG+8qvbjMnAyS5ovuJQzrYwOlVdFk4oDwBhqUiVUAe2GD62+TRvVHEsdmZ1k/xXy
/ThOSKUhGk6ngUD+ppTIFoJnYde2gnm1pY7uuedXkinWo+CuYn1j3ktBPchpPaAhZaPEZgxE8txb
LQI7K74rT1P2yHGtAj6yNmFPI96bEW0q0YX+NOErDlzKBGtvDlHwRlR6NHdZuny5uRFO4Yi5TBpy
dMG/UfBwE3k+9k9a4JQa4FoQPKx39/Qp2L/00sZDDV/wHJR7HcH+cGAJXPNkTYhjBGgJhy5Y/ne3
UMUgECZ9I+PoTv+pgWU1GBVGgBHBPpjJJHMYORDpawFanhqNjs9/TF/7ZmeW2HWBVjzdd+8Cvb8a
z95S0Mijkqh4nI+gCgHCrDE5ki+38SyGa/raSMM+prB5i7Z+LKZDbRs0nuGmn/m9YK9w2ZUj2NA6
L0g53ty4nloLmTx0Es8HMN0Rq48PRT5UAQ2bnYn0+S+GcDmyjlXcpGa82EQ0wb6qLHXWvvbpJsL1
SJ/V7HnwMV0dWf/E5zWzF7oSs81bIwozZ2nqOCRaZVp178JcBJU2D4SFVra8WnqCJsHhbsPV47Cq
X00fGoLpt4y1cUb3kJ1bs6WKs7BCiGdjOctXMyxjh63bQ+aroFWC+vj9jJPWE3eOIj+8bYnYAgny
Mz26KzUUNrLaeecfrEPhQlxtH4vKkcTsRrvNvS+ZTMh6jJ4WhNgVPOd2eNAAHnW0iCzbDekcGCdm
Wmx6oK+i+8yBUlga1XN8TYKsekuSSt6R+f5LgV//1G5Zc7rcL58ZYIzXxBWmfHFicB8TAEP9SgDp
FoXNQdTgKBLUoCizs/ZMk9tqvvC5r8StGu6JwfgJFwwuzb7En9oSZGSNMnSx5fnzx8hBzr7XVy3x
HaHp4mEOdPzxldgL77ZTxR3KyrzLCtv/3KCTKttFNKunWbOmj1i6Fdymm1GzVUth/vg9qiqzX0uQ
0Rh85aQCj0HJCTWxv0fKt4AX1hNvh5RpNVb+GNMB/Dj1TEz9AjQWhEGUpxU5VE5TAxa5Hpjpb/f7
l2EpAViM0xAS74Eb3iCMuNGJlQqqnYazRO/KaxF6j4IAR3zBid07lxR6wKJRqGrPhucUr6KR5WKe
tS8bGQPAyP39EuON2DQ+vOmijxFqRp0+Gah8DlXSD6luVv3/jON5/oQe1RbyFTuQaxf1B0hFwIe3
NNurv7bneaK2VShse8Jgx2U+f2DFNWvoG70xp1t7Is/VUfGR0Od84KsuoN7uI9lXCFqxSS0/IPmH
nSltZ3GVUlY5FvHLbB6YGCRj7s8MMfhLDetvkly9+MgfOiYXqZv1IQF4Wd61p5fScqwEWKGoi08a
uE93SK8bKbDKX+tclmDmgCd0MipboJkZKtZfPMKqI+vHOlXJ0ygNGqGdbkwR0gv5MKQNKhFpygqm
maUohmigzzcuudHwHRJ2J7uiDG0EpmZDFQw0a5XHgfMeWua6ebpwrqH40gI65d4ojtWlvKQxBw7j
c7JF12LDQlmfcavwZjwgjtg34H4USk7yhZCO7xIpU7zB0PpIRY5hh78G50JeY1nOkdixQduFSw6m
PBGqRDf9AduZTV0ynmw7WuYyjQ7VCjRdJ8RXrcPwlYaehj6n69QywdFK27fXm2mjFhWN1frahunT
bTi+wIwv0MVLhxXuEUArPXSOO/ECIAfJTpNcnW2HODdMuZzWZ+5cf6DR9JtamCTDoiLgf++ILYxJ
7AnCWaK6j6DMGFeN0vmBgvHfAWo4inWZ+2+3iu0DuyxXw4L23JQJd0lRn80wPpL8rjcbDewRmmX0
ITZM/4sfvu9Y0cRQKcYrsGymRBa5JCv8DiUAaEqFbsKCQfJwbrp0/JgaEcBl1SVXX7vHUXTp8aW5
QOnZqP4+S7A1bjXEPQActhOt3cSYuArtVBcrL9VY+eYs8pqny/Z5hl52zwt/o6FLKVGFki1QzXLZ
kM0XjtEBz2gLML0Q69AKMdGL/77zLdE5n//y52a9IUsc/7rSYMWk23oEvoQkYo5dq/fk7+Otoj1o
chOJ8dOo7tJ8/5bv1omzpoqWVlKDvSiIDObKZBCWOHOFRERfLXRIL7bg99yljbo+ZgIwM02a8A55
ovwP0Q6J1GdsOtuNlD8OToXsZC1/0HPXvZNvXTzFsk9bQAUu0h1ZI81qZJPFf9YixYuQ/oujdzix
NHeZBOVOFvMe8RSl7pgr32ShXMVOpIBa0ysMv84/cI8QPJVyknRcUmaXwOwM5amfLb/aGDhTcmZ+
jT/76RM6Ifv4YDLxv1AsirfADbpbgGbomYu6eRqjhA4/2r4gM+Em+RcEyBrD68OqJ9aLDEgSmHFY
pswxJ9GsVydbILSVcAvq4oGj1tt6wEux2BclPQS4Kch8AfvNvcj9fW+3YFE0ap1HwejCXY3QuzyQ
XqG1J2etVMTifcYZzcT8bfAiZ2t+y7DVJoaMkuk8Smgg+dXwqYKcyMBRMIFag9umZvlF281zeyMu
M9EvMT4gH55BVFEbQQp/WkqoGsvqvsNndrLS9GtWYZslZ8JcelvMxVuG3W/8fjSZ6j6qeCEJ47p0
Lp7/FJUQa0S56wfi9ZeYdE6UKBNUX/jNH1dA1d+oAiUv+Bp87GwysDafbXjjJpMsANqaUgAUfWMA
dP02C1JI5qq8WbeCgZkvu6uYwC49erkM0bCHuCs9cT2rUDhuYqqWQfam6NSKjWYWfi6F9637gcGp
3ZnI/hS4qh3zmzhy2iBlTNe/Vpjwb9NstGvafG7//LUmp/WzLwMdNKE/mGmwXeHpOEa8eGgZhH4C
lP7zv3r8bpQe3KW3CovZgzDjDfaM+hcZ8fUWewLPj/BtQfljLeL85jzjEjzZn0Rurod88AOiCGwj
YGRa0TFOmowY4Uzd9n0zIraCg7/fhTxhavfU7fdlM0fDcfkf7R2S8fp7mRpmtNwNEg8F5zL7LEFo
cq9xxVsboYGCPeJ41Sbi93uCNkj8hEUi7cDYqWEp0sNFhcAGqUR1qjS6awnyQdPloH+SDHlj6jPt
gJipm2VjfMFcTghE56QG7NWQx2LskJPIaM1q32GRd4zguJ5rTit8xB1u4XejOl+TfFZnZUsuzij4
AxeaE+LSC7Bz576tb4Qldwoja4tvX7nobi7BPjwA3FNL5FVP4cGjWROYNily9HOQcWQvg5QLFzSV
guSTziewAwoe3h7iRYlw1xD43llhT+p2fXUfNwg2hjojhVTjAQqjxYrJ1oPgdvAmqBfOJau38xdI
NkNeTIpwOL0l2RRQDIfsqJ65iruXxT26263piDtl+fWeGfXknUWOb1YxKPxq5sNko3GnO6Ge0ebA
YaLYR4iGN2xy7jf8kEyakAwwzsk9j7UPPg2kuncb8oai+lOAqkiUMJfd1XylwJ/HUDoc1sZoeOMI
5eAnPVf13pWc//N9KUCFJFomzi7KnX18QYUOgx0MMTnuoMFbD383VcRfYjRiW71UEJgHeStmRAk7
skVAdO2hxi2rsAjjIWwxOHjvoLgxMpWy8DRFcKxCtfGUkCJ1N9wbjzhS3nnLLcIjEI34epE5p9gN
6DJHqiPQK/tKW2KwPPuDnwUkh1Q8/QBPHTVMDy2H49sARzCc1X1hx0q/094DFnswnMULe5zivGzQ
+peW8O0UB1UPikKPwQwQEnbF8WjZhdPMcJL3DRctpQ4R/XFkNaeUE5qYnpC+OvK4ttWvFHsKGfkG
jKY897H+/xDMeThjFzyhM9T9TKz/bmEzT11kLGQz+ISosJBgho4C0rhBdXeccMP86nqgzo9NgCAg
2KLguP1v7+AuKtP6KcbgONQPcHJrQKRWtxGcgSSuBoc4hMuc9Cydnoiu3JAcMez+Zz4ZeiBvU3d/
UzDOtd7iIth+1m8bwkz6ENsB0n223Ev2k9QvSvw6hIVW7py3bypYjPhL2ojkH7kEc3t0xECcQU3J
8cvAZccMA0qulsFCHDUcsJNS3Y0ot+KAeicmA+Vkac1IL3ATSQmed10gqwU03pkeBx3YHfkRbTYj
qiiPSgWhYI/BhdZkNhPMp6jh2I6PqxNat2hWiL6hKHOPTsDNfbK9jjtnHalE+yWNxF6m2jypFS0m
W5NS8vEUYmCXA8Aw+J9cUdWiZ8rIBd6JeLIXgVOhYV80SCgdfVMcuQJY3LCh88DGh44pzeaBLfw4
6fF/kepk4IIRirnOZu/3A84/uiybCFg+Xs1fz4x5olbJFq7J64h3f81FoJqREiK62Hkf6S2i07Uj
oIUcgiH4YCSVUtOr51dhE/f9OBzYwhbLAuvRBJv0KhvEMNrAcEgTxNG1bew0P376zMFx5DXqtqTs
CNtv1LVjRNJE5yhl7z5Sj4A5B9OeXYfwhE/O3PqIdQ63MrerxQdEwTtdtqI5q4dsdNeMmibHKwWE
A7j8RE3DvWsdSNksqyhUfGAx8auoGdjgq+0A7WrCNVh3nxar0ARROIPaJwwAK7qjhZNvVk/NSExd
VEUMYKo9Ji30HI0oU+YGN++01WQ79pQ1s8K3YzVCqxsTMCljoAJgzLEv0uhHRvD1kBggIAZFbLaH
CyJ3xvrGSbfWG75A7sw4LApJidfFGBD4W7NgPLAX/8f/5PZZekmSR1F3yGb7/a69EH4msIcHqP3y
sa6x0NGDRSKtCMUjQcrl03GrQn3F1ul3hN0wBv6TboDLu8Jr5yOH9B11KlQNAESjigHvfFjtKvMe
ABHLYxdmRHCOVo0PILVBekwDH1Ya+SwkgGnbsRgLbkATva6laf7rJuFIIMPXKhXzZK7CEjLneHXx
COpY+YpF+M10NcQCd0cGQC6vTPZyDliyRUj1hiwknGebOzhIlb7zF6YU2CtM0pbIPk2jhtCoWDRR
1/ZVuzkxceOGt3aLfWkuFc/hmqMn9EO/xZgsNrnhIEJezAeiVN1Y1Cu2MjyOHvkLqGVXuMmUxBax
t86kjb0zaRvrD+GqZU0yg7sGzC9LJZRclEEk7/L+EOLVib4CEvmDKxwCfybFg5XkKS30MtJ7cdHB
n5Lqb4HzCaaoHGw70U1e6aTrdnGKzL4ZCsT+b0/bjSpSHkc2OlNLTB8zyC7SW8MQWKG6xkLWMzpa
yda5ZCC5jUykw+tDfiE8gmL23/CnhbAqcXOtgySMv9AC4O5OUR3GqBDuAuWFpNhZBtIsJlzI4W5S
ejqVfxa9JLz3bMgy80/e4wnCVLv/VIzApUp7DFaa49zbiihwC/dZKacCW6DhN5lhngTYe4ZsXyyA
zgQasWT3TBYs48kgQBuyowj9F2/HaPQoQhjzeY0vq5lAvXkDO0LJF7DYgX+t5Z+NGsM4S7Ss0wIE
kpgSZtlBf1XBb0VB8jjCEj2Epb9gdD80OKVsgU82DJ8ebSH5HNTkm6Y+VnFv1Y/NDv0e2qnEfb9d
KWcc9j0Rh3HDqqXgfDyw4MU7aGA4uzSx1yVuzu07X68JDLk6oCEaSNNepWmlsYNVSds/UrgKjiZv
yAdtfg72JtM95E1f4yQXtRHur0ROUkPgPD4bOoM98ym92AnRrRA283GPJ/jL8rz0elBEBpDjOpE6
VZE4XxqPGqGArn+Xbpx8BymgF7a8ErbugG36wAlO9tKrvASxzVt76WTCdwEeLeg33feK/F1L7rr4
9kkNqle9fzNcICCu/wOyJJpd/IA4N3AyKhP0TX6CiFsYAVbgfClDiFhfV/mCOrA3S8X/iOujOOe3
aLgU5a4sxDOAwjwUKuFabFJieLTFi0Y/dHzOKkgSbnwCR+n8HNJGV9ts5Qjbtzuj0nuIIPkshPBf
dmbKOqwZNxh7iotfe5m8kYUHlnVnYXC/Lmqu+rnY1RJaOOW+wxE54JentFfR0QDyY6P2MV4FeFGf
NV4vNktVu+hYSWsUkWfk4RCLh7aIxjsf7F94UUT+3ujR0xM8/hcDPIJ5rYRIn4gNo0ucihmxkKtF
lhHhL4ijPV4QsrlkX2Rvj9MTPDh34Sh8t72UIa7b/a91dxEKvEI1GibjB+HZkrtEmlil9CPu4ova
rzOo5pja9GdMizSHMnlISH0aNAwmK82NRuBuiZ9cxRA2HPWGLiozHHp2xcvOg2llaoCUOVxeDT3W
Nvksv2wgqllRBv+fsnIS4QUZcBtFQ88rttlnZ0jPBLdVvhUsmfag6YaOFKUo2ZRauXiC4ChFP+sc
pVA9OoHaZ5rDr3l8yMPaMUlJxtrnRSF8Sg++HAgkx4NBxiKmVQqnmfqpbpU9kUxVw5SzX4lZee7p
lJzJ8tEEkD3NfddenMNyN2tKJIJdkeGhLMJS9JJGQBCGVkxOJ4grr/OKuMUE6VLWnY4wHUdHY5NQ
RQk+IrAKZ6tJKYbS54Kfool7HOpsva3vqBAF7NQgxtNBq2TnWcGwY54lsBHyY0W/3VorhwrOxQIZ
zhfwaHYPksz3ud1PMpow4S0mAK6eQvinQVtmZS4NPVuAnY41Orv0dQ+VpzJx+E6wd7bPB5Y+6CGP
tGHeeoiSnhGLkXlHmk8kotZhB5A1I2s8vnpm4f5xSwMx/lAiJEqJvLrvX12Dx+edE7L/GJygIdDe
6uNG/V+WlVkymjjj66QHB0/FGlTnvoeqE7LGiOM+F/knKEvjLpk64YZoCPanIsFixD62P2f+MtLc
gN9ITSwmcMSn22KMOm+DCKoT5zJr0DrWzIdZfaeehWFectBG2aE4I5M+6lipNlErdfXcSgoslM3p
+3sX9L6DNn3Sd7dhannWUdKMOZKdsqlC6g9vfLPU+VZFR1LaN1rYLNLz1++r6iUn2o3HsvOPWzqN
uuLWRqABqB9dKCTxg+j4b/RJhlBSj1LGTpF8w0jO/KF8a2MfwF+slhMkv1CCilG9h/u+nxT6TdLr
/EK8hvvghHP7XLaxvZ4R2NOJjrzipW9QYYuY+V1d6eM3JeHuS2GH6UjhKyY2pA3YGAXE6y/TS/Ah
vZ7wYdrbQ5cvmKO6UsFetwCVxKJXbQZODJBvju13iqAtLDH5VAZKohfjKSebxmGkGsy/bL5JYoCL
PhG82uboRSUeWmfYPGsLI1H4/Jso49DMNEyoVtn7vy2MITFMSty0dm+2FqD8LCSnyqgyuXEBVbrQ
zeLswp0Syp57gFdg0OIodyqWaB9wJlq4M9le6C+GIhZQO9NPQCnaFveTWxKufoYAvl2mGSfGH7lN
Sl3Sma9YW03goIRK37t2wOEE4WPnYsUuXZPybEzbScS77A2k2yJTZLfBsGTjdPGdAHW/Edt6gvKY
Htz3+FEzmdGtLsPT4GuBHjEXV79Z1N037J5A+ndeclH6eThISVHVl8D7n0Tr8pV8LSmEfNaq7ppR
7p3jQ7guDa7dlXEidczweuK8R/Zuj/+kQRg13EMF6j058m+ZFILt8jVckSZVZyYnp/QDT7O58zO8
FwDd8wxu2oRHIgRYoI478LZUPyy9Lk9X6RocmQOazGXwxxp/aoyJOTD32j/jRmY/UxB7VjNbGop+
+lZxKJjJ6PO/Fp4a7yP8aOsDBR1/fEl8G3Bzvi1Tc6pYOCyl0s7bChce8UFNkm/XzEWwE69KLGah
iG6ACCpoK7DREaTor6ftoY6VYu0UFYQWnIz/Yagqs3oSSxKOq49l5s1AEyj1ZpYhoqkYjfTdZw2Z
1mMPomQHSNZFVbOjtmGFsnbohsRM162qWvfK8YkP+KK/B3gEOyHfKlRRai6jpDqyTRThDvR4R4PV
LX1mL0KsNQ0xdrCTcouPXKpk4jKJjCqbU0j6/EwLUipN0M6Xn3TTfrjrhVBdkSNYkgi1M8kkWygF
fYMDC9GTccb71/9Jz2cbJ9TZuD3rLT1gC4n/p7vEWROj7t+QxM4KcXyuqPbV5p+mLEGvNgn/llaC
gF23Zkh1Y94i620qhUQyeOCP9PY0cuc7veb33vNMN9lzMbCJXHDr61KqQttyGQyhVRouc2fsrRWT
YWVCh0wE8o8XVoL+q146leEUt97N76xPKMg0CxIkYODAkQL8dbkwh4YwXysnbCv6bhGeG6XYxqES
d0hizIwyXcP/IyAp9xMjcyduTwkDGRx3LmgGUNWLQZ48IOs9vbAPkQowowxGMj1gCEQ/gp1iSnS3
HGiuKoYATWufqiHfPNGu67zIulPbVCwrD2Y6UG7zHC5dxbxiOyJlfEscdkJXCPAm/DEomdJV9REy
j6YlfmqNdQhDiDoNPUNta6pOL21EQnqR/sszxYvaV5ygwmd63Hs9Xgxuf1H+LfnTwWHAV2EGqzog
IfvNh5PxR9Kvx3v2pcSwQjZZqm8nTHimHB3JX8Uk9oY5k1jyR/JQuk9nASfQuB7Yb29k8ADtNpcx
5dWqPzsU+4GyGcX43yOTQFdKOujshm6qWBH1a/QYgi+q2CoK2Mzz+fn6MbE5cHSF+AkPRQ3eS6v6
O9Y4Ev089SsiSKYl0mK6cyNkYgLHplfEfg3OxnWWTh4RqRhAbdJ8ciOtil2zUyAgX1I6K4h6WJx3
34IsJI5UE239w/ud4UeHaId2jWfPMmNUJpYNu7jY/YZtK0csIqbqtIkgOJQFKqWTlB4X8D2ceYww
7/2VP5jbuI6KnUVrGXH/slgOOuv+V9RJ6zEyB+sTQChvujIE/0zgAAYM2+wFaYxbu6H1tlPpivLg
LraAaOBTlN3FYN1xYKMil2sWtUq2Di6o81LysA/Fj5XBKuMBmk3agtVSxibj0N68jPUbv2+QuVq5
vSR4x9NdN5rqr1FgPWJouXdDqEtOpJ7UnfsQWI8uU3aKN/pSgKLUVlqPAbkMrzbZTLHTzkYHO7Al
VB5ADRRM+TaCwovkj/bUJhs6VMAOLuVRIinvphlV81dS0kFRXRg3EEMOqurWYMvKXbuwemYU52cu
Zo4yBWvjNBfqxjJ9ixny6JKppja4SUZgSt+LvO1Foaw3RoebGw/9s2Hl6+X+pzkV97/B25CB6UMk
GVwwdZwQpPAXuFrdUJY53J5SrgHlPjOReWsWKqRHffn/w7SNjZBBlf6yNfwXFzAgHkEBrbt8NuSI
TyR0gy/9c4zh5QbHRAt/4LdDh3QXUckjykEtQduVRwLml0mQ13F/vtBYQvvaGArHiacNEiLexQ7R
T/6TQc5XTHbPESAelu/hZaWGsytMEELOb0WBAseGQqVf8JgXQNmDIzDJob2Yp0VwaCeFouZOeDFi
goGN0SRjELtRGOPcNr/934hE4E2V01J5uoBHMpyny0NrvHUnl4AnyyAor+NieNhcUNrb710fjQzj
HlKwlvgIVk6vtHzs5xwP0gujG+GjvpBPlG3WJ6VyOy0XnFquFenoz3xUtnFgXQ7ooVPJfUMvDDA5
AMRpP36rD5HvRjn+g2n70abGAO7nMHwQcaR5Hc/R41/1gObM5r5k7ITbFWfazdJiVKRqV+VT2kCL
qCzv2mOQNJYbvBYlC/s1Hvz+g86yodQyHHnOgiZN85H7rSTeYVK0JWpa/BmX20Nx+83VaRYmLxBw
KUB2lSAfIPUudvphp0fTPDP3vtVymvwVj54RTzXfqL62uIzNsDIYCQD9YFZ2Lyd/gp8h7ebdzPfk
NrPjX0E2SuY5KwPlidW3UbYspHbMtYfBZjp8v3XUcVkaSqWMfHxEDD4aaaTr3n6JOAGRMYxxKeaD
bfekYzhKWUVajURIA0C1z8vv40z+C9N4Z8mIVsdREd643lZ85B3e38ih025w1ZIn9Sk+iXTn2116
Or89yi0O9YxUHnC6i+LO2z6qsZt0cxUVeuD3arvjX1+RIXvanShUZxO1ld8aagZwlwOtou3q/C+H
DgeNYzrOUVWDF7BXYAQAt65YrFAJ6x15+rIjaa0Z+HR6C78kmnh7N0HQUKZ/206LB2TqOoUXlWou
ATyr/960hQ1mmjCIYMh7k72Tgdo2KNDgKlBVbKH7KFFbrL4jgQ8X35O4aiAVmKFCq58KSeG2OFA9
u+1XxVRFxggy1RcdRdkZ2GQz0A7O0KmTdD1LcDhNscvwZt5NaluSa9grSYjMIyIITfW6Wpq60FDE
lRr8ewgy7DfHzwLumIt+RGrKhiRLFo3bo5DQ1AGbtCDq3EYmevbllNm2FtoTurTYmlKOUw9xAUUR
oZzyFlmfN5Oo6bk/e+BDocIdrdD2veyxEV/uAmN1ddSCs+j+SJLduZWoIFK5YCx/KeE50y5k0+7v
X0FrKCcOsw/WaBT1nBVCnHRM7LI+0DqCKA0URgL4nS9f7BKLr79raMUtecsWfFEBPXSqhYGj8C3Z
X3lTxz4o32agbV9Z4NOKKaavlcegyVXKOKwGENrHDIqNC/h+ddzgBnazj1mWoA6jtCw/Ra0Z0kSh
nKo0vGfCk3VTMi9Scg+hEDNJ11B/lbAUVtq6COc86BdKdhGFI+z9jtp0xRXT+kCoMQPd2+8UAfEK
vg2zoj8vRVSSbeSGDI8PmXa6ZsuEmYVKSNKf+w5LUhuXkOO4RYAbi8HQKQ/9kW0vPhnGMdPcD6Qh
gV2aKiX8EQQcIO82VuZ2JVNk5UN3RTZwJA8xqG3NNmfyRVUqaB1VaL2Mdr9W9Rp0tKGI9SYmmxRu
t+KXW6yTDisTYRttq5ScJfl0payMA2iUOWma7t1gg+7MlPBXsVSiENK14gkdPCoWNrQxLWTFtTg1
3WcgF6lL1uSvL2oS9Cyixcs+dbuKciOt02p7YYQjUf8xiSIdA6LA/d98GOuMev/LE0WVbgDimPQK
BQGgVmYobRlFKDFb0QfKiEkI37OOtaoHFq0UR++2s8nRw7rPxHdvDQJnKA0KXdMV52tC6chUja2R
bFa2EuYGuLT7d+4g01TQXhG40smDMa3hLuJtsYmuvobqz33EwbyKCesZ/yeF5WqInxpyX+dticCQ
K2SHSxKJVOQriuPMEBlT4Bzuhg8rZhA9hXj45PbyKH93JjmkKQnfrV52D9+YnHfLJg6fo0K5BSyk
NRZKxljM9HzagbTYmjJ8gus7wnvoG8fvSxdI98N1F5pKAwXYpr/ly8F/BKsT7qSFblwPVFAu5cHT
0Gjqc0CnmiDsyhmyBwQS6NIe4syfkYF1v15jPtmZ7TZMqrQ6jPgbcabCondUcZ9JI45CYG13xPag
m9zIvdFzIxcCmnYzFLZ7/KgnzT5hRFUsE2MjufQKctfmUEN7aPb1LbhcfRHjJjQMmujSr7ZpW2Q6
wc6wEEFSe3SJt1YTqDo0Vxm2af1k4H3OlRJ+65SzX+BQuvl7lKkaEjn1Xt+2fCZR/NcDp3A+txtx
XkKRBSwJir4NvwSOHoHy5lA39okvzjH7BhyWmU95K23dwqUnaRWkWfUElZd8RtWLbiHGe8QhT5+y
b3bof5MUlfK2bR6g9aN3rYzHnyj+W8A2a0VaCWNyURE6g4nFHBUIql2WPTKZHKqrgagbcivYX8Lc
JkNRztTsApD25VDTgREjCht/G/qZMLJTchhfqtR4+mVL8OxjQXu3GfpRcx/X6W3Pp+KlIm8w97iV
LDKuQ3BOW8eC+XK0IW3xu74cN0tGeSlsYd6Ib0G1JJMZ54Wkstua40wnwPXpXbyUuwY2AEWB8uAm
ilV2a8I2azvLm+fKSja/9uklBZR6g47BXeRrQR7GDmazp1HlK4Sh/eazsRu8wWWM5DgFMup3EyrB
o7Rl10OMIj2qLjG09NynZB/ni1f1R0rsHF1zKxfOjR36dSaPhLc2P5vNCyzhNyEN2RnU0eQGpUa9
0O2bGSqYA233lhFx4y7blM9zeknPPpFpY9PokY3nE2+IKl88teDvjqUvBpYMF60mDTzVJmcrFoTX
Hfd5EMcq93aY+nvIhrwnlNbSaEoCUqBZ/rglMA0L2TX7Sn5t4UzBIj7u6vRMowlAJLu5aAYyTirD
JluPU+dvZmzoI1la5In75KXzBUIddCFjbXH9MZvROogHOXXySqwHrksRvgU8vwWf14R9jcrnnONt
m0GFJIP26DsC7dR1bl2bPKyDTa1CXa+myjeOGLz8pA0qrcNQlcwYWdTy7YAIeOI6TdTMQEBA5S/F
DLM=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
