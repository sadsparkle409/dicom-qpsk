// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Apr  2 21:18:39 2026
// Host        : TPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGAProject/dicom_qpsk/dicom_qpsk.gen/sources_1/ip/async_fifo_8b/async_fifo_8b_sim_netlist.v
// Design      : async_fifo_8b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "async_fifo_8b,fifo_generator_v13_2_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module async_fifo_8b
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_mode = "slave write_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_mode = "slave read_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [7:0]din;
  wire [7:0]dout;
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
  wire [11:0]NLW_U0_rd_data_count_UNCONNECTED;
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
  (* C_FAMILY = "artix7" *) 
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
  async_fifo_8b_fifo_generator_v13_2_14 U0
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
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[11:0]),
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
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module async_fifo_8b_xpm_cdc_gray
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
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module async_fifo_8b_xpm_cdc_gray__1
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
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SINGLE" *) 
module async_fifo_8b_xpm_cdc_single
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
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SINGLE" *) 
module async_fifo_8b_xpm_cdc_single__1
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
(* keep_hierarchy = "soft" *) (* xpm_cdc = "SYNC_RST" *) 
module async_fifo_8b_xpm_cdc_sync_rst
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
(* keep_hierarchy = "soft" *) (* xpm_cdc = "SYNC_RST" *) 
module async_fifo_8b_xpm_cdc_sync_rst__1
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 130544)
`pragma protect data_block
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
48xcJRBR1gh3WCy0uEE=
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
