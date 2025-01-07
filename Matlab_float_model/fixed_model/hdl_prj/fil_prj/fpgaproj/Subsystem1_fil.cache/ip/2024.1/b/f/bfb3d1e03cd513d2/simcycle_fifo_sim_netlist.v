// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Dec 19 13:19:17 2024
// Host        : DESKTOP-6L1QCGQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ simcycle_fifo_sim_netlist.v
// Design      : simcycle_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "simcycle_fifo,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_10 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
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
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 100176)
`pragma protect data_block
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
N9rhbh3JhZAUizu6MlzuqeYJvQfZFSDcrrcp
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
