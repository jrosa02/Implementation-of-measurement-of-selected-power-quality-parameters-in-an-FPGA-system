// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Dec 19 13:19:18 2024
// Host        : DESKTOP-6L1QCGQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/AGH_Files/Eng_Proj/Matlab_float_model/fixed_model/hdl_prj/fil_prj/fpgaproj/Subsystem1_fil.gen/sources_1/ip/simcycle_fifo/simcycle_fifo_sim_netlist.v
// Design      : simcycle_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "simcycle_fifo,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module simcycle_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [15:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
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
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
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
  (* C_HAS_ALMOST_FULL = "0" *) 
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
  (* C_HAS_RD_DATA_COUNT = "0" *) 
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
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "13" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "12" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  simcycle_fifo_fifo_generator_v13_2_10 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
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
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module simcycle_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

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
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
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
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
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
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
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
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module simcycle_fifo_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

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
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
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
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
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
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
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
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module simcycle_fifo_xpm_cdc_single
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
module simcycle_fifo_xpm_cdc_single__2
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
module simcycle_fifo_xpm_cdc_sync_rst
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
module simcycle_fifo_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 99792)
`pragma protect data_block
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
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
