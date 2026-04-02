// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Apr  2 21:18:39 2026
// Host        : TPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ async_fifo_8b_sim_netlist.v
// Design      : async_fifo_8b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "async_fifo_8b,fifo_generator_v13_2_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_14 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "SINGLE" *) 
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
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__1
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
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) 
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
(* keep_hierarchy = "soft" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__1
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 131120)
`pragma protect data_block
zl0i4q0LTqzyLbf7LEwcM3xhd3VU3iGkRw5PDBtqRPpFochG76mOIiBIWGhA9jO1XgX95rl01ap/
zkoP+KwUskSh15+B3DwLQDcHJcMqpg2r3rpe79N5WBHa5LqBnHcsOyf+FW8bxFQcM+5tcFVbljda
TA0m2jd+BmIBpL2lgjviK3VuDroE/K9cxNaUXASM10BoM6ITamjqaJdifxEm1eb915aDF1p2u9G6
+UnBJaPTYyl+QsLLh2RkXvNYNBjNJHy3q50fhl1l/XwSXFiwgBHi7bDqKuh6iqhszg1bp1B6TBSF
FzndMRA47FphP9aa4MVnH1W414c7IHQPy5QLYA/ZqqtM7LNxQg/AJtn/2z6QPw3GSB2ojHjmQZSM
k2QK/9hXsAOVstRQJQFGSJeY9oiI+9OsE1oe/I4jriqRtfyj1foRes6go9IcO4dYkahNzWuhHus+
nYqZ4gv1R/jfsEWDzRBn61pO7zZyzsWOt/BM0GatMbQq/B/d5CsWArKbI9Wx10u+6wyJ9q3apO0O
TSyEshuprDVPFZtbWUOpCUxL8oQs0EAo6pnbmQGZWRFi2GL0EX5RB4DwLaPLLpESTQWHJwzJMQCY
U7zkZTn1kQMGi1Ym/HCCGxi3+D+8e/+hxcESLaM3ERbI3C++ExbG9HeU3wY2xOGJvaB3CZm3KW1a
BbkGZWnfsONc+BBr+FPLpIjyRZCzdWenOh+iApE5vTUG2V1WD+I1KQjqXERJ1IRQyd5ogORSEIjT
0LoCgQuHREpA93NXzhV1J8veRWwnfbaOpuHUvu1Q2Oc7/WJn3f1RabLsLgNWJ3rphc44+dVlaOtG
Ik5l5rwcoHjHW3HV7SwprIk+H3EkYNXPkDeUwHXwZA2qWj3arTVj6MG79tGwCURZ8pDmtMvRKUMP
1zH2+f+XWGlsqgLFsdEmfPZ+Q+JVZju0J5NiuqEP9EF2QxjJzlnmXRAyQwpeY2+JZvMnqZcm2jQi
Cx6gF0KkWAfOTvQuYrNQ+emFR7AIWBUsM7+vF+fOvki3DybKZ413eAlhz5byb0xBiYUJ+jAmHs92
oYUAzzv7txBGK0MyjSgGE6dEP18yb18+iiI8Swo0qF+Vt8TqTX/ZcmHKle6L2lnPSWN/Jli6G70T
I44JVxTsbRkM4I2PYUlyHqzheM76wWh8WKfiL0ko+yzDtt+VLO3DhsMVd1bfYB7MRO8+FFNyzYXS
zKeFHVhWuymSy6tXhvB9MTegEgvtWZuOj983O+llZUQ8cqHTwxVCMH/zE2xtOLNr1ALzOmjMlvcl
a9IouJvswtNY7g7Y+8TjtAVNGo2M8HzydnSpY0DX2/AP3U0qdV0FIYT9kG6sB4MQsJUfHbGGmIdi
jHVTbQrZVOe83zzg8v6qZkXPANlM6Guoq5bjPYjSNKlRhZyAi59ljWP+qFhAG4P5f2ZlHOxFeKaV
7tFWyuzx+gLICQkjcYS6EREnq4rbEhv3+Lkx3h4dSwJ8ympe7MntWF54eNrFy4jRJApqzOUD1V7T
GwV5xZ3zN/OIhKRViE95Q+fO6Iont+OhiVR7NA+F6TK/R9caMDvuFEJlvpYVGpiVZRZtdPoVc+ox
W4oEhO37eS6/oL3pQcAZwdqtEk5PA6W/yUPnlsFsrARg+HmysDqyqITouWFcSfd1Z3aRW6Zf6cBl
CKRJl3SV4pN6piG8f8oIncQ6++NxTb8CkrnNpzpNfjM6Vd4ZlZwY4eJcaga22pHZXYgLCckZZu64
LYzo7GGJOQ+UmUHzzS01bEwB3oC1iUiOlmvWetnWrgjkmQGYpQPBwnPqXj90Xju4OLy/L+qVZlE2
Jqzg7KUBL+BpgiBGY7Rv+35AnL2NSr+CmtPUeN5UfSfmb8TakZ82Q4wVJvHMbxbqWkLV7rJoIUm8
qkF4ryTo9nXYl0MryivbLCtpAL0sgwgqUByPQcUXA/MLM6fU70GRdR4OtUIj1ciBKyzgzf46UTR8
/pwalHlo9S0WKRgywEbeWThZ1+zCjHKY0vWIj5M09pJZ3iZyDQnBsCWz3ndYaW6U7pM70zXg4Dup
8vhkhkF8rpMQbWayAkI7RmW9Zz5mBhnXLVyGNy00VBCT97l31OiTlHfoKSmPLpT01m0QuRx3jqbG
76dsrNQVagykT2kscoNnrgxAKglB4cpogD4KvYsrCn8aFyLWLIiMC/kUrZxuI2eQlnRXING3/1Fh
tjsPm41bJUerHSKYTPi3HWSb4/3xUyHgmkP53Rp2LcsrPHt7uHSk6DdUggu669iFE9Jf9gwwkHXp
6MjboTofB2KgbsQrFaZVJwWp0YO54XdSZ+VyqZK29Upw+LjHx7OSEhrI20oyRDJf8znIsJJsD85C
CulbPQnP/JsTIZh/12BzEKN85sm2Nb5KiHxJpgeoRsTrV56w5m9CWulpobwC7FS6k+atZh/yFymN
tFVHKUg3eHfccFUr/lNlzJYb4GAKx5RMuNU7I0hfrviVuZb0JAk+i6OxF4j2AfDHzOoW7RghOGgK
nsyCCoovDO/t7RFemolOeIRLLTjOUrmUOiW9IBI73BcPMvEB6T3mpYbXE8c61PIEow7u830YnGG2
VubPArNWs+3w21DSqxim+VrTenLquhvN3nZENbDZGktl0FWDOktiUIAH82v1Ls7Py7bCqeYhD3X6
26OAOEDMYrZXoY8AbP8E2wHiDuCsXGmsSwfLPhf+O6JyNwmPvyzcoK5JsxDQiLC/TE8ey6pK7jbE
+eb7cVcxEtKiM14iDKszs7JCJLkxh/Xiyvmj6mxM8ACwhqJuR7nFbCYJzCmORNiOYutj1gxeIZ5B
+/ORB3aCHbUXTE78gLVekD0XQEBe3wHfFFkHhrgpFLR9kD+jUM5EYwqf7psne4SJWa7enWsz/nVa
/mNppH3RxDbNmkuPrOWMftjG0Rs9DfxA+853V2MMyMLMtnt7GErLNNj2xErRpxW1ObAfWnXo2eOG
UMKpUdHz218ky5iRAh2v/a3um7WZR3AUMyyYlDQfM4pnUZcIDerlwFco0KgS0rPrUvqdTKS6bakj
cVJsLMN5ZPHFkn3I6jcK4P1DZL/aC98WwI976GDwToXNAdy5KxxhVwnIOMXs1KkZUnSB+q4phcjr
qjNIWcSaoN7Oos6b7A1b0QOTjwJAbuqx07Ysku9S4qxx6FJ76myubyUBau78LNtJv7hETeQgo3e9
vtRwk5qLQyqViROGkc0SqJau2C2KJZDS+FR0TOvMCy6FIAhamndcy4TbPwLDytBI6KMx1/HpzJgR
7o8iA+vRRUwk8xucn00lurgQcY3EWF7e+SZrsGA7iLoyRnrhFkIx1frCUw8BBwYWiC5Htkeie59c
rxAw7XjCmLCXNNWX9vUzZ/57bswuJg9hWmnDmQUqtpwpS1K4OyqEmJNgJF0g/BZreez9RYSfjTkF
QbKgSoSWvk5Y4ilBNqM/6UM2zNqvbyFjMGVmOEbvO+2sQBkk8e/1zeFYgl/kC6KRICGnlYzs65SP
qwAAvLwGgFTb3bhqJx2b0deEzkhy+juweaeXpypEcoqU/zG74Qt5EGkTpiOj8x131O5CgjWxk/ji
JyKfpWtC2WLa5xI0FRUXSeOEpKP0pra8Dz2xP3/n/rLtNvh6nps7tLeheEA7gxzfV7omqjoBKjZ/
diFfUd9QlVgPRhywRP9xkOo1i1YPwOUhXaoMQFu+GiHEabfdgb3d7m+0VCy0+7GpOBPoyvKD4IwX
5gEglmcTzRzUaE/Rs31297otuxDn0LA1xdcAfLvD7IoW25G1aCNGJKnjBhnSKEh0FMTy0f0LrhVI
8DSnPFao2TTfFKkPk0TuhPcaIuYfq48Gyohk2KPLb/33D+/XvUXWxsJRv2i88UHVd80jcww78ESh
/jtaP8gTGzPIWPaZOvT09NLVK31NQq15D9C1GLXcaJdUx8XjIuF13pUiaz7SkzacLnrgJSz6zhXF
ETzXZNfgRo91fgaEa9OSloeckvVAXnSuyccF6QBO+u5bhgiC5j3kFycHo1gkrg84RP71Prtc/7DB
BsXlf0g0shaNNrQ5Lxg2zFlbcNkxD10FOSt4GSwOHMn2deID0GqmSaN/RACaDm+s+0ChBu8p5cGp
ILZXiEoyLn9M1lWDBaqquopRe5EJvG94A72fgoG7txrMIKkaR/qzC1KlJapGFVtS5OD2CEVkEBXr
UUEmAIc8jkDbWKtesyVyqLRN0Xcw59Gkzfqw+gP0pbNErWCosKfv5yngkYeB3nw/Sy+Uwr6AhsMx
WaiDEYZeWvQVtD2QJvgh8YEjArv7LqHiEdXiwm87NXHVUuvy3OELqdf78+KmBBkgJl6aY00Z6aRD
quQPBSOgXFDjXjTEuneM1frHtS50K1TOTRFPdwvi0f7hnAd6vzpn1krp+dweEPjF/nLuWmwCBSBD
jBBXRGViJ1FhiFx5HIuMC/nHDU9vR7CNWhM+S4gNqoM+/uaPhWhefHLwnNepVEyqth90PbPFv2CI
sS3YKFcQgyjKLMEnh/chjfqlNNzOumYOENFNzAHWKclCkhjK4gf/uxh4MYnggXGTxzGBnRkdReL2
OxN2Pds4ImK+ayUdstLZpDqJk1VAiXASBAGqua+udSH+z/o5KF91PKxasjGh4HbDkx2OHFyb6wXr
DCeLZC95TUEX/EemhzUAp2VoN2DSwy4+90RAj18y0kqnxOVRy7B3uuaZWSFjjDKzpE2snFBwNP8B
FaIK5cYbMqE29syolZJxXea/PAXJ1EUoxB4utW3FUjMrr+P3ybDbWXUUeiYIwq4AYu3COAKrOnCz
53LJFUT2rAKdPVAjIILjtApNf/zpjZuB3Kp8J+m4mIpoaNX9GME97C/Naz0y9Fc7Jh7SGg2bLDWz
eYQhVMipmKgJ57qcUBw8TOYkeKJmpGmgX2gmSPUyDlyz/FrtXeBCrOT9Al4Xxqk3Yb99bAbqoiZO
ZTbUQRfrR5Xb+T5ugTHG7+fjme6jSDOoaw4itTV3nJto6z2FLNLDRp27cg7+SayTTHJjy600SABR
hJuAeRw8EDPjpzA4nBmHRUMajTczS8OHypGypT0Vg2fEOZRMqig57lK4iNt48hd8xZt3pMCQYYg3
xih1Z2JUD6q/ZZYbZTyLmwBa38SfYFuT2Bmz7qtrs+A3RDKzp/LpdUwC58JV7U8jji7gOCVpOIUH
kzTesWsZilETFqdtCRpi7X646myjzI4hK78uAHuAqOrXnv3LDouyQyWpmkaZ0MgM8IxsrZcu1vNd
xQuXDb+/YipsIMYmiQP4xe4tch4u+wh25mRRJ5hnAUFA1KB/PmWpuow50CoqjqNi6TxNeR/KIZEp
DK5PNHO6VOVyML+zkEU9E4596nSbsYnsXawtm673QSD1Gw3aCrMUzpIkQOsLbJSe6iUR290bjI0K
JcpgWadiKlr9pDEIFwDyQHbh6ubT3R6+LAhPX6VkEKTk1YK3JoPrzF59Ik2nFxPF9RWyAflhkFxQ
TqOpLKyIb4ViPrFQZ9jorbVHHpGKlX0zMH2QI9DUbNBL2k+PpgYDekCQ/RUzzqujyzdKxFBCmEXX
xEzMBbyBgGwIbsQGerMMtPUxpXfVrrvxgK+ZnXv1A1woG6a4USC1fUdcz8VGEKxjXfJVDoXNZVaG
1KgyTL6Lgj2bPQE08JkwmJk6un8JvyZUZVy374ZPJv6AKbo8ueGKGS5P57oSS//WVpohBLM/tDXM
ddwUFcXKfv8L3MvrVp5KyoF/91oegJ7XTRNr4nrwdZr4bhKmzg7ko6MS6j8XySYLDxBeZ0kSV/Ql
QW1QxCySt45cOhxXDj7SsOuoaK5tnZQp2V5Poaae5YguI29eEzw3xXE7bh/LG8UdISGfHlgz4pWt
HNsDSv87M5Cm25ibpArI0UeE5rgq+0ubtwu5BMm3uXm6lSvi6MfB9nofdbF8zvY4PWfV4w1tRBOj
5L1DHOTzW6coRHGRe+swacIQMRAg72YmHX8Zwc95v59MJ173GJYW3BgDzso3s5QjPrZb3cRnk1Qx
HQwMHEsj6QKwGigs8BQrPIP8Z9vpqiLuwZBUUCPAuZmGN8IB1hy4kh3lqbwAZD/6+44u3kUCX968
IW4Pv1pSGhIw+5qEOAXvvD9/Mxd1YWjZgvYAOf92emK1taECaaJM+0V2L2nscClekVAhz5P1niZc
9XYSXkHKrUAkVTQSnaY8gah5mG30tBncE8tGZxiS6hU9Jdrg7+rvchTYiRONNf+/r0/ojWxzra8U
gOZAARuzQAApMskoP5k1YwnVzbUiYMHrgsfFgktRjhzUNwFNPohrEw5gVb2Ud+LXhhPT1fkVSPgo
KkRDCercwcaoZf6JBzCszawN65p94duS1+PTButK7Qxt5OEUXZdwksnkfQah3PKrqq3T5RIW0Sd9
77isGHrj4p+mCVQBpja1C3Rx9HuEFipiU0/9X22pfqL4JVOEiuKPtSfydmzI7ya8r0mHpLVmn2Y1
fP4cbC/VtboQjCQeONtyYTARNbhGISaBz4objTdhF7pprD2TMEcpaKHssb4hCMk2O25jn62SWlTD
aC++voCb3wVNJbja4PLR4yyWeVl62rwiHEekWsB833qD0zRtkzQ+mPMC0Er2xU9jD6hy//dUo2ll
g+2lS7XJ1EZLYgTmxW6nxiGwOWB1l4lQiWEMSCiPhx6IOeLt6jsFTvfZT7grpTi8t2PpEMWaImgB
GUbmSlNloe6v+cyChd1EWhbknW7K0XPvOCqjRJjxZZrz19x+X5HhodZRrfmqEi4n52uarodbNR+U
08SlInG4RFcfyMZETegey5+Sw/FXmNOm7E4JoE80xCSTq5yqZR1yGhZOcFc44s8JGpWeOhZ/932P
0m7VVsuYsU5z874p3O2wZ6JX7cphP1EOvDqQj3NuMR2SvIZcWhnGym96lkICJwM5PwlcBZyIvnAv
xx8m7I8ZpX9r+8YZDwjNohnS3HaGAlKaH+d91O4KjgnZC0CoIbEjO6A63qvUReGAfk4fHcLRCx1E
tKKDec4SCDUdwDxiYTd66ZJRfpG2QU547isrPjhA/FJKRrm3E0rG0AhU/UZzoCloOds8htj0wsZ2
7g2HACbN8etGnuzVXnhFtQmjXwEvD29q2UnhVTPhrJZA5TJnVmp1aBznbrr70FvXi6VE9MdyOfJS
vJG3VdUF9BDmYpgPz1tRD3U5XGkuorWdki+z6Lz2exgtGM6Uf+GNVWNOtVf+FmPymSLqA8xRFDLz
Crd5NHRBh6kFi9ab9EZLwKFuGAAQbm258MRgr7e/Wq1ABXVP++CPIZv/CMr5z6Ra7je/hWWe3R9w
Eq3B0rkVmF/YMLVmmzvLUNeVDXIntv1sEIHEHvdOeGg0uzOqd1tEdxTdFBoHJCIQV2vm5ZcpxZCf
+XjJV8GB3zsWg3sdHUJHIPtaefhN2Pya4Oys5PHvFiv+O7s0irv4Qc52V0pAZHNC1WzGp6O+HPIB
NbkfI5MBzxkbP9eE9CWcuPjPXxBxNuhLQDGcg8PyHMfjG+lrC6wFtMfAmkUteL/LHia8ec5/duIM
u1qbzfIWe1ATxGFeO9FhcnTDg83S9NK+Xsig9rrpwJbQD6oLGBE5smHqFDq3qH4F11kfdyKR67Bf
nVxHrKXMT1zsEuYlCAt3VLj6H7kF2zMXDvBocWJhy73TfyTEDLvy1GW924qjB+v/hVXsqjr7f4Vj
U6dI8x2MBgh0PbQjESE5wap0DckefIlngN4ihOXoeB+5RagPdbNRqMVPCidHzZucejgrDBsQanmJ
7TEoxHI29R5DCch1JbpAHOcNnnk25b74xJldeREU7pBF95La+sg/xtQKvnGrzbIoJgxtLuLdoA8w
1kfTAxqUaLA/AJesTjhUvm4yK4RFI3zbiquS4kteqJWLJ+5RUw6DhehKCKi11hgKuJsnZIrpNUBh
WBh5UlOfnGOF5VL84AxyawVMzl/h9I499IVTGtpgkhl4xsaC2N8n/a0U/dBXmmmD1X76FQQJytOc
3MemIzx8KFxt3ZEgPGIhzeUqxtFz7YXjI8cksCQVhPDbdBY8fjWVoaKgzPylZoUZQpz6E4Fchluq
E/pCRHcWuxE+RsXkzsguCUC/5Yj/eAyfG+Q6hEac4IDxiySDY47usRcL2pEsxnDzmYQN1IJeL1N8
Qf9BTSJ9qRtbA7reQbyNnXkdHg6KdmPW+9WQIu8swwdNsklhU2SjFRlL0y5I1vTIgcD7x19/N7ou
o3GM+pWeQzWQt25uLkyZTniviHfiyxn4g4bX5SijCfXtJmVlng4RK3kvVGjvKea6SC2XYfdwOXuD
tcHdH4LEUluvD0VnpP09/VoJyj5b3MVAadDcfbZolNRq/6WvJNjEt3F7PvQ00Ci1PttNYEcO0m2J
JHr1hwPi1uW70JAmTwOtBBUg/o0t+brHA8u6W/YP/kgru0jKjVCvqNzc2B+/ETcreSd7p34CUw7r
0ya8Y2Ua2wIrTnHVdpW9oqQB2F1WILQeSwx0y27sh6xt6WlQWFAFPNZ9j0gqEjtuqgC2eP8q0O6B
32GfEshdK0HUOBE9/SOyr+Z3eq0WBpyCIA8XQbUoByxrxq12Su8gUhKl9eUU/3SVcAmZZGOEaHCT
+QPFAtvC+YpIoaYrore8GutuW8GWwQP4oW7FDSnVwy2ZUCJ0i4frMkK0ur6roTI86JZiV5lZD/TY
aFMvoLbtEl9AexWX5LDyYvchFgNB6zEZxzuG9GoYut8j1t41ihFnZZ7criZAx5gxfLqq4jv7SSWb
QTpcUbAKT3ScvURVQHI++px8srC3hAmOnJ0oZJon+qDgliy0/sn3z9JxhV1ZQ68BhURLr9ZIWrMC
aGHV7rDPcy09oMVWm8TKRB8fRCYXZAA3BGPAz49mTl+ZzVhV7wXXEPywWkEgTwqJGbTi95sdR1I8
PSS1Y1Iu4PAt5qm8pEU5sF7YwYLO1D8mtjFoRVS5eZHVbqK7azWoniVwtNO3wW428f5jgGN2tj29
/z5vtu/tQahB0YgU2TIw+9JtwUyvosmZqmwUmMk2hQc+aCVdSe3s1aT3nwsX0tbC4mioPzcEzD/G
rdUJg39qiyHnvoOYNzHIMFw9HOo7uhqWImN5NKX0BckX5nZ8UPXuflwNBJWeBzB8rMYm7wxpLxGc
7nmB8ckxcc3PIVbkeHbqfuUA9Aw0BM8DQkMb4vtHmzJ0h8HXhlFULgK3n+iHFkNgHqUZ+YMVfT/j
DNDbt91esXssBoKFMGvYrkc2fEiBzeX5689n0pOCWayKylKBNHGzS5qRNpm3z7KPqg+cbenNhLoc
mxsfJzWld0iTX9rttk12ilcDSZPgFQH8q7ke2HQdavzsB9Yscy+pBt0hgjIU5/Pn7cXoaw4qjVa+
uAQejx0isjLvhOY4qcPL2UniXOtzEdDvF66PmoCJOBhPIs49ujHDErWkSSC5V7B20Sq64JYR9ukt
hqX4UaIh4oFuJHYvULS2nIdfDWft64phQveYf+x9RQEfUUi830Iz2aJz7xNcbcIrOJa2SpsF66o6
CyT8Dj3IvRL+lvIl2P308hJRqTa1QX4OvoWNYAVOdAXnH9VfAZKcg1g2cJk1iQGNGvFs4irSCx+u
6yXnbzCv5oYaOnThKGIjgI2I/30iKcrz0vNu2agHzPF8IHGRJpwoFyBXlzZizg/K6IzUDpPZv5OF
KL3Q88HLtXSbi4LZs6fCnnmJXqU2FmKmATjhVZm+cZ3zV4PSlhOQztaJKTT9I6EI0+vHxps+CLP0
U8Xj4Y4I6UNhDaCLc+FKwHPYT0XWyb9qJb5GYd9UBbfKJV20QWl6HqV6j1myw5vXUcRJlOADdtzA
H15DUFkwrlpUwPQPCLhkecYVpo9npUIlrWBrIXdCTUBCC7Ju2ruOVlI23rs85afy1klKueHFYd+Q
bJA4EhpLCLRHLNMsxqt8Kc+TobfdwnrXiLK6arDcqd/OeL8DXlzd6i96RnHJbFt6BUAQl7b23oB+
On7XzhFapd/53ulx+K2rAYKvvhYrM+G7FY9EJ3XTYx5f2l7o7IZYM7iolxb3JGR8MMFGiJ7ldHn3
WxFA7C+nEZSYgL2x7XDLn5f0vKy+NeGf+MiwbgUQYrgd1tf1dvyL9uqJM7mPrPQn9m2cUX+jV/yM
0KjzFWzAHYGOoUiS1F2W9d5mzc7JhrcYfVDm4OuoaNRtXBicxG3jrKu63kO3SdACepJ9Tiepr4lr
UIx7AqRAnjGcu6fKi7TireCcJLA/mryJz8VHiK/LaTSFV3w3ZeWpyInLT49T073M7yX+jQObYVEl
dpTiM2u8uQikZp5Q5PwuEgLXG5x6vpMVh419AZGTsexJYLqkCc2bb8gdlWk1ys9ry2vjI4wW/wl2
tgGtNWw2yCJ/y4EMlLvWUOA2Fbze6ULu4Hd+SWHGKEccAIJQohUFAaU8oqJN6M0nGGmI2yMxdhmC
jJNV2FwRIJW0h/lJvSaeYR58EL0wYXLz4ks7d+Kaw7yznTNXqEiO7HszfET3jq1eN5ES2qtCK2Bx
fbAFtIuakPqsXWmT6MydyMoYNEABEXgqM8xWrCvkDN9+9J1obFlOBOGrc/0J7cZ5CizbspEVHHsQ
/4uYSLNCffDbThKbIt+bTC22eabSS0k/2x0vQZUusr9tdz8CLA5AAIXF9HnEJNC2La+/jpmY7kzV
mFaXfcUAbhm/UHrSY3V3f1U/i3airzYB9ZAePBKItkraaEgfCa1411cnO2DVM/pC5FtG9vvHy95G
WW7TSkQ5YrxcEZD5D+dWrdzn0TeCjyRYeepnnseCjHtvq/BU7eJ2sCZ2AgbBqgtQItKF9woq5EGw
rjnOH1PMI3ozHCsxd7eeQh4MlsUPBOnajjKq0yuSxwnOa5K2CQ4F/7brGutLjY4d+kgxuklw5hVI
VGL3ECTdmVLDrklHOOrK3Bcul+AjPNFnhwTmmObxpIuUyv4wozMe6xK7vvcGyeeA6tJJ5Ta+fXyF
kt+C09X2ew7/zYnodLJ0/8U6lz5V0y5X9LgFLRpqm5rAMqIOq7GcdPIw5W/qe2cqJriWfyiPCuRG
C1qI16/txIAQBwrKsWmyR8v2L20mQN9HFx/54Knftik0//TY5ZNo9jOeQJIkDmhri95fec4F3U2G
DHD75OowaIlzJViHddlKxAtv3wplw46K7FDLR/oB8W63B5DiazzhwK03Xt9h2vcZTEZsJY9lex9v
6v5j3nc+uxb+P9NKag3XSIR1m1n+LAuSaFFE7F+brsGE7bSwKrXGP+Dwsl1JL30SU9Ttc/M2Q4kk
YGvQpt+bQwjI9MyouDggLA4Ev3gMg5Qxhj74FptaVImAjiN74K55/OQnermgv+w3Tn4HADf3xEIZ
6orBjUxkIGblPxFzjQ1mpDi9Nffc0fXeruIn89nNZc4XOvMXs/FSDOYRTgsTdeo1v09ZbJE8hg0/
AQbcy2LXhgEJ6lIBI2Io9RfAZzO574VjPBddpPdIkhWcY1k5M/F3fP4YvCOTb5HdeBvRoMvrBfZV
q5jk6jU+u7X2kSNtEtri7kTlK0H04NduyJw37VtMACcidMHKiof/PArcWXvm6+UaY/EEMowpZwzS
zf7uEID0zDWusHJ2nVc9xZfVrCBtaq6vGIxO6dyxCJhjkEBIh1u1d90ZTfAPPpmE7mfcJ3Jbqf1s
iOdFQUMcbyWeBvwbjSHmtTFYhfmLQLRWzsyTBx8pJ0qMjb6puNM+tza9w75Zbqs7cuoA8YCMevNO
NaTSWAD5dfwoCiRx/nGPGRRfSPduJ7+PuRyUlSxnOnEVaD+kYsVkJ+j8DVZY2XN3dS5PTjBnM8ku
+W/KGtW5XtzvuRoQLqn2U2U5KclhIecnv/2X/f01GgVvFmFOz5uDgJbpikTquYkX/wMspzSaGDk5
4gJq6814SCRuFUezDlTqU5aKceITVapS/q/Ij9HjAp3NQCtY++yt4VN/Kt9R+SREO69H/izpT2uC
BqfsXRXF6KbqFJPUKXYpz284LDV+krQfh2sdxKJyBWBV5/pBlOk/22zlEvot9kYfSFaCUzdc0Wqn
sAQajUxUOo7DTDpK3Kvp8Yp+ial+Sa3PSthiSt7o2CWOzyeHHrsOWiPkpVHhsnQgYMHQFcmGObsf
CBKwjTRxWm/Xhg38ckX1rRI3iLMDFOp58KoeF0GqZk/iW0coNHczRQLBg254LlaIfzENk0l1Tkhy
iAFOlSrBN0dbgTidGbKfcyZU9zbm+wAn/2f/XZLNTpw+SZXLaffAteDPIS/0y+eCYuWY3D/EIpjh
aVkig8KyhXeuslBlRC9jtrQPIuB+F/CYDEpv9YEaxuM6vEftJQRAyoxa2v0a+AeC5raPKlgVmieP
LkRa38+ygIaxS0dD783RJ/Tqpxuwl6ze0rJ6DQvbxwO4KlK6xNHXixxH+cKRbcj5zfMagPSi2uNu
P5wXEEv6WnMPQiVgnfowcZCcf8px/DwnNrTA1eOlwl083uZEaZVgB0zBsAu/n175DtLfwdADl3mT
bWurHRASY+bmWOZ+FgmXPC6kCJli5DZR3aqwDrTDvwxCxxHskc34bFaw+sxLqK0DKeQfgRavFRT9
kBMyW6tZHB3I4M0DgrbwQgzLQlhgXZTosUyIiaBkA+T1hCjk/7vuI20advVyera4N35l4tUmSNWd
QzR1y/q3D/f2yvAUunhFaMRAXZGH8Y3zSztHBZ3xxinmQY2QS5E5UIglUEmRuNJV9FbBKN449lyr
yL8OTU2Y1R2qE6RWeFShgAuHre3AjTkrg0qU5qifKCsMZcYlaVjV60dJcTuBqgkhedMZQPJEy5kb
EZJvObt4vMTP6n2GFxox7janA70HKyN2AIj6sFdwa3wB4xvduQGSUCpasM38yeGTm05tMF/g69ft
pYJ31EWX8cta7AEDltjSSOcr5BY8j/o9+CwTdD7e641v3rnjF29RImwPbQFwAZ1LWPMGB9r5XPDr
IxjU2rFSoO6Srv4bRpIhej83qlInI2Zcr1nJ6YWhgvWbQccwGDbqWVorrj7ZGiCcQqAcLqNZNrqa
XBuEpDDt3eXsRHFeeQBUa5ApHlOcgJo5XTIUvP1jDC3Ag341UVYpialplYvrgKgerghTk305yyYD
WJ7m/DMgpDU1XfE8oYZKhJ3IsJmUKIpqNSwTMQcHXr4/UxtiH34QV5wVO4bOnzg9s/K45SaZ5Vl2
Of2+JUCd9IZlOKN0UAiiNNUqEySnNC/bWnetCBIYa76gRHq6sNzPAkG3EmnTHpyszAMeQ2iO2GrD
SEDzZsVJ3ifqLoJBM9wpy7u2x0koJ5yUcAbodFtoAn8ZfkoQurUsx/pPhBvb34aCiXTX1eSkvEqj
Agsf14u3S3MSxh0+cW4h/yqruog+8S6n42O9h74utB3HM5kyNgsdF6if6uG+TgqAScnW1fZHc0bI
Opvpi+7rdCmg0RjrcppNVH1Nj2ZqWElIX2OMW/nN1LPgu4My7+2qL5fj0hmROmp7wdrTLFvq7Fm4
r0wISxoo/58M+oNSmzXs/uHRP7Uy0fZctyYAGwP25S0ZNdDpWCi0Pe5pmQ19uC5yBE5jfpWcWyBN
JH2WfuqXZyj6sIzjkrLu/6eUIGmHL6BHO0ro0x+iFCgWu2xIZlDQh6PsQvv+EdZIJVWuF0mQB8gW
q4Kf614ZocDa1UqKQkyabrxmg0tVT+b1qgwGTOAMj4UDuoSM4+NGOIO7HP2cjnezx2VHm0gvV7ub
D0BH/RPS9jT0GuQahgDgG8JiOr/pz64IDufqgvS2ECKp7/BvJH3wILQdBN3Uma+LGA0LEhri7rmk
CIxzugDZG5XfT/bH2biGnPY/XYTHi+MmZt/6wjNGhFbJ7kpgFz2BUEVD7RebQllHa0SJhttLyDMW
Nci6BNoH+AD6vrFtzyObtXWcMZRTcy6FjwL6Bx56LjWUEqL0M/1cCWVUWgC+H2dhlEX/5Smb56sf
WCjM0grRuKhMvFi+K9meKseMd00bMZ0cmUPUtloVEa/j3SN8xHWbMocbW62mVukIdb0vJGgVCyK7
MVWmLlY3Vtj9C3mWn/nsILcDYX2phs3rKKzozmRUav1cOFhmYBeUGaakh0q1bFGAUa/8BuuskI4m
9vsLj2MQSSHVZdVyiAdGLrjFJA+nWgvE3R1tTIAaxjnYF5P0Q+HVf1OkGHII+mS3Cpueo8kobY66
xa4gKknWYgCDdqVXrgc0oDHGZvQmVDrbeY/87IVw5dwHN17jF6sc2YCpBjVPJ2M2/DNTcRsRi/mv
dBHLk+7jomPhz/oUwm7R09iAQDGkjjhSEfUyrPTWquFvZyNpz8qMmv5aWA3D45IkDzwd1Y5lnE8N
asJwiljxwHaHTYj88fTTc5Y6YAplYzrisFQTCW81i5xqLe4aRarxdH5N22C7n94Ps10sL9k2Unpq
zpMMGGh/FtOix3eptyY+DZpnxqL1FuqW5NHn6FTvXl1vmCX5MXtxYW7rKVBGbyT3HvXUXrnH5ual
sfJ19lFTItZzfUuunf+aQOHMsmdbG7bwXIq8fLwIYPnVuAOlsdNdxqxPatTbWVk1fIoNlX7hifPE
9SLjM7EhBu/Jzpr9HAQ3rgKrlqLjXF1Hx5HZ0R6m8UxqlD9/itiTH19uQ1jjYFi9ITNrTLzQPDPI
OvNkIQPWYH715NfnZAKy3/iUySwGVhT8g08wX81pUm96FIP9ZXOFdvN6F2KSEYnF/Tb+3Js0K7Ra
PkbqgaP0L+5GTIEYpogfijNlVjSfnM7Y5orYao7xXsReb4o4eBdxOyKhpnTDjz8oxmIib8r7CN3J
0CbMM1UJr5dpxMyhk5mWz6iiODAWWahVmHN5NMuLPYHqCQDoniD5LOiLa6HFa3xVSvWF1CaWEFCQ
xfl+yfDLzauk7Xs1FwOPTaAAQDJk/bLNntD2Eyb6dxpjqZaQSUzsdzsxy36xZg2v7oIU1ifHT33a
6YTb6WHEIIjcmyVGkmAM9OcULp1xh7ScDsd3iq852XnGQFNL4LxNedKV/YPxAPd+LRB0qVluIvap
Gl9OhyL6PvtLcnd/CkjewWq6is9ruBSKwaZAzPgREYsahwX6zCrKsdiNLTpqVDdw1iNfF6rQRL5R
+TVn+YxS8Ohgm8KBsrMbmHwrOdWDUYs/tTFvLlF8CMIq/Seb66w4BzSCCmMuvBvhFDpTOCVvIEXS
IY5GiyIzmGkpn4bf4xc0FNJkrpf5XAMNur+NTksBk4bKBm8rhPAE0F88zu+GmDm7yxEWEwLCMDzJ
+1pOKa5DXGGuLUOC6HA2wmHrta0pUzfVmlvrPQ015QyVrX3mtf+hktTaPjOXXnFYzCaU6gid6AC6
5uYjnB8efSHWlmL7OHYUnjd67WA6e9uDlcJtpeYraEzBI4LHaPVjXQE9jKD4XpH+JcjvlsmvJOQJ
3oBmVolDprI/SzO0nsu/ssTbD0PnqFO7NEWeo2XarzUe1x12zgbdZ5z4VQJV898pq3abAjAcHbVP
CXJrJOt8QHA8sBh21Kd8LP6Jd5O9ayV0u38Yx7Q1eps6yVtCqm9F1m/jYAlCuesXZs0QNErJ14Yy
aD+VAue6t41Q//Vfwaj6Uy+SK40hlXhfWj3znpxzwPF4rvd1YZ2h7koEviK1DfHVrQsJpLAs47vF
Qio15Vp64hSOv6TVJlUOrz+oqOpTUHEYCfe7v1k8Etuph9rqi8B3nyudSUzVLOXbY+DJZVie8emV
N1NWuYyajEN0A3/cSzj9BC5I/1HOxcbuI7sXWeEHq3wXTXUP+olXdOY7HWH4vJEK9rMtICK+m5DB
UPix5/kHSbr6OXHPps18LFIQqMboU0mtBgYRTic6QUhZrjtFz6c8mbymKNdhZssfB5jhEGU5NJm+
R6acfFfbvO807ydgnZajIu327puBUTpI9Z1uqtb3+7soafrE0XfENgiHp2QKP7L1abAEpI4Y8GIK
mf6Kmx41ETZjZX7OqqSIw9J8vX9H+EihxBOkj8dRvhTagQy3Ke8F0NzoZPT6p7u/cuJaMXmsBova
nV0VEdcz/hypogF1pSZxwOAoD2G4wgrubnxeVNT9aC/SguoVqoQjVu/kZCsP21JRXNcsVp6+cgwq
KuQSyDGTrQJqUjB6+yYXlerENSy2Oyg/7hZrJLpPBlXo6C8F1z0uI23+bBngMzpMxp/0eER+jA9d
3rjimNCsglxCbSRqJVxn++kNcQNYR6PusS75ZVCH+Y9uLESlHHJ2JL3+9Nv2PeQOPblnGh4XyWsS
D5hXHqNrTY/nR+T9Zqoxl8REigswkun4Ot5y4MzB0ATvf40+DgBoIQgbYvGneUCmjcvrj15z0xtz
C0fdVGoH+z7gHrMb6JoA0dqvkJ3O6Fy9a6wWSWYZhQBSN7lyR5E5usATxjMb7jCnxagK2n4bGfRQ
/yHMnGTSZ1NX08/5xW/UMb/ce6AFLV/qlK5w9ns2KFlQ7J2yiKUx+7e7gM8x33WMS4B3udBAasd4
EUSuG4G+qKVwKqXyFIkUY6e8dxeWsQaqT7QyO83XyAH8AOBpFTjJlwuvLwH9kOOQeQBpszOkfXxZ
NpJicrGlA1WCf7aEvVbARPKi6sPHF1cVDtiHFSYRqf5f0lV8ZXvGxUOq8Horlm6E+mrcJhWT8lsM
Hm93NWceoRK6nRb6xd3bKaK5XMBvI0JQkN6Ns/Cxme6UoVLwMRKAApH40Toy4jCl8Jf7S2jG+xzV
LaeuActUT1zOFiXy15YGq9ltS1yGNGRoFqFxflRD4ewwoBBPVI0RUGozFEajTyAbzwSFzmrXv6YK
zQcgR+WvkdQz8z6b7go0HQV7MxSUT0SFHp0HyfQgcSgBNY5ShQ+dHzk1U3MXEQCfRGRKtVUgWPI6
j4ixZtsM8mbt0pDloJS9F87PMAt8jGb5EUUJrO460zgXcH9Zhr+4pxHZ0oTdGWiPTYBB5lxtfPQs
o2MdYloMzqWqTp76WoqY1SaLZ08IPM7ZDnN3rjJ4LckW3W8JbUC/b68nGQ4gErdEW7pJLikq0Sp1
v6W+1zzPyrdbooCLDGfZpoVT5YChlGQ+NB/GDMTXwHZQ9IJsWfKpmqEetTZh9A6sIUGJ6/4vVIUB
eOZIiJLAYSsEbDU4JFFdHKnCJuNdhKsDW+e9SKflrtsiUf3Kf7/fKiDRjFOFSXbIStvBnzxHOxul
K9ygiVpECo+3p83VQv0LG2OJZJzA9MwNQMaZ08mHc3P4frOr5/aF32MQApoUMhV6jyeMr2Y+LOgU
wbou5q7LcHrvS7a32GsjnBvwFESowxOpo5lrsL5tJ0/KcwHQFEOUBtHAGsv4MT2UMypH643Z9SON
K/nXJcQnnWeRI8/hXTYQ9REFWMP5c6rkrUSl9e07R1iG4OlBzzfWC98drNXCAlU4vR+h8qL1EPdX
hhP3vkRVuXvRqhSyQKYpNaNFg2uPpHR7R0oSxxYg6mqI5glRIfHQibOEuzhZzS0BoqG6QCULs8vg
Ga+LO4ZCxpp/OQJWJh+NlJnFa7S7n80xjEGzja1UTX6X07Ws+WYDyd47jR/VYubN0d0CZtUVsaIi
g8EurIorvHyrVhyNc2sIEKoVSh8VkjVSrLiEVBEbT5C0loAVPaCUNPYSw1moPZlGa1W0BsuSH9DQ
G2TOicnWDGZR8H8oq2VxWRbAc1Uim/SvM+FWe6ffeNAGpHAoWabJnMHyvTLTRXyf6k0YNcTWvV9U
ACuTrRoOrEYT1RaDC/JDS4PlagLZoGDUa9Xnwa+wqDh4VLkosevzODElKp5egNXqYWzAPDWrXiTr
c0RvPOohlK/FAqwy70U/yvgSMl6b16Prep6pUwRhF4t077QWY2uz/Qgd0iooSAiZUstFJAXlCeX1
wWwl7eIoS0zNEaf8muiMVf8Oan1cslkWhdOfgznAZ1Q6F90CEcO4z+1+JfDFOnib3+V/QBnOpzv1
QbQUCEZhycK2M6vOjsA4qtInETAyLcrwnQ6YmAnycVx3PRbWTEG6l7D63+tlHlrSx1Ot0Ix3uLiK
mPil+3R9OJMJP1lUARlM6PtqsMSRpoirVMpsKK6DtJlLrxYDcv5+lUelZYPGAKncldhx4RjuthKq
hVFHQ5PTHHHL8JMRN3/bH+6yjXkQ/aW7y+GMDpGOgkuBLRZn6BgKxUJ0wB/O6Wq7En587v3U0NEA
i6lRgc0m27fxOiIF9B106NehEYgOBSfmiDqN0hRcnbaQjZWbYkxN7+BAmLHb6OB53eE4m9NOL4jP
Z6nzZRbXus2PejyP+UdTgzJFQLjD2wPA1IthYv6O/Nn7uyYUnNw9eqmoe0PhPuD3pOrrMsXiqfdr
EripQu2dIPRRPM4uH2WeF+Tt43Jzt0uRA1YSJzyXnoG+GX/gyRD06tU7BacbNtFuH0jlCELoVf8S
fpWtIA9UsE7G4WKqHjQfbnZ3M7J/B1xGFFOhEY9HwZsw50WYTUmv5PUApbMxTLVL/e3AMjX2V6ef
P9iBiFN2EtEKITATPf6fHCuZ7TdNILdLOFw+DTqpbBXEfqpnjf+gcW6baGdIanN+FfSBGHydicdu
fgSB+a3Vxewiadu0a3/zx5eE4WpSqxur2kAN39/yNC1Oob2eHxMZt8YadRcbDdPZb+T80CaLSjpV
XLQ+mIh6ouMe042Y5Q5/n97FOJm62B2mkT1UGhGYSt2m+c92oADt67oxJivuOoZddHw2OZ1dEhT5
R47K06Pte7W0S+aN1iE0nlUaumyu6znb0AXJnRv6T9Axpy4jl/fgWbtoNPZchVT4tKajQHI/2tL3
MiXljJNzewZIoHtTF06qjArW23bQWGO/CcmDBII6gEkJU81ermLSpP50PulplDW0u+X9d9p0DkX9
qPGRKn4fss8FixT4kizRIQcs0F4ZnKofDfwOfQHzBIkDftOJeiPcMUxiRNsDEk06du9ImQDuVy/q
yCpBawf2Fl05UPvsp3MJae2uB5xlhimTDhFVynyaBMZQHtUCUoQzWEGP7VYcHuSdX5j2z5PSXIv4
KJZfkYJ7zBj7ov+6AkNymFZ93jCqxRgaAcS5VFqpMEIfKYOr5fibapgSdROkV8rkuzqZkuQRJsfa
ggAmjrg7GXPoPJltVBXXlOKqVV9/WZCtj/4tfVdB2RbgZ2kSDWAj32+aDiWm8AoFgFgw16jwUqRG
CVKTDBNEfsVQoCowiUd/UbZmgX6sEmQmG3dNjnVWB9hDZzxLNrLtVAO3k3n5nWbICNbNlyvz4nqm
DVd/mUNMeaZb5OAfJvJfw6gOoZTck/hfA8W36cQE9LqGYgrcTiyLg2H9k7fMi8nLDbvDknE2So77
v1lIjWF+PVFgxE+G0+W58XogYdeJ+xlDkcPg6kb+CBoDEBwq+RfWVUL0RScnstpB3UM8QHi9fV++
OwbowtFudnOHT87Na1DthvSVGt0KwwOUHD+Qb3ult5+xm4ncIZmoTma1ZPFE8oCwiGKqKmm58DZZ
ZTGasMVSxdsZ5ZLhGF2v7YfDxbWEMjieR6Yu/o3SFxjgURy7+tznrRGrUrePUf382AgtQc68N4B6
+RYidpENQ6DjMTt5cF8RJ6YbygP4xTsNSgKgNfR4U5QdD7/XLI9F2zjGn3A3lYZICHZZ4bWdOoJ0
RC1ohKbH/JjBztu3r83JJKzCw5e9JKg43NGgrqviphbLHxaPuOAj2FHYOdVLbqdozI7kocPSR/a3
61vGa9bXJYiX9bNSf4Y9B33lftU03wbjrNLMqEmHI1cAtvLSFZ2/hsne+eYVFyeVUEB9dQbhG2lV
JSa00oV89STTL7P2wpvNOS4xYaoh+ikgm+B2i4MrFNK/2CJfZfB2G55nYers+KRGgCShiCtWNQYr
sQFe6AImNCszp92oQ8lk90S4XlT+SCseekD2WuCJEsoGArSynqEIaEl8JHNLpp39rrLJfCTsKBCQ
1Kzs6+A3MY5iphG75MijiHez8nj6i3f6zLjfmfne+/Kp3yHqTLDATBtNnN7IGHKMt2ea+BjRdfMd
RCVQKmFhjtI82Hmv/hmfMDkyBkwvKeOsx5qBMHjpL8WkKu0M0T/3b8DUADl4QeMNbl6TcoHXfED0
QzZGd4A89N7/NJXvPRQMyOM8lrl9v0gTwI+jVJX1RoEjnz1OQMWYiI0Bf2yaclAPsno3uzlNTglb
AgVs401p8AZ/hlReIk656ttdtkVw6qiVhH7XREH8cDlg/JfBwHfdPYXJ+Qf6h9rPz7f+cN2UK3PS
NU1bkO94gg2QS4adpeAQRN3bxixPd5YvKQjma1LoNJFrCZ+CogkPkhPltOdpS2qgu7Rh99iDVjkL
8CM4K/OoJa83DrO2Z02OdqqFqHfnq3gfmhABdcakAxQ/LlkHsG2oz0TXIEF1NuzjvexmOTbyqf9x
kz/vlbGHITcW7n5eSIYbISffzAMwiSPjHfOJPTfTumNPIZqBzowR1GRm2+aSQhv145UgrXCYfPZh
orlvKRgUFYveIo3vrkRKuWo6nEmIPBB0M2oLxMlpsg5fVnVii8buVSfETJIOqD7MY5dAJXIGHtFc
ikDm9FdsO4JND6fE1ORXrcu76xfNHNbQ9VlFugLVgPq8NlRURuKr2QRWPp7+CLMaSXiXmhmJoEfN
0YY6UiB0Mot5Lsg+VEAcn/jJte3gpkBcFOlFmGQGGI1ceALazfNa5F1BunJt/mbFycDMIqbLQA4g
wTFubNN3eNnVuyxgSc8+ImU914aWebnsLaDfOakP3+R+6waqgp5rI948tdTdWlfa75KnQ0HYhoOm
tfF2wA5FBuPSVP/UZ15FTYfKp1SZrxNL169Rr7I+zueNGGJc/9LTOG7g9cvuVYdCx1OAjxy9oO3T
OxaAaQfFyxdR2dgRnMLcqSSqHXBZcXRF3vTKQxYaBqFvcfNtjLee8ta6n7JyYcSzqs/2idAQcXZF
frltWTbYObVsPpwjswReZlt9ytMZy4kjo56CREeN0fkFDnoU3/72T2BFd2Ul1WjvptRfZ1cvsHwG
HoEogcxorNGegKM9bxAkcZ64QD2ILZIZeUZbL6cjjyR04gkmHORmFNLX+QJHdfFLC2kKIvh+Zrjt
1ohKiecJyS5iPQBfhUqJ8GFGUEufD3Iqr+V2eaG2nKFBtcfWJUtWTyN7M0mCaCt6hxDHIZwXBPgn
xAUSmPiajlNAf/S85nhwQ6BO3DW6Gf4trySTzcxoj8Nc0VMPQBDYyaw1IZMlVrp7NRPf1LrCf9cD
g/9XeXyGL0C21QUVn4IHRAJMF4oeMCpqn7YdMEa7SJ9bu5nbYXUdjpRsD6mhrviLVvo2qgXBS0fl
rmow4RfmbEbzdAZMCZfKFrDprGHIg9upO9T04KyC9mb07ZB0Rjhg+RtndEBbH3j3K4qnwRfWO5u3
kTsghiWXoVDb9pp9aZoKjgB2rvifj+7ayFm4/GHGhOAumP5q1DpiaJsJ95FT1pXB9mZBuCEuohN6
mzRiflWpKg0ToMVUf07kN/NUlsQm/bkzaMPK+9TvlXhaIxc5kQiXN6CjNjo5jsm9IFVG4SKnB/np
rTvWQkvypbBgX4x5M6VWCDPu4W6j86Jx0nbpOZYq20oBqVZD/4UM4zZL2UayDmm3ZhtUFEvXwgQf
n5ATGKzGHjxVqOB5qhNQ3zl4zSySEn9CqHcnqO9nO0cy8fIEugsc/2d7HBSOVd6F7ikMLPJZ9pwT
a8efTXEuFYy4rxulF/fx0k8sj570hhGadRPeYZyb8SqS8tnJi/NgdCw9aeNZETWw4XDOy0RBKODy
uJXU24pUka7aV9i1Z2wFMnddU9UNsjVUe4uwoX8OCC+Qkzua3qV1RMjgcjMbHpUCnj16U/8RDXrP
5xKKZEiMNKimrbKu46tbQV0V0KY3KI0f+MQf0/CV14YiL7ikbpSnTLJKVEki4IhFBg/MlYQxstLu
hig0RUIEpCEGmbHnVQq75v0epeQohvDZuJTtInT5WhGeLT4vNcoANrBtj9Wk3XSnzYnPZBl1v/t1
j1wJIZZjwnTdkKtmNlWB+APBGTu+2GR3xsTkYyxU/g1avgLbJiOP14eyoNJqPjOYZZiptVLwX4zN
YdeYlRBfi5VCrEZf1OsyHnY89o181hAeNhQggvwnW19a0SOvd4UleJQjxIUzdAdBoK0QrMH+awEO
eOhgYOkLFZW+/FoJtFPBctz+lv/GM/mSOLKiknQRtpRtFdYxLwsrBcpX7lU7upFNumd1bn1i8kJ5
RS/sYx6xmJ/thWZ0Gf9MM8tSP5aeAbtHxpyI9NY103Xi8s5wGTi3x+8nJzGlCTlxpZx5ysZ1/6r8
KV3SdNkmpQ9S0NI7QTDb4h6xlkuc7op/n1qTwW7PS3+K+IZ1RwMWWRS+M5/L9c3f/4j3CRvSUITC
uR0WjSRcmGzEAMNXapOisWvbsRVLzmTMkXO1Vj30oCroekWfAL3t0KespEgpXksO9PTs1DUsWRf5
BnTdGdGdjbS8QZhxXQSwVJv7duNtb9Ou/cKeNHwEBmo4a2GWZxUIbyvfto2HfiL/ZDypV+9tjbl+
qtJ0x+WaBBIZ9ddokyC0j3AUbiilCPStgxHq2QzPDjuKRo6aHlb5B77avY3p4ByCt8mrNZ8+uckt
YQedbKowUme06OFPjJXmkuyMOiZHL7eMwbM6xib56hsRq9YUW5OS7RizwsghlGsL+0vXOti77pk+
2FKBKnYHD1BVaQ8obvkf3xK8e4D0hrKE8RydiG0sd5zdObWyf0NhYOh6T5tO9k8BAMOw2QjbsQj8
RxxvOV03C2kBYKk0thcPANntStFErhUZwdurm4KwyceLkLvCfNIGWugY+dYfL+Q7VGcy3GHl+fUw
F/T4efGf5wSir6Hrx3I3GBYmh856doIPZ/YHAQwYg+0LadrtXoQfPVT8znMhr+msA2uUJWrdyYUE
l9g4G+oMd1XQD2pjOAXq06BJ0f8LKil7kZnwWMl6eU7xER6IIXQPa8ic1IPrwK+Rrc9CfIlJADqr
46AgVQpBSnKsC3qflObZnTxGJjxLtAXOCRZNu9wRvz+Xu+C1LEsL3aOJTM4t274DcGc0giiOeFgJ
URBfTfW4pNR8rWNSea/qgaHEDbqdZwqf1+6l+R+T6m32yACL6+juoHeAVE4pKI44DeCWtbdXScVN
LN7uUSarrT2evVDPwj/iT6Av1LxiLDomi7Z00s7pMO11oy0VK1YFjsBdwGfzKyEqpiponK3Ts5HV
xGMeGN1w+0/Iuun11p2DF/Xi+mm0YUrnNU6M+qmRWoW/fJwnlaK34F5MkkGmiTISh/OC7/LMGoUV
9hLbB9JFN5aiu+eNMJ2Wl2E3DnAykToomQ1Sq/k2OEePyeYanAyn8fI8EzWKeswWKaocYoOCLl8Y
PYpmx5b4RR7qV/LiZhLioklFGUqPvXzi1hcgYYGdQRCYgdMlVOgktINRYqQFSIgBpOaGFLWpx1Kz
vW/VIme9ryRKM5JYnUr4LbpkZ8WyzibhgtQo5WcEwZOtkIr5nSEICHhGKBPmA2/pBZ71f2E/trVu
/GkN2TLaz9OnBc8koL/+vik+ngsGGwU057nzOXQ446a3jbrFFMHcwhLAvhIJQc0M8mJ6IMf7xm1U
x9kA6bcW+IqvdfLXfhNTQJHvr31z/LxfIw+j9Fr9ux/tvqT2shyCzEfv0Wrn3FfXZdVJnBfUjO5L
k1pt/vOPaLqqUiEbirYLb7qM70olEkQaTwuWTtCXAqRJC7IHNe8OUBfrsGYfS3bik7U3Ru/neaj9
ZOLW5a8l2gAEpnU1fKXRP1EoHAXi/tJJH/W2jhcau2qhJeXaK6eEgBQkDWxFjwPwaYHQlpzt1tX5
sPzLdOyX3JzsL8GLBCOFyB7ZliFqsavn9oZLgSWpMoF/VczEtivAiHQeYFqparr4M6s0RKxT2Sgz
y0zC9+jeDqrYUryHhYVEn3W7v3ih5U4xg8sC9twa9SX6Vq+9AH88GPyhFphdoePnartwdU/wY7j/
/oUIMYbcdrb7tgPzH7soFkBT0sVPAnWtBRzPG/CE/Pwf30SxRNTVuE8TLs059oSpvuQemksdXEvI
a6i3eDgdp5g1C0BPown/+tfdVY+b/J2RZnc8+eMw+ze4YBSDXssMxlNKo7kge6Nk8b0aFtGMlDrC
2QU547q1IlcDQsGt1IoaVSwrVlHpbqpK6N2IHLWVtHfS3c5L+bWB8O5qKj8RDSeF3zcTlihBseFV
YPwIXBgUMLeN27jq5zuKmA1pwyeI6tfWqms8R006d/gn3FnXW90eBkVBk/SAZT9kddRTVzsPYQx4
twNygzkgSAlucL2U49DH/Qy3EqUWWaa/CR8LeT7np9gV07L2OpNSFa2DpRxVWHYlk/QSU5JTGsjy
QsUJ2QAKIt/7iYR6R2NVmDnpdgVeX5SlWhuajJ8kQvD1eRQiH9s9HRFTE5YCsVJNo5781ywne4c4
kS7Cxd8XIIr85E0lP/SE2zyNDMKbxRhM5c9mpA6IkU/2FLkHYcq/69aUhYorj1mHlsua3JTkPPLd
j/K6kZ33F3lCNOI71cbYR9u9P9zQ2RYb8rqwO9OZn4TcfWEgUIGTj5putOtZW4338PrIuSliptSa
JicIRPBvuVHlmf586V6lYB7O4/u52YDz5NJSJfy26T33keBUwFvvXcVt2mnnjWUMqaXKZImHvlz1
r2eHLnCzPMusfN004uFHwGMbCAjoNa7z7doni37fXd8uhdsMBeIanh9Q4Gle6Mbqe/lkiGvX9hB5
6nMKhtbMmwbqX0BMWUgi9CG6yjbnlvo/5cXzdD570cZEJ+IHyg5EKAwdbNwEKaC/+4A2fRDpCKvN
7Xyp75opVy6UnX+c2uEnLQyICd+KlpXf47kCAMZPXWFZgTmvj1BVjV26itXgZUgA6F2OYETM3TrD
Qida75GHCjzDyqV5Fm9W97COGEWiUIV4qRa5GrC4VMC0T1ul6ZhtehHnFMoyIzDUs2ZjvLqIzxAb
tzQvDGMsBJrbAaWcm2wE5Ka7cXZRxLWS8vq2zbcCbYpfwFM0GUieR5abrlZDcKmEu1m0PH/ulCYA
njLqgxmHIO8qTjgpvQGHx4eCp9QI1zmc56ChaljQu5qOivkLtFYg89Enlh9hwI/ftV8eSOM7SphO
uuhBTfhc2so/El4xP55nYf7XbCCIcgeKCHVnKlYUfFZGwzJXvXRnhSQSuiUDG9mQEhZFDzdiW08Y
/616LWWIsCNVkw5yROLCPMJaHK6qq6BYpmfgftd/BIdIGnc/PdTQM+xf5m6oqb3UAh7GhhPW5Z/c
/48mwgMAMF3Zm+dl10ZgI5KfEh/AgUYKamGFBg/oJvf5IoJsCXHiCdI6OhZ76DBHIdsRuq/8kkDJ
lxBtVV/cIgzEf5U7rVVDREvfWQ41TS0kcvnxLTi+n5yzfC9hKevmpyh08RSx9QAoR5WcyGcVC6o2
W1sc9l3DV4Gn7rGpBsMGu3UkRqFiBuz2iYvt7iilthErb8yHF9zZ7a9X94cHKn18M5qn3+KE5O1j
Wwyv/5tAmrkt+ny1oq2dSOV274nJwQBoKwSqFrnjLwiQT9/VFvUgfoJQnK3ft+pmO4IKfd9HoOs2
DsmaCUdQccFvqYi9iDISaBD1kLSRNNB5AEvxyQnFb1mA4Eg59IzEKsSfvjoD35ZSwAyzCi1yqTI0
Ks0xYagYLk84ypXSanruVF0Av2G8NAcnsSLpbd+OslyDx4dmIYc4gqYS/AObGA0ZgoEg3vzqvuLV
FOzHNlHnH6Gr3MpqzJ0vibqK3Boqsslg4TMihq3JNgUKhUWxgyE+Az7oVccCMSh56Ga1fE3/9dsC
11LraoFy/5CJTytI3CyeWFGUB1WXzRMjYbSVoHmx3OxPQWfJLHKU++2e9pCDHbUXY3gr1QCpAyDL
acFz6N96BCiggLMseHssIcUlaEP2A4pdYy0awDQ6WD7g0wdu2xsWOys+4wuX9zXmP3yvD/HwbOBl
izvyFR/OHGORQ+vDThhGYYcNfZNpDXZYFCyvhmEJBVxk31MsZtjAQbyMaO/jGfoFeVseJx4P+CW4
/0WoRsxub+RWm0zhYdmzMScr+x1dgZQyHl0+LIopndKKxDLfG4gr4AZ0uddG0cQiryw7OHZsWYFW
a2H7nAC1iQjeKXNqF59bVwOrDwvzj5VR5k5E1KBTUGEaqQ+z1v1OVGgn/tgedUxdf3fVqE2Y+aXF
UXqtfPZabmjugcIfdlOSpSdUtNm/YqW2BmrfL/10XY8+qjsMk+bH7HCXL7GEa87wplumaZtwu3lB
byU6qd2ATPs7UV05DxtYkFwyqD2OpdsKVxHhvEUsOIl91tVHR/TAe2v8O3j941a82HFACpKsdAqN
urzYs64wisXXNirulYm6iS36USxxLbn7aP9HDRdrIaRRdvMPJmqFA4K/M6R7v40vhGnY1SFZZsn9
fEHuR3ZdaPs0qpJrHEiuz7MgtV7gLIOv+QcfwYnLjbnLBDvhWHW3uMoaRM1EbYluhhi82F2TGQZA
MYc4a3+BQa7yz3KmurR+lRSAg56tcYLCqM8Kotks+RQobl9p9juyJaTknK5Okt851YbYPIe56bRp
7DBjd1fFuW0KuW5fZ2TSn9oLmwPOO4t4pSkm5FRfwpJsZ7NMAU+zAAXBkTEjj3EM3ryTGt3zb9d6
j/pqYbu7sdjtd44vQnvGB+7J+Jyo3vficaW8UYhVEXDIbjPtEiO3qVl4xGyDh5XbllU8UfbcPHe+
jLfgU+0dwYXz04AZPi1Yliv7Ct9C0lGSUYSS5+BI4cTLCcWDd2BKrlLzPFmc39Wvo//Ad7/hfzZb
5hlsupvSS4mjzYMzqwlUiMN1aSSALA5GANVJAyNpNiPbcKDQEPtGnCk+uW+R75Hrk954Tl4wnFnW
T8golkzx4ZdAEkTI3QBylE1uYJ6Go4ZW7K1dIkbG5/2CQuVRt3JxAtSd1IgTV1rp531Pm2vy8qXz
3ZlaftwqLjcgI3pk/V9rn9yybE5TVseUwDzm9SZigzURKprqiKO07gh+NU1zYw3/zMpKHqKEEdSP
RJY/ZPxFadbyUBF5FvFQtMUeSZGzSfPwDQCdiULjq48nDW3lpfyPCqqGtCXsdqLdfgt+38XGyBsd
Z6mko9lBnrSlBvxhHTM4wAdpPZkLYylWVwt0JcjeETawu9R1FjxLlaSzJgfE3aptRWFBqdEPAV1a
Rp6dVAY2zyFNLMbFEqyUuCw9NyeghwdOFJrBJ6HI+PDFzZhmLdLEqNnhKhpMYw6LHwoX1tXI24pF
1kWU5pM4kZVaedRO0GZ5SZkY9wbJcpJtJ+6bRnWmHJHW8BpGeZSWb/W4bPFOI5vKXT53J6+WNnzX
zGRfXh5fsmnkJVmu2azMinzdkqkxKEjgUwmfN08hUHcnrQ9eP4ZCD9YTkz9dKNww6Uar5b5ksRKO
4kyZtrGXakQvuiU7tIuGlzXy5l3wciHbTsznE6vkPbGob0BU6EwTjdlxKn6icmx8lC/ARRvqvbmo
cTHvfyLE2pdvZfJ/yce+r7bDoD22ITFEC3cA7C8DOAIR3T8tOyW+l0rpkLPZiWu9YQrCocYEB3pD
zpDHNqZTUHkWXeSukplPnMN7XcZemVTnZFsUnLodfHXPI/qs8xjrrWgqzIs1QZ6U80diYCIxLZlK
Wx0PVwyDauvk8hqsEDnu6qbZ/Ns/zvkvPvyr841CJ2Hhvc5kDl/3gCi8bE/xhlmqUeWvZQafnyQ7
QQ2JXGsbSHrqFUj44wCVsgo+nf/mN1dcMNgSGtZxJ6600W/OSwBbcOhl/vmfY/bUjvb20ixhDlqk
wApVhMN/ha+LqGZEBmOjA7hcDjSEA80CwYKV6BHpYLUwrwMk22rK5NXNnMG6eadv/n1RVuuBtMiz
q5g+tvuRtcFtuZqws6z+1D4gzhak3MT1b/FSIvyS0bqv/AIBAK60P2RYdX0HXhEou/gFPRw0iinK
9VgrBl24pmGOwwqzE6mLLqifYftvFIzbcyYPKMON2/Ysyk5phwB1pRJidApNakv7t3IG9/78Fa8u
GHab9GuxLqUKQSJdfweZ+PRVdNC6MI0nleu9SImhn+ymhzVOWD1zqepyUCcMxPKdZjbjfHUonF9d
vP/lhu3oa2N42GCJcEZh8qPv44AFzGFbLuPiRdTEdyNa2RZB9NLpW2vIgpT3StGXAUnTlBGQxLsa
vMZcofACKbyHda1KRZAvudHhmOpj5B2o1bBX5RMtHMfBoSLT0Aic46CeB5VeQepqqRLn12rMNWOT
VMAD1eyUHpyFNhwvQF9X8ptPPJcnHrCzm09umGJVZm8YhwrhKY+oyBOsmxe8tzE6kPcizRcFSPMY
PxdAb7Xz4McK8FLQIk/MHokTPuqYs2Zx0mzQich+fmyuXUCYZnfV/vDmnCCX/VhL9E2AHeooJhcK
LjOi8Y0RQnA51qnhYSzZA8f1wVrNN3GkZhTgtq/oHM/Eq5IDjoC5WCjOLqVeKkE2kDdlr76F+pLD
X4KLhv/XLWXHe1ndn4dD+HbDG3sZRplF0wpUlQd4QF1ZddXr34ZPghefkemq0EVHipXMJhRwtaWw
ltsc+JCl5plv2nwiVlOco6+8xHXti35sQc/nfHgTmHPTi3glDyY8shk91MaByNjmwPke/aLXd5u0
M6+9Oi1zA74XsmkNHFFLrHeb2zoQoKhhS+nYcZkFj/J48DcJ9isaFvsilPFW/BbJi9j9ZXOUcpao
eIABPgct1LrCDSrLXqiPPkgyS/ziN//2xHy+rUa/xnnEZOtf/nGC82A8UC8Q8s3qKuFcDjmNHA9x
Cqpr0H0JCzReJfc7ZoCXWEkYlhlKeKz+GlGkHIWduRuNX9wiiwgbQ8wYq1UDEzRC4ueKnPk4dQc3
GnrwS2lYoU94N5b3n8AWi7ZLWFb0F+I0mZUaaAxHzSf622X6DH1IbrSKuh2XI3+FwlA/r0hNyo1X
ZcZVVtp8L4WtpN9tC8frMyC90Cbuqa2k6BwMic0jLhuImd0LJoU2qEnjRD6hyt/dZFAdvMvyUqEo
e90V8wSxiRYZZTFpCgzqYtcJd+4Bj/zYbRZ0Dqy10iCuv3Z58tqeNGzRDY7hdowNIzOB7WLOLaFn
PFdl4DNjbQHNDFA1gB2qLDbCdZlSHpVxv8Lb0FMoBp1rIOU/YL7oPhIgE/2p4z7I3o7Mi68ol9DL
uyei2bsQD+OsUuBIoxX/DvMOxAy7Q5aUPMp/1L8+zMlHgHQcI+0ikAMC+6NAyGlaWePrhJWqXWE+
iMdP2oW+nF/gyPdGsTUgKcDA8nM0E0n1oUyudaUtRviIjC0KxF13VzYY9ZuVqeh18jeFk9IvS/kH
/VnAhM6OsnTJU9ZbRRVejWtSeI9+hANUKYMn63GPZE9Vqf1rZriyp98nFdFYAsS4kpnh00Oe0EsR
y89jhi9WS9wEwYorLaNLKb0rmaaKZqJIdth0eB3dakQa58QPtJ5rpRY3jdpVLbfd0GiFHKRuZkN+
U2hH5DLn1FhY2+XXOxjR+beNQeE3S0zdjIcehceDqwaXAVAn9ixJn5XBd6+3GpdsS1PVLSaKIY0e
k5Xj56A09nm3ZvPOnFDDAsVmMfuUBrAeA3YZlZbKcN6N2kWE5rHH4GGFWS2dNn/cE7wnVbvJecq4
G0gOXn2vHJO7cg52H5iBzxW+hOp6pWGgVeH0N3C5kbPkOSRaR6+2+49ZYZCmtCCJT9ZeU54iJJdL
8k7Y8emSxRzdAnsdSDijgSiC9m+RarLHGlOmgfz3Iq/clEE62uBw74D6uyEvApbyqzZPK8Ay8amM
1xE+IcFn2ypXSqSvOM3G9uNSqt1PtWBc+t6He4ur0NKyrMBL5dTsfLxLHov1psHvxbGR47zxMRbo
ytucvmXmF2+kNkPVkb4mxq6L/4A2xn4V7UF2XatwltoNgzAxVnSODQ/LUzBzXOkzJUbrxbdrzqyl
5/tNTlx0Nltzny5TGNrRCNZqlrDCejaAUG29aDjH+CMjiVF6RhUUrQgyJoVw+4ueQOHBOL2+BCBv
EKRVFXXJ7DhX2PpQ5s5rQTSnBnqfwX5GQ5W/w1XImpQbf1a0w3iDEZMrq6be/f7SymPWuXWoKui5
3aGidym87x8X4G52956cBBpdJ61cI1jI0lb5LeUXcjGO6o/6vAyYaNw0fsDH+tr/RI/uXOrvTVG9
JevydF2ExjxkUj1EEFFw3hYf5NeyOy7fXakN9N8gvrLILIGTq0mtuqlD9dufPv2uJflN+e2422hx
qQSy2ui9XcFOfcbR78MQkBK4R6Qhz6EDDuzSVn8+1ARq1m84h6kOLVztmsMRuDhKDngjXoOGN4ks
u/lmQQq9AvH039E19cFV/MKZ0IpK8FWW/phoEs4REk+Y3eHDKvIM3DezsN9TQz3uMFK/HCLfxDLS
AIp9GIv6p686rzN8iMpSeInnXKqclGlYAXFmcH1oFL+YCv6wB+syiTDvcerK4vH8zFjE+tV651Yv
tRvXgBS25gOYi5F3o9nOMTrXv7ij6oH8yFnFKwXEwuwGLua4975QW1XWYmMxlNvj2DZGTWYadbqk
OXWLlNg/cLzdkGR1ODv0ohjFw2v0UOAdebNtXCH/OByA4f8swl0gdKXK/NcdOevYRaeeK/eIFRrU
ciOoYfGVxQHhuHCrDvppjwlc4JKJKph5pif+gzALK3jJWVjTWIpTC1WPgTD+3FJ4r8zJJD1JzDy8
Yvanyc6/r95Owy08ZACqeySgu/UU3P3n6IIPYRZsA5mCfjXvTogiwPZZ/tvBDeaCzGqfwsELH9XH
5uPGxHMraE1BQoyG3KiwBrTV6ng6wLKPLvkaLP61KmpliqDLSCARnCTFMEm5gOLsm+5syaw+zMlR
BWoV7o0GjjcTdEeHremv8OIYYDnrt7UtMhFcTvmxUALapxJuzuKGiFcFwTu/FIytkgDKEdADZaVz
vnfxh9yFhEsfcDPihA2WVK8EuC+XGtfraULLyvZ3t4EPw3PYnuxkDmRJQrWJ4sQuj16bBAAeurr9
HkyVI1bt/suCPc5Q3RDsoTDANSKJRChj1iEWOBJfR2NwUiGkEhrgKF56y2mlDX6FLOAnHl0vS8PL
MmJEAfvl9b7xo889d5VecnGRPMaui2fQRlFrCtHhv/89ehGaYTUMgGvzO2F7aFdAP3APaojuiBHa
HmGFKGavXn5rVrckfeKHR9eIrfZOjPGNmVEa5KKJSuOzYSeQIfFI8P5w77bcq7JiN8u2C9f2RMaO
mpB6J1lxy019yi3NVDB4894bFfjOLcU6nUDaPrtC3C44aKJMVznkT6A/EKqKQXQNmOG17RmXiGF+
HEJv9No5a1V1B3WVPPfss1elNE/OdeRVDBNOHJCvQsB/GocwRkZnniXeE8atmFR+GEKaqf3y82jX
ozpJmriGXCGjJCbK1+eP9R7eA46O0j1+MB9i4GdRdKHcQ6ncT6ZsQ0F7xsRZ8fFupUgu7i5BX9Cw
tHe+PBB7V/Vnfwi3ABAX+7gSV4MGA3V+ZFkQAZTfe5QE1uo4QQ6u0tdZUYyfWtuXkr2DYC6Rrhcl
sUj52Cm1rCitA81CCapX6JuUfhOeh4Sw1KLOdng9wgfCi9NTJt3rmHEbV4UIfybsijpwP3Iyba2S
9dQWw1Gah8j/I6UQxqxnEZa0XCDwywHi3plZBgCNP4HIohvN7e4KsRNWu//tg1CN+URo6oyJ3C/0
j66yXiVeINlNBHqMoNIMZV1x811z7F6s9niqTv6OdcCb7TdwMakXC58eLa4JF1H1KbI5Oh34+YCj
HuJZ3L7nJ4R1rQFHj/dx+WVLMWDOV49Ou7Besuc7IXtGU1SYemgwVQeuJf/pII77TYV64sPSow3a
Luo/LZVSJWW8qOSbjXG7I2xBmrbij1eiLsM3vjyerN9SpQemW20sUWzS6VmOz6ykaq4ilbBWcrEV
lsGBSXOc9hkPFLGT8NXWlDxQ19sz9NbM6MDbTa8YrJG/IqrOZWQ1uVnJ1rgODl3Nb3waR4fIMNkB
gvOdMxnMTHD09hiEKTJfkleVrc0dgNqTMw66bV5W6p6q4/QiS0On5yWeSBr4ZyL7QWX8DJGcZBhO
s+YidwQjjMEywhHgwL/W/Z/2iOXPPSZvftWp//6mzJxwnWPrQJXX5ZY3reS3LCRzUEkNxop7Q29n
YSvUpndK5EpIYqQaxdWicUbP1ldoNruEuHShDHr9FcUcz1//uzcFZfHLd7kzU4nx2NIKnjyi2M4N
tWmhy7NRGRG02twqTU9wddo69RWotEnbFdpoyPz3wik0NTnjWs0Qu0s+4WEnuJthLDN195fLL9mM
zuFrI/phcKFqnGP6AJv5UijlVe4tL8GiDGsIDo3XnysxDxS5pqmRne61errpfnKwFoNjlCeaUA2Z
iFK/L9EPk2NOE2WTEFGsDyYpfI9G3k8hYFuAAwt3FPpcmFiKovCR6GE8X3ABucMBjSRb4XKcEuUM
mmk6KDtVJSHSKQAr0gx668WcyxKSrYlXAB3bDYj1lgPwROBR0jenLQADEA2fW36sQKlORGP9weYY
LzO0j4oKa1QxiqrqBhqyx3eE0JMWI7nqOlm1RU+e0Uf2dusAF0p2YHmwVIXiZWEJnJU2QLKuSv2M
Sk/BqbiB512SqAaWzELXROKdM3dEgkVCtf+EPEmPWXLbZ3CUwoyVsYhXHCKmQ1a6AxIA4ScxDqwE
4/ytMd7PP/KN5oQwjLz8VG7h6LpllOJS9SKra2NQ4hGYYTKJFwu7JgmmuOZr/HCOw5i2kDcAHPHa
bEZLmnDLgzO0i0qjFgRXpkhMBNEtMJQyj041NV2ZInOOiHdN284+V2goA4ErY2mBpUd1dxrnCaoH
Zkx8ln7O2FGjNhKa/VujgrgoMSHuTPc+dTXdK/QMwsfGSS0U4D+EoEp6VeMa8tS4KxsmYhrOoTTg
zjHDIvQrqC7RtC/dtSfb0BarTUBxXbdveAv8Fr8OKbDhpeJ1Y7ga6SEi+kXiYOEYvwC/GWoN59kS
/0w2aBNiRCTH5PXYnmdibkJYXcfQGrlt/ZatCaT3M/MvTnktHmJgPvBqTNHsb3CL6aAvghOBUt9i
pGhoQMaN7lGW/ZkB25GylGRwms1wEOyVXlYelhQz7EzgfYW3uRe8uV5O8NoL/C1d+Hxcv5XeqwpT
2RicPrKMqzB5lgJkhDEqCzSNiLgiTNo3P1t9yBcf2Zt4soyAiXagw/Pj3Rnb3Ac5gxtP/6MWSA1j
JEzKQu7YaF0B6MsqGZ+fNqSFNd5rg0rtlqzgoWCcUp9UWnjHCjms7UJD9f047wnMb3BUKO5HVXwS
+ODSuqFMT8s3HlIb5ws1tWLUM0MkExEPbi/CFGjSMTaxZHzKlfojChFmUvgDUSXlq5VOjBGT4Se4
ilXRihM/jkzVvP73SLf0ubZn7UKRnPh1kgJop2RLUjuvCGwEGMu8uKcgBsLiGlF2hJ8V056oMI/o
5Gb3FCArRtQyg/KACjXE6l/5RsKXrfukflMQUcg/Pgg/fC6oChXwT+60eohrZcTi1NtYtkAUZOPW
Cr0vhr2MdzDig9oh+otMQ7Rfu+usWBNEwruYp63jFS8MEnE/d9ktorKu52BDMsD5KioW8JDd+AFJ
cXqUc1D95TDNSwLwWMGo50e3AelQsnkjqsQFR9pMGNWg4GeeNGpDRutm8tu3JT9LSCeewwqCr59Q
FXr56el3RiU9L7xNdXVZbXQ3aO2fHdYngWudH5QessU3iOUQ62sh//H/y/kX/qhkNs+GOyj9MlnU
5DnwfcTlqSocat6GDwU8BuMHXtaBapiU1lgdxcqBtezl+4hfds/Hs/YazYeXP6rq8+p7pJVtN0WQ
Pxp45he6ChCzxQp/ra6Kw1uyDh3RCFfMsRj7NpX4vssycrVX2x2SmE4Lcsnqw2JXoIfUthaGVUdM
iuvEs4HK4I5F+BdZlDoUO/RFn5/XUfDz7ZJDTtqko3reU+SFOLmrOPUs6pcmTCf2WGMLnXL+oABE
QcjCYowZeKKtr50EXRz0EA3l3+1axrXmx7aZyMyKFigf3FjzEHIP6E0GSZeDyaRMPgAe5zxTwqPE
pGhDa0qthygirdyMRhNYFLDQ8B9x26YazOPE9FlzDkCL/wfbydvVyfTVQCunPGlcOtchnw/Drnhu
ZUaq+uKdGj4gBg0VnnxqiI52KlBLLhRkAU4Cs+jnN7QO7/OxA5khQlreS+OEOr2RNzJn1zUp1VTo
ms/RcNU05s/m1Imh+fXBzBu2cPA93jtBB2tN2ZBtEvILcEusIaXmkAPB0gbCO1MXRsTQfJfPSk/x
ETvUkufmgCFyyaeTvhYaI3NOmejR2PQGo5lARxFuAnAW/UsnZnQ74I1RR0zVF+VIR6Jhwu5uR/5y
Qi3AnOsVh1v8tbPjvllkQyd1DcYBHvMyeG7j+tZVMzMXSbfrp5z0O0i6P2ureEngeeeIptLPzInX
4qHDbI+7CesWaM6wE3LCw8hb6Gns6B72UGDaUpFdtgxQo3X9v2YgkQMYuaPdGDGqkQlmpSuc1/un
IMkYyUVs2bwlTx1zlzOlcCspP8s6Qpd6BWR4LY0NdoXb23AxyyS94jXhH17I9wYonTrAcOUWf3hj
tE8bSliVGkmTGNXTOXAFWQIJgi0f0Ho4ySifHFpnqjwmp+LNsM5oLWoFJ0OUtuSJxiscN21HsJtj
aP/TdzndAWSItAKxe+nd7PAc7RGOFVVs4JxMiZgSGEcuoWACGVlwyCkr+bJXVEhP8nr+vALqfXs7
hA4yybjLFvt+INb0BgBeJBBSCxaCd20MJJFq0M1Ax+bZ8+nQ1CkT575ufdRA0Slde+WGqdukdgIs
+afN2+oWku4P0VdMz76/DEEN7oIPqsEJK/Qi15coX9VA+M2Xw85r6gP1LLkjbBT9b13V6avI20NT
fHP9QBr2m8zc+Kx8QkS65K4GPx556++fMRAdmDIhbRWbFRV6X80FYZyrDXtZB/uw3w2cgdU6F+kV
9HQJ3LdYSZ124YWOoaJE/yjccFxTYHxtKv31fIW0tRwrE46Go8oV9DmAgSIZoIKnJ9ekRMgr8QKW
43enoV1l8+qPguR3ni5X21GP5ylkCVqNMOZ3czRIl4QI7Jqui+l87wIbogq+4HIeoQ48PqP841qy
O5wj6nn+UR9zerrhipbIiTbWvFyJqwldNAjMHlqfpXxRHxd4VUOjXv3ZHNlc1IB7o+JOkOZqSrSa
YTAL28gnOwU4e6ICqxh1MeRRJOCeoqRT7EnilUJZW/EtYyDAzH+pVVbrct82LpfJKVulfHagqxRA
OJoqMVjPhL+PMlSS9Rf05lIsXIGTJO1+Zcus+BcOnh1jYwsdOKRCEtRj81QkOvxJZE7oOQbkDBE8
6gYOOdmITBH35w5NNiJCzo6txcWas5+JTXJpNZ2ggaor7Cs1qb0L68TAVus09oHaAbnTT8uog46i
543cq/ugbXMO2hep4uk/oCNB38KJWjPpb2heFqXh2pWMRVJVhqA3l2WXj3ytsutDTNi23JO3g/Qv
X7fG5mhctOHlo977vocXpWsut2gu5Rkvu5PWup7vll9ihqLu9qKlGO3vV3AvydRHbV9A9Waa+3mm
MlDsh51+9dMDxJwncUxA3rQg+hD88GxnYs02aY8V69XK2Ewgq4S0QNk9425/YPt87IrimpHEo7VG
Bo2sgTUDemFuDCuHBPxVPBG53cfTSIVucEO+axt/DtiViilFRF2MAxmS4ladJ8jq1hNPTDCsVV5f
dwdPyfOHc8Jds27RSCVWv+UcO5KEQt/aCOq58Bhd0Jv+0o3M2+MLPbktGNU6nbClsWpmezKB8jvn
Qtgg40kb4b1yFLky/TkIYd5n7vEZXMVErX8MHHpNYs4HsAqgpyaOdqWz+AbdXWQYjM9zhZJvOvXB
p3fx/OXhUmvDKtjSZpjEPn5ZBJKDzpDOCauJVxdgHEIe2yzc8ZsxDpN5mR9OwJSFbKltskGsGANt
7if1HsePYXWdss991nRG1hmADr+ortyS/PlSz6fpEUejzAUWLB+ThO4LUCX9u/US7crt1066NL7x
BUHKvu1ZK6AcqUKIGtK/8ybQOf4zWTyJiqIk2HOA/l4HXW3dCbifs7J0BaUOUJCsS6DyqMHZbXC8
TJ7W/XknznXzau4Nv8CTvdGX640au7CzNb+sxw9p85Uq1mDAZWASOx/YRAwtfKhfgGA6/bPzJjfa
nfZZk09cwFLgtuyZd8nBlVAG6BVkP33W1CIHmoZy25zVhWXRztIF8jbKR9Alq7t3/xbz4TU/hSVF
uYw9WwdmIeRYh+CeMdnK2UbnhB0TsPWYZvx7140qcGC10L4q/uOgizgDX1ApFCi0GpZy/rgiU8nV
xa6uDYEXikByMxZW8T33QGpgW65orXX8XH91mNKv7SId9CQlkiH/KMhFFdjzp/39NXl4xNutOjsA
xrmUpkgT3NvkYbCuIXFkF0/zEaD87RMEJb3xi6QSDJeiqMZhoqgUP8tuBaq7FdKHGSOQIC634DOK
16w6SdXPGz9KOG4N22yGtxgqdv7e55AMN12xJmeI3w26+eokgOu48h9QwHxeoqDIpmKgRwsUK6+c
wCzmZm8MxBegUcJSEhf46DDbstm7PGBj+ipmy1IlKBQmRqzL2yfpTiGV/0Y1aaeQiwLi3/XktrwA
wG6GOiMigF3mB1XVaB0IqRxqcffap3bbprRzNbRzSND3q1ACUgYk1px5eywleDVrmbd/UqcmmDHV
E2fShh0GWf4h4XlqY2ijVUYTQf1whYDcO0mtBvsmu+uz81HxHSNSKrlG2guaE7rTEL8I+GWzb1cx
toJHbj+Laz3ppOwCvS0A/veYs5u8PnRR6XZHJIaOPbKO2e3fGEe8pbObUY/0Hnlf6+zjBbl8q4Jd
5g/c1PAw/yeXo9LvdrwEWvLgoRkMz28WOG7WHE8R9SYfzhHswrUiTbR9yHQpy4wf7XqKxEPSkZET
2PiyudTrVydSWYGCI93/qM9Fd6hB0BPUtsjlPdG7i6S6C/VIBufxS61/FtmVIE0hchxZPQ8LboTY
CCDkn+REp1u4Ek9aT/rlhLl82sYFVgB4ynC0TP03XWgU7mYDP1ci4OXkQkLDqf7rRXc3SFiH6rui
oC7YF5DQFyb8rbePW0pnMeIt6BaLeZh+t557kJqFnVmw34JdyBpVRc2R4m62STC2L1d5XoFJHxZ7
Hb0ZRhBWzc/IRd19TDsI1t3158EFl9LP4fhjrXEMJMaGgqok054p5QD217zgTbZbhHH5xO8xzhkB
svf8RXBKkbNg9SGOW6nR8T9mCfmdKAvISWBKMbQUYJf2zhMfi1o2VjQ5VC0/10zGB/z92mhEpdhX
cJRHR1yyAfFT/h7a8roYzBq+qSc/BCB6pMGF9S8bjhIqlMLtZNm0rPi9+KVdnAM8HD7nTh9f4LFr
rmBIxxISDwkPwJTY4CMqFvr79k8sLrK6jJGNwh1yR3BYBzgigFkvjf3SjnwF+Cbl51eFlMLQadms
mlFojWOjI3qr3B3nEjrsBHyCC/kMYOyTUU3+NCMY0jvv4Zkz+Xh7gWcaHz6pUi3TZySEZOWYzHI2
tFBLrrXgmhy+v+zcdEcw4Eu23on7JhTWwVZeua/ikDrh8V+JjfVvWeArxY7qCOMGFBfG6QmE3zls
Z+f72k/h++xeOA7JkYeOzLspqE9J9Xhp46HsFqT8k/4rPsbkXQ6T37Q/kEj0w5pWzJzZPhsp8VaS
6a52h4cDvQ/gDMuHdI7AWlkQW4XEqX67bxL1kJeQRmrQey5ECypm/ctajUAR2bDSspngOtQdk05B
mT0YaHTlF7TutmsDlTTW8hKGxw9qyMivUESINr8a7fiNnccHV+OmB+VPiHbXkXNVgzCqKC6hJjAB
0d2rAwZ23118kjtuUfslibPTjbB1WEwv+xMAQCw8FE3csTSZ8dQrlCo+nsducIy7eQnqFcWs3ohe
IDAsFazlUm4Flj+58dczsyEv8mGJtuXrkzpZLxjwhJN0syNvYIddzoJEggD7r4ak3pd811J5w03l
OA9c8HtEzbRHbYMKFXq1xBKe6W0cBrKhyq5LxtdyfWOmwj+JawpYQIcveZV/fiOJ2OTN4FnayOUG
degmbHqXB76KFeoxeqykBS5mMPn8N6Z+YqiRJfabqkrShHoh0XzLTOCK2UuG4R7wILkhT/ctFTQM
Vcnyv0RmBUE2VR12e8dnZc3We0S6jsNlL/o58EAImKwt20OWk5miKD1XWkKBIuvfcWiwvN53Opzt
FchWf7n3u+FzVaP5S7D8gZv0FSNRp0a1XUMlWzR34VYthoeENNi3F7DPibaENl0tgnaIYr9sckzm
BP9+tLAMCAlPgjmdjdwzNBlenrUx4fjSDPVlIug4PhxtU9E2hUAc/rX6mppHgTbGKw7rL0LsE2Kd
lI1apLrTKyaWcf+Aeq8nz9d3tNX2d83vm056expLuc34d05Sr3QNOijd9Dy7Uj+cnVaXqX4btaWn
I5eDS6Z73Axb9/BDnLW4GeIHaTTnx2fVzYoUn+4OrLAK6xLUGWHlAks/0dh7Bt9nSrJIjhpLEC7c
AW41o3PKdvECbGfpU7xqXUH1K5rizw1N6q83LG0+kyXU5YXeexagXN0/fzGi7tPD+QE+YLPECIMJ
WFlSIXegbCy24MHh4wEFxhZn/3EdbKUbkxDhkGiR1bv+SStUT3/xvtDSUvOLYyf6mKokvYLUd9Nl
rv0MstKoMEkoNAbCskLQlRx+TPMNhxN+sHRdupEdvoNRU2jlN9CuubBm5381kTxMeaQV4BCECCNT
XLIu0slkJte3wIHRWZgaoqHDOE9FgzCDgFjbOTwmZGA878qKZHkPs0wfYarc2O4n7gszy4SBLD7G
9+Og2XaHJOJaHEfmFMechpQvSy707I9ws8oA5Zk0oeG0Z9ImFyFU0URGIWYNE73J2qi8fZA/hD1v
tcCo5tMFQOjWTvxVo/htAbmnrLUjpARgxKgpUfgBbl851Asp7l/u2oR1wP0SD8bWqGF0wtf4u32O
VAmzcw21iPHNU3WcuCa+BTb3wL0UOBfR+rVyAip53phnLOptGIZjM7Lp5K2tPHQlo2idG3hEWKnx
yjRQ6ruc4f+REZPMmcTXoocO4ZWWo+jLuNiF0Zqg4cakF6utZ12hcszNhops1mwm9DEVufRzqoLl
vuKQPmD3yKRUsTTO43Ko+suIUacLIqTc9R7RPy1dkyM0GQBM/Jq1+qHv/lDM2bDf0hv6248NHuoN
nhXD4HmTPIRsSIQ8CUF82C9KzPGvK4gjF7uQOQAEeSLWtnzBCx95geiIHepOMfUgiv0vRBNIJPkR
UtErSRJOGhTMntE+aS9Nks3VF/02srs56Sa3dVms3vzhdZoenoQEpQ8t1G5q9Yp92PfWW/NYvd2X
S5B/shKPgOwjpXUHBgHXgo0QH+C++tR8tPZ8LwFfVMPtJEOsbEkTfIIIpznGPgeMx/kgXpWX1TDM
PREbb0PmVqF7mNSWwjretAiM0i5JPuQRQAdmhsAeylpSTwSqW9VBGfhLE6yJdtGmQjs5x3WT21wR
t6S3jwA3RFZVu/FYtFBMKjI/cC5krsU7GZk9OMJWrEwUg7Zy94Obtk2jdtnFh7HFlwx1feOGy+kb
nxQbbBy1KsKThnekfDsZqbq6lek5XkNoJn5kAw+njdRbw8XyBYR8KNtEFbFIOb7Yc6zwzVmzGtHK
l4IuToXtoh5wV3D7ZzhrE0Vfp8l7P9Hs/NtY1rBlSgBrWe+h3UmJWDTNpLnWaaZeiGriKDXKPVBq
1C+yG4dOCQtWPQ6u3fW7B/kkbCQKC/EkQ/MaIk767glZkPE6g+9L1lybFgqb1AhtIbYobCCJAop3
zzziJzgBmtfsFDEduBeYPibkxJGIL/s+FI98ZBdFwSvL0H363JVnGGzyFpB0jfBHIuVHMR19lZ08
dZuNLfO/DGMctAsDKRGA1U7S6PKJUCZem9Tq1h/MY3f8yMaiwlnCLHxKifVmg/7+A78mawTfVqI6
HCUoKvEW3qm7PsECohTfGEYcNzvrjgrOlPt6v9T23O2hGYtqkmVH3VmN40SSPzFbzuOJVtG+8O15
Bd0QiiZ/F9+sL6DxDM83m+52ItIQ+EeyL+4eZDjweoFVTliYkSSFlJW7HtmN/ybB7OWl0Wc9PzP8
pQVSgyuU1Z9usST0O17+7kETYdevhKoI1M35jwI3YVz97ZvY25uy8urBPD++8fC1Vl03+4tnh0IL
k419TNzRsgyQU9/WwN4nIl2uXvVwFwrbeGzPKOUz5ENojOaA2RVCs9BQ3uZtXbQXiuZ9YeFTYCa/
ydk6wrSGTZk26NYkocF4lireWX15xZMkAQXi1BGRVHhsbCcBf2wumCj8ze7fgiKlYF/QL+vDm0/B
Dq9wd9d+iq1WD1BVShGOG+Gt5xMk4Zalv6Rg2Ee5+seM6JunKQLmnAW9xNMcqTbg+Mx+eAM++Wfk
Az5cbwfAfttHeif0RaXLzdzEdwGkgrVAAmhjBAVOvvv0DVAPkq2w9DU/s1/kClwIYFI4LPmm/At8
+Yj9ZMjXMx+9bPTyJ2MaqeBAFlOc0dvjyZZVSojuaUJZMb97dJKXsTGipyqpfC+gTb2KJeItR7zD
s8mogVIYG6JLirtEoRnK7Vpeh+wgd4jq2EDA+vpi1MF0AIWMlXnrDsCzlq1sR1NDJQYpFrs46RYk
Iaqo7zzx20oUgTSIZJ2PmW8vWp7poHAzgVxmyI+U2R3KBu+k6W/j9E6IYV7/TxL2c1XpoYZHCbQ9
NeD0TjWvjKFGNQgvvddBvFvIqreeTN2E560fmnS2PXkJNaADJTPATVa/CRK29Z+p17P22mX8Lgaa
C9qlL1ohKAxjlrzTdf23ydb+bCb8MXMrIkUuPRp3QQiZU90c9Es/ZvfnXTAUDxkWwi8ofybjVRhF
nDqnS9DObY9H38J/C/SOZNv2OCXRMGqxNRx799TlMk3KKQ3aMIWVDEffCcoa66Vq5ETPeBigdUJV
qgVQUYJl76B+XX9Bgov6wlRWMqQV8vh+G6OomSXvkTBW01ZGeCIqUitbiLo+ZP00kSWoGFW4rKv7
BnvREzPDNRKx7bKHj/sqmI4pfd/KREYYaA2dOa6dhLTYfN6mVrMUYI94NSb9j65vULh7Jib28ySP
NAUZY6BRzrrccStx2L7vQYg/KDownKlWcQ9D9Rl4IIl+i/lKZb1Qc6BeS2SZSlklqwcJkLmMJqkY
ZGEN7EUP7iP3g/mDRPbmcH9ueOBCpWIIcKPFxst67VyvzV1AIuvuDzPvZ6qLadHBXh1rom7wcUVH
ws/smoZxKsh33lHOLFjSmEZIXpUkSXRX2fgGGsdW76ePMtMnPWJ89t/a6snNNCpKiSO3AwGvDAkf
KyJ0EWVxIpKqf9Z35BR3RLPzhsEEtxG9IThU1Y3bkbmaCsIK/KcJ0nAzSnBegyYpeBPaQBQvFRDt
H3sWQaEDslGD4JK0jvp3FNUZ0f805WLTG21CObRdPGp86A/wjkm1osFrS//Wtv4PVvVEVlif95ES
WTKNFvHRYdy4ewYq8j+p0/qvTiZ6vkHZV6OvKiGEIRgbk6v1P6xX2IaSejSWHlk72+ADY58sHNo3
oD3spkHz7h2pvauvJYqDSq2aOwbgw73rcn/TmRkSlvvW7X+m3bdDs9fmqE0u9npIp8GbYotyniHV
sBSMPJFM0rMxUTrLNcUXKkty9+pIdSCdyiPiFY6fFMtJMLE8v4Tdn2FuFItxHyZrCg4OwNAewDMV
U1MFQjt9P6+93jzaklfpSab/C6TkSVeXMUT9qSHvMvE7wKjEgq72ytJNuAa+x1Z+tJFu1EjaiG71
/pGYyDyB99TJ/p75Fg7RBcU3udcoodtstYTmuFtw4ikTNchovh6dIEHp16YpeLKe0DccuPJpVGrX
IlZRNhazBEvy5YER99WaYb4vGk40lb+Fa+BSnZF70DirbGKhTwcMPOJKEhBbJQs5Zro5xt9h2+Y4
LyvGbbaqelJz1yuqrUqGu4UibJyuFAtWvG16cxNHxfw1AVmYoSKuecDZ3Ss9gtbKLJTxLs42hxw2
4MWEMLALauDlXx70Xzk0rwwHmaaWI6XMSByYSKgKA3YpMor5lSjwNRBQcd7exmO9L/B6NDg1nr7s
a+lQZGCRcIGeC1qpef+oLVBLECggGD2ImfpBx0f4OttUnF8jTGaAjNTK94bzXIuT7yL0nKgvdnor
YLqVOoWF4JXWg4b5UlIRwRgZ89MmgYG+Mla0jFFWcUQojsBk859bjfpMi6ptf8VcNik9r13g3M33
h9K3m5OwXZb0geW7fzKOJFzMXovjdvAVmZMgxyhz+K1uin7gYl0zsC4McsOO4aQmqwax0rUCQqnk
LarSFQNwH/zehcLbUS71cD9Z9W0v85ifajAq0VVQyKuYrCIEShHf686ASJd/2sxnNHomHEMLua15
8f+Vbbow4K4PRd3bHiopWY9Uu7HWA0sVjWTt84Jvqav0EoLIdMIzR3UFSi7qcPpmJs5JAQBRE+8A
xfxSqWgqXXiCuQQoWbk8jRVc2Wf9pECi3N6i1JqxC5+98qTva0f5+qMuah8FE9VGYDTwDbueu4XK
Vp9BTQ/iv52N3RyNeOWWv/eJNK2oH5ZXBZ2Ex7iSgvxIkHG7sswR80Ja+vKK4LKo1O6ZBmU9fC5/
GdhDD3y4GXDRyzd9CP3J+MI/Y6ziz9CjQUMse6Dy0ub5VfXhZP+2wgMlXv7L+eg2hLICylGw4T5L
17qXPRliwVmP+eaQkrElmENjfp7VmrY7TY2kxDrFC58ILHyLqMx6MydW4MKNc6jXhaZ9+zAv3acJ
ax23DEFX1i1ycpJ2a4jHsxRAN5gHEANXAphiK1+8kk6qft8ttdLxtkFgFJU7yUxVavpH6+p1XVWv
CQ0P5ze9+RNf20KteoYTnHBIswmQreF7hW/NtIx19mlQ6iignYe0Flcw2yg1hveUbiwvNSmWbpXc
jJjL2/Qn4LM/ww2+xypbTqSMbba27gBBmC6JWcOKTp+dYxNjyqQMJ1V8IUucdu8R1RfQeFACPPyZ
0GJlMwOrvlHJErlfRsPtt+pChTl7fvbdaLCbkWQ88Ms6EfFUG0X8BwDiZTC7xhdiwCGmcWBh8dUR
IKr33bjz1TzRR+cBVocIN+6Xql1pMAOmb7NlOsDJQluTdaoRcAo/FjaUM6ZbD33lrgpvaMlmCcBX
ruUgAffrycU1sCXHWGktZyracn9Eg5WHq252oN8eQ5T+nwP5qGxvokYA4r7uCZywEUVmocIFhyJb
n/p/51v5jvEYnyWQeCtEpCvvg44i580qxpSJJsAU1573cuwcE5TCJN7Bfsh5thhiHXMlzMNN1cTw
okdG3oEhRtbII/OK6fUj+QoxCRo+NJ6sSx6rjV2SsZxRJkZtf77bV+zCPHeRMqrJMn7Os6aCfuKm
2gg0IUAXFp+qYlOOH/GpRoNeS9PhlGF9BDBL93r4hFLBy6wazaaIpm6uFz+DyeHr6HYptaO0MQnG
0LuBRzdadqAyE/meJzZpCsrTB+HVyj0vJ647SRBgXRh5C2vuhWXhqFI0xjqj93muyTsQb3uvz6Bv
DMbvjrh03j4D8kRxG3jo9q0EX8q+icjjpODRyr05YLjX+o/+dbWBwzxu9Kc/oeWM7hY9upmnrqcc
G3OIjbam/KeP+ewYBKO7CMckWTZGPsrDmSaZOvkiz/lzOiDAVJ7kIfRj+XTte512Yfa70aTwDs8t
ooTSbg3Sb4iGpMr3n2J/MtuZE8OMv8CRxs5LTLm48RPFITuITAMahjge5tnMHJ3/0scupiMtXBl0
OG+33btVthbeZLS6PR5wkhwRIe09Qalz8+Z6aTw5jmnfyoDekeuqb/JuOQPzItUo4+sZVh2aHvgC
S2nyJC4W7jReYLy3JeTiMJFBwRJIpgWAzjInamPnlLdeF8SSwsA/csi5Pec4XWeeh1jYKGM8vONX
mvn/mQAXZEvcGcvEbxtKyDKmLhBB82kEaaZiCY2bCA5bypCcU7PxQkCSrizSErgV353UaoBsbf79
k3H2sWYsFolMIUV332rVJjaYxbtKf/HI8Ko7h0pmsmK9PGbgo4XchvNpkAwamf6b0zqaVcO7gEgj
m+y0TLkBeYkHH1BiM7xPgZvmumnBrnRojCaLfpicQcwU6F8nLrmaokkh1AeoQPCxHaljXk5tT1ec
jkVCW3gjUyeg/L6YK9M6HT3P903FqMQd1JNhAFHri+deirzkE4HLViRiEmf7pObcvrTeNNfUSwHb
VJovkf1fYBDDt38KY6dQ3BRMRr4oxaAArwbIsqBvSfcHqEGzz+aGobQkdC43af1ypZsESWWgpyJp
mIBTYMyWjgfz1qSoPq8CXjRH/prfQnpnpEDI8AgcUHymsf6fL4nxkREtBE1xui46c2010HmTymc2
vqgqJqXcrpaflfCGv8kok5fZUxdVfyb53x3yzrtRnmpRhQ9daaIjXSVS4+0jHqKD7XwaGXoO3FNK
KNgI9lqzrZzIgjO3Kv62w1lT3iQ5/JFbmWdUkbeC6ov3yxiABIqeI6k2LYD0kHkVYqFsZPz8J1ew
znELdwyfVMD3mbefr0Fp9jLLYIGYfBDrflizgXrnN4pf6NMTg3Fn/CZO6dcqBnZZOntchOTIK3yU
lYNfQH8R/Jjpw8QkAwr+2f1WIMwWmPDbf9bYmPb5ZA08SnzUX07ass/yXSDbpstBL21q9X3YVfrp
C6JorOvw4v1//jTVq+y8mUjR0ahWNsurcmzvJf+FvbYupdUmxfOOb/3x13nNrDXTHEtWGtgYfcIJ
4xtV39lA1o/5uAj3L0p3myKFW5IZ8j1IQjDB/QIn9627aMmzBZYRpLDeQywWOmQw8+8Rcd20RvvJ
HY4abOxJF7W/JWKY0Q6XgEcplhCH87YkwpxCv9Z2udnjGg+Mg2N4AY59rAdV6Avzc1P8DWdGWkB8
5OkcSuhahlCNTLY9ZlNH58uh0rXru01FKIDhQ/4Lz7s+A6C8WBCsR2i9sHnbGuTxw3CKXaQKZEhI
l1n+zzJU1qkx4wqXl5yG73gGEmDvQ3V3U4VE9daK+QaYHrAsNBI27coW9N2pSzdRGj3NnAx6C8xv
5n/pTT1LEvLYbJZMEguOXygSOMB7NR02xuErzbUGrVZkCy8sPYzMRn5NrrLx+E0svMlJ4rYL6kQc
cZGhipOmz/WLUGyOEA9BtROQkv2FihMdYpshd3kepg9yyc/KDV3B2BKVksBZ/NjVQr+thpi61JYh
aWtRxyAuWukrEfbhHsY0a63ablDD37NzRF6mnjc1NYv6KKx8ozPjx+DCDHwMZRY4j7nckwuCU3Ax
i4dCaiJBjbBK95FIPZX+5id19KuVyzE/PZMQSV3ETemkQuff0eIwOvIYrD6T5uYwhcPgmBPeTBaZ
y+UZy+Mi6+7owWpxnQ3lm5rVpuHcHercTYpwJJ8c16Mivt8ko4yE6YU2BzsM32ES7oSEs19pBWmV
1p5zATuccaoCoz+YAmlG9enFL+5Vtb0su3hVTRwJg5TWdUgW6oXWC2nMx3xeOwS+DSZW5iScAWGP
1dDEOWujiL0K1T6qRQ6t1N8i3Lj3HqKGn/44HugMI7d2l0cX93WGGXdo/V3ecHoRICh8LOZ6AKzn
o87QFBA14G/ktk1Ht5Hs/kdsHbsEKz+uoEuLqdl0pkRqEqZ2UMW5nZXYZz33J7zUhnx6Iot9eYBd
gdHzD1g/vQtzMO3RRrVFkdZDiCW0ng+vX4HwMb5SF4e4wD58ZeVExpAQqDs+7jtoNX7QwBrbuhuT
n9ojGbowqYZAbrG1MZkIMmT+ATbItmWFHuByGrjN/+IMQ/TuScP4P8WQVQdcETzUUh9oT6YGHCbY
C17hilmzRY5Rwvkhp1FxMcQXC02YlXzWyotwG36cv8Ciq7Wp/Rm7EVnsuW0e1c13/7cVlP24xtd4
EixBdI1mpg800MrSoK+qXAsg63WkM5D0Epn1qBzmvEVSqUmxeTi2bkBzpg1Pn2K/xDVQusKl/B1t
aebJ8d17BQz+OF++bKOqK2GOUnQddiwsjMiqorM+DehVOQGuHRoWhe6MG1F/0tOOZTbbkuvZrtWd
sJnxEfFrvwtpbPWFT7wK2I2IjfzlQjZDSiHOxislYv6vYNE2CYyZGztEjmmJsFgcxgTu5QxQ9Qic
ny3FIsqRGPLamsLw1ZaWLkWUQTBApCr7/O7vc1cpRc9JRjTFQ/zfxK83cVL5JzdI9HmK/xGV4Wum
kc0ru7PBHWkFBHNyED1x2newWsoE9YKKw6lmvZdChEVhq7NngzznC+JXuLDJeMZJfgBLlYkqVAUR
G2iFmtyVzJvKQLGc3YEBkeizO3dZQ8qVtntSCX0Y5iWp9khq4ruivHWd0kDCpaWeLiATBYw6+TPH
O0KjOHzKrf9DKas7wPtNjZv9uVkcyWb7yGfYgnEVL9oURwIc//Ek8rq6RptzyQtknLJBNWAUB7KT
G8/PNfe4lV/Q2OBgJpBR/UtD2i+j6faxTgqqU9E0nMYvbQ7CYH24sqyP7NDd+0wdBwcbix+ELObh
BeD7c4yZAXnIFN0LoyJLTVeOjMvHAVjs7WYh1ipOBzeo0XMfzVwgUawmOaNzo8hCD+y7jjyjeKnx
UcCyYZhS/+DHTDgbxHHY4EccOJ/u4REeNsOaHZPZ1ZNF1ZUvgjpPj7Z9f5tElZhesrDkJny34sRN
W+UhH9dMi9GCiou/CNoBu8cN2D/rz63nz/4dXnuh1TnAAGWtWJf7n4cM79bqIYLtItAe+F2L8UwN
zSd1NIHswtafGeqv93nJfBWgOhIdOqRLif+sEvUw+RGSK+eHbk+3Sj38Rz9OyVDEDCm8e9vDJido
Xj4O8e6lcJ4PNujGRIiHe+0DYy8vr1UCDamprzPlMfwZ4zbjh63bMnf+EwZtUYggyoXVesYhmgZT
NJTWD9Seny/jXWwZngciOWyveI9y8uB5HqcUnYwBZ2bsWXy1il8pezpyYGCExSeqtjTA6i6fy/QO
FSu62A7qQ/6ICX1xWJPrrrhATXehReRA5l61wYg1QuNiAKXoEE+bMco9srLpJfeRRiBf4ytNbisl
1gEiUrjabFnalmbm8Cg65Pxq3NuTtrB7Dw8SknpU+uNyOfKf+CwehCwArjeHIcnheO6UZH/dB2e6
6xBBtI0jNbUJKrwKIbDUIZ7w+ZFbLONCT5FS3NZiuSLtYR5fOQoAUb7V8bw1trmPbkALXBydJZlq
YsoHlZq3Y4gbkjgZ3P0UFfe2AzeKaiLqvQacaZ8qe36pUWCCMicS1iWbq3JXTcfJrHm0idIo3CZn
e/hYHgDW7PHql/qL1sGQHtL7BDXveEfaqCYzQril9rDwN/CaT1IV803CuC9J31qU7kKit0apw4WJ
FcdwgwCYgz+DzQLxikpJYflbLdw8LprAIOtpM9BRaW/RbkN5o3hWHE69xstHlOiMgYOyagDOcXI/
gHaVAT+sRTBxyubatIpgMaxsk2WbVq+ZJdzJdPCGHhqldJ1aXLcTNX9SOE581Xtddkw3UTNTqlyG
kx8Ruz5XNGGw7Muj1GrKG5EY9io92k3iQTqx0o5k9xzFoGYASvO5UFcA8ZMSPm1T8W/OkJXv7hg5
88+AWD+iFwLAUuAe/Cman8cKLGHvkZMO2BGmiG8H1APcgi+/uJpE3gB+eXDRLCOtO+k8y81yz3BK
Mf3Iy4qB8M6/AHctmc4EPYp1k0qId09sVIRuDRNxXyTBzwewRE+tKb+jOaionv5/97X1JGI8/wRr
zHBA9s5RVWIgYMNr2xgWsMHapHRu8Cg2D5qUkWvRzSvEwqnR/KOEPUiXVi97Okz4xQZOkt8ue+QV
ERVcKBMAAtqbiiVO8pQdDiYx+A242bQcMD0mE/9UAn18Jnx/TVv04efOgr0DUhVZLqSatDcDcOTH
wrIs3BJBmm1JsoBHHXY75qTePgiaFmrAYrQwhYBEEp0Cuu/ZOPgrJhWpTWRc4SZe2E49N6aeiwh9
Ho1DPEDwUHDGbomV+AKvON+VlZ1NbambmRzuDHvbGluHw1U9TGTDUpPgzPC+0XVRXUynXOBW+2sc
3989P+pnmHuxKVpeCAN8cNMW7N0c+q1VClSZ9JKMTXXWaxLf/3XWd+IaA2c+qvDgVZRoXV/jA0Y5
YDvzieXcWZa7liwm8YFnYTH0G8reiyrhO5GXwCMnzpEdlpKNLx4rPKU8B5newnyz1s7Q50JW6kMR
86tICJZK+jCW18Luw4wzA86dzUnYpoILD8k90bGylD32z25cfL4mMe44nhOn1K2k20oCWHJsPy/D
Gul71MblV28j0dz5IXVHz3bj9ShWT2sm6Hh+Dry1J1u7s9f92UkS6Ai+46xH4gQ4Rx9GM42HWzxf
ZtgSEQ6wCNj6m5hDVPm1ZvSHEcJ3j1KH1Hg03gQtrLvMnKRtRMrmVu6uXcAwbBpogXiwiZg34Vpp
RPfiflAWjN8ie/BqrQAEodlTlR5cG88y47frOXKTS6RdfYGg6UsCBoTWAngJU9TcbozOjPODZ6j3
ySJUSeXYzP63uNZN/GkVebAl2czUllxGiQCglNwaCP++5fhboPi+HUfNx4sZ8Wu3kdAIUdosy5hd
lU3+T67r+vC+hZH0PqeKFGieIofy4kfCUeNP0E5Xfih9toi9JrBhOo7YYFTYXdwtiHoaYGyxY9JX
MDQW8yKNqvSOVXqXFjrIrxrjhRAk9h8HzMmG/2E4Uw4nqwZEBCqViXQZeqJQRkYWwV+SepWzfVw+
Z09kkrXnHMK4tNfwra01lfbcYcPe4lkiHoXQgG/QKj3KtaCCyeoiN4FsQXSUQ0U480vOKb0Z7u+f
kclVu5tmBSi2ti1hR7oclf2mJkcBapJjj0VMT8ptfEi/cJu1ItnCosLSjnkTqEPxdW8fRcj5HGoj
jJ2C/hCIC6ZRFQRFqrBHOLxr1v/lIumdrJzqJkXhz1CU9LRE8gLPfUc66o3+0bTWxzZiirLQGWkQ
yzS2mVrqOXRGmqN4Xkc4RxmR67COZekaAYmPIGB9XIqg1EXgDfGUZufnY+gntIRnr7hwgCJhdI/9
ZZL4ZrOdja1RyNU8UBdr1/KMMHIVTa1YQqpa2GiaTl0gCFZXxhpVi69BXkyarngvakttTYbNzsaJ
Bmq7ntCU5RJUyNHt5plArrFpUoasVicL59pQuJNdfEBbQUX7B2hTFFYGDaf4Pj0PJ3qIHnCjUFib
unlihAQnKNwXTzcUlVimFKNAGTrl4KMUUX7+PMam/y38u+7JddxZw1OP2PKjwgQdOMDiW8zGWRvj
EX6jwdXNv+orcWcWv7iT5x4FBdpON4hjEHUQWBzfAyYsy4IhHm8NmONHBXN6lDyO23h0wW14I/ND
ydnVwuC7lEZR9LJNgNdg7+q00Thdp17iK6i6uEINLSJlOrDlnj6QEakUy8mkkk1ygt9wmfYa7KCR
TcgBESsQ1CAck5h/X/9LLz/lm0lTjFJwoY37qokAJpZ4nVjnNofa4aM+GT8J3dalISO0IkzfSeGv
bHejtAzAWxOHFZQ7sxaIJ7BeLXmQr/ibWGCgymN7uQwhN5bdkZo74fgC3wpwI/MF5fhh5vIIBV46
Iv1UKgvQfIogfjAfYCo9KsHkxJPp/Xtm+rGF8JSdw4wzp7PMVlo1c079bQa+DxfftSjupQNXTSj4
ORsir6ZBVW0DYJjoAr09+HL+p+fuqR3hjVnKRspgUfSyXpnKq8smfwRMwX2t4OdwJbpzwkYeYhtQ
ALjYQOW+q9JlW1Xd8yswcqZaiM6TuS6o+6lQnb36x0ixZGv9irQIT+7svD52beH9xUALWhB+3mqW
HW8rPyPRpULyjylO8d6do31hIyXfJD1v9k2Lxukr+VoqhWje6C6A4WPLzMBK8QgqBAlPCVWNK4Cy
m+2urPr08dZy/meG4hT562nXMdkHFVp8l1vVbZRIstMJMDJ4u4pC5ivRDVIET6CT79zphA5HckX6
POSBYpBiu6gkFMEIqlCjhEu57EKy1Sw8EJ2kQyHWyexiGADAFK4D+yutFs2E3HVRJqyz2bebHAol
B6LA98x1B8wmBmsg8P4Z3K887V6RjlQY00PEdc7WHZkQ9IO1+90wRTLgY/HgjCQ1myPmvSohDI3v
aY4EJVvASukRmPz58e4K3rHV9Qlyecxumnx3r+ykIpGglZKgr+URnArp4hTTrasNS+MQH32ayqbH
PcQ3SxA2X6vgoHDOdFEs8BtqbFWszBMXJPjDzbPWOt/+27d46juD2+CB4MoWewWhNrApz121/VOu
amBqn6Iw6OopRZ7932N4DfjoFkuv30rihWObaLPQN4q/hhvdOHFXB7OomgiggkLT3RC6PIk36d8n
8EfHQeMOigLlKostW+Ox9ojnNMe16IrOKmwtEVIDuZp6pVVMWVYPqq+Fj2QWV/8R9QDDP5cUa62t
BJ+lBpsKcyI7QC7x5fTJ4VF4WmxO1MjYSV5Upbb4mUO626hGJg1fZLvP/DaELJb1oLmcYZgSQUeB
sRjqJ3jJ5rTcHav2SUsgd4YvfujM1yql5tPIGxXgVakxgwUL3KKhFaHFqUTedMt6AgnuwT46RG/3
Ka6ypPpbXP1EtNVbWqZN883lOinfwZxNAD6vTBmcAOOehUwv5XvXxSSvWvm+32T8V2OYgg/yixeA
HL9esIsKsi20Ido6+9WHz8Yq9eMi74ujFHet0fMU5MYqQ2XjL/p33cetKSR03kbuazaIRyXHovBG
vukyG5sD1kZqDYYdek4z6dNV1PVSDXzAi1vJa6xJ0wKgLFtJUmm5fkY4Uw0/kQFvOUDiBIzX3fWr
yWA2dWAdkCtObMKvYb8INsfSjjriX51B1jiB6H27lwkxNh9lL3whIYBfR+kz2xj036nYLqjdnP++
6j80rFKtiZ2p9zC3cxBsBBzy791HWVYzTVx+T9mkmhVFajfsDWhneYCq9zEcUkqqiSiuhq0z4pEC
RlJqPMP6GMzvVcFjEHvYEnsNZldqHIjtMAAD3pUE6O9/kD6Fm7MHrfVYIE+6m5V5/Yp1E1jBgH3/
lo6xYcxkD0BN4BNphqdlMgCslXQK0MMuMhRAI6A1ddSdMRE9cGzoy/UJ+5z/VQpWAgopX0VmGXhn
sCTBTXcJxBgjRoBMxyZcekhUx0magP4hHq4XvhCYj8KweY3kjmUGOLHlFYzpfBjkbm9/7vz462hq
uiAdXAGCRAKWNjzbVxrhWpVc5x+L7p2c/tbzO7gtDQnOJOG3eWU/JoIes4x/QoeX7brl3PkGy+I8
OHjls9xstUT6JmlsEAMIPm0g9LmzGYMNo0EdNGpCmK+PlntkJHZ1Bj3QtvbTiE8sVLATlaPm68Q6
bl74TNMNuM/mEKDkXyCRYJUO/e5LnYUtoBCBlYxRjk0fD0j1ZunsAnnpuwsfnboRb970/15vpjAT
CQJdJNauS9wttYnCOyHpo68dOSv/kHTSkTMxTU2TMg1dSKy+xHVww8bLO1YIQPJ4JLrENMcAB4mV
M8arzo1UfTv1Fk8C3YHtmG3NCdXlalhuWR9MV3rO88cNBKMx9Rx6F1KUFwMmT8pqJt7aHbUufaHR
iU5peaPn2/rbLuQmLaj13I40xVZAw/6/QmDgFqOB/I7Vv3WyJ1QP3GZm9bpai91IhD60DsiACg//
MuFkxcJoCnxxbbHoTZ+k9j0ZUS/dBaijvOhV4wk1MvcVUTsXFUpfXnXjWX7oKtyush9TD3UWzmIC
WAMOM6dmVnUfkrh28sn7aKU5xPWL6ewfl14QVlrg5JXjevgyQ0gaUD0Ky75gPcLbzqtQXvGr9lp+
GWaqrwv3TWYvkDYe6/wDqp0bKmI99cF5wKzif8fdJ5ZFaTE5Wc4fdnsRzb+wFEWoLWVby5wxqxK7
pnCUR338yushRKIcDBNrMBQSSXb7Q5ZRZKng/PmIJiQ+H4yLFalaT/B3gjWA5dYpdhbn2MNwtaMP
ygnQSaNNAh1kF/JfwaLvcDpzfccM3sx0oKNDdi00GP7O99QqKII6jWLQL4/WSOz11MhGxh1KHZaS
LIkzp9uF5fI08EymK0JWkSvHRLe3UgzgXWsQvF438IrgWQicfvqUa76+OQ7PJ6hnNo9QPRbgygIu
V7HMXPbizHAU5/WpX6nrmbhqf0yl1OACU0dDehHfKydCgogMsPQTzJtLW6FczRiVDl3E2DcTxGkR
vCJZchm0w6w5sFQNDMIEmEiD38MCw6vnJtanoiTpdR5hBNHeErCQi2mSFW3hzMoxyBZzJmN8CS8+
w8pLGyMsm8cn6wbYcBS6U9HDII3ry/k3h7vafLQonkz4Ho5utgZJASr7m6+THgljz1izcDiRpHV0
07yn3j82BKpPVzomAPOzX89Q+vGOh2EoYe6J+Td7UM9o1vcwRJ7ASzQgs6kpFUolwrLrgb713Gy8
oiGnwflAJ1rUEW1aRFX2mOshhx67Lbh9D1Wb50LzbpTHSLYG1Y3nw44PYHZudn6RLAjkeP7M06xs
iSR2KiArNnRVPVNYJpm6GWZrKSHIZNvVHV8Tbb096DcNTTBYumW0wQqfWwh8Mpst9VvgacEBB04O
DcYibvHcQSyWYcrIPWlzfgRX2rlLYzcpJPRel+D4xybap2yUFxNAXxt6n/LphckWLuv3vjecKx6L
mH+BNUuAHtgrKb0KesFkzPW9KBwKxjlYqOVZi5ysFIWBRCqDliFvP2jBUQJ/e4kGkL2yx4j9NBlr
819HiSep7oPZd6l8ZHAv/o3TZdha8op+2ebKpRizgV/zsWGp/N5DB8yUgjpUyhMN6EWjegk1bSi0
eEyUpjzPLnqT9wb0Lw4HZZztarAf2IZJzYDH+wfptkcPbSFnwSJZU3IyUmWgxnV36rbF6vKWFmQa
0rzX8PV3IUxGmHiYznAUGB8i2S8+2yT6Nwq4yF/C1KaajXJDq/mUMNIzx85ijSOVnPHHVlRnP5RJ
w7xZxCmhVK+LMyN7zOqDhujp2q1/FW0vtpoaULMYb3vmX7hswyBIiMi+XN2yYjhUnJR2uyqd/M5b
VwZgM3IfwPsNbVyVuDM2pccI52Wl+LXoqZwfC/dLhJBIVPcIs0hQuV7Hxy3vv2QQQRFL5Ksn3Xw9
mMe5hXrmGj3MC2xr4azjZSOU/k6WNuMAq+OssSK50grc0pIztTsOeYJFEPBShsIVfX1b3hBlEwiv
JN6MbVt5mNurSxd4MqwKefwchIMozZA/LGTBMOSBvwjPcgdyZlIF7lZNm2lpL2zblOKJ/Is9jpGv
CQaOq39rFLTh+muevPTP60M9t/2I+W6TMYerp49Ec+T2r9/qy72GUEp1z+ncBZ6QbXf4yrQgn5DA
pzuoWRu6zDAnMdI4ppswEAznzexvkjzOmz9MOOM1YTzWiZdq/1Z7HJYI/9AlZsKdV8lU1gH7OA2+
hTKYzMzziYDv6V+z98WMJekVedvZbOC68BWYwLDCI4CMuT5lyFyHPU1TnGAmMFTW42DizLt6U8ZL
psiNltz0tDF4KTBMD66INYwh88uoc3n31hdrK7aNVM6CcMs+hKThnDpWExDroYc5vLKsMclRreHx
7qonoWYGbATKZtWljV694VdQEDGphNVZDpze6pOMrzSVWIfwskEHpDBkwHVpRMCQNkjAeOBo5bGk
RxNhDUgbO263aW7lx67dZalGl2MTX8P/OA6iZAozpTsTt9/zPzCM79ATo0REGRbyVgA6WKNpwg2B
v1aJGme97S1OQX/VcEp/y4jSP6EgBbOyKa2AoiIkI1tyLTss8jkjRKVQkuaRDRPWhtmGJ/nwMfd+
5EBfkfFFB8FOgD5gLarey8IuUturOs1px8RqcVhuKijqndZ732GQnHTX5XzBuwTFq0HVBQM9d6OG
6g+8ix4FSP6U+ZhwZZGl9NdbEehtOIkdi8kj0lgWH8bwQhVQ/0sFY/nJWReIW7x5y7MU5K6zN0tv
IjIAC85hpJWBK/AiZFynOIFwlIxihhbK9N76TXto1hJJ48gJWFLkT9Zr77Fa+bqbLimiM/dZFTtX
EFE6RBDa8qaxjbvDfaYoGDelhBz/FVQRrYvl2NN566rdJztHQbPQyg5NfSn1fhFu1ztOLr1/iy3C
M3f+a+rYrgV2eztHiaIZe/c2UcEVleJz4z0k06pmrz7N68Y7slXbF52pq85+XptatYZATzZv5YPl
SqKsOkqdi+GnvBuBl7k1rFz7G2dyuyxC6rFVBs+jvRsKha/r0GOCeUhj9dwRXmCgYHt7pC7ga6yl
1AyJgvAZP4S91ihYe/L72HOlSb+VdgALQQv9mghglr5T81hih7f6GG9OA7Ex5aTQ9AgzeM7GEoAy
aM2ZewZ+Dv47M834/7wO9NWh5u2DHFTVmIsX/OqJJf40bYzalqV3znQO3tYoRqSjtDnEkPo0JSDa
ZiVr6rwHSG6lKQ+/RPo2Ff2KoUS5gPPGG/gZ7oDWfXQpfgbv1M7TLyFNtL4fJqE6vVCBxKrde+VR
htvG2X53YFWHsa6Px5WFgLjynjhdDI5CUpvlGWGfqHCE1NQCrR17XAlHP1tV50ldSiqP9j3zzc//
NYUx0+IKUkrUkSOat3qK54kd8L0Sx2kBF3WDGlWCdE58ot9BWIiN2xr86g0ydPTs35u3Do/bPVGY
Z7b3KdHTI0Y9KAqJYeA2ncN/vuvK/aLhuqCZVhW9JbRjf/cYvkj8yrzYPDok8+cdfUadtaAuCr8B
Kz9kmM06xorYMUe60xiCkdFIrmz2woNZoyg8fEF7/zzuDCW/ChPyIBsxw+Am4eYNgbjbKftQWNEx
OJfH1CJDA3yTprsL6C9nR7zfVO90N0wP85BxlGYAD5WvOV+swwptUFP+jKNdyu/0IeJfzEQ2P3RD
c6RbakUbHPC+XWuArTVNj+jjmQdR9ZtmLD/Z99mNH4pibMfJg5AssJuaLl6OMAyV2yAghVNmzHY4
NtATmWm4aLcWOU4NYLV8UebLjIYRXThyHihT9kr4VDllkTy4MDVbdUFdWzos5xPCV2IsBgAhWI2y
OHyH7cbG8Kjy+Rfya4zRJjJLHZg2urdu27iRtHaaOdfdhCXLvOXwKw7hP4pbhq+v39vGuiSJdQn4
dLqL0lnridcVXcvCeHmREWSNktMsqRRO8XZ2Czind894h5a8syx9+51m/cCjJ9o+fv5tIuGmL4ZP
dzvJckxXWyDWik/9j+8MMCNEqUtEM/oofgCx+QvdcHDvBO2OpK5FDot8tHJ50PE3Pa/zHcwx39NY
jd5mODJSUMQ1c1qTiC146VfDVyIGkLlPy/dtA/UZWs65dAwVhfp4BKr3gX+x1Wi+PN4hjXxcc+RZ
xPYwA+kDsB4zCyP4HhkwZ/TStk3/WpZO9xRUTysJsJOrDTO/DUUiYPwXIqHbfLcv0efedRDNlPC0
7lq1VjZ3Aq1NNtQVAPEw5PT3m9P+f30zgx3L+w/ArJ+pQPV19GSb1z4RGD9kwolTxEBkmV5LljbK
/i1d03P0UawJLVRuYIUZ3/ShezBRp2sluIMU+gPvmK9KByUw2FEztsSgBsVBJI4QnClLTIMW6o6N
SPe1ITCzdo53G5fUvOq7UeU+I4Xzj9iwUi73UridkmJaZPjg76/AgBu+zA0FJ/gtHmukYKNYqiJJ
KRomSVN8Hqn5ZiQZNrVdCsSOQQmBPHVJdJD7Vw3BWjZU0ih4XA4ELhwFS03SoZoQglufH7W/5FPF
wqZ85B1lKkWYlsn66cXxfe2HksfB44zyR6AvxLli1E5vzhy8K5UQpJVMFJUT1chW0x7mxFktbXUx
TNFRfu/ihry5AR/95fatSwYjtwXofj6ovbRoeDHLc7U0Q+lYO8MStXfev3ieyM0WN682NDLj+dja
VJ10Ym6PKLO/FuoC8J0WSMuQhzu6rIiR7GfMDWnp+aC9x89d6n8HNKhC3dZXVVkuXO5Vkb0JQVX0
RIUYeAQ3faaPzYYJzfUXlIvdiFtFeFjr+kbA+xCs/OlYT7mNErWveDbIBksM5xgGtUImtOTxM9Tw
w6T/EBnpw1CRi8/s4kVpynO9XdDuIdXuqS0fYGl7hHvN9M+hSU3QtKsColDes+CDSwlrYtmrVDNa
9ii/nS6ONRprFvk1avAlgDGlrl7Vru79am8aKElNiQSHWlodiDuVagz4lYGuJjGk71jz+F29LVxL
HjV1rq4nRAki7O6OjwfDC0DVSp4QHcJ9jJ1yZZHcpKx1DdBRYhVHsD92fzGZ+KK+xewB7YeYT0ny
QcRib7PAMhkDPgLNqYzw3uhG3faIottZEmaeok1wUWgiZdh7D9D4nOiBoDcVwDpOrWWkhCUeWnlO
AXFRSKn2qz/lu1feTqaxitX8vVSvWguyIFgb5+EteGj937F1lQz5nOI2yb+0++so7I8Uzi77RBs7
ChEDMrkzjn49V2nuluEQVWv2GwzJhOYVeNA67S8sGcZQaZ3C3QQNLcmG9EaIyPbXBos54iqJQNF+
h0ROFZF+76Ul89EQFjM7zVlgdwtKEgVlhgYAjDOjoZ1/U5h6Lhme6SgHX90KT2AymVSMoBu39Wcu
lDdTCfzga0XV3Gv3cuOLHaEuWolMBikVTCp9nFdMuV8MFAYcX9ZoRlNAdCOeUw41H7qp7mQ6GAGV
gv33IbXhK/LMbvtNxYj1b4uaRUTDf1ZWnlPspKNd6pRiAXBF88SZzo+31eWGRVrMURIy29mP2RdX
Elqqj4SkTe3ADUbMEjAdp/tpsfFI5HFqeXfjYzV86BAYVhptr9wsVKJZP0DnphSYulXbjBaBCc93
H1JIjULX8KmjhUxBz0pVKmYatNBNBn8m4Cl1lZCFRlBgEKQcFmWiHu+ueJ/8VhbAfWs98SlNw9yq
BlQRxXcG06D/VbEKAteGRiPJZowF2EhMassbSsSK52F8jg9GhtxHL3q3Y9qvZ3LXxH3zEQ6U8hfK
GuMR/9w7DDxnuBtcqJiyKfCh8QvrTnY+tttUabZlIZfyOvNsar+NOzVXna/NL/Zzz33mLMHvcj3y
Ah69k7hArB56aDIJAdSsUAtjzLfKmhqqKP/UzOMBX6/Le/AGqB4seKMW7bMEQS2mzTfp8uhFFvxj
8If9DbQQZYQKQYJG9OwOMSZWQ9MEJ7DsLHqaKgDaUeIjzfGW0XLiHtUcWJ/9yE44k464h4S+lcKq
Lw3BzQwib0htNxE6r4DJ5JNW5fgVZBjlnoZIQcdcaZCtwX9EXfiJJrOt9VCD6zWmBkhMgEjVyt/N
umHMJL2DBwrkY7Fcw/o7VU1HXDQ0mI7WCZFYpIVrG4cetnbU7Nwkb7u6evmJHNdR/uFT0JptXdxS
FdTIpLI5s3qAJpwDv5BAzhmQbghBVchVIqHmW94kOCLgv1FwyJGo1Dcp8YyEm9OEIQzTvmj19Vct
cxC+Jph5qIgtGg6zxnxAl1vN7zFhAEw5Mu+7cWKpaYO20D1CFk/nqYifDLSXSqlFec496y0/NGRZ
Yzn3HlE9cWDbK6wdv0YqjoT9jz7auCMvbeyH1GFkkELhgYA8gtqqw26u4rdI15yVSF2JGLIopJKN
/1Y2jKWGgtzU6Tx+4M6YbulvLefdpLtLTf02/OkBkmtkSA5PR9NSpau/+w1PRSsnZ4utOq5nN66O
Kuhm6kYxKVD1OScxayoaQG5fgkn6DW1vAFeBxIhVHRKBgWfdGGdV3CB+WNTGKfxE6+GZ0UAxbcFb
e26pa8kMybM1V4xrptwpHPZaU8scnbXU1UPkCC/MJ1WOZknLGDbv7HDIJzrWmixunIzve55ZABWY
yRe+Q9oYKkUzanq1EOjxwreopgIECcGfHcARCcvW+H6fxByg6d04c5Tb/xinfmmmiwAkCxlA+WWq
yzfRUSTxB9VfCdnaHXWy+P7YVa/9WYdIcOtIl737eTg/XlmSVp8cSJUm1zduqDac+IjEqSnBoC1a
7wUkFl0vzNQC0XF8r8oYMrSXs4ypOAedxTqYgQenueUGnbLUG8NyluS1K+HNmdEgBtGzYcafqK1B
xKODkuXZ6l+vpRQI78lhcw4EGLrBH5QpfEMOWv1I/XtRD9LwAigwjV1Z7zqQFQx+JOMsBFmUbvfW
Lx3HMm4DPen4vGsV4IpTKxW6OBd0znJp2Peunb6t21w3dyMNrLhLGWkr2E7sWWYLc6284ld58kDN
VADroVr1hf+OUoO+qZsd8t+3wAQ0vjBupYFeGHhqG7xqn9JRsZxy0FIt2gIZuwpsonXgH+g0xmac
P9yc2Nh4frjjeNp+Rk99s7/mVAigcrwulPaQ62x3q5MCDD6kQlivPK6EM2JQIH4GIFi7n4VXPy9f
3Tlzxo3hdJNdjSelQ85mpzVP6gxY/44GTEv8y+g9+7h1+/mV/lz9GkPI0UaGoSOqP/DXwx/F14G9
3GNBKgGhJveyOA6FoS+9nvyaC6UOzrnWqvPne14l5EtVkPddluEQ+Qf58FZ7/KfPmLeFcBPkR7xO
AgLmbhn4mbPmOrTbdqU7qUdyuP3XSTXHRdGNvPlV5mrsGdH1LWLQVzXZ5q6hqR0kTEQs0jZB5cD5
WMN96bxW3jh33gLbO1s8OSn37LZwUiEJY0/fvTTHMBNnUDWgw2IR8pfTeT5MKHpXJLj5X9DPLyTn
O+cJMr3bWv/ah7+KUinE0sNNvHJLSjpzhkl7IB2Jg+VQKXnW7e7qGQIMWkn7mwVd+KjCnLvv+UJR
Hg0apvoYBdfoGpyk/+lw1yeAdgNTlqTElIFt+MFhth/MXPULphEUoUuTgiyTUDSBlhRTxJH3YGzZ
ZnqAm21hugE9i5cGIO/iIAcK7AXNo3pgCXvMI9s/Qi15BTcES+ZAkKEOnYR0d7YxKdtraWrzXUl5
lYkh5P/qqwCcNH8ZgWem7tOyu3SF7yfn/Zu/UQCqGfkXQAVvSS2CGNceg583Nf7Z3ULLqc7LoutM
KyFI0vhFA44w4jWBPv1n/RstUZy3qgc8iZfEUu2PYS93aFK9Puc68OEMpzTGMqwCxsF79jwtkplH
LUKGjCGzoDym03v9RegJSZuuxgAX3EqpzAR72l8jNp1shZrE9nY4nnQvM2GSilf3n1xFxZrsV05Y
ipPIeMqfcN/ypt/vozqPSXSuWb5853EiBlOm2o8Wq5ZRoEKfIg5QdR6dfz+ZMVBc/Ybe5T6jrVJA
5VZOTym7f5TfNmjgMHLRz82XJS0uOeRP9w7CXcUMfH2+at/N5BwGacWmYFWJ6R1IGprEgixai7JJ
o/I8E1cTiDTUXlKOQTKQbTESdXqfmplC4+E+CoxDXvf9EgB+eJyz93pIrX1Di6IRbBQWM3ftcT79
B2/ewf26tuCACJLYTVRIFVgl3nSEszQvlzv3eLzu2Kj8CocAa1BTjbfvCCgAijOALnYqyIpqMAs/
l59PbwnbawMC+aGW0I3zywyLC9X5TcADxfywlLSNTk37k75BKqmKm/FMX+5F+rpSRhXhFWK9hYUK
xgVedWTHIyjobkPtOSFrkjaXkPlD4pFF0hzRr8PYJpKaSNfW3OzsT7+M/3j78AymwU95GZoxLRtk
7HFODqWwJ6lADHqntmJFdyvaAlrVMLcWkBBSg8SHcuOqrzDncyrTkZf8qXSqgs4ah3dPeIUeXCud
RoimKjE7a1HNvTW61Y6Ic0RqEx9lmOPXqOmTnCU2cBznGjGEPMLsDh2hB6/jKll1WaoYGbP9bu7B
KQ0AC0OkSguEUoRYj3k1kWNkmReyqbcLWh/aw9UcIKMNgPO8V7vfMQaAV6aGmqZvszdAQVHgACzW
/+F1kDtEJWzfpAQHfbryKIKFMGCaj3xXTQTLZWYhN0CjYbmRY4f1E+M685KgpxMASQ/91/uylv6T
TmsxCED6tXXKpHkn0wTD6LXUbTo5ytbOguoXHKjMOmFq9LFikQGt+MgAqPZxmYhcDbvMEJrRXpWI
ftJ+s1KwHl3hhV3kz8iz4UPHKgHNCT7xkHLylx2z1/CcPojUHftC5+Xq6ZEcgNuuF0hgGU4c0vol
3hxnHCvWOO7nI5lcngzoaD2fzLotY6GOI8vGpV3FzBYbv05hJ07nj7YqMnnBr3aGugSa2Un98EoD
z2NjqPWWvBS3BI5vkdZLq6Ke4zu0MB6wG95Zs1Uqhv68NMJqNF+O3GPGgc6shp+8WF1nyVxHfOji
3+A/RClsbAd01SNGX00xW86CBsdeYsiNrkuxW78WggUtlGuuGecj9K/CyHBJfuUdJT7Zy71+L16L
hK+Tav43bn1lc5/Js0YyzL4pfYlzOG8er0NsiR6nZ6vvpWqFbH5BpOSCJfzjJ4KNuEZY2DzVMCjO
rSoEtA6lXazR5RNhefy4pxaiMjuDnDWj2c/D//hQxSP9k3Xb0viCT/CaaLaeYpLybPoJ9xGSdvs0
nLGQ1JoBjNBNxkLZquDLP0PmpvQYOO2hvYPiGo4+lKq+GYI65lB9B0IdXoHT/YXfj4n5zowvfAcu
F+tRRNZL509uE5dw7Jyh1TupaFDgOR2F4ZqZDYNxHV682znhciGrXLXfG8h/hUwkRd2IXM27Bfm2
yf5Sy24XKXQH0kDUQoOP7rxA8A0llkbgw01S0K/ZUKHHFKCqDT/UqEbFMX3vQi6Cqf17ZDJTcG0x
ACEHbQPb5yuSw+w1v7Ljtn0Qu+K87ellxIg+WxNC4bCRECf8ZHOdL9XpxY5zj8iqO9TmErSRjyc1
ShyUlIldKk6falyWbf1FShrL3ZGu+Ccranu2ryIj/dQgrqX55UdZHRtk68kj3xfnU4I1UayDAgcv
td8QnPsc7ecSyvLDf6YqMQuEcM5WDlR/ayqrH/SuusQk1l74oXaoephdAfvTne4qcm0q21U7am4Y
qTOtM6PmH1oiq4wqHtITCxGQ2Jgzflif6BiZ6yNmc7QoWTKhggejeYcBq4zNfIWKxchSsYigUXI7
9rIIQk26IuLSbYi8K8pwHXgNl1uZonxmBO2lJlSXyoPlfHExHlRxmkdjHLZ+IXjwZqwAtxCv43Pf
vsjgt69wHz2HGn/xJm+jOHECrbRYDhWclte0lesJ2BMS6oHtmgXFKcQZ5KqPNh9ezo/203Aobis7
iscsJ3pq+F9Z73N+YA9Myp03SbyrYl6JWFiu5YJzvkKR548FeqBK2igUFXQPV1GBO5xMrCMW6f72
XbDgpR7Efg30uqMnKU+Jxs/Ub5YzbL4Fjk1FuPBLsXhM+yN2mGA23s1Tl617WPg3nRLFNOZaMkgU
MoJKuiLHP9rzP2yFchCB1l/k7ky9Fwu1u7HrQw2Uya0wnE/hH7uTGvpiacyj37mopdPLzfFhVZsD
LjIam8LCpLaqizJQ8PYObHGGMUoj9D4RE7f2a+PIKm1/1XAUFSroD5iTJN4QPBSEbIcgw8nBZW3U
nLOVcBFgC5cTr53+avMI7ZQOjTEOhaWVEixEFT/2fkjy6UVLXG4HqR3/D/uQV0zWv0D1JlyGTbEa
XUtPEOqHW2mVG5aLB9XT6kZdkOZLmQcuMPhB/r47WMJcNUjkB6Jc/NPNlQdQMxzCkq2UfCoBqNPP
SS3nqvHy7oTaRfarMXalOndmh/ps0v4cq1N/wN/XbNlYH+2mK9eftJAdqMAdZuqGN5PQC5omYZkw
lRmN0flG+jNHRMcO1VzBdhmBfdPpQDNrhJ/L1KQaq4QnZQENUd2nK5TsJuMJ2G7MK+CiRlxLrq8u
scKML8vUzDl8p3Gwt0RT29RoKdN7RvPFnmIsgK5PLHzCtG4zWBZO75sUVI6+f6aJ14oksgyslqfC
lX/5xKr4pQ91xlfMAXWW9AM2MNfLcNjqDDzu69mpNOiLODpLHzof+VgmMd5NGsKuTnwmvqzsqNbe
+OvOhFzdb3D5flVfALbnLxtfk8CsZxR6SlGfw7wlMuXmfQFvGdnMzOTc/zCBGc51rlPU6u12PDNH
JITu7kPbC/nhi5tfH1KPo7rEB7FKNqfZXlTsg0P4YYH1moNg/WDuJU5WHPoS0+XEzFLtjtASA6Pi
fj0B5dGt54YQBSi08zL2phF5UuGJ3JCK/WC+oiyDM9R2XntIAZwEqufOM72R5TLLeAqJtEWL5czU
bHCVah+3DTF/2W5fr78/rCaBUCf0ELIV6bI3MrbHMAJ39CaDayxT0Gxnmk7ygpNZytkQq7klA3Sa
a64APLVc1RwN5fJ0sraLnB57zPZygNARUoEoKuQGjqyW0lyrH4+bNNqf+kUahE6UvzBS3kWsCIZ+
TTF2qGqQtBvvHU7nM2FA2JhonIo3mSDCwX1oXU0u5/OofI3OuxF+QimpWlFvGDh0tZ6WxaWUNUcE
Yan4OiRn5VKyTxURE8Ngn/DR+plJpJlgvuTHTUfpsT0kPkS1hEUwGhDvoZf+abAtzBJg8NIjdb5E
4lABxFGAo5NPTkVDRBFRJ5tEavurSw5j+OecQW2b9vIu+lBCdDuuaIVWHQAoAYmipXLE+G1Ne4rA
jU5Z4P/xcboZaZNoNMKAzhym9hbEPFpJ/CCl/noigoVVkjH9el4MRm18WgUTWRR7fz4KmzjT/mj8
D4OI/EQNNZOOfomAf+JF2AvomtgN6HrcN0cCx8Hlg6tb7qG9ETCvrONihxBnTObIwUhPZiNjhlj9
BzWScliNvahumw3nIqSPp7vNUMN3ExWlGXh5L2w4o7RBEyVrjovSmIFGSLFOQdUnGJ5nLkQciYJE
EJU5LO4kTDbojnD/1KNKEJCc41cWpOwsPUxFUgW0W9o5ey2q0rqf24gj17YA2HIRftol/5/uPlZx
pllzs7OQFiguqDaMhFc07IRcrkT7IVQRcbMaYDkS2R/wyngMyS4f60KpY4OQwcUTqbGMQ7iXlBly
YxqIPAfQD6L6x767uQkP97LRYPpTs9+InD6Cdk+QEafiPWm06YpmeC+Kv/b2LHZi1dl8hQbQIp9k
efp90DlgjJNqgC+gbTKmzHiFByx2D+YeXNpyXfnEL8mW4S8CKDFzJ0pNfAjOgm/05RzcR+6l1zda
/UwoAJL3AD9E1cLpU+JRQdms9MXNcIjWOqu7LqtIbsAmRPR5euhu/5z22wUjar7CdqNBNxLsZIpS
5XBC+eY7D0iBwGIGlcni3zhH7d3wLiAT9ltJB6R/9rgojfLd/AfLUZM80XzzrG47jZ5vyCyEDYA1
36PYN3+e188UBVIEC3pH+SuVIZ/WsM85AAx71RI4KYHZiE0DCHM3vml26YFO3JmwF8An1qLAPo64
Vej0hPBc/fb2ynD/ELTAYI+U+GMI2ua1wGCdtZ30SqqBDtUBvvJpR9U8oMPkrG1fwQW+v8Zmw+wM
n/D4PwlH8gkQMBFec9eiuVbVzkt/X1Wv0W/Tk5jSNMjsCN6TLohqsOsmWAQpSPfQCowPcQFRDqRD
WebMjhMAmRsHMyObOVDHMmaXgU+SAdCNm9wO9yBkMFZMDtZu0qSjqzC8WZVvAlBu4ikoCMmx2gLs
WfokYFRvTVUKDxoJmu6FcR3+YspVjIxFcm87Gp5E+EN23p0f1wb1T9fJDmkxETpeTZtmQlKX/mr6
qvN6rRYuVJVibT9lZPu2p94daAlsjudi20vK6iC2Ap6nXGVG5k54Eg1Zi+XIMsRMlTdu1iPO/qun
qP81NO+J8C9pQhnc/tZqpAC49XzgajMfXq/FxQdECH0qq626izrjpclGh8OjSdXY8ZQLqbkaqhe6
oWrUS0ocG2UCEvBp2g2ImC8WCNXnWtfJEzvnIWqcUa9DzYzJT8VqyPNc1w9NXQ5+AncTMpLO5amb
OH8bRg8FZROhUlIWdr8eZUcu561RCVC7KVTdgJU1BQK0ggSVBSeyOG3WnZoi5ZUZ0WZpQ8H8ursY
VwtBkSbBHC80ripmuYQSJqUzZks9ZdMmCaeEiQnl9ZT3N/yPaxfiOP31Ao6yN3Mg2p5aQ+N4Khhn
bg1RBidAV0bGpw3DW+C5I9TNpQE+QyBkHsNVyxojw8SjIW+2eSzpIjVUItOloEgMK/xebxpEioNo
T7ez+YLqsHmbN3MF9MvjcdwSFHrK60lrZsotyHF59JKuY6kw1qXXWQ7sA7oK6Yny4phmYvN8ryp6
ShD8wNMs8go5IOj+eHgdtggkUdjbCWGIKfCNmdFuLy6ubW5THism6Pk2vEM9xkxufbfyD4aPFh6U
nJXpKiSH+PGKBwfo0gUb/JxXh8SMkwICQpNgFK4aMliFuCBpZcE73boR5oh2rkwKiIoBDfHePVit
C0SBgU7wQytW/x+TGAjEgRgmkauwU5XvGLdYu2gmEimyadRQd+cjXFiMhaZiqZeSJnfBZmFywncb
dHTv9hQlgbnDCws6Z4/VxfWOtqUCdNxuiL68teMxwjAfP+TqBIb+EIAWE0kEK/gNQLZREZWfAFzd
XGasRlzperrmEiY5n1aT8uHYWWkNfDw4uTst5Raem464GGu/J740PC7W8aT/Zeymk4Sh6Mx/mS7z
YqKMJfniqCaTYfDtC7OlQOw6v4ZwI3ocL2rUknOnx/2VWxP72pSI2pu4oCkRKJjz0r4i3mYASAZc
CVUOAFm9Rt7UWnwKGUAoW+Rel9YL9Ihcj1O4g3uf6pqiqo+s32C+iqXVRY3xVkNfdh2QhDLnyINL
WPX9uyj47Ep8FRH5o2hBCGAj7HXi9XNUQH64A2ZKTLVTBtgiBH8PXqk+GZjvQAO9+upUGuXlTdZs
3Pkbqtao4w5IDBAEIPyw1pdGT80Ps2d7HNcvj2q2i5hbk4vWc4kKX+Yxh+ShV8xbMPTOog7gt7Jh
7ounvHLvKaS2pixcMCUTyMnMQwI4OOFTPc0Htmw5UrDpxLY15m2JnhxkwT6QQF9oxYsJjszJEx8+
gnCU8fMx0/j39ErmddTrVUL7PTUZEuUxGMtQKia9ERPAZEPqLWiY5hcfqC1HfHJsBmZAHpJ+8CtG
NkQEIDn1DHYs6KroLcoeL5qt4j8tkFdvjKYWFS3VXk8bu0YLxP48svl0GwLPKonKddfBPLIxRoZv
z+oUFDsKJ4AB9hwjRruCD+xDPf9Vh7J7f3v/uB7o3VzDvqOG9AUh/amFbGSdn8A5o7OWVmmfybtl
T+ORUU5gsAR+qEJP80tcvLBpJQpjWo0VQ/bAf01e9hqaAJJlwtO92W2CT8Mul042godS3AZLlt2u
UieE4iioUqUglpyeJafHNKQW9LgIn1SFBgyL3mVG81iYDoDmPvRD7+PDuQ31EAFcJ9FJpI6+IcE0
lAqja1MwOWIpWz5ygtMXZW3YwF+BDcugLhxdLJC5iv1WRg5Dya1GOqNTnV0oWBQuCO1AsA750K06
cdFYmC7B8bJ5LXJq+lwCtG3HU+lTrAT2d+EQ1dpGxWXOwNRh8MBf1NKOwLEkEzYzdWrr2gSpZ/DJ
ForGUv3+BI/GfsEOfu9i/FI55Koc4TH4BNup/IBWeVRb6iz/sD3AdaMSfuEpJ36m407UA++OeePL
/9MoDdSpU53YSUnQPnaEeJdtDwcn4fAzPCUMndTzLAxDVruAVqXe1whD2HXy52MTRENvWlImxDyL
DIan9c3eFhCiWs+d5qQPxV3buKe1nANP8QB6UEdiEml2J96vRrvioc2JL8etJKI22pgysj497NNy
CnM8o6rN8414I2s1AuifZ+AyScsjUKnzAlt7ElqSjb+r/e+3AcYQP7aMTFgaffYN7eK/HVLWCDEw
k7sfBx6uNSS9gC1oH0nEUmi944KdQ0ImnV/vlSfaBQUk/mmOgVf3LQwfPD0rKw9zz9FMRUXfK+7+
N7WwW0vSo6peF5XLT20TirCWcDO6PYosz7rToGh79Mg8NX3pBXxPDRuJE4sJoLOGfbHDY85S9TLO
FjuG2x2YRqGo/MpiKZrKCW4dT4QfohSnX8OylvW+dfUDtlXHoLD3AjMK4NxMlW0vprFspRYRyYpK
1hfo3r6qSoQQbY7GJEki5Z/tFvMs76/dVn5r/55NqKXh4Fb3JixJfgP8ebTd9ZIjFgkKL+Uylbzr
4v8VAXDgNOYo12pSJaQMnCWNpiu0tlIpnEw2fpqkNvcP9OIxoKxsoVJY59n2q2d+Rr6DTPXlZ8Gf
z6WH2ZS3OmCiid10mf5eZY5LqMpvJm3KF8d03S4cd2f1kbXrUdyhs1KlwTQtu2roxC39kQ7w2oXe
bdrr7Swteg3L0QfAeg4DMPq1tKofzYVJkDu6Mr3a5WTCP8E2/vWA76rkXO6rphCItVjDvzObjA0S
btIo96Bhu8fTdds18Bz/zMtKFK/xmqPG3tmNdQY+BRsG6Dtoeper/aM5ybD7cqZivppbgJeHmAoe
5j/V4lm7OsGDYelTGNIjhymDl0s1NftbQfJAHBSgVAsS69Gg3brysTDZkMYHKx4imxor9TqfLxpY
BkDB4nBrEMIEdtsOA6iILcwqEDpJ6/3mbzQkXeqyHZsln6lr9wvqnE1G6gOzUQTLfI1lKutAJU//
CNpKB5p3LD1x/2ZZE7ccTJ2xzWUiQH3CNGX5oQHjLCglLhbWy9RK8NiQvUgEpAM/oesYdIEqUvqi
UWRBzEzjxhYLAWDact0Q9bSvwp3dz7yU3JURG5vN4VkAl6Iy/dLh66eVnVvkR/Gq7JqeI/ltvbAg
0TRdJclC1YLgCnPj4bvvX7Xx8ayI0xg8rrJULqFYMgl74t16NnyTRLj5VOzGerLoFUeiwc8a3XCA
YbG9ZXaHryqOhelgGXUWaPehu1Ffe5r5mu+SRBeyBfsjYc3pW6Hayi18XSfmyA75sz++RC7I2dU6
Hhu7Nvr5aze+uxKqVFNUXyjB8UDqZNjZvmDce3qgfnBLNJHB69ozpnnyE3iHF2QOxgrgqvkJstfu
DhsNrI1zo30x8nXMLpjqzXDG/ygmYH3X4qYRC9bi4yuKaxULTmnDJ9OWPKdTDc7FhjHKjf5TlEeI
okU4UYgfOYO08VuFu+q4+lv3C2y4pDWwNdzlrI+ngNTKkuvEGr+YC2ZB1t/28waT8eO29N5pHKhj
wrSsNQgcZsIGPcWB+jxXOdzj1UtUO2tD5Eyr4erThBYDZDVhK2eMQ4UzZoXv8DsDxsF7Q0QHWpBM
n9ve6BYSu5LJDRu1eVoY1ardlxDLJW03BaQiTCZTh5hnXMxTUfour6l8aybA3dbX7BfLJnsiw4LF
ccr3rHiBKb2wgKRigJaIBGpcbokGingShT1IIAraIkFmOk3O51IBbh7plyr8mseV6oQIdB29FdVr
pxZzs1N7hWCLP9u/WFk9PTcpQ8QDfVSQDMXNMYZpVvCY4qUpta3/XmSwYryblxnSrwDRAeBCeEOq
/q4BuWzAYfQNzsitj8mkSMZasRATeltJ5L/+Z+i6735ME/arOtA3dqawGpBIo0CejChLgyLOfsyb
I65YaRGyO7qQU/eeH0fU84OZjgzC1FrsE9ZekHf+HUtbgD5koYP65bMFcZ20gMzn8FeFm74nNy3z
ffOCbJz9eWLoyyBPHHlvD3ttWTbWNxiLpKTbDa5FWvy64dCQpXN6AF7id02oGlNAf6NF9WT0PhH2
z7MgKXDlC/is8o7QyRrdkHvRdNfdYan8Q1JdDgznCbBZIq+svHw7XqwZRs0et/5lKMYdcKeyQBXj
hLfLjB/HQll3TBvSvT9lzdV5ce28gC98hfgWwxNJkNQBOoZyCl+7K49hkCTmd/fNfvhfMj6GSTAq
HlFcfEgkEfWEtKdvjWJ5UPWtAGPIFmE4ZR+HJ//dNpv44aSKDLEINvC4Lv58zXifgjwtKo4WINOs
q6ohyn2OBkKCCE1jiN2zMraublEn8H1slW4zu4RCQ16MQtYuI2qfa8HWY/7GO584lMxr8tvSx4OQ
q77VBT/c3uDZ0DEF71L7bQ55BmQgIRG8h/IfuII+XfLNAlDQA6JFAoYbpMrha8OqltZo6C1Gu31H
ymJ7u94KLZ39nI1lBq+hwtcCR9mEl9IRorpLA1Eoi2aQsg1VMiIk9SED100kA0rtK8XvyitkPrx3
wizfv5ORy1s9z9lumFv8+OrVl5pD2SLp9AmdfzJarcS3sSyYEi52Q3gccn2gBWqsYc+195Yt+VDK
mKa0huMfR0M/0CL9cJ9PDVDo++CCYKr6Z791UHlXPvnFWXKBkCH0srfdOMYa91oV/0YK1yFDLieP
9/jhJqbI/fGIGbbhQw84sXnbL2IaKokErRYrug8oIrOIis0OHtuV5H8S2S5Va9Rnvdzdni4WCFeu
DI6i7xtabi3be/Zh6Xlww8G/kkxQFEPt4fqjd3/PdIbqeNHbCk98Sb/wwMry8EvBLinr+Wfp2cDc
FG0qDkQFvUjY+Dlb4Sqd26VR3cJ6m65ELlwDIZ5RC6eJ/OYiD1wd7n0u7PrnnVuowE7nxTELI011
fGeAsngLDN1yX474djonW5m1jrMfF/LF4p2s9eNuXOrIiOIdk72P/5IbWflSd08CDPcLkAJfnO9X
krMxoWqNuNTsUHO/qbAQrEaZGVGjkB0m+xnJ/ut3CI3bCCsWj8k4WQ303q2hwsj/GMGS6HZwxc+I
u7BnClE3iYebpgf5K8p7aHXf8HMQ5MBgFK1OxU7QocEW6vwsjzbvFIsVQ3sFHLoaGYgwL0VpinDF
bBltQsnxR3ZGV5lex2pTPgepOucOcThYHvrpsNXHGr0/AcERQ0NyL9r3YYVUrplXe2xsgcDYojsB
v+aw3jjns5btCHiPdf9RHTB15SLR5ioXCjHtBJc45fCAq1xeQwqnLQOgXqfdKoajDlaZVMBmq4rl
WsHZCSruZekIksUmQgwMSndlXDlOQj5GdyHz6Ju4zdm1b8LMOj8O+Wkt8exO2VJ7Rot4vbH1owHO
0Eb3E6FFN1sS+jvq2nYfA7NvZPBZkui6T8ZP+bW6DJbSzruF9XK5BlEtAWQEBY/FrNScDXpmnGLB
htoqzLeSpQV3aQrDBuLwWiFbZPezO2RPtfHl9l5hiMJ1QP1jNj8Lk+Izqfxqi6olPcOhJYCMdVOS
L99UFVeqUAIKobXsnYEQVP0YxYvvH+VLOdgaHyRHbOitclWald1wUUMj4jB1Het4UoeSFNrFywIj
UQwe1/eKCExpGFfLcx1dHf99t4LXNj7cs8PBiD2mFS0yMRRRLSJ0g62g3l2Rj6QTT2xJ1s6fr5Ca
4A2WSrkvKl2LEW88XYXKjgXJkMkWJGAVYbdSzAdawXSGSYs4JB79LEr43KsO1Bv2X0v2iHJjvfO2
+eWqZPZx4+vGgaQdKo0EjjP++Vm4R7qBnohCnO5ZmXizBd9sVSquemm2G2DsbAdEl2gNJlBj7+oM
5EV/pFj49EHmi1GXYoanDO74++detw25THdP6dX+Q+Fl29rzeOJ7c97QciFyl8ZFzTJKITuxIIBn
LE6bl7byBHTmzLzcxAT+INnfZ6oWHoIfmv5Pcb/5LkE0PjSiiXt8a3izEHL6UpgszKBvW4kPhyKd
MehbJjM4ty4TAor3YvlSfGLGj23vpoBO5sfd80htkJEdf00JU8uPp5TcsI1y+zGs25qQ7raALe9j
3Am9W3YuKwhaloeqysodKWGjfrrezqojNafZ8YpzTwU0czml2eGoT81pIw+0mIVKGD9aD7hY1xfb
gCODRpGjI992DGwKquP60rdXB+eENbiS/8VsTjtdleWa/PFACZbxr+bFwE4Zvgj7kUyLvPINhqTD
o0ln20oZQqELjr09YAQK1F1Ax8oYK01DWRK1Si90O2rCY78LjaoHZAOmpWLQ8RoSiFhUeUKUPdBO
wBsyBpBcQZhwxyReSXyv321yA49noKPZEcoeh2kGm9H8n0SjX+WyfKK6+q4eFGelEt1HkOOmOo4R
5w3gw2Zm4kvQ+LBUxOFRMz7Y8tcQVvCH5axIAqrBuHshon5h8Rp7eH1zkgOBnSJHHd1A6q6/w/h5
XHfpRtFpn7UEiAe3SGXZOBo4cDJWAsyQ0blFnjnOwPtAI2mSEoPn39u+tqSqNrBWfLm8ajtUlXaQ
w8ZcEK442HEowlZxi/lzPkU+prtzFjB0v4BLa+3e9lin3uxqyMHH8HoiBtD+qGFWrznTC4NZuOwC
WtcTPGWQblvIMbq07gLsrgyY8G+tFwIkzT00zwa8lpTmF/a0qsTMELFfpICf1jJXiC56ocSDukV7
xugkeNg0KWk2HA+R8alZNEf8YOw+CzKFseQ6qwbpNC+qAvJ5S1ANWCZ/fR4dIk/aY2QRnah4gCDz
QMBbqqs1VLOZ54nmkejFjvI08PU3msHs1l1gxhdqFnpGx7cj6mJo4axMKNzScFB/58CbPHqAjIvT
i/kc6C/6W5QxUohVvn3A0LzhSqPT181suPDrwf+HNlH5qgkfoE0mX/ubZ1uvFNxCI4+pnhNiv/tK
L2zdlePjywLRUZPplAp6NzwgDYneEmN/wgvI8lQwqeArmy9p51KXdgp0q93XSqxsNhhABhxSLG3U
mfbbyC5DOUxzp56b1HTw97SJhW1uqCdnhtugiooCgjz3KPIjGRLDne8PE3k52kmgP/F2MBwSWTb3
AWkl86YECZBiYXA+5ZM4ZQpxOdln226GYU0USXuuPNIEqkGF/WKTmSXcvwV1LgDe4d9MqJERUoa5
cfPYGq7ztiMzLkMR+Tf6rA6fRnTvAef4UrCZ1128WTqbVk8f0NBx3PhGoSp7I+sxxzc53I+CY2Ti
++ELP4OuNQwX0DkwC8WqC6gOoX/t6kc5HXcqjTse5eSREwXlSd1S98y6Lf+EtWta8fYYqutAyEdO
z4JS0W08/69v6QH7zzaSmycAeujSrDbvIXLCiF4395Iianvsxs8eGN+T20EAtXhJh/aGrIxNEyax
91qMYmPYWRJxNZ7Uh4XRk+TmiN9iegGf4s8fVSEUNtKft9WYbhINBZBSUvxZxXtZ2KoroOvKkzWk
fnar9xJTLJs08F5jaBXc8RIN7sNmOc61A5BoG7U98RJEDf6u7jBaLaYkfWZZsWtT5w1ikE2KNMx/
/kCJHf4SWiCBKMCBlYZtLoeCyMDr0dWBK5ogQ0YEvKQW28w7Avla3bPhZItkQeYqyf+AQvAjvWsc
G9BFLXwJ2CfjkZ+8lx56IiQpfVaHwcKEObCm9uMX/YoC2e3HWYNCmqUFi+Myb6m3IMV/qR2Vvntr
iPagDsQNY2LM9MN7dkXURe75HxK5HYIp8O8fgwXrqr1UD2FSzIlg+zoxfoxnaDQjado8fQGuge1G
xmdXNtNmr0YkNjbrDRDg8214Ydl500NqaKx7YY+r9pAYvZfjX8+YMvhI1xrzNyGA5jpHxQzm32Qz
5SmF7h0oUX2aFCdGAA0iEjgcnetIJ5NI0KBNf4UWmKPIrbC+ZfmO2Hs0sAVxJdyMmoa3797C7zl4
zRRKAVFsyFkPmsQ2up9RgBq9WoS9mAdf0/hr8leqKZ3kcwVftMlB/4OQsGZqojH4t1AAioy8/J4b
TNVxZLCVRu9gUwAFJFPRrACK1qzatreWjxH1yBzwKOswo3N15Pj8inVoEMlOgYg8yGFfRfZvFs4o
UHIwQuPZ0sMIHbwAd2IjNj4jrbou+S0b4lTQxH0tSXZnmZeBZAl7S+8QPFMFjhEivCwHYP1nUSQh
5R2AKg6dajJm8vvdzWgbE/BaIltVqj3cMGUp71y352+k8dlZpO7MFeuPFhcABWNyArxUYttP9uRs
Q8E7KXthgxK8dcy34ShZ6HErbWskbAfp5q8BfDrnPi4jEz4095P0l+fsJixTVHLMws4ybait4Jre
5BATjZjtIJTnhPEVugR2urxAEefDg3yU/yu6ieWxgNIgZcs0PWCLqZA+yYk7iICt1D9LZs2DyEJF
CbJuBBujT74nohVUKz4ACHaiVOGYbl67ygKTy8pVlfy11IZbBrSI/FtcjtuxgHv+NUC+gk2xmE4+
gi4thp9yCshkZdq6FQTHqfz8JrJVJFRXeD9W1vNDeWWT6acdQeoRYOrfzdfuu0SFA0HodlC3MIXr
WHNcVAXR1pN94W832wBmmav9RlptZZDCp2YLmaKwVlKqy0mi4eoyTMyackD566rpF7OQP7O/fhhj
ycIZzi9ow181MiUEeRXwo91J/NnBBL6rHzPeG5QBDBB7f48V9p+oIUd58R/LRsWUp8x0K/4mWYPI
a14UEcXZmpc0KCLBHo6bPn+2OVFgC4IX/JvyTMcWWs5u8d2hK/evN4r3CRtUXd0C20Pp6hNPB1T2
atpumsIJzBZW5YP5Us7pGYGoIQ1w4O/R/WEqWXkh43YeLbzy8BsEBXUlA0ClW02zucBTcnReA05w
AM2eRBvMzLFW41nGqAl9FwJ42D9kMEmn9ta4H7K7EFAJ5gGxQ5xD84WEg2ohAgJe/a5xk0ZlL57f
V6XDNwyAtB9h1FS2D0daAEagLCxQWD9tL0U0eBdSC2VR2HWooslgU4/CcUHPY+vNfRj9MKEA6w5f
4YUh4epfFAnAaCopFO+ozsJEcN1ZR/7liXu/SFNrlORkcZCB+NZaJfjgs7ofFB8WJ1ZNnyvqIwTE
DegOd9VlpmR6UUm8AqbWxJLM7R/7h0pofiGMiLz8TWN5k9+prkCPyoKsRzR7KWOT52xnGxpTQAhC
tfurn6Nathc1oM9gayV9GOsTNOSQNVaDQCdNYo03Viqt0dN5xwaPSaHNQ9fTplrNo/yMMFJHZtsO
sJKtMdH13sckuvySMgAl8ovlv/bIXVHwDM0nglY6bsKhZlApApJrCbdMvYc8ubeJ1g7qHFugy0UW
x4h3Lvbl9vPyEd0pm8Qtwn+0KAhhvIscgpvfRtRca4R6pB+MbZT1YN/aPltixYspryNh83IOLmWt
ABD3pdmea7RpJewZAHcIIp9fckE/fWW8hbajWRVIbGKxu7MA1b9hr7l4ffEP+6znFnFhVOKjvYDM
q/+2x9cM2q6Zydm9If34WWyFtMU4YTCuhSflnj1mzkaY3mcIafqLhiGR5hp1TPbN09Gw8bIYpv75
I51xzz4brHRjN5oOdJ5uoo7CW/UulBjRAygWnls0OmK3WELFTHz3pYOvq/nj9gCCb1IGYUkXWmuL
6dW+TlQWdpU9e78HlaIbuZekwTDL0N16APPNHCq3/D2DT4qiVsmqRZXtyCPyk/qXdzHj1yN2IRah
MMwfNRRZZcHgzC0YUIOdjBAufo9PHHLvOOnUHZE/Tw0Iu6blFlQy5B83SXZdORLV98prWeATRKwP
DPlbsIhzp+zxK3C0EC/bbowGNZWi/Uhs6vVSWcOcTzT75tYiwEvwGIZN1DiC44bDP0e9nPNCMVe8
h64EHiHnzAs/gfoRYVEsevJ6spn/yRjPjet6sp5RyluPWlmtxueBnTutYa4M6DnEkxN8EVJVHpmS
B36PpNd8cWxvX3OcGMdGOFBip1vehFGyxBlMDNbSj90WdFHTwhmojG+CQFgnBbylLlF2fooiH13J
x2PPgEtBFoou9LvKUB5/jGEUbVlpp/6BJKaTjUPCVELv8K2E8slyDDSX2tSxqfPvHMTeZi0Vscp7
Q+SZSJZfazSHVmtcIDKt/NKsWblDxUmJzlwDYnPZN/Vt+0/+hbv3EzoS1RqvYgPBmFuIZ62CbJ2B
uFo/5zIwaD7uAtMgpgDbTEVOitMAzDaJX4DzQXue2K4WcnkPqxpHLvU3y6BQj2WdW0py3FJGAmh3
AH8+46/fvTFNcVNjnFwoDUGnbCGTAiN4DtUTEE+9UoGG/+pOmJFlLgfVJzk7f21S3gQrXuwqAVGF
nbCPhJpmVIUb93Nh9o7yTIpkWbuT6TjiH0X9vPSs2TJUE5ENmfxYFu9+Pl+vHicOerDucl4OrvVW
7xureYrwvbXEANeQcib9du6h8sbvplob6FRGE2Ro6VG7bSUH+xFXFcYXKjBw6nM5yYUXQiR4fPHl
8OeaT7ElMhDIgQK0oANRp5b+3qgYQz6B80uxeVgulv5moOrOfL4CqGympAnA/DyIL+YgI/xdhvQi
EryHN2ih9CitW9AQ3Hz2VHq3SUfuN/zIFtHx3Bp5b8eLW3+QhQta8IA4VCK9bCDnPcAig860jSyf
TylqdluyLEbnSiM/8s9k1FWHPzVtFNaZW5fyiBk9w7Qh/IlDIP95MFRQriz/hzjQiYbtOpwRc2SC
9nUegoFYMQn5OojMf8K03HMp/LajrAdcgqCBmhYwAEn0Ybo3LVCIezADGR/uKwLhVsqL5+MdrrBl
pUchcQweg/jCwdWctm0P5B/B91exWo0jTIOpS0zFVbWhcj4r83bVZJ1BhMjmYeGNJGT4JM84xu07
b13v308I1EZHr+3nbZLpjQi2MaMxDcTF0X8n84ksviGpFi1IQn8JxYFX5c7rmtUMLZPapEsDsciU
TIEssV54Ynb1SBdvauA+nxWxvO2jmiXkow4dRq+FKmQE2khAq386kgOW4+Apjj3g4eNXuv3DnKOu
Gi3QIpXHsmOcTXnI7kMvvY17yUzaANuljwgUNCgv7R59pyUYKcLGJPpTq43yrr2MX1yXHWbl7pOY
PwTzloPuvG1d1NERw6iVoYoURuly4DC0sxKi1meFVYhMftesQVSyWT1u01P+ltMGlNlDaMG/INVx
h1w3OGwRqyPw77lExWO7iu8elfDQkMSt0b7L6g8137AWfgZ7JrJmSUe4TDUuU+qYbMYUpEGEAG5R
r0OGGc3YuPT2M4dasjQdD/w+HsWdFnAm5Sp/Jd6jMYJP8uVVghSn5/bDuGov1OEHz98ziQjRPjDr
1MQr5ACe9Ct0JTzfFEgzpuMeqWINfVMFs4UIEFUgy8SkP99LpaNs29PQSYjWVaC1p62jzzPhYPlr
4JxssSHf/AcMvdIu7Kuu6sqJ1PHva/IvjOQkD2aKKAkmerU9YC+ZGQsswGVNLW0fPeYnSDKl0PC5
YISyIMsVU5irv9gWQJWLR/WMxLGl1rTZYxfWkSAcmYzAdxZ65Q7md3qRmIT3IGtVXrB8D9TIAWdF
Dndid71VDG+9KLpWh8agJ/l0KxurBnRBe3yev1rnQfv/jeB/AdeLLD02A9h62wRughNo+9McgZhq
imdSFoPcsuTzlTl7KTkRfx0ZG7rXMvriwKj5yxm48uaG/yvgWRk7114ZmhyepPj09RUNR21ZeNyO
kkWSiifwMj5ufZ95GsE4ktWgbajzrCWjBMKU6wKh+dRn3WpyPhLsScu8ifpPWGWcZnRFzY0sGH8N
1KE+/cIWJnOISj//hh/js3mna0HPNdyq/DdGIbxIXrh+237hdb8yV9I64itammt6L5jzUE3VzKTx
2mpINhFuoCM49eq3z13zVI/dCe6PBEn2smi5o4g1LhasPYhmexTuHXHmdWs6oM5xJhzzD1QoSHmt
vbWedGMeaohUtXVvA1XxL7Z8/05RA71BLFyQeORkSyVyol5/ssjlP1LIp1tjP3yfdWExGd8QhxCI
jFJzhifVaIdmynhtjDV+PQsHV5ZxslVyttaQZ7emhAEyC3saJWASnt6wrDvoE6SUDb0ipLSomBZh
axHiIFhzVhPoOGfNMLt3+9KQhBhm7Tj2yP/aHKrwKQgOagj7/SMFcthdLkRr5GufNDe27Xyt02sD
6Mu1SVW56td7lR40bQOISmayGALizJNw4RuS9O/YoUJkHErdfYffhyS6mj4G++14bSPg4NqBS0Sm
zK1G17EPTMfD0SlW8u5vKvf/eetFTCVOnXJyyhCR7hJkCbSpc1PzlssuD0U63w2Kb0HcISzTJ94X
KWA4fKk8BocV4cDjYEnaHOtlJpyycdO4m2065VVfaD8lbwicEzyIIMu70gxGmyCl5EsW4k1CHeHb
WcUEbsydDH418Fk5cbFYoKSE/ioyxW/BXWSe8kNwPT46zU3LSJqDY5P47gwonghaelLTeCqMNWVD
X+aHJkNT91I2ewfItemHzxcMHFxZv3MKV1DA/Gf2tZl/qdEbY/EryU44JK3nvJpNwCvN65uxRCa9
9+AwpjKWAzF4WJBKlLQqCEOqXxu8lK9VqKh2qXy23HuL5Y1+FPqHFZEnseEpWV3L2/Nv1ExSwlk4
tLJuIQoVJcOpDcLl+vTlRuHD9HEZ5+g9XPVoYCAskff6bL903LDl87P7n/bxbHZZOyDmR9NMUIt3
uWOuUq0OBfkUVjl74QMFPPVpWiOhiNf7xYxZnU+LZ3I1kcbTT2m5iHFzxmc/KrX/vvJqSBP730NA
IjP7tpLEnRPK93BMJLA6xsfWz4m1AoNhzE8eo/hmoVxXpF9e/64XkfTS1lhwwZKJcGYjdGFpsZK/
w74mK1Mc6r1noSkcDuJWTA1gvmd6S9t0QbaqCzqthqp3v1jmKpRlkHkAX5isFmOEWtMVdP9L7xvh
dtLT0AZlgf9FpOF35Sqn/OhiHyP25C7AuUoNEvK0vzH1leRaleTl7dcKUFEbPDvxxgEkh/7KSICV
rZwQVE9x8ZkJecWKlQbGV9mNPubEba+rlOtv/Gr/xL5hl1FE+6VMd+ti2N1QfqSjUvEHT8NlAlxr
m8w/MtczOn+GcO4aou8SYyZch6lwtVPEYBiqP12SjH8bRx0QxlwcLFFdntJHJCk4yxkCn5HkDAcR
bOdNtr9ItsGnbKAxKj3zh2js+wX+Yw5+DNEetljISmtnzsFvLA4Ln66eqQIyhQCuGYRywphYfQon
fHG5sNuBH3R+ozT+xkHG7yQCkH7WMqHL5OsLU2UaHzdI7wvgkQ9nNINKDQBvGMhUd9Nxb4vJuOx+
rutqrHeprFDvPyNDMI3Th7q4BSceKZi4EwE2LAnoG3hjVZ60C3vxaNTKo8DnwzJNxB18iz7UZ4bm
YoC/Y5ABK5mj2JrvX4GyJZDWI4ZyCY+KVKGNIn2E7cFu32N9NXQZmSbj/BqnELUnUteHNaOph2RK
Y+L0xK9D3pWOhUA7tNa+b93XWG/y0W9EPg/w1UDCQclKqpQVuVgBOjNLX4iCqTOiZ8s/nF+VeJQo
7Ov+f/SddRrAHOeMU9AbJgLKydD19aRqPaWFmMzcNfmcohTzw1srdmwWJYtvmyd2ADXEj6KqZq3c
Gsy6fFPUHAUsDji46HiCS0/kw/kWJ6g6p7mPjRskkUBafxsEOyJvLNwcXDFMK+hKl/YQEhJTS3LP
tZ6V5XKSQQ2aKWHcBG1yErThT5Lpl6Re3h3LBunRRD84VOHVVYpTBCcoZzkRhYe3fzicwZWVNo43
ALz/B519MLttty0pL18ZTT1fwjnCbX1wD3DXd8gamQrj/zRyy/Q3+coWd/bGfvh3hmpUh4sBfv2a
xRp6xoYyrolC7U5CsGslxmvCliFcp7Eg+3ZrVyj73eQ0X0x1741flltunzjSNiL/P9U5OODa36Co
BLiquRNaVDZNNThyntkXvX0Z0LURgZE3xjl9f5hkc1BnE1TIkCG31ICsx8n5XcC4jNmMpiMD3xS7
iumc6UbM9WmhSpLRjm0lkcGOC0RBCWCvnCUHrjf3R8G+/ldIOjb+gjOKcmC5iCxjVQGz5xeIDnQm
o1gQWre4p3zTkg+RgWnXsDSCPRqB90kdcRPAVry0w2XK0vcrAWcwpwlnydsNPK6Ug6/OO6eSMFrx
/QaNHiJyZrZEaxswQKToGmlePwJ4Wy7+dHlAiJuOIXSjlOHARSubRhnuLsQbirh1FGiCEE6QcAAc
YGUoqJOpBhMOzX7/R9OC9TOYQvt/dwukk5oRO3EBWKSEKNJ/y74YeaCdf/LWOEBf6q2L7fFjUWhn
6Pj5zfPPtBx1dL+bQYUhpzvfqZY6zeJpqhOcK/vQXwyss8xFrkx525P/guM7Pd77DIqyLIS8eQBX
FXAODuwim3w/DeZMVfLZYGeA0q3zzZIYx26ZI3QvP1Dwj3FZ0YxDVZ4eGe7IuAitZoYtriCbAdJD
5ed3FoXz+rCpA600Hd8o0S3uPZl4EUgBaAk90gTvgIRFoCuRUFsPEmHn9nVuo0cMvcRh4540PgvB
HKXYsWP9CIVJ+U07z1VEgiE/+IBoi6jO2AyV4xieQ75IxqZfAMBF8shcMZvTu+H7IKLvYeuTxZh8
fIELnk5DFmM5DSYSL+Q+SAfKRe4fVC+AwLUYpAz4CsJEJdLdBp1sN2jCSKbQ0+v08KZ/sEDbhikq
VKE6Peefo8zWpC3KSENpgHpPSc8G+IU0K3gYFb7awbhli3UZfhGWNo1nNT9wrX7yQKmJ4hPs0HEb
yJCbmWUgPl792D7kqSTEKFadqVh5I+va00MnwDhBogF0UJ7/Lny69qCI3uo3xvxYL/wPJy49RSW3
g3F3AYL+Zmod4SJWsP+U2To28PSRTbPTjUKkeOqTUSs3J10xEIZX3SsVQcUF1i9uriKuBvg0YcFs
sCMR82y1UMXHtBRv/sJXjc916OtGHIkgl1U58tEZhwgU+fvNQzpINMsZ/+uSeDx7nJDt/O7/L1A2
CMU7hITq9Dt8PFXpcUBN2Tvgp03Trh3xbKsfaV2c9tDhLOOlyJjEDBa2CAe2tRp5ww2UANJlvnKD
GGS46+BrPjIpHSUcjMHBygMg/hd99SBtbW37rmwfAmhUB5TAyS2UacPzPTGGed5EQCN5GG5+rySq
s6aKSNWv8QOR1LVSG9fkam+RjR59QzvagcLmAZA/uCh00eCytyQejCMtabxeJYopO6SZZkC+dlZi
wIz//S4YaiIyEG7hhkxMPPALp9PGXBT8ctw2/TdEoisV1uBHaXYCfZzHsOKLh2BM87swlvVIUYXc
N8xlAc8u4gsItitSHyAQmgH0crjOO7NaLua5ltOeRzu727paP5dTQs3QsGUhSL+nOJciq21ntx/j
b3CcGkqcGzhlzTSZgV2qZRX++tJEBodU1y+uCCEAZvmqmvnrKzy9z4UFKZ1dQzhmYerRNjSIEU/b
60yYMHyprptHzftOZUztoqBbBAyD8R3nE1de5rhYi8dxC6sJhAwl8KiPod7jl6760GX8XazxC9j1
rk+xUt0bfchVmfKT85LRIkkuPlBoie34HAAkRHI7SbT4T/tZivg4lINdtNK2xcGy7tkQIa9uhbVs
1rZ+W7sG9Q5ZfBRSapBpOdvdurEDJ1/d6XprilJRjia4oaNfGes5BepO2P3ziLxTgn2TAR0eilt7
jBR3lUOh0AvFxMR1u2KzUHSjcATActAUbAjkeXZSS3cxGfd3PnLFmv/QZbhsK+t22gAj008x5QSX
PQsrJPMHxg/e+h7jDbd+cdaPT51hTo1kYZxRz7qmIaEvGr3J8c8iGHt2zBwe3EXNcjtTeKgarEpC
Verpcu2NKMzqulri+B1gSI2K7mIDtHvI+3lvJ5Iz1gVaqcRHJdwNtwGrsokDVX9ShIwk53RSddji
1hmO1AlvCB3UbFwcdtN0HmigrBFYUXqXueAhfCzByT+fWTgxnT8NVU8/2xC+GBAMc+s5sYLXER4j
+XaDp0wCEN5l1aIV+BIOUcI5DJ3lqyeSJ6BvEpQlV4W38IeBFBmYcAPc6bzqHPLM0ed9O9KLHDhv
ttp5AJa2HdxXPIi1gQhuIUWsmk80zfjChv+qwxbP6+4bfQl1E1Y2xuISmjC4Gfx3MDrIYbt0tC+O
X5hq8iNWog5i/PWsfkBfTYg9nVFMNJ5JWZ1z7CiJZ1RvH0IlFLhw0QxDIAj8U0Yod6QRFb4jfhpk
VgpYmnbuI8L3B7EgVms+cvAjwcg6w5wvCP6K1Kkr8uNwXwveLG4fWC0AskF2tUOE3V8VHTlQYnEQ
7qynJk/yYwB/rfk8HwLGgDLpFZtludOd545yEwd2wpJAia8kVa2cmYH6kZf4KJo/dfQfiw3X0Rjy
bvlaRjs+Whi/27hyLq/IpPca4N9DvffNFbwo6lbeYOSPAf+TQs4hNIB3JKSRK/Ed15xvOUq+Nnld
ZPI3wHLm6AxibXA79eBbqETFbG6TZus+/xh0XT6M2n5F1Wxm1VdLLFCrrWjbygXl6iOcfA7IqcIy
Ts/MtRYmuOTAWlQ7ryY94NE88xLbeKlyc/iPpxqhtATTdwIkBNt3GURQN5Q2wDADQbDxFFopFuJ1
4qWfQG8A+WeUqY91N4qGapVNyC9hlqZepKLxIa1V1K0q0jbnzbaqpXsl1IsbZT0yQeNszrViKLTt
thh88+OrekVSn5SKaECQWnAlR7+w7PT6ehoa3t5RLPJWHJJ+gjbYDCg1VrMLtys9ccPUV6uyjw/e
89PQFqSQsLpXBsXuOCDYy6MEM7eNDJ9oQ9i3nf6nZ4cJg3EM/5g4IUfLJZup0EpASyEymWIafrfF
18CtVcU06wWQNPiYYJMzh76GIm0ybHNhtdVXhvrUc4Qx8GdfBBnfg0flornQoYecM2i/kgbQ6x9Q
ETSM/L/980qNmnrWbjXlMZf/x4ql2IBJfOjnitHXm7Y0hxfYk3byuaTXaKFPW7Z8g//ESH0AqjK9
L5xwcIe75ASnwIkMnH72FmMHHxC8UBtxz1ss2hK32HmyKcWZ4IeWNmXMThQjR7zhkQua+0GfnN04
n6TYa9fo5vj7K9rX2hVkkDWruZu77r3jBobcwfSOrS2QCHEd2qYDscTW2ggdHnqgL8dM18jgxCAc
N7KutUebBdpkW2mORuciNcBGuxrhUYkxh2GOEyDRw53P26RL9i/CDqyRhVyEPBFFyuBfP/spONvl
Vp6I3sYVobPFow2unsY0gSJmlnG24nBTHaGfKDqAGgxi6nuJrP3iBBfPvYxPEc9ws6KMpEHBHmdQ
PaOankz22VELqYES0O+9mwIpv8fEz4b6jTh1Z8Y6lb8KxlPoQ8c1j8slNdKiaPqnMXVwtwDfM5zI
SJkr1b45f7FUyNPEViioe4Zv5Nn56ev9U6Uva21INZK4McDRlxzappf8hhDIOFZM5HZbl/DUj4cg
2NI4rTxiNxV04eBJMVFyhrgBfmZOPCq1ZKYL4qH6Ol9ppKoTGSFjpmYiUge/MbZhwmQWXTqhZ9FZ
tZyM38UDp3p4mzz4guAe01HgcoBP9Z4z6UrgaSWeYxsw1K9WSbzDmcpSCbLTzDmv+phNWty/sCsC
cHRRcwarvmykEAlajgNxQYXKevB48WdMtNFRxj0T/nYSuYnbYEJSLpyao42YUNhgPThuaBCUa6po
K1sxSBvRboXXdqdh1ZRYVV1u2cF5u6AH76jFmG8q5w0CbXyDfcagAy2dhUP4iwQqR53ZTrDViXe5
P9DnByacxWRRGgYhSesK1TiOwGp/7XlD1uMwCayXzESK1Prk4pG2nCsjmiL051md5HBUGuhceijl
CDGUYD6P1Fvsu8nuSqyYHIWW+6ztnSV+Gzb4G5CoIt6znaDSg9WsCJalSPt4MGEEgneEg+mQKkE9
n1OpmJVAoty5mFKzNr+6GFgn74y7hQFm3L6CkpvqZL6f2kNTHBf+O4WnJdGPUwxdZ/7zTds7jgx0
gWm/UD1sabP3Hi8OShQQ4X87UPMWbsAU/s6Fy4Ourl4G43/SE/cRk9K4+t7lGQMefBYFBW64upOr
CmBSRifn7aEdyAIKBWfkU8Zpnytd+MJdCMbsn4sKEMoXXEYPtBDQ01oNsnJ8dGkjpk9Q7JB7cmLl
dXNZZYcm74h45X4VGUk79Bu/7xnYN55M0gC/lWaWhGc3R5r9XkbqSeumKSfpWHqhZz6FYxA0dFpX
XJ5TjMX+NbOUf4og00PUphQOCGRylZjE4SWVmwmdmDVLocYjsBPqgOmTHXKHBdL9Folh66tfSYmp
puS+D51XoSVsDTqhShc9hICw5pckYWe0xweyyI38X798DYNfiUALfNc/CVCfYrX99QbqjPiS4N1Z
7hS9XN/xHph8OntDP4qGWHl+uxxxQ9c1auqj0MPoG3NBS9mjQu5zNdqnS3l956Uadt9Fu37+Zjse
niNmaKCEgcJ/mMKNMi3fraeWwuLTtCMoeIwzhu8197/hNu9TtDDaUmp/VcNni5gU2TcFyeXal5bX
Y8iHxkoZ0AuyzCmOMC8n3Cxw5ExEZ7zchB9/bGKu5FCAljLO3mChvbZv7qJTeyqgSckB7Ivwx2dy
9KJ1OjwUMjCfuDpaWToYOIxlsEZqEExTQxes/4D9ZVnkEV78GYAjZ7qwhvH0O+gE9rzhpPSol0ac
0MBKeS3/jl0l7BJk1Mh3otKCQe3W2KKe9DRJkB6GuRMxwQg/X3x0SFI/A+DLN/hg73jGxDHoYmz8
gfqLD7EJIDIY5fcxfNXyhvuBA/GbpI1XgLkyyK8eFGboxhBVxxZ7l4GlGSO6enYSmG9BGhy5g+Nn
hfTk2ZLJAaXDryjQGeRUMJJcR7HV3/KMYdoDhlEVVhHU91GcODLsr5cYuJp/EaraAyYRLZDOcSL1
2e5MT7UPM++H5VojQIbnFsQ+m0i7nPPJOAQOiqtunJGqkKPwl6q+gXd7NgKYy8gACh1HJJ4eox9N
Fws9ZFLZ2eXdihhH4AkiZjwd0mIeKIbkYhiK11LYjrskR3LeDr9SIqN87FAsLz9nfdo35IlLt2Mq
BxBpcQ0RWLV//I1h0sfHjilWMy4WqF2RVGkjeNN+cUAiWPnZ8UYZknveY9SIGkiZ6u0PfuzotcOA
1VfPyByGVf+AwLWW5YsLnOHn9vPkPV/eqI87BXdC3mBt/LhB7VBqxgb3fr5rw8Z2mw/zXf3eHwZH
SSQUNyj7VGyAqmowrXMxTg7BNni5IMi8RekIYHq65OKRjPLKm1xfOZgu9E3Ep9kvOZtKLqLM0XS1
OsWXnxDDCz+XzFeY9nxb2DTH7ZCGxsLEjNvJYx2IO5cNZXoPQJRo9U2pDtz3Ip/rB/gchU+quDsU
mKbblJh9ByGxAgBBEQxEv2/OBX684uRmJMA0PsOeqxSM2BNDDj1ldbJpmicj/mte2F3AYSl3Fwi/
Jym2DpX8/UswEqqgBQScG/0YtvS7Ahb3jNuGkbBBTp5PnzsdLIeIqw8dQAjv6HTrA8HAEtmfpcxW
OvBJ5MdNiqOimhrq+g6ovD4tIgMX367vhupBYDdWMX7nmWMxBL3plMmWhEtJa+vzT52QlcZZaDBS
o5/xHnYm9MLgysgUhBxyKicx8PITZQbmZ8ksFFBgp1Cp7KxqoiiyGFmhUI/HCOyV/Vt3VLrm52lI
Be2E2kH/OT1q0fmPThb4htAZPSEkwP6gpB843ZyWaWaQ3KmKZ79kFYhm7j7guS/GypFKrCmE5ija
Q8QoTes9OrAkDic0oKDlkGAGaaw2pSX/PWCFCksyL03BF9nMGZCY3eLygPzWuxeIV1ZY/63KmOYr
sUC1NL3rf7RjY1rRgSv23r4K1xkz/8KhBQNmoIMQNdI8vH6sh9IlRpG3hB5FuM5MwX/NI8m3aXnF
M5ZYZy/lVGl5N0HWpt+3OhoEVBLPG+x8ieuSEiwx9Sqm86olD4GTdgzXL2msIX3P9W+hukc+aWDh
ZqEyGe+PYSLGMv/NwUTmOav8TyHdd1pE8klltOBZyxily+n9Uq0MaBjONwMqkI7YcjzYqbk7ER3x
SfdN/LxZOcNZCDZGjI5MWMu/74/hY0gxUC6c73sWmcgdMK7D1t7HowJwddWyeCdc6pUTRUBiwfbz
UQRvIak9ai6L9jROPiSqBtLODvSmkHz/kW2hdR/47F54e2HMkSKiNCNK3HBC6IlA4PdyLTAh0HAN
6i0vzDoearZQckSREU9GSSoeipgs2bcPXCjzZ6necFvvJS1jjqVE4WP60n512uTPBlIQNcVBFNjp
bv1okaPAxIT9eTZPKJ6qu54WEqbjRANZfqofqog07ZGNjhzyhm/HB3fklBMEOm9UMMty2Q7m4qfx
Icc96y5BDSG9NL7E8SelOu2zFHUBNGDDA0EcRDD0qQpmaum139I7CmqobIsIQCYiaDNyCxF/FqmS
W+AC07tl4bOvJhFd26tQOfvtxxLgXcnSusKQ371zVFjuyzcCHLWL0FdnSMNlJgY3Q+dK1UAw2+wC
PoNo/gV773EaNx6oy1PQog1Gj9f56VhlAZ2hA/LD/oOMFkhc8dGKv9TSuU5B7NzHK7tKkvYxI+eZ
C7vu8QkAmUqCeSpe3VoSYqfizeU5qc5+7YTO9bVtX2dXLy677/Tl+R/1RE4VHiCQuqtpX8LEKq11
Xq6rlAL94cqTHB0Akguc41hV1uV1owacDErv90Y77DBSBpz465vssmlmNcjdZr8DpZgIqZ/CEYS/
k30TSkK9/x0r5AMa3wGRPPGS+x9X2rq09qP9K5ub/xpQY38BD9fXNuZjetChrcTfE9Sj8jR3PLVH
lmkpfdXCN1p5P0qFnkOOzjfWxM7jTPKySkcHi3/r4eYBhPQxhcQ6Kafze/yQeCmmiKCQMR3idFKV
7KhrD5+tpwEsJy68apJCopmlGrYkR0Zr8hRyC7XDxG66bROgzraM9GRIMTuYhrfxLy/q4EdvFlqx
MBmVuI8v5IZT+bhpRPxskZONtegTvYM9HfnrTnzUEe/X+b+v0IH1fgUciJIbsGmd5oiHOLHHtYmP
Q6xR1h6aFl8qolECOAlnsrQov8B2ZtrD3RLF3cQl5O+AzwpLUKJungdvizWl/RB2kIg2gk9JcLl+
90SK88P5t+5InsBWptRIIL99UFmx7tEINbSmYxanNiHPAVmrJ4VwRHrTOAZVFlqR+5QKPnE1yAtC
V1QAwiYGIRDtTwsr9McfBORs/BEi/szzRNviJwHslXGKDOnAmMHRt6QK8AKhhnNq9pPTqcxWhPcC
Q05dt5blHhKlnz2IqAn8UkjdfKGrWunkuqVDrgpREyBbQn7cJPtDjT1vZZ/myqBRGeRdizMZSD3d
72tcpVcU6v9n0eQOU0yrTAvR/7Yjqc3q9ug/YESRdY7G5Wzz4dICPdHF8YyDoZxAlwQKQlKHR6W7
hwz76s4vAconxJuRgIMMIEb4VQhrf09G5QRFUkybF8HHT5YfiosPA5J6ZzP4oaOT4oA2PNuv5ZMo
iABWspER7dWWBRBuBzke8OCxd5vKpuXLO834/SWKwnWXfOkesLKQdCPKx3s5Q4ZWShsp5ohrr5Eu
snT2eZWnKJ0+sxjIhhXklqF/mhCbzqP8gyglKXt95Ekb2UVQzV+aeoB5UUl6vkQkPjQAU9Y25oMA
V13r3yHzUgjbjzFP6wEB2RtGN4LYEi5IoINIDHBguL9o731Dk6AHIOCO0JqZfrueWR4lm7kWoSZF
Cn1b36/qQmqJc9VeT0YNFntZhXugKyBfCpViC8535S1Jg0Eq3tTJpuF7SNNswTvWAXu+ojd62la5
ai6cpmGm7J7IrFjEbImyd5QOM9GtR1lmbbSBrkZufJBGPg1vHwTJSy1phfGzRXtgidPcxM4uYXHk
BWimYcB2aOE3fINgx5Yv/2w+W7eMEYcH7yO639qH/VObWT9zVp22aP6XFF3Bz8ciBOR0eXk8l//R
zxs4lGChHqDgoAyWBWVwOqARVwcJZX32aZGg82gU5S8hudMsW3N7qsU46+VNeB2ZAKmb5DUtYo3Q
OxTd5EFfjWGawNl6s6CkkNZ1fxKhe0mLBet7RsYBg5g2NCOqBk58vWVCYHCOhvvxf/8jeAZm/fz8
tQka08wA051dYTA9nJooe+W78P2lKEeZVE/zwJ9XOv022R41VMYus2IcWcf12xTmdC8WIZ421T9g
sdKFQfoFw9PNEZ4Fz3Yb95KnVXz574rBeY9gH2xNpfl+AlhrMpIbxvEtqEIk1jzgr0ZH9YORJl/W
inagUMDRo+oGlXpK5VpZP5ncx0tAQqJjxrLo3YOr3LwDj/QeX9VzuTQsQhWDiDx7NLPf5KlWVbSr
dU89JumlEldRDYf5uojxCKsxo5r4vBZyk09lNH2HkRi5gI87ebc4ruo1kh/uZAoMil6BzPua+gWD
+vlYiDXvKe43CvKeB/TpScGt/WlQhmyuz8CNn11neh7dmV0DAumdh3ILvir3jEYHhna2UphVbMrH
K07qA7zVgTVjmsPjZtap7y0xDZ4+K0SQA5QmJ/H45htwRP0S3/mFOiAnRJYhIy+5eImelfUyZkru
OKkWNLEEPZ7mgbni9Xa7UYa1TmDBHieRD8Dpo04G+FT/CyvBIsjRQRdY+CuA0FssDfzSHGDj8GsE
DUJtpdgLR31IP4lCN9pLuPMJawqUhN4ApoKz1eW0pHOE8FBz9h4Xog49WevfxBZZJ+ztsYZzeczI
WMmuvRTOhhwZq0DQVwBBndCRvLkyd+Qx2+3H2A2DdpZqs9fWfJxqYHO7cd7XG0j/d928M1Ap7TF5
yg5rYI4S2CrmaC14Kpf6kIdNEaX4yJ0IRvy/B2uNJgm2uUAaG4zGilSXqk6Q9qy4fZRQ6kR1i489
XWEBw4xlaZOigjgXCck3ZaQ4etWVnEwK/k25xvLzsYK788EsLxzBFc2t5dGY8qh1RIFqlt07w/9x
dMIlOZbx1Fg920qhX6T5R2iQ+9XswmWzr9iBiylY8sKV4iBZPsTbOiCbnjvKA00NavXmRMAOTvrv
ncGfvL2gsta+HkkVV4zvczPQVj49w1FHCW5Nx+Uue1BP7rTtenXm1b65dP7kxIv3MnioxpSXqTDH
b9KHFlEE/KgMh2EW1UV+4TpXzHOIIZRJV08fVh7E8lG2wxuy8IBqdC5E0hJvApntr9whEVGNH5Nq
HqI6kfRyLwK5Rhu4n/XLcjms8mYzqHSNTAWFOIPjqiA8mVQnbC39UpLllLoY4uio4b6FQqVvVrkB
Xl4BnTXm3UVpH7GiwJ9gKBIfTRzMIyun69VsGAonrdVmw/if97ZsowIiLfmxji1Fw3RJBvk9CucW
KRmJy88VRXp+YWxRvU6bGuiKH6VFpJ/Ulhx4LQ+kupUHfoxKhRePsTMcIUaC0Z77NBSgmDEt23VX
m/qIHRVLRKW/F0VbLew8SgtLQBgW2Q67U0XPz81LVl59/fjR5OgkDliEWqgV/i67I3Du+uF4jlSU
k9mogU+FIhYML6KTl2istBZaIilSrtvaVlWCgYOWYqJdyJsbP3QekWAfY7SBL4vdT/8vXWyK2zLg
vxlT4BQiFcrOkeRX2gy0WHnjgS9wthp2tDl44D78IJ1l9J8mksQZmwE7Q0U7LoXIeOQ2SwT2tU2o
yQVxFT95xeMFZO1Wd56feT8pizpzNGKvK74oFXXVWtxTmIuelhDjQEn3MTuFVRaSW/WmXAnVIkU8
avt/dd0Y6M9UJr1q5ZS9tv93dFJX3l4Tm8o/YiO8+u1c1UsfC8eUDmyqKbs83PQZZr6AbmWpKM7H
6xb9VSgwKDnyaDWnYP5GjhoFTL2/kRo52kVo8FeHMeZcKqxkdTw7unNzTaNTgC4Ly484V6jRkcbL
DuEvM0wE6Kxbsm3JMUpd4M9S+FwvnLSgGq4+KA7ptjIH40MoXovokHpcmhhorC74LqZ3eFK1+jVp
vBv58WzLv/eLMnAkCOuE48jBpYgK8yHpCTzAkMD+wq9wc9bxU8Y6dawi4EfIOqt8NXe6YXjOv/51
oIPomXQ1bA5w4ak+UxK96Pz894A7LvtDrcj2/YluXAN4h0zUPUN3ovtXnisOqRFQqI1SMqvellf1
s0WPbkK5sYrANTnh9d8PBeN8f2yUEt/uyFUUgE2hWZQRLuv/IHCS0cxhWbPeD+brXUH28ycHTT6/
uY+gpYEHrsmrEA6TGrD3JEO+rSaa9HUlWO7gHr356ZfJo9P0ltbbOgh3pEJu5JXNsZUF8pGQgPNW
Q8/O8YPU2yL0qHiMSDob+SdvOIRcnbXRd3N5lF1LTpTsMYDN811YUBzmKjgm+ZJRgt48jhRWBSV2
PoCSxf5UL+LrwUi1hwoTWTHTCsF1Q1hJ7BjZAVijsMFh5Y9BJGdmouQlcSQIHdyOvP4l3+kSDcOO
YLOupbwtFisHA+9kVaf9pDX6mfl6mt+bZotIwXYSK3IlLAwrsNTYIJvYcQrFQwB4TvhGNjwea1dD
ipJxD1g27wg4/h/TvqRFZi0dCQjaABqQGXKJKo78+2u2/mKglgh6w1dqfFTruCFDyUUd6KdRaHxH
iZ23oQeXNicSE/1HT+jD/FcVAWMpM05bmbTGdlXs4R4a+Y+vsvO7d+2TwKgBS+EhWa88OTS8qgw4
GMLdj3+XYvC/oUkAynsvGIjuhN8ogi9N5HYB+bh5dXa08b2CLe0slkfF4S8tIK6ZYsvcf2RTn0fO
Q+SbynhXErwuLxpjkFnwHmu4QQhYkWmuAY//w6PzHgWKPhfdLlX1loXfY9/SaC8AzyUqkcKV7Gzm
8p0PPR4x2F0WfUjU3F7I3oXzaoIdC76Unlxh2eExiHq4+pElJ7Mg/Rb+fIUaVafnNOiDZ1sclyMr
RPflExHDR44ZegPPq9PiUhtbkhcqBIggQyERQcqWl8H2sXPA782gP0Lc5xDW20Ee95T2m6x2l9DM
MyCkFP3tvyRfEgbyPIQ8wbfBRtq/ftdSO5lguv2Cm9ETkPZ8BxXE2UgXVK/Q1fKzehXisGrLkfIM
wJv/aAyYqXWDVNFmbAdrQVXbllb5DI7+MTvfYJM0FQEIBGbo7Tqg5QVBHSEwk2pB7mK/ZhXbyYWl
b7zGPTx3fJY+q3S1iSdZJDYROUWNrxYUdG3Vwud50ogHZAq5T6Qy456z+d45TdSKeHwdwCQCURV+
EWBZ4vhZtObQ0eZa/GN0jBUOHlJUgNsawlY0AqpEjKBH9Da9iI9DQSftInMlqR3c5A3jbn48OM1F
jNBDYnFQwLqZMMOzJ3HrwaRV4IncMwnKxQI34DzUJWNH6aMTm92b/4ixNM18yBPsrCcPJBTLQnRY
xpDg8bhVlVj/CVFpILPEu7+pbJrckizDesPMYMgD5clLj1QylBOTzMzL7VHWzUJnEquCTL8QPmrI
42uHFGde9NmGqtIR0A3mvHOYA5ukYpBg+8p4UAoojTWCknZTgRQdJywyHJlmMQ2/Jth0/h47RY8A
K5fsV5lj0skncQLeb+rgOvnjHXT/krez09Eiw1Q4oJs3BfewHBHz6p2tqU68bpBP97kGolGxYXLp
XyVB1kIwMc5onWHTbiTr8X1y2fFEvoc6yRGfeXwchFaU9yOoSa01mco+5jAcW5ZGh5+1Re1MPexR
htBX+OuaUG9QEFAoDgFHHPH6xhfwVg2/vYYpeA/vMMGDPkNZCNdsV3Maq3mEMKP/1J55WNKTmVGo
rpxMIZOr3USyW8SWM6qozAhKXHDdX6QbMXHHfCOpIHggxMkgmSh1qjDXDAqkbSbGSUYKa5oUSMNs
Rg3KfaXhqdWaRXyVpNNlOe9sivGRqjFUlQ6yqCuyfbFTTVc6BHkHUYPeHN0zFitlyVLCaUPh5P/w
M44j0Bdc9p6kLol9VmI8mqC/atS1BYyeEPX6A5E0z6mp3i9+dYMKA45090iMJV7lPcQ6nmexeLkS
UiTyXV72jvyo0cNLPffDcevPx84Z1Iw96rSxfJ+fSnwfvJ+vZ8gMeAufbUro+m91gmJXrxKIfFgB
qFX8oQDq+hFbky9IOHVOMqVq97IX3B7Lp6AbHGHH8VUCC9uyH2NaiBznoUDNDlX/EWGFfq6qAbzA
OdWlZ2lZY/2UG4KG8pwjA0TZ3XvGhQt7WU/P46Qe2k/5mvIuyn/bkCo+S2a2pwDu/tOMDFlLTyil
XCAvOL1FfxZGT2Pduksv/5iiTP2OAocOWOYGvcegA2YkQ7VWrsadEZ53jR79rRSdFQTRHwFU2ZAM
abNjewCgElww7XMYriSzJIEaJT4t3ETdfUc5ErfpgSqeFGV8AnEGWhJW563ISCVHDLsNRVvTjxZy
ncbyDvKK3eSa1AwzQKEf/lZlOwE3st+qBc+9wSkDWl6gUvRqIDCix8Y4GoUP7WKjgSLaCVScICCQ
ulkI2Vz4kfjPbKgfVALL0P5xBsr5kNq+IWKGZ6kJf2iPa0go03hW35UPIufHe38jfEuMwtNhl7ue
caT3A2aTWoAwjXYL+i/I4h5ysLq478+LlFSZZPDioo6Tg23Dvi46iHw7B+cZXrN2Vh8Rr1OYv/kF
5j5NayePwhDaj3nz3xh+JU50pP+5WppEwDEyx59CvGxDZxjiknmHJWm41FJ6ttV4L3wZ927holqM
UqlUm/Xjl6AEmP30BmmAmd8AtxDfU8xEvRrqubVMciBZF8TbSunU+OuX+kh+DpksvropxFoX79Q1
jKdDmqj3d/BAa4Sm5paTG46PSFVPpljn9lsP6U86wEiL1vSZ32e+3EBdm2ZSzy2qTnRpcjjuVuVc
0a+af3lwxjvfhDv6TkZ7Qtm5xvAP5JtNkciWRk/bPWbT6tCuAZ94ljXz8m46KMH7pt1KfLZZWydm
8eTJQBvlpWh2EcGHICYoSTrc+FL7JuoJkMP2Z98i88P3FSsnBjqSDgppgYCA++0ZQdXvy3eynB9k
MW7DfQKG0wRMbSPea7d/OmChZ6tV5tMeCLKKR27ZpaAIvpaYv90qxJAuRValLBZgvsZovIrVDd2u
acuvERG2hmrPf5JBKHtzAMz6+rIO6/n3qj7XG61X5OKXz2l/4GsLuNOjakiysyg2XNTeHUDMVytL
6B6exR2hpDLLk8xQmAN6KqIOLT4jBx6pq2mYnKzhJJRegx+JM8uZKWEMImPuQ06jKHMJFSxsaVvi
D07r9m3r9JA16th7+fXBLkWkfKvNbJKiqQLIUSC0aVadIvOJe2SNE3oI5AP32XLBYZ2hUHiAgdzo
2uqcW4iZ4Rop4fIw4+Qap8yF6HclJEn6A4U9Jc/TxVlOp0v4iXQRRGFR554dXG+26Wj+MNYSr7vX
IQnHXTHmZ25+X2CHBgDx4bCEPlXhUnGS6bY47NdiJuMSwMYZY2Z5rXuz5QhjrlzsZ4rZ5GNiGtwc
fbA/eQveVSFc8JjlRPL/66rNH0ed6cYlVWE60bf+qAuyKiYIEm4hkGEsQX6qI1W5Z+n1/lS1bC7i
y8zk2GRZeHGxQT6ogkjqbhFH7i6MkuPRiAY390Y7hUS4pHIUOiBvG3LEluL1loatEXdwYjpv5/A9
1prNAJN/DQ/K9R6VhTCY34BsAg9cOw1qduP/k2xD6zY93UO4BM83jj/HCHJnAyd43YD4PpydfpC5
sld5NTaYgoWVvnhjjSgDGLYbCFmmAowNvwd2cjSfv4J0BBkZtI3HCjeBCSTOz1bJw0GhrwoUTxW6
+fyDQ1cyuro5SpqlNXgUzoloUhYvzKrF+B0NcHM7LSr2edKRGDAcwct1tXkDkm3u05ORax8FL44m
xoq4P6XdIzwJjYRcy6nZGR8QmiQiboYYci3g0sXiqvg4BJTvHEMM2mGBBn3WBnbmA4lfGjd1kCVm
+tEoh2/IXM4/7CRJ22UjOcG3fs6smP75lHUqtW3uPlg2WAKuHK0jRMC+2D5WQwy7pz6zLMhCWhjX
bghLzk524bOWzLpthRUcdRXqlxbyHAlfbv1XFw4c6DnFW6D10jrJjCad7GEcgYGIZj5H2W/P2/+K
G2c4xxJ/a5XnE3fmft82sfa9PBIBgWqvjjSNymhGe62HqGMagbKxSJoVPfIUe7RjGGVIhC3Rf0Fe
9Sklv3nRofsPiv/Ep9H/euSW3+CLogIBc0yAYd0hgftkxUQ+F0eYox4m4DUOIhCng7Mh/jrTO63v
H1CffjoF2wVTgFfBQ71QAW/I+2/dEJDChthQWH7K3xMYtZ6+KFSsAnalkhDjCee/FWNZ4ibFqknE
lq/5qnMlnIcY7s3M5h+9IVv4bhayrDDVzkBoIe3P2mEvOsNLEesCuZ2Uf13cL0KruLp9XrWEucIN
LmNz8CdJDGf8XN3j8//dGr/TcfPx0+qQEtBAcgVvIQYRYIBlTjSH/NZTm2FLGrVF6WAArTVd8ZoO
4iiFvbOQTYQHbIoFC1is5mL40WY7sxNLdjq9CWQK+yPRSXE1f8fO+f1arzVu7fx7Yp2MlX7aTnaY
BbuccERFkbXeXEHKBVfBGNRcCyIcEqEVESpMkTYRJo8YfXjF3yXac/lpoUWQFb3tSB+ws7BQAuXS
AYNpOwuCUfU9i1m/b9n5YF/GLnI3AjpoYqNgISS7uXHu1FRDDVkU1Qa0yUBK0ZCH2GqdA6f7nvK7
m0ArAmhYRKTzEp3pcZKvYnJGw0ZS4AjAPBGJmoVcgd8xqkLcjwMef8rj71RV5RDiChZOX7p4deZw
V3lCYfyyt8Sf1sBVLv38/hTLI2eMRNeJNTEz1bHSrFk7JnLiox9Aahn1of9QAG/5qN4GG+rCYNYx
p2tmFMqBwyh+FUqojkHE+J41gn3W53w1w+VEbzMpFuqK46XTlZ4ALgMPWat6MxHo/uHRUdqYvQ67
bABVCdzQRXmZ688gVbI/4qk6YrLa0ost8StRIFdNlja1KCgG8wzi3Wu2gaggwcSbSfI/qND4mXEK
081h28Nc47d7J2efmf+qunRATvnOeaila5Qyae7FsouqkNu/Mpv4z7aKWES2HK5Cfktxns5hVjve
Bn+daWkGlM/GuNgYi0hSU+lmgygARPrARU0o34XLEJD6fkZLT8GKBI+CBsyoprCcHpOEPAa9uDSG
DR6SVL7U7OTZDMqSvCorp6JIz5pRr3BMY97hd4r9j7YUXKJMVswZylu3kMJYWk/+V3P1/n0G5p53
I5Eovncct4ZY1qx3q/vO2A06wexPmmNCA3l/qvreBtrudzyA7XuaWwotdwK4cNakirew9Lf0WJRI
56JeJ6Ld6lfMRvXpYd5YDgR1aob39PEiu1mWr7wlEsjpd7DwnmrpwGOIJQki/B/XgKHPYUIPYx+0
Xr49XtTlPYPxAzqPvajR7seXDjIFXBmHk38b97QyHBxgi/0s7R3HO65uO26cDat6JMeTnnOlgDHK
PBtHGhXqi2ZECfYMhNCr+0NtYvH+HspjiEsPIqMSJkUXD01nbUeyIsuF8wajy2fzUWqyJQ/t0f39
ecpZh4E11U6GXBo0+V/nXYiK7pJeBA4VIwUoHhv/zS2vEn18keBgHBx+Wq2E/D0Q4dP/hY2/Ouhw
NS80R2wgx+nV2txLLe9UFRVBQ4UBLivHz5akDbRdzEK0WpM9V13pqj8llR4NOonyJX3Gn1maxjHG
ifUJggk+VaQhx5PRaECbszeCiGJ3xfEXzzvAyRbAdNPCMJw7dJYvQipv9E7j8/k22h6ufhEaH44v
MytIVd5ZvkBNFw9Q/RqJYg4XhH9pPEf1XYi6N43jFctQFIaPeUkRR+iWoTRK3u9aCliq4Fc3fYGD
5i+ZI7xG8sv56VQ9n3DyLSF+2QOV/RdA+vzvyqzFJnAjur9f72sXPRkaiXjB48nkdv7+6v+0vCf2
myoXL4VC+rKpghC0dJCbBnI9ohR8MJsQ0e9GSd2b0VZFR/jYS9+5YUbM8QLjELmlPQ/3Y1PA8V+J
b9ZXWKY4QRVSj5iwvC2f/zt6zE9f+2kmhvC3NNJykzLCBb7vnsjsX+YbWqWk+tc+pSH4/G6GVpor
5aujsrNknlAo6bQX3kXVzK/Hsopm88nCdCZh2s+SwfodxtAvgcazNB2sOkk5i0oHS9Ynct0MKpp3
745IlZugiO60oFuWHQxeJY69SHEv3bc8kxRITcpqZMhVci8zscIW0h3odK9RZ69/gYe8tbEq60aT
r5pf06CaYMgKDsm4liZFbeHIj//4mYPHA1In2+JV+i+He7JnXmWeeAT7003uKmlXT0c3lZMHehna
lhmiaT0ENRap1QHYBW9IaDGrlKt7dy6qmYrZUpwn2/i60St35ya1FBMpFjvM22EazVaEayV2MEZI
tY7d5aKxpuTA/TU8OqEQ6IxaijTEk9I/HTKfeBg5QJmR98bOOV0EXwgI6Cuo5VJ5eCC2HJst/ExM
uSrsm9t7idjFAcnsrTUs04EQSR4vjmZXf9ymj/OMnSfkNCeu+OncCzo3EqD44xCgoEmC8x/BUGG0
AKgy3lCJNDjx5iCtEytdJH4/GiiY+1FJ2dV/A0cA/iztyWtXw6QuYQgOAyAqdG9caejT4hzeK1UW
Vy3XFEMI97Tb9M5SrTgAoFSZFTjDWwuw0dwz7w+Pslpu+aCNWibSVCkq6GeSKPH4iWcHg9j0NqbV
Xfy3vWkdgpdpupvyUgIxgWcco3ZKjO9HtF/DartXP62ALt9V7syUBgxMMXw6dpYbZv4oI3uyE6PN
uRM6tkuYloSYyYbyA+NRrEPIpIJZTb9LZ3cfmQ5l+CzojYP85mcFIBcdr/0+p5ecpN+aMk4vnVOj
h+rTPBsSuzqmfk1WxNd1NQHSTuWIHo8YFKIFonQPKugdeoToOEhHRj+Z0FlNE+rMoit+UFiS8fuO
nDa/Bb2pJxk8R3hUMAMFC/+xTEyg7Q8hEQqawkfudSsc4N4vJ9SSYVZVuEZ2CzyTAs8Xub7iXovo
h6BW1RBgmNZx0w2RXk2paSw+qpDNx6tkSsiyeKwET7ezHMmNRAXhpBG5GQ+Jduxk2SsPFBpTGy86
VGLevXDDn2lzLJ+AOgxdbOu7e8izBgTh+5ohkMt2/meCtB9oVia81gdY2E70oDGYHuDqaqV7pqtF
DxiWhJUv7/DFCp8gwArkVuIeWcjQLPpBo1uNe+iQ+ZikvNULOaSgmLviYvVizr5pTpXpNb1lT58W
WEQtVcngbltA8iPJgC4UzZpeiwp6e1ilXZcqmGIdsYq0OJ2o3JG5NEBdV0DluuDjh7FEA4HIa6Aq
Dl3hDGx2yyCde2WIgqWIpV72kiF0qPflEhJMguf2S9N3CQMVHr9ysttySYcx0Ax5Fy2Rwa0c1xCA
F4/8Ar5OvhyR31VCYv5scskCSDmVV2saHAgyQsfVWzpBMoHYAjCdzvLeIUe2A3dSJjfhBHk7C/7L
yq4e1nrfkHatgvL3EMlHoeWDGwDryskbqIJsWAK64PLoF34PEWfJEdquTqXZGQi7ztpCxualoXRs
q5/f+u3dubdrrv6JO3oiwc0IgquQpi3JdmRBD+36u13XogWhfMNW7tvkvc+7OVZgYQxSPEWdrCVV
h3trKPP1wvo2ZrmlQKcPsW5k7iWxWPH0bdkuEF8UbGt72s4K8b0ZP/AS9UT1eYKAHjN5Qv3Qoiph
7b/3XwSYjx0jY2tTWa9d9kQd5IJg+MzNzaEUr44EgTy8DRDkFbxTr/BpK9ElN78OYd+rxYMz8NXX
wrpWVMBkjG+7kfhv8cjZW6l6K2/qsB7gKvlqqF85dRCeEvhNu80SdLHX0t1AJY5N7+GQ/eJgTq4v
oGEMY01oxUaJlDmfY3Jr1EGV55mWBvrrL9rkQWdgS1DOiYpmSOLepv8IDEZSalhlBeWNDdD1Tyuy
x9XSn8frmQIpkmaMIH1Z1NwnBXEwBUKr3NteKkaWIderAd+WTb/qT9C86FlVKyc8+qTMtEBqyiQl
Fmm0D5C0zwgIyCWhDuvugZQ6iMDkfU9Sjv4kw/qOBqstk10TFX/PjqOeZJ2FjD2vdlvEFKvF6ZYi
R0n9qgn8Q1T1TD7hjgStgPcj9GOlssRhHqIiXowbQQmdtOfuzWr7ikiZTJZ3OiIrM9nMRcnW9oHz
s2Y4u2SNb2AHhVyMI9gYjbX6XqG1wPCC/IfCKWz/I8wOO1jL+9fbMvbRUEEiQz8w+k0Gf9EXUpdF
euR2gg/97yDLwmTVsFa8A+ilhx/D1iqaV3ejx1TzQrBczFYmFcLHBRQcmApTk+eRCdH8T5QsGZeW
hvHRAAFt9zXIM4/LcdUB+rlgNvAAXnUXxJeOHpa/CSxeQP0sHsnMeN+EZ4eS0a5IkMQxDSWagfm9
5d9BdclMLApOFx0nuIB+WFXlm54nylx6BkNvYJtte6qViXV+o5euQQpEpUvd//tk5rB69RVlLdDd
4j5b64oeorn4z3mpAYEeLv3H/G/j5HX9tUjSik70mNVUUzNJhuZ82I/X16tzyIutvFxNAU8X6XMD
EOGw+s7I8hmTbwZFEXuy1pZABvz5oMRGpgCtXnDbOOjFhN5eKEk5aIuzxyQrFc+tuTjYjVTdNP3o
xuPfN53w9HxrGBHrCx4BZb+dxFO8z0DdEoU/a6iP9EApgXaH70qRmj2Ts1qu3EdqQFq43sU/ULUm
zo/kXxyxhKIZc99zpZcgothlVVxOGWBBb9H8LMyQ/xrPAB5sAhkdRgRf1I+LBajr6wE1pRAEYxQD
UESBv0R4DnyATNQ2bJ6sW8QhYQODzCt2BopnQApDrjYV5wYAZMg3dD4uLyZ4iX2eRApU3q33Dsna
/ADDl2zOgmw9aWEYFO1QjPUk5tz6jf4gHVP54x7EjEe9AAU5H+ht+aBb27k5ysLDU1CUsG72PAND
hSilo8Q6sKzdhD+uMK+Aq0Rse+h9nsmg4UMh0v+KaAMjTGlAxGXWmhhVZ8nquYjJ8vNeAsbyPjUB
LpGiIIh4ifI7cCEaHmdUcq21FMDvKWdrVTzHVb8pvFotDZc6bWykG819dlj7U+AhSMHC789FBl1G
RSsEDi4JpFV28vBBEP4pAcywORFVxII/OdAOdBkm7iqTIZU3UFnAONvjmYwEh6K1t1dlFYVPCIbx
R1liT9NbDj2CLFPelyvzIPInnYR3MR2bnq63y9VvVj9KnZwErjaFodotn5tMajjm0aYfPTcRBaCP
ru4A1Vv0yIAhvaBb4K8zubcIkGZmGkby6JP8ayu2s1/eG/Z7jkCKM2JQupsnQGYd8u27tbdy0Sj5
Dch3TRXNQhhYtKI8EKpqYVxNd4vFvPJPSH8ZC0o97f8F1dsxiftt+36znJ7pfg1jeHTcwSF0w+W2
YsoKwBKSZKWTyQ+8CTADxgdjeHK3lfgEQXI08dwgtKPXU4okK5etFCeBCiR4TxH0vj4WbqPbCQPd
Eh1SBYdoO2+hwMLf8sU1knOFe+PAhyvtbNqNtRKZZSx486xAmROMAq6fkK/ZV/CO+c4ah2l4/AgM
XkwC5F6ez+R30BflG2CKxZbOZ0CwxQQxcS5y23HDs9h3wmm6MjO6RpSvibyBThhNvqykEykMijOJ
pYCCykV7RQ3nQjo/u1+WiqgTJSrvENNrUxgl9vaHI+JWY94HhfAhvQWaKdgZOysvGnh5HUtSg2BP
4WWeivlL8mKf6oc87J/hlyn2vMWauK8j2W3jhui37BlwRIHpsdKodm2dY4dK3QoysjHl8ra29yHK
/vVx8wHfUmMuFic1Gx1HDnA4bItrMjId/PefIbtb1zPp/9B59+kAKuAJfmZHrf0wXs6tAczpkJyP
XoKo0CD26tKGiISBVrtTNnsRUAvXJeCUwdQYEHySVl4CeCtMMiA+QPwZgWCDSTd0upQzts7eZJ7a
wcV3nuMFpwnibaV78QIVjGV9v92rkRcyl+MaQY7YEKf5WeFiyTOnUCGb6aI7ZzMfYpMJUh8wVTHk
uPfhmldNVM5X+OaIhhqdTYuEOriFRuDBz/gNN20OsyuBDwvsXpYVX0T4bULffKvhbGLxRqP8dzF/
X7psn6uRQe46QdvZANhtY5XL6GcIh+N6NvBFTr2H5S5CZqRK6PSTNm1YdlHYY8098HXctCVv1der
7/4Nn/l1NFjpWBYFxqhWnaoiTQMijJeMUP4ZJpWz+Z5z3slMK6tHP3YXFa747ABTBVBIwgarFioM
HSHiGCkL9J3CoxYTKKtp88vWtSr+vKqi1C1CgKeYSi/pM5JZ8GaHCChwqEiyQRTwGodS6MF/565P
Y2ZkJDysxjR6zRYJmp+oCFFanhimPtL2qEXIkqWOYk+rMDlTY9m2wImTBs47DvZYc/KtfT1bnPNf
AEF6yv/lf8axs/fS89ritiROeewsa1CRWKePs61ptd6bFYlOdjrLoVpZQggj3O+5nukVFSRuvzny
mWzQeTs1fAgEVKY1c8Hysof3w0DJOEiByKMjrmn5enoU9so6DXRQjQz2NN1ab8yLgdTXJ2qbbWER
kwO+u0PjLngY25T3z1/iBafa8o4ooYJXqSGojjPNn/W5QI7duOnUp4KdU2rezxeUjQvWhWw8+LKg
tq4cXqy7msQy7+wE7+XyWiuY6kz3MLyNB3mQ12V5dH7P7pfh8yQX4Ale211Ekioo3HMWx1hR0Yag
0EGnxXQvznkAU5HC5CGk1ctKsKAus3UT4SsaAN8TA1w7gLmvaqD7bOribM19t/rWciFuQVjI85vw
TnV4iiNbPIzkJOKDg0E3Bqb0AYiFAQAeNR9hoIzfFGyOoaSeABdtOuq3I5ZidhUOwGMEI+wfovG4
pOuGyTGoaYccXmQIHrY9DhOl9OXj3TNCsvTORyxseX1Cxj0B8ITqjYZePj0BrcOuaTQ1ryTSrvrX
uERKRGOnG1Rf+De9cimeBik/ICOCBvwo7Ba4sycDkE2SlqCLhufbtSnwJDtB++J1nSgP/+sq3oGn
/0xduyWplyYdN9Y32HH4j35pMThmAYTBWXPWq6zTO9Wg6e1LzdWiq5UnKRChgVkLzBTMbtnSs9ij
uWiv1jUWiZc3jvXWvrs3Qed4KVyG7PoD1aJR5Hnj9JNVjXdd24qUROINbTo5hPw+DAyglu62PBVV
ICzR+DYxMcHD0JqzXFcnOghq3HQFxfFxwsodlzSZdGXzAxrofJ+jt7FxmEDcS4/zeGRU63QFgPYU
GNgDDfVBmkOSAyC8G/HhnfSSpQ1qpjdbbe4QrreFgXPGLq70ve96jS+zrZY8eOhdzuEbfp7i/ws7
zKtP3bTm82QALXUtUFT6DeRkRw7HlSgf0b6iDI34dTp4DZJywyoJq2gYGz9JHL4S/nSfCbtfJmoy
PGH9J8N3FibLz3hATUMfIEGKsAqVnLrTfnhbtY1pK5yN1vDFHTVA02PGnrehy3zXsbBxKlYw3CWc
i2AT72mt13zfCs9VYgEomtoRNMFH6qSwwuRPcEbvmwQGJGXxHzAS+v/f2L6EIVwX2pM1X42u+M72
MwLtaSqvKgem3K8K6Dyv5pfU3qWs8ireYs2NIiU/QB5XGno9xmdPYhlijET8KVTd4tio9VKCeDmS
Eh9PrQf6kTq7H5tF6Ih3x4ImUCU3SqWoPO06GqaiAI6ew0STf28XXjiGnnt6+4S4hlGvRwMK7XSz
HIlDUvjP1GCsFABfZlOsVG8LJWE21lzR+hvK6WA9TUKzXDX806TErPOHVwa8mKGFYsoo6nbN8BZI
LDhNcnpDUsuhENtcJ0WoXAEBucDxTQSecxJv2AkaOn/VF6xY4wcfQ7bYYq38gW3UH2Qb7cwf2sXU
xbEaR8P8jy94Up8yskiBmOi3A4gLm5AfjJTOTPoYBHJDyQdfAY0KpOucnxeilPcFI6O0c1JgBTVD
YyeFHHIsVfzJyrgDTmyEH+SDJ8qFocct9ytGoLTZOmXy4yKvxhPuH7MPV1MbVyvPXcU4NJFQ/BBj
Kyol2JT4mPI5KARBGThhJMSSn3kNaObqG5IVrRR3N1HAULdcfJZRcKMxGkpO274+VKwxFh4vBjfy
QyDt6/kJTTpbtgj87muQAbTMxKMfD3D5hCCtZnF6CXLyCVZCHC2ID5djBmE3sQ4ygEQOLzuayOIi
W6mltaH3XfhM0yxEXUzeoo5HEquF3MiMokUZcZhhT2pHOHZPhaZ6dLX1OFa68hDV6+x9IXww0VP9
BDPIWGmxr6jf16+xC+icPHUPSv/B3sbde84K8pX4mwGchwzvZUW/4kKQWnknXrZYk57OJjzyZWr7
ixgTL6ygKqjhrOKAdbHXaxbanHLJGbwKiV6aAFywmbW6GPB0Tw1W+xEa9FBOZDMqp+x8QPcaf5ID
l/zI2+zNCvXuf3CIchF81oyYNMjDvp+9a1ZhS3kw2ehm3b7p1t4X8NUPaV8/Bxj4SIM9M7sd3826
jsjQMl6PHf7hxibCs9ClGmaCg6r1br0HtjbKyoVXaFbEFgg3V0La9ywuO0yAafWX9DxPN1aNLbtY
M30Jg1ahl7ygovlpfd2v5cBFm6dHk0xo43tLqcwfHQNl2vSrOZ/Zu5L4Q51ScrVsOEusI8/dNdpQ
1DCMghrrItQCQmX3iefpDSAO9QhV4mdItu0Wc5afZzO32iezacQdfmumfz2YcoeW9tx1/7VIU8O8
OQs+/eyto1pcD6AoY3yLV/Q+DWV+V59IvSKu3P2507GcZEWuzfT4kIzvkzfEaIbONvu0A2+s9+oU
1JYxhSEHLIoBY0wdHBNqRaInf5lDAbqNeM4sRzzf/obxZ2Ma45WN4GiGgaVrPB14EaDKbiZpGtR0
N+7IxWbZX6jgoaMXyF9vNxpCwnfs6oCvaBHZfDuFAMZaCzd4Y+wcp6OMsEny8FVyRUw7fzrVa3ug
kRZNEHVNxHEQIN8F96Iv2RYfmPQ6qi8VUoIIA5G0RURII5WFuHSldE1YwyCl/bdebjQ+9e5D0ybh
ffOpjQHZI2KPxs/grtTyplAfFUca+9Iv4bHQ543DfBo6r8U89K+eLP2cdFd0YGfjFZejDyWZnvcS
p9h0IVUG7Gm+O88jirRAP9zTBNso/kuRt56q9H79dU9F/meGvIDtebZp/0k3OXkoOuTeNnf+6CN5
UEpVzjHfPsxcoiEcvP1//Ags3mW0mjd3NQHsVDH0bGtNT+ons6JuFdAbFWAhfmvhQNkwW6bRJ7h0
6hPR3Jdy7cu36xEutkJuftUR6jT2S2dwP40CTEdNnv4avb06Yfo+aB3UfGDEtchO9csLnGRWiRbU
Wt3jJGSraRa5s7DF7iBrm1bNq2Qfl7p86sgY4togTEgJugzSzgexqwtWtOCqFLX18v1B6CmZ5rCF
sImERHAZwOj0CXWsuF5X+4VgWrw8o4gjp/I71Y4LOAF85Jch5e86PTbuVAWXini2Dos2WC8hnuj3
1d225hfqpsPPkcAs0vW2ieJaz03EboQejlpaQ9BRHL93la1xxL6ikCE/gAypNEMmIZQ0pef0XCIi
KXNywJDsWuw9gqh/KTVAB0R2nHU6olz3lRGO48Bcq3STInnGbY22qm20cP+Nu9zFNSfkDRIAGAZz
uouVf+AhZwE5EogYONSfUR3M1u0R3tZnVXkLnoJAxACmaZTluVJ9WBCsgyw1FokUi08INTpAHhaN
wiWuKCD+twrd0xjaOMtUufY/U1fS/H8aZkzyWUtesSX9beX1vsV/woYnbr6f81oz96GpVUxn2z0Q
aYuZ857e7YEFnylqZowSwMU9Jb8/nbVgBBOnFg037zReL1k/qm1+QTCg1ket51HZrI9FzW6u2vwX
MGejp3htcL+nGazyg6NPv47zcbMNNcvG7ifO1rLSA71vy/1EXJ1VUWUGcZshmnQL+kRpmAnSEeDh
jbJLd6DMSuZIeDuEydmBfR/I4bYd5axJiXi2usrdyz+Z9dX9vcIeA+8SgEK3XKuoDuzl++9f4Sto
w2qgkYj6lEpyWmnUiUnAhHbd9bxcVFE9oUzlST6oVgxU0407H5rSb5KaPxN5Y2dThK0N/jGAa+f4
ewVLRVuYwyV0usl2xpSorFR174dk3EuPx5QWnEm0DhMXKKDkJmOch3I3yUqUC4NByA6oLD70UBIO
U7oLV/LBA7QtI4M0WSS2MVmekaol9dhLygBHZr7wmfSCgmIVGyMbSG7Tq+d/gfJdazwO3E7rn74y
moQ/0rLGGpUcbO/Lkn2OJCv+EEeKY+jlXYNQZA7ghs8DhpCkGsAqj1kfmD9JSJ3UtXz/1/mwjR5d
CaPSVO7Z+hmiavtKEuOTxjQPLpZiVm6Y6iOaYFCNvwz5qFOuS10znrBiBO1WlSazDLpTWTzhy2ot
asIamDhrXKCI9cp8cvDnra+KrkUOm7wG5uy8JLl9K70B6xkzD74l/IReu1Ucn6lwJBKzBDj0zre/
Z7f0NG8DD30XFM4pz5KTkPhtatjxfPfiMrDX4iaqx/HHTFTYNyUb+k9nAWEBc0LEgSvP5UgFairE
tM2xFy7nOywMdDYNcTcPAAWuy8iGqGwPtIJ/gSXQHC5jqxSWOtYqyMvsGOLOvVGCd9zwRFii0R9E
CYD4u2c+ymQAhnVvoKl8siWwFUV/fS3ji1GkuW/oeNBYCLCwJItYNjsGdYyn4uM2txM+rZTaJ0ei
SYlP1PsDD/ciZ9oqJSnvWwseSQ+Fd9CpGH6EVsUoTJ1nOaz8+wyydKqjI/VUISU+S9OE6pk+9qIm
+L+s3QI6d9KcTeXYN+pFFBczwm7zdWiLxDo9hsMG2Y6KzlUdntiwXpjL9/bjgLVX5VpnWdogAC5F
TkKJ1bsih0wRqp3RJA4QXz7KnPx3Im9n+EevkqKQ6i8846/jtZQ6ToUKvyXQXZHpeNC1B8SV+AYm
E8cPr+PPa/+gHj4b0KnxRjMYR6vrJIFNyxU8Y7wmzOQYEXMAJOywn0LHKy6liQFT9Kly3tFMgTOa
T9teBIqkjg5s0i+0FF7+NqKAcUtxxkoofR8py3sUHg8MRcF2rVtMMF7vczkuEKhpP+gpKohl4SFH
WPSFY1az7GaxBekvp4DzB7E3xuZBV4FXJo2lDbNYVvz72KgglEXEavHaiIOo/FQd1XOTAecvFkYu
LuAtY0p0fY6SCfiBkT9V/MAQwc2R5MRA5ePTUwhWenH6wQEqyk/eP+yS18nrBW/6+jsBcXZonasE
UCyzwlqAagZdq/ll1g2LjGV0sFgD5BpEgBtp0reB2ms1yQVqKD0UWGA9XR/bJJ3f5f/OexEr8ep1
SCAsVK1jyolnpbjhixOzK1X2GbzG0LyjTyrgF1hTHL6m1De6alXY7NczSPL33oplBBVGv1RSiYJ1
b9Nobk1Kfqwd8Ay4txlxyNaimCvT7DIM/4b1yLJvomPxpbZzjinv67wAG2mXySJtpKjlE/J9akf1
rlGpIVeDCU09JhYR8LLIgil/sENe28sluNMVsL6bUEQ8y9i1irrF0GwbVwys+DxVkqVO7qsiZcop
ZfNvMLA9rxjXJzcmY2q0kNVIp9rHk5FILL5JTTkCk6CwukMhmKcJ4D7RgZAY9s1tIpaFPjDHXV/G
G+aEYyd+ABmpdaYKq2osv4gJA2zD171xzIjZi57tEQ84NJG4uxz+eAXC8G+aTfo8oJGCYO/8Kz7h
ZJJ5c7kfqcn+xOhO3uL8zL6WyB5tZ9dyvLroaHRBDNoyJxlss+7jaWR9NGCvJdl3N8KFbdCorbnN
M/2LZ48C9vmO1U7khqSom5MPsKxNR8WmHauQ1PBrLEsLRzBVOPs8jzg3mM0SfknRv1yvwQ+/H9pP
7KNT+ptLbrnI+FCxLQxDLQgpKxeuhHeWirwNJ+OGGlVv9pAgX4UzFSy/Zex/BRomRiy28h1Dnvbg
0Rw7niKZsIAwslXROKretypQihnzTNzDaT8E6xOyW36B22cAicQLNEQPay9l1TO8SPqNvtUSiCk5
gtue/YBxzvLjKzdc0jIKyaAU2vqlBbv3uV5dvhRzkrjOUwxdRx1Uwm9q7vb9umZnnXa9nvZVkII2
4dPxETqilAyYCJtqlUx8bLy53jWiv+NkFXOfflRdfQXEa+apWGv/FmVydITcaK6NqqkFn87Ew4dJ
F+kn6i5jq8Sin/hnVihVqesNfdD4IVZoXsr2VqMnA4gZLSsxbPoAImbb6OLZ+/g3mHNjt8vaEknh
lxWhwBhPyOry8LWDsolgHPGe9iegOXeA2VBxI8k69VyfpIidfPN7YFDJZGkQbA/i5bO+4kmn7e6g
PCoxy2mrKJcujQNpgPbLLsKYeSQGt46OhzDqm7M1I1MLeNQpnZwrviX5bPnyxlEPtGbLm4DkdzTu
GIsLfKN9/dkrkrD7qCugVa6PASJX8NjGg4887wVnuXunFWxoHN2zEf4ioui6ayDmeDSW6SxJehJL
4yi/gzHp6xfxcSg5AO4WubAP6WXouqOu6Qn1vpvhh+/Gu/LqH0+Vsb3XI5JqQYkUbsZpxp1bI6j8
2OYQVY8KluD+708vMmR4+gVvcQUmtNFi3x1giHorAGwapfuDvjbIHsk6Ml/Ysoc46hXnX/sB96SX
ffUkZncF7RypM9NEu09AxQTOHBTCqwAEeJx8nXfiuZFepMYDuxDlSxWd9pfJSfw3Ex6rryIV8WJ5
WbAcJsneF1KOrFHxa1fmDNDeBqvwBDsgJNiHDw1iJwpSdQFfIdMjs3wKcqBy++eNXzDjymOdlHcz
RlemsGsbm2G3U0tycL9GPIqSW27uwkjQ2N1mAdwGEzLAVKH/U4gD0ISDf/zCHr5zujnJ0HeJmc5T
vaHefGkQwqAl9j9NsyM7WGp2jgEg6wKh/ttyTdbdoM/IloXrKfMOhlrT6+sy28SCEfRctHBpsNKX
0EEn2jwxbYUpq5Z9Cd5GoaUqNagEfgvMEFYKg2eUodB2lCR5Gs3ReCZ/lCuJADrD8ycEjDo3GA6C
N0ZZWxtmv2kF2pQWJWzAQEHgA+VhYcDBSE8wKbbpacTuxZd77QTzaazbP8UGJf2FmLvb1XUgqXSo
k7FmaEVHyqKWBrZQ7sqVrV9Dq2EFDQMBf6thRh1Z0TjDjZ6qJyDwsHv/DLxQZeInPBnP1YdUjsFb
/zgnKVVxl4DI2myIbkPL6CO2KR/Ns/fReoiwK7hBLyeQjFT2LvBlfQKVRrJexAA2hjFTcjoZHsDI
dwQfLzXrlPWrLIF1YnemkfL86WEtS9UkXCcbp0f9t1L0Amh/icl7lQ6RvK12k2BiQMKmRNtbRRBa
byjHW/y0GNB+S6g/AODYtY7kfuB98Y9kQR8RE9IsCzcpGncKBKjimLbRGYHsC2+gnLKkvnHDXdft
c9O5q4M0wqOkAU5maWqJUN67q8d74w7Feh3QtMtbBw+lHid5PI5lc+/xkSjqLma7OQmVEWdYiQQO
gYG5SHjY+8ab/4sRxTUwgA7cw02mxT0Lq+FntJYLrdvdeCHxeMYgr6dFDsWPSJalSZ+v2I1LqEBk
0nsjf+lbblhSfRzuf1moWRzeCphQz5+PdOZp1BPgOQtHZqh0huhUjr252iGXJCZtBIRWSAYdsoaR
NpK+ueRv4l3Sd0duQP3/0pjz7XIGX0On3AM7PAQXC1mssIHnDeKJ0IB1V0HGIPzzcJYm7FfcwsCZ
iAR4CD/5qL3n1LohZf5x47W8IaP0TWqEPzm/4PLaKEmUJsMG0BYyz7dTZxEnr2GZAgO8dKVmfZnt
jfvIvbNsSRnO2sgqW7+Z04DqiC1+mmYa5YAhxe9okJGMsJdqZWUcuu7zAPXXuIrGAjeUe2NPByFk
JBWnHZZcLegq9vrRSNKHyNzFIo8rMOaz9transi4YACLUXlIoB5tqPPanbDK97xqq2thqM8VzS60
XIAvjhUqQMxC4YC7I42dgRqYTAWoOsiIRBq/j6BT+vZj8ForGcn5IYIz7O4gIAxd6Zs9mNsK3Wew
JjmvzrZf6mCr4lwz/v4fG8zsFkbV9XKdAFnd3sX3y4xy8hDQrcwmayjRO1T6KruZKcEIUJpuYSLV
0Od5CGuL17eVgAKcRU3ll/ojY9Wh7wliazu3w2PswPSJ332Oo85HAt90GNCT22swREIpv3d4CKlT
zlGD/UZnidioYxQho0PUoMLfei4gq79sLcuU/VhiLMNENWrJ8Kp/J6gLaLckLdpnuKJA+LRWR5zz
N8Yfsfm8/jmUTUYgagNhnEw7eGjC2Cd6sxJ0hvGcs6FDKuHclJmCeuKLbPzrzegGBp4cOoAQglzZ
2kKxS1ZwO/UaQl4byKfTdmKQA8HYRRlk2ciK2RT+PuSvoX7XtLsT1MGqgXY4JgYblFCXPDdjS6rc
XFCl3on2RGkue/EcjE18W5JfWNHQq/NXCjgg072tNSf9Y3a0CpmGWKPJzQNacQuN9U/FHgtSSK9H
bwap0CRBTBW5S5dgwTZ2crPQJTZ/4m/3fwQZYstRU1zm7bUVmOU0b64OXWVqNlGB6tMOTPPOifDc
gzRpyJRdwT/ycG4MlZtQaP1iWsMZSGjUfjuzIPT3QUnSEliOXj9MTloDWM4YulxYm+ZEkleit/b0
mKMSyjeyjMSET8IwKrSdc3ew+n4iyeSw3M+/8jHSu7k0PcyYea/eNkojj0CcmPZJd8MFnqUS3FM7
aX0DRqc9SrQNmqnAqqo77xRwtkNAuYo9PgOg2v5MypkXoCVbCSvz5x0QdzS6NMjLRJ3WcjZ36sjl
BEEQK9VPSlDc/+Axrg1oKY4S/7bZavsM48WzpldCWyBJewssHFXUKr3OmbB5ZGwc0TvbkbUlbJne
Zh+NRGdJomBzlVUbq2VLI/hzFsqkXaVTS+H7cT8WjHWKYOQna7zZP3/qYnSKPtBogTUUTpbjQCf+
CFYpAV70OjEJUwsjXY6vWdqlTL7jW+gVOaISWxFz4Auw9VdL4414YP7hjwZwnYiwhu625XyN8dDR
bXBDHvke7qtjOmyPVtKR8kGsqLZ4qMsjXfVHaYbQoQt3b3xcUzUbNTIT4euq//xDwnqg4L2w5Vjj
FyNnuqyFRfBEtZczlqTs0EOLIvH10fZ+XuBL/Ar6I7RiFzB05om/thwpttco3QyM9YGi+sbVW87c
cS5KQT2qc4S+RC3kO7NGo8SUT/RT5J+Gp1/oku2pl7Z5YCfQBGvO2t2NrI/ni6+hBl4PRZPfQ0EN
TAe0OfPUXHVUc6sEmGeDzMV8VtAxqRdJMc0hC4z5SI1u+GAZn+tMPKBBWBsMCc9z/QmTi22zfVd9
B/LHnh7m73oaY6wsjGAzM/9l2/mqPf0450tUD5KFODqZT7pOuISQreUwxemY7S64uFGZFfP4rKCg
ZFDEO5Xuj6VoOV19qroH1nnxyduy9XJC/an4XEWE/w2IgyD0gEJIMW0QTPDQxx+FuBOKOZ3Y6gKW
05EHfaUivDjNDJ90F1QH5UHqgK+TNN6D/9en04NwavSQm2yBp5CA56hEKhT9wsJyyOTY5LDry2EN
A6IDA/wxNa9MbEygM/39AAQjKxmFt2fHPcuEbgNrJA3xPoIcoZeE3FCQYr62IAMlFYiok/3wnhDt
jaeX/aEzM0rLs41WUY906E2CSlxRNBg01RT0niwdf6Ga0OID+ToYjfXNMc0sqQB0PfbK+9Nh3/g0
Fd5pFjer4SEOk46j30twQuemG3AnODJY7Cvqzu5tzyo+tVGbYflZ9frc4w7prNbHrae2MFE2b3/d
rxgNas+v9jwm/aAk8Y6hTLyAskkE9FHms+r8hEhM34XyrdJHXOkF7sHRqbuzbTI914HZfqru4Qul
v6sgrZLn59OYiibP6M+iCSAsNtm66gd9sdBUSK9704qG9DUrDTg23+FUio9vJbElQ2kDDbHnBKRC
zKSybz2/F1tZRvBsd8dMsl+DTOOhuI/dJlVGW79faKneOnN04UCqA3SsPluJ8SL61IxeFSsifk7o
Nigq1CGUALexVgK/Ik8Nu2NtNOMmYM/RcO2Bcq88oDv86bftnF8MPIwNo95WH03Ef2BTjtJLSwkh
/HvqLSnO5KeRBQErWIAU/JzQn+iBvjaxCnPSmG93scu0rYj8fi3Z0lDSNefTdiV2SuSmY1xrvAsy
akPjd4Bi6f4G99AJLYLE5EHMb+wtkP4KMMCGsfjysIpDnSK/ayK3UULkag7CuECz/eSEX6682bWL
XBeIE2Zr7OVLKRiFnuS8Ly/JJP34Yk4H+Ln70wl40fqdQ9H3B1KgCvni+G3/rwfzcPIFRd3ZRo5s
g/UPTNtdna9C0Wqs0BrDihfWdMG842EP41s+1JYuoVwuDTLQJEk5ZfJkHOLXv8xTlztwIshrnHCs
HPe4z0EYPQUZmldVj+pigtor5RWTbcqWy2NK31x/B7HFuaO6YPuiNi5pXHl5k8IM5cqe5q+YjMvV
UVw65OvEf3plaEkAUagIlUwPKGoN8KgqcqWaAIRZsNpHCozYfjiViKXV6jlD1X1moMDG6sSCC8iW
0Nx1caDaDxdJ9LXwl+Bu9NYGjVsyId2Pc8WDvPAzXCGZPypSWdcYXyve8OmSmdv4h8gjRUw4Mw2I
DpcsKVFZ+a73aImgfwSg5N90Nqa3Hr5Q1jOOsphTe7EI2+CHL5Zq1SNAEIOha+3QU4nPtmoR+9j4
sYSKKqtHM2UAiY5/uM09VAgYwwtFnh4cLpj8GMMCPExmwpxvXUl/JGN7bSNb7sZkNvYTnwvk3fLO
QjsXQXdFqE1Jz0XgDnPf+Qqc649aeUew+TmjFgSDYG/ctRdMr38W10dTnBsAnbDgWROie+sThlJY
FDl5bDRMYvfuWc9hIWMx6binKVdfTMHLV0YE5Ax4amEQ+KlHVLvz1ss1vwoSNXGbbdCRKhqL0Flm
vT8eo7oS8jgf6hsdKEqg+Em6hI2ExGgi90Xa9+HQg17F8NUF4skxB70f4JxjF4FwrAbW4sidE3ky
iYNDFJcHHQBRLxnHRwdP2l2ICCWGldLSJJdkmKBx3EvKMWQ3zsxT6UTctgh5RB3WGpxGzC5RhGnQ
Uk4zSNNBcVysMhpixGL/hV1NUcrEnRmNte8czpNhROr/cLnP9xQJdKSdmMBEcG7qy4MMiWV4mCzf
vpl7oR8lyZZKo2zlygq8txkYUR+sblePI3uihcK3x7Bq0dsu/vPkpTM/71LER2bA46bPaYgRzAdj
ugYRFRjAQQlv7RvYjSlsJ1LFMcOuvWhF1GcU8psnZhFte2Vswp3X6O9kxhhw6ngNCIvf1aao/5Jg
a9uEJqR0gmWg14bNqWxbchXmLFWs1tszxFcCoTmRFfoI1z+1NgEbJdReHZJ+SwPv//pLzTXmjuj5
HaS9wi72c3NfxAlAcX9V7E5FuGJpSy2ZoeOCGoo35pNP+kS9zr/pu6v/jgDDg6S+7QorlHkSw7T3
jialmHWqvBMYiffbyN1UUG14GNeOZoR3Pym/V0KhBk/YEPg/VC4HZRcLFA9A2NxGOr7if0yIY3L3
Nd2mIUn3fLFz9vHXOj8Rra6gsT5uNg+D/nad3HNo9it2jRliyOBfDbvrowObuGsOfGlZYbVvAi7C
LuIOGUCfddh4a7l5RtOK+LbDSOwcjS2pcL80ZHwCWKewcQj5Nsxg+ULdhth5mRoM/IbZ1ky62vAJ
VZ788WLFkmB6tv9HAhNENzc81N2chq0BJ/keI/3MbhkBMh0roavggpzUIL/+bZlWZB89VeQbaWqI
MZSz9+y7sTKCxp9sxUSkk28mLDb9JOubcucTnVXQNcToufzA12X64XIfMnti2RXiXhhbGGZ79KKe
YTMmM9+0vbW1bsqFN8fn/qqJRq3aFkKZlE9jLZeUwUsDoOrXMlUAmNmHWIkXb85NiTnMYAfDfvXm
OymVQ9h9U5zkkM1ZlaApirEBJQVEKENFkvnUfyvbzSERxLUwSIu9+OMVMcqOg339sFqqmRGC+AQP
G4z3/hmIKgnmWsNDSXNh+yHEz94y76OClToPMFzjNHgpewv6ymq9xbJ66IonPxRvjpovsMBoINyV
lVv6knRlDkZ6sA3fPiYLvFe0p3/uMtWtA9Ywd6JXRC6ZRiNSwmAeZ9O1Qgg6v1ca0xNRaIgnbTkY
UMU7z4KX6iO6y3XLBtutwRptnPLqKmqgfCP/gQq6EV45YW2ux+5R3SLCAFaU6hUwLi110X8kisgK
SLV5aZMWVb3RYl5Aa4JyLVojT/YMZHqQDmpGsDWbDjwVkDemvowWHjiPTLDxx2usZkshE4OXXj4J
gyGSGUvODzr+HUMjxLw+cFuzA1NDiXlA4bW4fYavnnz+beLuqYtUmjZaXAuY//Vx/E2CFX/JwXwZ
wqgxSMQBHwVn6Y/Pqfl2Zkcazv9GK8cpKTqVvTYBhFQdVbK5eoAdGwAkM9pT3KjAcKgmn+N6uwIs
WyYv1BY4N5gL2p7v2SYo+65T/gKv9GM9RlktFNbcZIQun0JwbZuvvnYOd/iUgVVUvauSRjfFnAt4
1FkhJL9VXQKYcix1cQ/68sdp9lZgocB6BHTXkQJFRK999+2wlmvVp7+43wuMplJJknl0WlcVAktF
rCb2ZqitUibhSS5df4elINa+47MOsBknriVcSmA/BfeRlLJLj4aknEuqi/LLBBt8XmsWhe4JKQ37
KmEF3L+X4dfOxvqUD8SQiObd7nXqhwln3+i+sdOa7pYgsNFQIcOnum7BoGF++6QP3YS7m7dy/XyH
NuUrqcVMkwL0fxD+XIcIuEKPcOILojFzROBqcNi2oiNKIbEkBTknMix+mmZ9hW2g02ldbT2E+VCp
laCH5vQjkKwMnmV6rDrhrWBBZ/ikvI7NrrQqNVqW+lBwNCHgJY3HnrhxYhpnsjeFWLdZmAEea1no
Wt8ec22exgBKNkRaMJW3OCZ3GWKoXei8giuzfDUPtay9DIyqev+gD1yRJ7jwnBdrNEmKaWTN2lbv
rFCqP3UMZW5BIOD/3k6ZQ3YoIXk6o2Gt2NaswdjevnPrKdv7M0VpqMsPVjMBPq5SY7aK3D6H6iWs
KDnlTSQ6QuDpD1jDPceK93HKMotS04Hv/8lMly0SrvkBA/gmcsNI+m1PqElrjpxIsM8mDbeeY6Yx
BzUOhDYp3nP345v+i5xuornj0/SBJY3uef4sz5q6fTkouSdaEJrFCVkxs7em+n1OkJBWymtA1pK3
D6EP1S1bwzLZAXW3e9W9PhB/AKbHNiSFyhj/3mc9Xd1Wj5+TqUvoYWn9a6WwDEGgAbCS0DtCjSKW
nbSemxQgDKCCbEODCDxC7aZddb4buDV/WBtxZCz8cVSLr4tk+d17KUMmxpie0LYw7Nd6UEuZ/h2y
bs8DRs865jKB8AQIAj4ybds6F7QwvyHn+bmAQpjOxlscRDlehzb3lDrXNFT0fYGy4o69CHWtevB3
jvKGH14SZVHiMitMdAlarB/2cxqqbMV+5uxZqYpzW8HRDqI0LQxqkkEco83gFB0luJJI0zdsgNsF
BnStf4Yj54rLOXGx9kqd9atmp+BTaY+rmA70KpvLXWAD7JFkNJk3IDSNUWxjoseWNNv9N6D0tHOB
/IAYnBX6M0z6tFJ9vKFMHamGisKVym3hSrazwh7tqjSXCPBHRSC1Xtwpiml2YVUSxwlYIJ3Hf1Sr
lQs/LjUyEi+++DAN8GoY1U0eEcSxQwlKPU9T2wsy1Sq3A2woeThh7+boHBDsJuQDu91M92iYLrdI
xREYWBnXYdFNfRFFpLBSOs0x2AaBlUdKFsLfGbYloM9Yy9pJwyxzOtMi6TuZMOTSp1P8SEXzZR4H
AhcOwWSUnql7QgTBAl+hxynVWmj1ezoCPWbdIpAbXBXu09K9vDkHg40s2oivyDcTybbfxECuw3Wt
St6T4QSi7JWecwsOuk1vxsneTcYMGb6D6WRnMj0VbkHdg0azpvFXbDngj2eJcvLg2ZddclRwAaZm
STewYa9Hd/dGfXC/uOuZBamXss64dB3B1qSix4EXn7Uh2dw0y30CAiMdErrjAUQ9Lpqs1H98o6v4
GCbzbJypkEs/tc4kRLYhR4WTzbM6xtJQ5VttyluMMhkecIeeBaJ1zTVOYH2nYbG7gseesp1VOwiq
kFJqRF28QHvAo4LUWglQcgOWUNGkBbegjPzDJB53EyMGfgzYB1AVT/aIKpEBjvxefzdtx5NUxkWu
KZOBhJXoUmO/5QvXsiJ+TFn47fSUyWBQmXSF4NsCV0gjKKqOPYpjk1DRCdgWoWxdmAued63YXUvT
c1pUyB0UZrGUwjmC1PXPR4ByCyHXIYrswQMDjWzFQ8jsnJP+qmyhFpOLRg/xUyjzHJWbBk1IYlUn
hWn2LVHp1BuJkw1UKYWAzhJSCS18xdERDnNIvj9Rwm3jVrdlQjkD3DiUskS4f4TTIg+5DMsBtgCg
tLKK17R+zcwObF4bPlwx1ccZ+KkeyXYXrePs9I5Yq9NYDG7bqmExRzeuxqPliYWWSTAvZHkLDj7n
UAO7JYmZoU/tXw/kJdH4js0QOTzDP9f1wf4i9ThcU/bkAmSOrVoZ30W2oJW/1FCsM67sPNXaFRM2
sBe78LJ938D0eeQnRM4xe3vxn2fbnHbb5jRvc23WY+3XtDFmzOEDYbh2zhrIJ12zzsyjLvf1ci6a
Su8gqq84Zt8KXsE+juZZ/khEpcpcG3cqBtuZnu5gfO76uQZgfYzGm+fml2Vlb1O7cHPLRvQ25n6z
jwxzMlp5w6nNNz6roi3v+oi/LGdEA7Sd0Ba+udSMD368rN+PovwefV/1yyI1ZDH5LubJPeVDs/0+
ufzLcq1X2X4pOYZ38k2rCVAjKO/xQwqFaSbFz2RroJimvAZXJKTocwPlSOx0mW72W93IpHVR01n6
V2K1/qQa0ZFVKSswo1roCGtDOtYHdUzwnTSU4SMS0/soMO8ZS4bFYsmFn0Yku+QNXw2LJ2QzIQS0
LjlKfJ6tArxcbOI+sUtXRz3HXpYvLOFpDsVSwNxvg8NfANzMvadycLKzlRYE0y2w75PA6iIdvbFC
WCbBAT1FZKIhKMGRUZu/p5Oq+dG2mc9rTjBVXNdqoX0TDh2ToN738TXB/ZeO7LmnHFw7UooElAnH
CG58KbdYxSQYTQMKwqpCFNt6j/7F20Hz7m9dL58tGLLBrwIZm0N9d5vzHbKQ/vm8dXFAVR9UekDO
Vvt3uwrj/S1lyfx6NnFWe2BFPqbYE5R1DDnPMsvIWz0a/mz6ga9krBvhIqI8Ga0nlN6TIy8g0SG1
LhLsm6qiKkVN+UNCpOoOMJDzxDzvLGno3jkqFBBGeZR1CWnfoCVPSGEEIxbZspn+YN5XVIsl2GkS
jW2NqjzOF3OUr5vUsb4o53yDNB3wGx8tKDZlsRTxz1uVzKTLUjJbZ5lWO62IHlivNsppzjzbrvpE
QTsJ5A9jJb95168haHV6Wo87al4pVCU3TdipEC48zZVGSRSaTZbh7AJbPZ/K4bOyUgD/A5NAE4lR
c7kseNN9WUzarl5LEjxZqpTA5WGACM2WDU6orE2YNnPiTJtuZo1PJHzVfx81vS6tGXFSye6IK0GM
+H1JfbCcOPVoYTJfnW/+IItHchrvFW34DUc0ltbN3qTKnLSd9SFR/H9Ksa+J1ylX86qBLvj06Qiv
hUnO0kyruYXhjtD2RezS4j15L4TXoiUi9wVoS45GfRXEcPnDOXGyks1+OTvrBy10Ya0pr1eLSplA
7SWRe+ERCq9f+Kno/LYpRSdmCWgeOC3oYmCh322roCNE52hdDYAbzndIMXkm10BaWh8er5arJ0X7
YNFZlGo2L7xEauB69iMr+vQvCvLX1o5AaUZdBQyosGSdyURTJRSqOhwXz0J4eElV9XiVrkNHLzKl
sO9e77RYtiQ4LjpY2IXgdPzl9nlKBwQGA8b+b9eoblPodfq5B5AC72cbwnSLb21SMcZZUBS7Ze6C
VuF2BtLb5g1LYPLZPTr69xsyxtatre9uB92A1f2SEY1S58OAtbrmf4V93yKJRAFP/X0MBB9EzbHY
Day4XWQw4zb/6Y4FFNfusnFmY6wCGH87zzCQokAKOcH/fLz58rqLveyhhDbJbGNMbSDPPVm42rS5
PjxLtCL8SOZbF+frN/96ECCAIwClG+f+sgICEgLNiJZ8TJ7bwWuiR1Q/fya1Oh16Zk+TcGiJIwTW
d/bHtRyswt3wRgESCqbXEvm3jfsDxpaAqNVjPQf8MOhvD/0ukciuzfawTgwNGKSKkOXkZLtNZimM
woifYT6om1NK4y2ZzdeXeI5qjPWSpyqkPdpPLl7Av7pMyR7WvBuSZpwbiWKjKXVjvPAEsKHnTlrI
IlwUuwQIbzOKzIDQC0owXUMB4laarnVvkXH1yMawABWtJLF9NRvmYACkXqbOWAWBvEyf/Daj1RT+
IFGu+6N35xAFsQkRcXzLO/V99cS2QI+YUYB0zD2L1yDyU6IUWcPHMZGeQHlIFcnK/7HCUOTLN0V4
pn+RuIIlZootVBNsqlBXtU1ekp/SKms9urUY+pIjGK6/0lMr5cttfZ1lpjRWSC97kG1oKd7qOuet
75/DP/XQze7cknd4ZpaLahYivQQWf6a3b47P/gOQ/ey01GzuDvpxdu1FQb8w7tjkz9aPh7+thWeR
F9I+feiWVEvUwvA3fcS6A3EsJ5W7yvzprEHCAa5mTgbBywkKJ6qSj5rAsAZm0lt5+Oc+Jkt8Ns6Y
vl/AWX++yY4aK22dGi9PVRv1sfJluls7jSRJVOAkryZ/6CsYdly6sAXNnqeqhiP2xm3o6q7icljy
3BDDFTcSWyXAY8aCSMG6SzWrHsDEEGGJR0H8N6pUdrqPf72pWz+zMC31prqBsh2rd5N9zzG+tjoq
B6zwwPKLCaEhkJR12OjytrS7JNPfC41NYkAfRHpmNVLROjVQqr7cZnYKO4DPMNSjbSqN57DRb+Ji
2HmxROuaZXlP7VMkQNqoaFtHwNMZfAvHeEeXbvKS0b712m6renUn6zr16UBIJBOGyWyToIzBnIsh
qZuZM+3NwNeqhePuBefihWdkgpF2cKCym3X1MENouiZ6Hyl2HbNi5GDWQLmC/PzO+GLp2MREkHJE
qfz22gU+WRo1skwEsmeel0QYL7DZRAZ315pyRkScgkgYH3BAVWlXvKXMSZcjOfSh56ubENBYNhjI
hPYn3PLmjuYp+P/I/ZmQYSaziAAlTbxQtVOX8fhK2rxVlaPzR1X++aytNlUwO4vy+mT31/TSjPgf
EL3oBM32ekK17tpRWn3MpKY8PHXgg/DNyQfafHlyhLrLZJEtLF6QmLlAQAfLUytcwWp0sWFXgBws
PU+Iv9OlWEn4mj098zIKWbBphy2MHCHz5GJaAo8lvQr204ioDHudivz2BOJ+iLYNvBPZJwBw93Nz
K4TIq1h+8BTf6eM4R0BoJil5Q4oYFQuPe+TuHOSXO5XpkjkyvAMlfOWNI10WOt6qLQAARR0Kc2Yf
RaA7rD9uRmPgq1o18oEBhoXIcfneRY1JAghqpITTBFDkoDt0P21Dr5x+RWI560H39pRoIwmfQkxA
aEzNXN69wP4Zs9YJqai1EEaxGK95XgAiWe4PYf4BG2xAI16rgQONaKAyjZRxsj3u+qqnS0B0JXBX
KS3o3hJZTohi3sqM5K6Ab09FNMeVsOck3avdNnClz5OUBFkPUrkAg8NrcoobEOpIkv6XSBlNoOMp
xuhdjHf4bM4HLhaUnlDaEDcffEjL62A+scJV9+9F3/KOY7G+8eVKP95kx2fT9EmgUJFkJGgUwyzU
8Y77Il86C1iOsXzDRFy5C1iKzbbwaYOKtoBqVzwiLywbvEnzvYPofBl3xWTmB84qGxvi77cOeDOp
AkGAlcI/lUZMKWF8mPfkQpLzuyBXIz+x4ZCYsQPg0pyBzvlkY3Ymh5fiY/wxgn6wvQMwnzVhG3zU
geho0J8Mxgl44txeJ+/m1jW44b5AHhw4hPAm8NweWbOtu9uAXbs7zm/TWJydRn5A4yNZdlIMfSOk
Mq6GdtgVWEg6oT2iI0JFmFl1rE77vMiD2dCokWJcVbEff8jAxZ3UbDsT/fovQZ155SBdfK8trSMz
r5Zn4EIgWqC97FlE0NpHNKOSXT0KvsYPREWj575ssZypqMLJ6kg1QLotMM4U1TbdO727p7W26ovk
1tnVnB8l1qd3cML2EXlZVwSUh9Ns6XtwrihJiVu6Fja4CeR3zMwbkGDqJwTxr8BFrk7EbUcOHCMq
bYrWEPIduUsPFP7hXrp6qBzmyLJc+zWMJ2hpQvuMhAxZ5bskhMFBt/uCKslPpkx3cYgbDB9jWEWw
bLmGapjU9wHjLHCDBqLGMtVbVt7KWh/OHB45KZPNpuhV0BfUvHRyxr2Fd+CgyMJla3jUZ3D78vAK
F+kV8fkVMa+1Q470e9h70utqEMGh6PYbfcv5eCqFS5Jh8YVNmVwqyoPKngblIDmvkelcePfIGMjq
BKV4NpfAv03lDSeJAVbL4lzt7i5VXkXY7VTmTpmBy+GGs2fkXVTUM0QU35RBwb2TEVqUzZ65p8yl
XbhwILlwNVDs2+ZMf9Gz9J/55lR0nZ2iR918KfgzzqT2CDRUI0IM/5aKVsnR1RViyUI+Uh2WKRHy
nFGaetZLi2gbHjRYReDOBL/sK0czNAnkh4e2gCzF+FEiBEH4D0VV0WQMLy96kCwfp/bFxpq9fdgO
G03VG8l2Rzws4SOfJ817fqMZJLhtqd0rnvQUQvuORMOvx+SITYBnj1ra68Li9wvVYlGAj67rEfv4
lX/BItJ06B7f/KDt3y6jRBOjd+nSYTjw2/cpcLMFaainQi8n4J1nOAVs4yjgwMP0vmvGtNkgO0xT
Dloqvj7WK3RU2NyiapPIzTrjT7xGng/bGxfTzAnp/1H0/oy8ycNor9FO5OBHw1rueOVNgCzJoLFZ
redmHMJMseYIcuetEubSxflUSR8zyuwWE50K1JP3sumfDEP8TmaKnML+FGuIoB0opl8SeExr+vLQ
01cGhZji1/IR0lnKIKfa9PYpH4Qitui4Zk8cO+wTm1eDdZWNCidr7n3cHumAIb3/0okbMmAStJ2v
tlsTElZ2HSu+cH1vPmOCu1XawcYgTjR323uAT7RhqAqAglAAjvwf69cohNq45IunxyONmX2UDUS9
GhL+Xh1wlqecrcwLMCPkaJjsZ4OdKiXTc3u94xXdmLmhK3wm98gGSgmyO9lKccHlE/jbtJunE1Bi
16AO6aVgDs2hOc7BDxne0lkWE64KwOPPx3CZvialAmuGNoy/1mP1hEyQwAnqvPSRzOirm7kmsHAz
wvP++2Xln4ESbCjYqTaBD2BPTJjMiSWxaiLNAyrgTCNDEESi8mfKZfZl1UJAZpc6AHy3AiZiVxwj
PHpVpoZVnZUNWWEOuHmwz4CUDjqW6GsYvS0NeQQRzV5RI/lyt2QpCuG6cghpQcJ/BQ9XxQUoEv3j
cJfBptDBQRv023g7dzlQjhDEuHU5zIWYroMUJJhJQ/A9oY8R3TTFYOFtZzVJD0OWEahTPsC78qJ4
CYHP4I6pVEogFTVVL+Vvao6R+nthvaxH+AXrPsxtm0aMOt6WEuYEtqrtp9EF0DS/gufVdhqq3xMD
lmKgd04nlwhTifZdSO7PzgG5od60+nFlAvdU9NmD7ExEN5dP6ghaZJUcMMoSO6Txu0m20XjvDsSl
52Sqmj1PUoSXRvpFbqLO+Ygoyt7B5o45u/p1zMLvNP7GeqOUlMMAhk/POO3j9ObmypDJQMLAYBgi
13MG7/6m9OySKamByM1fN9X5CJ9ypzWLyHCgG0//r/Bco5Vt7GxPQ4LXZ0TumkhqiVo04yxCZtgg
4rMyeYTE55kX9u1vt8CEaJl9w3newMAfZV607OTrvaEuKzOrYFK6qHaqAPz1MfCMTN32WTz7SGsZ
bhGQTjb3V4U1tz2XtErTckZpsvMkDPP5PzjnDy4+eFKmWFdOb4cHaUhnxFqb8QZITvU9NI6Qb49c
fZPBKAR0zJ2A85tcCK/xHvANB8qKnFEtfG+Hk231BU6FDGYzG6V5c2fZzWeYtQbvenbJTVx7JiY5
Rm6eqHuINreCKE8UvCbnDEZl5341xuBdZIuVVtkJu6gWSvHD2jWoeYdGGlsRB+5SFwQJD3Z1USR5
7wMa5nkTmpBt3qOhvEPS17dqOsE4CmE57/q40VI/weUnkliUjBBTFRkbKQef3nagtyBexbS4Gg5Y
pouHjs0Xk2fhZzRKG7irYCQqG9kCuMMPVN6CZMCQVZZDkEf8jvQEf6V1y3nt7gARaTtntNVwc4fA
Ahc/vXf60MJX0fdJChvvGzXY2w8c71Gy127xacsZQoNxrZsEdiMsdBnPdXYr/8wTvoy3Fl48/9YT
rQhgO2l7qOtxCnMTu0NFtTr6UuxJSkQ8XYtwdspvLrUlpLBcLFLvUWp+xUoE0RgDit2cNqo14Dv9
kY6kG57fdRAjD9crF8fONtcFQjG4H8PfyylgB+AsSoK6yVns3akcuJDqYIpQpwCx32Uky+jgLX3g
/PMEFGB/IWfYzF1gO+miXigZOkSK2bkfLERFII4j4NafRU5jIl6emDytPWju4mEnKIyBR9Jfx/vi
oBBLVzx1F8psKN8FHduuraFM2d90EChbW1gKDEYmzB7TlJ4kI0MxR655Q3BVcrgtb6jX26zFLr56
d6RYqybwbnWb2iI1w258sDW/xDD5pnrvsnOXAKZdN2A4C3nlUvu7aL+wtnWetOeZEjvnxAID9D4V
n3TTAe6uqstWo5XwyPWYFTdqTIAWbqKcA//BFrqDG7ocVOJJGkvvZLbPZINOJQV6RcbIAYTCfrg2
iJInZkceYjSKnj/LLbh0GKQO0mbbpTUFzYy7ZAkTpJjZohOowbYzF/C3mWCrW52yZP6P2cHBSUYt
tXY2vkfnhmfJ8oPXXFXoBRHVZz4JBgsWRiCVvIBRK6PMGngHNgtxoEhwTB7T1LZtjMkFyRlQ58VD
kkMSyVb0spw/pFrrVOwJWFc1E55WVWL8CucyJgkpk+3DKVgTsetZy9vus8t2DaOl/eU0ZfCBTCXf
QfFgu5rg1ic45BfaFKkRpijZ7JaQmGDFFYJn/JNtNLF6ytI7bfrLA9KinQu0XQ4siSrHNbkxRt7w
G2eLULdANQtF4ApOeoF3UxTEtlXj3bWZczv7dGkjN1PDToKyisncZmU/ueaDu7jKsH3gSsPLu9z5
PUtgkT0ynQAuxcfZQiUGvn0dCqzjhnv+gXbOuQ2t57VX/eIxhwGLeyDppfE2/gJSUHB9XgJRdC+T
Ykp/bDiXpwb8vvlbRRKoxN68ihdALDqkBq/EiO0z4th/RvZYa39A5JAcjqlfJxCGSZps5J5wFmDa
pPgVbHbVkE4eeEcx8eBQEfw0fIPEPBgCAW+5LTCGjg+IcJn3iIoc3aiB90rN0cgkbusEDnrJoPNJ
8HZ7ydoEIWnpew//arNucDKfGGnFzq0Unswqr1+PldTw4cpBp8iWXkHCQvxQB8Qv8FBAknCDSBEf
ctjct9tBeouUjFmJoEOpQ3rwUg7KCZUp7RigCvecfm9ALMXOD4mIDDGi6UkCvDm87Y5WAMtUEY3r
fGSirr7NF3MD5SWlaXkreBYYgTcLuQLhzEYwvofuFUwavP5d6AvkVGLyaR4rCedT97TEdvR1y1Ey
JsfcT/RXnIqNrGsfCtFsnnR+/xxIpNsUhG0IoNfOQWZ0HG80sO8dnfwu+zzsuHEOFk4RcTx4gBEN
lmAG4vzqgfagfr3Bj45EXMbw52hho6yHiwcimXQ/A0eTIPVkIsHRNqRjgWuReBIGo4b/39nC0nHC
chkT2aCy+t7m72v13XSJxOD9AKA9AqaRvubRkPeIN1A4sC3kbifYgBUbo/sj5MH6J+9GJpabx7xp
tcJlkiW2J9Fbu/ZQOKytyp9RS88DzRsEMPg0eElWG6hFHmvJAlQMFKG9b6F6AdF6EhMcE2cSfICh
FNLp+OUoseM1ErZFmN4Ezg/VJUDIbHTm7QnJ6APa4sFXUYkGMtt3fZgwmyxX5QVzN5vPTxJiPTLD
Y7f3m+JV99fh1j+up+HKiAoLlYs6RP4K22Rj66kjv+q2ZcsJ7htJgfyl44XmwSedatPp77tm87h/
rA31SkbdthLG6ThubvM4m4kPii6Qkx+IVNvOYlJjbE2TVcg3opQ3i30uexotwGnbwMl8hlilymYS
HuEAnmYYoVlLd7ghbKgQFJ3yqUmzJyJDZ81KX1INnxHV59rcBdHdZUbt0mTH/dilY/WpnpMGuI0x
9A510UaFCBq8fMkv1ftzORJmF+toin2BniUr5yw+V2nizXYYSwq0UJY3Dni+vyTzmf1N8WyTmIYM
xQQwtFL0I8WYunInA17C5VTrloqxoxiGYXJ78xMAEUhdc6LNWJky8c9KnM2M0pVWporFFrwMhNCP
Zy3DhYzKeGnK6YSJktkeGGLIyA4BlfxYeq4wRyVgS1Eqm71mZE5RvT7ugAXyQgGIJc16VaOa5Xgv
q9NWdEOuwYgOkuV3VOCFUBEnSXhu/v+nBoNHaqH4oaQpXzQ2WGhPkrhMj5q11ONX5NGRqXvLGt79
IV0JfoRgggKQckxOiDVre1wjVPe5C3DNENFr0sTVcIFGz7rYCiuMFf4IuVV1PK8d5BT7BJmQZVqs
LnTHD73/+gOj8okHuX+Z5dR5idBsxrsJP2qhjRe8itaVLfOFM0dGbov/nCIgNcJndbtlfbEReMR3
c/vgRnQz+mMRHKkuW8Qpwlm5lJzVXyrCqeqbkvybgL8PuZ4IcdKLOF31OyrXzl1uK71yyvuGh4EB
0Z7YTk+5al0YjGyAsrCVWC1ncjgwQtm0CS55aVL73byHBBKr6N/WJtgFSf6GiZNiFqDOtYt9Cyrc
foS/DsB/E6K9r5N4SOwV/bKUDOsUNPe4F/3m4dMVKszksdTGjuSj9PWM8sB676GbyczavQ6JE/7z
p0QZ7ibwx/aFKjaaxkL6DQZo2i7hYxVj+Fk85F1xPsDKcOBXrG2bAWXo0M2qpEox3+Wx7ieUEx3n
bWFEChjmyXE1rNt3cIIrbiRkeZN46v5daL/nEFeA7d7G8w+zPduGhaIt8VAl8T6gBuLabWpkOn8O
y9XqUUVZyXzOOzM607FwG9pKfnuH35YDR7c8aZ0mRJbA2X56QrwnLoG735heYvjAXef4xmcrJPtL
TjFoRbs9+G8BTjhtbUwNjNDR9eJM+zfPW3sBSJENdOmHGpTK9SybytsYCv54HoYpgTcCLilQz9IJ
1vRYMoAG+ZUpza1HAXuTIEH4/KI+ltmPAvo1L00nI97K/2rtcvZwfRvsrWHeVHcwBRIi8wuyCask
wbjvjsf/fuslqzB9yKw+oZieTcUjsIMiTdvuhmgjIiYI4d0U4+zjIhxuI0HiVyNsf8hGuR0oHw9b
pjiyNX1hTzdlD8DfsRIszszvISdosOf6VubNXzX+Pb9QWHEifsaSRPlr60POIQIDh4nqI+wvXoWf
M/GeVfMlxM03q1LV1WVFlTYoh+nwxCWbc7oIr8oJiH8ldFFNdwaJXzz3uc4PhGIax3UAaAgKjaLs
6d/HRF5MpRZsBh1IIe7xo7KEoTwSJwgq++/smErlsZsQWruG5yCbXCioxE+Jc4U1mwnpJBFttguL
Rdzn6aJ39IOimxbOY6i/7mnTAFtaw4kbEhvwfqdaa7HAKNCvkGuT+04JmPoIXUE6QwupUksPkgN6
xNeQNhOnVEWNFTxieHvH895RGh5BMaG4oNcz9Z99o6ey35GjoDsE7BuuWYxOaix+H9DduIgucs/4
8mhyAmviPSzj4+2jPNmHSoLli8rjYoHox8sjzVbuzNGuUGHJYIX2/GdPv/q0cGsBm4AP23qXeZI8
orNe2F9VlkoUvedgfXA3VvurMvFJOzE6h0Xz+985Mul0VRN7Gkt+Mkv4o3pvhaoRqJkhyMzYu3Qz
YyuR5cOeAXNDym51ZMXeTu0zXWeIHGip2DkTficmM7MI9ARUGSdfHG3T9NRWpYMLQsNihPaisKDS
9KGHZtu3dYuX41VCQ8eWYZhZKqvG7+0KHxjnqf5G9BFepxbXP0OGsC/mjjOUV3qL1eGbHfPXykbu
4XECz/fHBZa54d4oX8v7hrxE5uFG9aJda3BsSbj9Q7gVgJMeetJzkKqtZCNLacOD1qrM0u0fN4gm
CvmPRrqBwMOhAJmZhSFn5PutUdo+XgGIXuWlqenB+l4GESYwgwk2sGuot3ex+hcrOSbDi8YdXXCP
3T/fIC9WaT4r8fvoOvC9OTgW0pARJyN5tyklTUmrew4HwSWKwqHZ6suVgBHCte7ZmnmUqviF2btg
t05AeTXB+NAVL7zLfNdEMihCYqn9IrXufKCFPbi5a24jtxxKF8BhTpBCUwl5IdenT3ckXHKdap7q
XSPaQenlVtE1woqjRfBhCQqa3vMPO+l8MKQAW/ObMzE3YYixkthocw57iD1z99tgfpDBUEEgZBK/
cMD2WTlucxhkaae+ApPfKE5xBCTMTP1dLeFwqozTcrbgzvzBUyhJLNIG8xj8pkoaRCwRCcxxeGKn
Z7VhtH6DLLdpVF7Dr8aeYqEJRYmgDTqTqDHMQwipP4UMqSp0wBz0oFSMOzkV4DZKI4SmhUI0sGdg
dvIXQrFVR6jEqzPRhZexXvH3QSnRPaOsahWU+OZHlKX81It0NHYI9+Uf+Mz5v5PGoV/6F2rVWzRL
FFwmmzakMrjH2X3aRdPucZeeAHX5WW2SqsKvTxxfBGQGdn03ETK3Sl/k6a7+MS7BjGZ5pu9Akt6z
hH65S90/HW1mLHqDiqe8JlMuGQi152JPmfdJXmeBGb/Om9UmyosaGuU4mJrZgQhk51ZJ0RSZgghH
pB5gX3gJ23aoDdOqSGg65O+kL6I9eZXFDIe3ldvEtrgOOpprjUWoNS0MnMxaSQ5i9b6wklKvu56i
TAV8CnZR4gNMe62JvnYnn/6aQTguoALEdwj0xuUDAT7mYZsCanHrbIDLbNIXtfBsSQ/jLjbb0eTV
avxOS7x24xpLIilnO8JMUVSDxqnSspnOgqtXoEV/n+jbnd+NnzBCrI4MFMnSK6cFVpMq5v2SoY3a
7B4OqUmW1rHJaJbXyzjKcUF6Bp8HixpTB+aZu0cPKB/mi6c49tVUysUNFoGItJC0lsDdtQrlnqZP
iIrpR4/it5k5E0L0n4LNhv2ZfA8HXLirqPPA9Rf16n7asMTzLOKPj5RnO3DcW0qbiOnwwtOufWJh
ZwPYTH54cndB9xLPaxXOujv5GS3uPMbXnWsi7fDFf+DIHBy1nbAnG7sHsiveGd9FkdrHpTcfqDHp
CENuBKY/9OS2+eAqkPoA8ymndpnhW+7l1b4KUlXDnBgdJ4feABI3rSRYGKKbbTzA+Os1wyfeI4Bf
5A/xIkLQdpchkR7dn6K2PsRdO6YuUtU/a1nZJlmWbtmf7h04t3VbKm3UUv0pihuX/SWUowMQgQQY
bckTI2bTuA+PGjeOC21jXFl2er/9RA8vvGcpceVsJQ3b+D8o6zZQdVQXbD0q2s+xpt8uXEs5OVeO
Y47giW/vCLkSXt/sUYU69dD1wAHvLbbn8aNVWs0g1KYAUaKkO+8lXqx25o5uI4fLpVHk8fDsvkLJ
rfnMSuo3vqWsy5l4UJi2+onTfnPMuimLfl/EYXhI18C2o1MXnt10psIZRtyT8mUK/7vl1Eel7NHs
wFoiC1eyjzpV+YdTLwm55UFH/kWyEIz7OkeW28WrPBWgZS6KPQA1C8oHEtxzVG4QTL1UydSma4BN
0oQHPK2NEwaJodCq0Ilhuup+EKTAh6l8/PN5PNj+MCKWxFPzoeVYtBahjaJ1O20iH7UucXHp6u3q
dgwGI9aCHltGkbsN+YPgvoMDg2eGEN0c1JoVqLC54QNQMStjmzb9C16mlyd9UdmALx6fmjifnBgB
dtdpULhw924q04QM0/Fji+WsEcLa2wLWW4eZIaCg2q8A+ZNn60MYKXtrI7l/PaONdf/wlTVzX7MP
NW8sPTicf9fyuoyj1h8JFEycxsUMQCF7+SXplqA1LQBEh2Y7S6tWGxL0drctsp9tpYwAuKOtz9aW
JRPkNzJEucjne1cTLS8xb4WjONr1vI0+5yFqbupFvYSPyPtJQrp+iaiyD6BEaiSUajtpqkR6bGTk
2Ny9zy7lA0fmP0aikPGZszg6m1PLh3sOHGBN9eNfWyXDfC9ILTSPcxq2L15nIT9ceFS/sEw4QSzB
IJS1BuzkviIpzkdVbbjywSYDyfi0qkIoTdylvrfLHKH9MtUQR9zfTuUSzcJb8YKrfOLiuv0/Flwj
XiA0ol8Wlq5E54PqYkgXYTrgbkzFXKPAyF4x7CD1QqJYjP6QXI+xS8T2VRV2Q4Px1oWt1dukSTMm
YsM1PuaQ9oL3ORmCxeniGSWI9PMJyesEGb+3phfm99HlsGd5IuhnO9YalkCwulLvZnz/PFP+XnpN
bEre0cYZffjZVDo31J5qbyginm6zxiNf8KFlLu6IXp1/sEMQKXeiIPxExBVaCZ8YwW4KC4XTmGT9
7DU5MxKKQC9m2ppmYw5+m3TlptpECD8Z6d2rWG6WYmrv2ZSmvmaUqBrZkPfMGO7K046BrOV+9P+g
XXWOMzj+d/I8LEQlRs1FT6zmDIAlIoXC4e0DhzhEVQBKV0t3xBVgq4c9YedIzDaT383Q/dRCIMIZ
2fU4pP2/WAPB6vnbWgsyPJDWf1pxl/GN8wWWFGECTh3LsYU4eOnnMc6n3V31RL04H7ret2m6cS2Y
9/5fTb3l5gaU1cpkd4VJDeeWHFdHBU6cCs1LFHC7l6RSAGd6/vUFExlHXd6MH8jo0lTpxvjiTS9P
rFyRjNl3DvMtpA4qiVNd4oCeT+k2I9xC2ltXv8LsU8A+0jtywHoxhUQ5EBvdSqfBxzNh7ZQIaL+c
xC2OAT3okymoukzXYRODk+t+8n/FI4MrcaLFcqYZCurhBT8vln4eh4E6wt9sJG/AaeNdD9Wu05pR
OZf8hUMzc1ImueTaaH7h3PeqAcutTngWTMdMTCmB9nT4vCIbYTT9j/UeRDXY6HPjAZ/OU+w2kw0v
BNtKnQ45tbUN/efXO14Ne+QYLymVW0wKoHQlHMZZrv2k8zIYyZWTAOfqb7GufVtORantP9OLAEax
zTMBxTWco6WcnuDVb4IhlQfE0nU6zRT4Z4YxIiLVdoGjgRxL4Eb/HUYUbhEck7nS5oLz9Ti6tWci
SRjdR8cxJMgVJxJvVKdCVt2tCe8/NXCK3PjX8s1b0W0ArSksoT72WeaKcaOOUPaEDijQalUk3pU+
+xJYHoX/GqryZg6Y/EyQu1dCZUl904TxVReD1TQZp81OctLyFDyH0w2Xpo7qanbREHoOFKVfdPJH
66+s4GrjmUlDlzqN+SJszBDx2QOIt+Dtltyq0/4KcbDDfLIhLI7+cOysaAQ141si3SxTPG83Ih0w
96qhWuiNbe2c8LHlYsXW+qI5MX8mXgiM4FBR/tOkojEqRn42LkWlkofIWKzmaISUo4aQWdk3yt6T
yISpohrLuyiQ+Yx8awi5Y1DxglWxvTRoqV+gOVmQY4242DDNwBY2oBR12RP8hJR+1o3qNi5qhRBG
uC8kZE0HlRHZKNVsD81wtCgwaKenq54u3OwkTnw97aXC5AsqjZsMUKLeG6VRKKnjCLpR3lQoEz0X
yiCKF0bHpZnrqYTspVRr0ljVF04ZHgyY47zt7hJ+gLu2nvUNaaSY5HiuBP7GofTqGSVFWZQF5oqv
69q+KTfLXMSlQFXZZhGZTAYpclV5QgJxWAD53TjzNZyzj9FSnhWi44bmcJGnwHFyEl1Ku/8OyLQ0
0kFGGFlu0lVLnYZ3T/MfDtAdQqwD967507zyLjDwBWl0AQT+ITz9LykVvojws8DWuz+FGssUrA5j
PjlxSPbrBMJdBEWSfwTt4BqqhURWaJf5Mh1US5z7AeuIE6qpVR+8a7icO++hIH9IwMpJxrABL88T
/sMjRxErki0NgaXTbiYcjClheoXbJxwCeEJy1i43+llL6YYl5DB3425ES5dOsAXt6Q7XlGJksTiW
2q8r+rT/lk/GMy0ehZWfQlsQ8gAn0CkqQygYH/tyFqmUFAgPrmnVypCe3GdAVSvtENBNhBkKpZdV
JWBizMJnk96e/I6Lmg4YRMAbJhtYjJravEceCDczGdukl8S7a1fB4VrkwkInmFEussq47AKuTLmF
yrJT8i+xNzq6NoW5/+d3pM4YiioTsYCdvCff/2Ef7h4b8sBt/mTEk1gG+1QoWvQzdOD/OAFs2A2q
8M2DCgS2nKrDuHSuioPkZO8B6iEVSR55l+A8QqWlnzeenV8tifsV1nhOFDdSgcV4Fb4kVVBhWbzq
9F7GpmYRQMnBfspg76CfXBrSXisrVZVMvOXMEibAp8stPp0h6exrcENyYcEDbos3d09pyV8I9BVD
rWl99hqtpyoE9s3ve0kjHTNTeRKtoSIk7Q6klZ/KSb0ni+lOZ0qMbuKWHAn8GUeOgEASrc5BJ/Vj
Jbk4rslXoL6Y0Hoiqt1ztditKdre0KLrzrdqxD0dT6l1XUBDQSuH86OE8KhIVbLt89VHeFIv10Sy
ZIISr7vT8Mq5AAlUztl2pEX0TnTXzMhWrmXJDoIB8ouR0Dpc4PsAAN7MwDuRAimQ3WjZ20OAbdLn
rF6VRQo15DtiFoAW8paEvV46jJqL0t1Xjg9IMNLJ++Qjb8rmUdYi/Q9wncuxJj5t45yeqhj5dNh1
Iqtm86JLsGwr2I84/VWKpPTT3rcoLsWGvogru0LFpf0fd69YQH+bpR8V1PFGmUdoiMITE3sW4rDQ
A0Md4Ehl4asEGoqRsvLRM8AF5h/29bKIJnTrPmhPuzNLjkUzmdqXOmSY/7akt0ZpHgzMxoZtAZ8f
8g8JkmCoS1hB0X4jO94yAfD2LNhlFZASaU+kBdCY2eNHnZGG9Ij+qDYPwYDTZjtlQBQ6U67F56A9
OBsVfy91FapWEcUAyj8HD/unmDwh72VGUwDrJX6DRaF1Ed03c3A6XGi27W6Q9LQg/+0E73kEQRb8
gp55xbu+qtFR/00ZXfni/BH/aAJgVgSX6cTv2C+ZGVek4EpPCdfMpp1VnuYUHd9chAUV2FC20eZV
zZ1RpJjK0c+mF6A66LBnJJezcG2DVOeUja/epZrpAv1KhVqjaVEhMLGiI+3kyc0pWYJZpZsMvS0H
ChOpT+nKEHu8ZxCvXiuhyE4/QmHaLaRP2AwK+tgjXQo2Xc4wnYc1cYWbDTdcAbPiePj8IPtLGO54
ZJPUmzcstZDaweTyliH9n952swcwDstcjwfc8uIwSFW754tqenXBLn/jRgJJDqlYmgXkOl0OaL9f
b0Gbe1w2s4pul+0r0joV4NXWy35URCLZS6vsd1iaQ5n18oAYn5fTMXsvfK7GQAZwhS3Up75or/cq
2Qj0T6DZA+/kDfavW3uJltHa3fu/WV31cfIoy1cgNI0GqEr3tgyDJ2JJP2nhImliB1MJxzUsvt9g
XASVEDl6E77mO93+0dcW2WhLegXRq/o5LsesGhNIbA8LTZ3RTVMkvn4PNgJq+pBPLQYuRhhIm0hX
F7Mb3Ecqy3b8Kw0wcBSDrdP0QMT5FYCpbGmkuxAHPs0v3mSHnvUjg0HYibP8y3ySH/lk1fhwPRE0
dMJXUVOkCWsuj2TAbdKIb7PR8W7mpCCgYLnztVIRXffw5KKLQHbU7Vjnu5JggPrK9S0Jb4SXuu6x
ndNnLnJRI5uyhiXczBYsGXYxo9CYsQRLtBYNYWQ8J6j8EFt7QWt4NvI+qieOiCXAFu9B8q2JC+eu
8udbiSWc3AwfovPEDKGtGmq/k6LOLhbXVeyWLRtGk7racMoGfFVRG9M7tH7NciwMq3YXSCG+x4Bt
ZeuxH0ANeVAFzPDlrNVIP1xd/dFyOgz6d4QuyAPADEoXTXplBD+u5ePy6wRJ1rDHHbxoJ9QmAFWC
HfkYWej1+10Wl7/eu3suRgRNv5Vu/3ChtGoDWUSh6rMeuPJWPxBv3OK0PNDBHA35ERlXvxixkLof
UZPlLGNa1MKJL0opCqdetQaLq0lz2vAJeQehU2sNHge677lhZn1+Ubg7l7KQ/bC3DvxniJLyQWri
odiQ/RpTeWO549MJIUKfz6nv4Lyjeu/y/nLgDlURICbDxilM4vEsa/27YMhMJggr3mRWpdsRdwxu
QBkxrv2FwfW/dj4I73xOII1bzW6k4hPP9PboYEGWLIdl+L7sNGsEVyGbI+y0ORIMRlR7QYXhjRL6
9WBRRjQ9/5fOStD2jkzlH7WG6gKWwKsNNQzFfyyMGgCpsslr9hlQOjwBpXBiSNIjPYYHH/9mvFT0
H4irb53JT1wkk47fg/ApL09mcnmb9l5WA76A+OQ9sjAITtl2bNBhwGH/WJ7T/DRAzcDYFPFTQURr
3P2IaQPtQFq8fnWQSXL94W4qaDYrm/O804rc7Rq4DVFvgIKhW8hx5Avj7siRxhdPOTa5DvuQ5H3Z
4Hkr52TQaKS8TjWimSTIsrpwaneQRmNsH/13SHPBjx/Uxvz5QQYu02kt2w6aadYU22I6uBbN1GbG
ECYgbqt0IY9UN1SNla14UCHqlB7sw0zBnI9F0sycN+r6bVVEXwTl3iTRdirrs2Rp9rkaKEeo5TZv
VQ4tHWYwweL3GmfLEK2VtU93rPoDJGUE973mf6rlidFQaJIRe56BzlsOzWkydVi5KYa+AW+MJU2x
ULO9mHaFYRpDFKTMHYjr2ALzodToL52fW56GriHqBffcTyhDNzWVtoM5bm6g3uhpP8isOC+DUIFi
hk3l5oXqTOWyjocyPRA3tcd55ziDdOLfQJEBP0ibwbvotD2PIJB3n6x9IPTVKWKE3OG7u6OZYsbS
1kkRHVvS889CYPNnDGnU8ZsauW6jXFZeYGu9wPqcuSZbKkNDUGcsQee4wN9ys0wCeO6JI8F6UMJt
98J4PA9hxtvgk5x7OjJrdJe8MSS2MABNYttizyjnNi/j5jAfuEU1Ej28rYFTzu7YU5phcUe0Z3F+
Bv6snHpbgw8YUo0EnmHLgzjko5RAf6+E8NlmSJsnmi8MWnM3zEQQ+uvrWPMQ7iaLPFPnqifS/A+g
SKIZfjHuhwN4X/gSjnyS64xAnkirJQy4XT4TacXE8J/6HdtXxQjHQuW1uPlRTetAzV3ZmoiVQkyI
5pif6e9CyGlo36LVWEdbFDxQ44yJZtkBWKdzs3ixbC/OkUwDPR+sY/+SHlcZLfNOTyLOPg2+M0TA
X7E371v5wt1xiz4Jf0TFTebrV3Do2Z9Bg3DUAZMSNF4IiAX0kwHe4ufNt/YWbnettz4BP1chg5jj
rI4h8dfiI7uiSenxaBRXe6Tq06v7YtYPIQAaLfpuitnC5VTZUVs92U5xNktRISE5mUD2W/Ar1Pw2
a2h0nSw+RWM4ndzt92ffTTMCJvSW0u1HhsZKZhAkpsvclEzQRXiwbGgUuvzj5AjrqWS3KBzJDt90
JZ7MmhFunx0QbM8ANmTiWYN4qMSy9oPqmUB+p2CbVaxSlmgW0mTarE6a+Ch49YSbJkh8rsMLvXqy
9APOPLvLFEsIWnV+No/IwMdEIuFffvsibxQCdZYXiazDlXtynrP+gFVV99Hogy6OYakVSdVXn7Cl
4rmpRV4prJtoJ7+0TQm+5WYDfqnJZF0WGLfBpPKTV6TQ7C2H5abv5lCh0wuZ43+q59jPjAZwl++q
CRdEIcTS068ECoKd7MstUaBSsKczbWTlm5S+gVTfKS+M6mSfsfrClauRcpXeh9kJOFh1AdF+21xM
agTWYecKoTCq+AyEOr7z+fYSVUs6N03JehanppBXmRNCKqfndXjeprq743RZ/HjMhKm/A6Fm/lZ7
QXp6gz06QlrAzwzPxX/iYm3vTUVBlj/dcqymydAMmSpXAbn/KDz24CW8G28x0Di4npHU7y/1QqMs
/AF3yE4IWOxqV3BwcrUTa31EyBwC355KNmNXZ8nWyNHJNxwpA1mrvFqZC+2FLkMfDKU8adgXsaKb
PM3jleTNyYJ5+soa6xarcKWGkANqphJIucH1rh6Yr6v5/nMmdexMG7aOr1YtpQjdqJNiJzigcF00
awvIrEwONww6AucnM/+S9k9kmZSw/oAXTPwdYaVqCr9MYsMueRWkdI7ZdEtya2W4KeC3d6GdKKDE
Fyj9yJCPyzKS4DX+8JMj2gUFUB3a/heVHABPPxx2l4QTsJfKPnYVupx7y/+XXwQVVDWTEkqXXjhy
L5TRoritse4bKDGaeyg6eoAAovdvOZMZ3RMpboBidb96XtEo33p5KBL7kkb8eSwF/29ISZavGGvp
YyOLoD7MV0p5FExAJks4VUCy92jPyL0Lk2YVlv2k2buxAIvQbPnm0u4y9oXit8RF5AB7WC5tEUFQ
9mV10AndvznRUeXF9q+ZMOQBd10FVEYEpeJ+I48vWHfR/0LN7VVm3oqKLdRFOM5fwGbnJ8km4Sgk
MUgg96l1b1h4VIMBqI7wrvbU8q2CJOmCqOiPS0GnJAh7GfRCmqESTrl68pHqdYlqWPwumlr6lD/o
L8gTxx+Wr2PaZvxZVPOyxbV4s8ufO1cOJk/Lo6JbUE/Ze7T4BCFNN6XQ76h7fb+1BsTaSx1DYkem
I91zzbm685DKkeBcPq+QeO4Xh+qGIdLSM0PrH0fvvOh2xTLgBq16zDcFWCQ/LT4/ACAfjv+uNI2r
YVLhn/I/xPBNfPE17V9oClgQb+w954hV3dQ9+530chLIkV3CbRwyON5UHfPSBLQkhbqnxX0VWEL0
EL8h4La7h7MDu+M1DTE7Fn2cLs3kO0RwyYezT9/CNq61OANXmCbXVwCVdFb/eAHD75Q+UpnXpJJX
NOdkogqAbErohfde0RipRBxKzyWbsHKDusCRkLoPIF3gQisK/X61bfDQlThk8O6kjcU5SdNZj4EH
I+jjRFFe6mNR/6OYg2Tgl3dzrJwvsG4EtmJXDlnqLdbTPK8BZNcAsYOANvPHuZ19yHtBT92OjtU+
B9+YgznegzrDZ63xK+xWIf2Ft01NS0B8/auew+Iy2M0xjdwJEC3HtsxRWvqxRTjiyiCEBaeu3oJZ
xQApmlMXPfhrBH5nSG3jt/2foGX3OcLVtC2hU6tW2WkzeUqqv7vBRIx6LvdD7K+5pJM1YMFvxMJQ
5a4KMhhjsdeJGUkhioWUk44p3GFo1ksZFVcnt/Uzs1tZ5kMr+iJVLpe/J9KbcUQNnE17YzXO87QZ
93ep9vpa8PYQudaZoSj+gqdFY6pSXG9csob4e1h7GoFL1j0o6nEb1SToO5Lxe7gPQXThpIWnUrvK
WzzXBS85SEOtiNFzEQ2CNIbf8vZZ4eZKCmvpSK3R6LG8WB5S1Y6FDkeWcNxcgjuOJYgW2f7h1qJM
Hoszft61pD84wfmReqt3lA1gcUBnzVnq4KQJXfVe0y/U8r88P80KPQXyXjivgcuawGcHhH2nD8Rv
neIxd2CkgP0/Gwwgn1Ll/KZui/MGbDW/um65A9oGyEzCl/qXaP+V8zSPhjh34/ZBvHYu2/BsBlWr
WLGTf96EioNUyqU2/gcpFgHPFeNx1l4TmMsNe1+VZWe8UD5r/6M5TdjIE0SIokv5gDqetDrdlMuQ
byr/AwE9cVsUa/1IydOBFzPoq0gr8/vghMCLiN4EtV7aZkg0WlngYWwToOx5qTnkcZvCpjex4qPJ
PD4Y1WGKS/psZ0w9mruYf6laM1QTgyOGl3rYv89ISZECb/GNU9etAoUaUqG0nf9TjfbyxDEy9Xki
Kt9sb194Qja0LXZ9b4xa6iCs/yKfQVyIJifjYtV6hcB1zfCGUSTM8IycdJSLrclNZMtP5nYK33In
76Fz4jMMSG3jhZdmIi/uWLEFyQSC1KjYZXr/c7PxxxRlRU08dnQcwJ81SjbkwJqq1g5Z43KoXWoW
tq/XlPA3F6uzwwY7StBYBjflDmBGk9aNw0PVuE2EwVdYqMtvCiZkppxTpqUL7/zllXfQ52TrEr0G
4H/Z/8z7+w8oO+f4dw6C8aDGTEjleIwhf23lcSRTxHFVTYCCITAuQcrQHfnwILchrmpXgP2x9YrI
LDVErxzx2JpZClOJvDMS0rfc/DQtzBjdHaNQ6RabD/8Qbe+lxsdvJ7skEOJSynQSqwfPeDngBmwk
sFTtdr9GbfSBSwH3ehNFHAyj3fbVSNlNkEd6jtPKtfSGeTSAXebRhP0AyX0FUArVeKoiUPWcvsrL
F4a9Tbu4+YIdhPup+a0oZR51A/tpqMZBmD8E3zz1Ehs4Kfg0cQngPhrczBfFK3kgU8Z5tsAfeWvf
BgQPKNny8u7xsTlGYKAU5nxNruuYyStetj/FcgtiUW7mIzPV6A6MJoH/mLyNjCAspiPeP7jMbGva
kzm8lmzlIipM56e+Pg0XLmUPmwUOrA6trSuEio8sS6gRKNXtBU1gOVJvhc2YqbLPUJgfCf5ZZ+Ob
43PFFnWEMruWQf3YjXkZA7sNI5xNSviojeFMuoewgLFYJ3CEsQZEx75jEkcJfGp5XO6/ypb6W4jF
+t3qzC6uym2TVDAOjZ7qddwr7R/T3VF7KAIvz5dDvRVSQr5pa8GjCQ1R4vtwU5q6VrvPyqyUKzLg
dAgRdwz4sYgsPsvKUor4+NEn5IwgV7uP56GaMj4Jm3YF9g9YNR0qiJH/1utx+sNMcYDLi254abtK
hG1KrvkSHxMp22TSzH3xe30OxZWqU7yYVPXJPC88gAb7v4oUkOybb0jhGzkxZfM/pLFW3BdGc7lU
oLlGFvR0YnFCFmjpHIzppH2oAnljVgXSOoQekz3jc/u9pvtEAr7CkbqiVLLdSh862HVWw3q2ZiwB
URCCDcLDVWt+euAEj3FyVX2XnzKUFf6OFZuKE+qeaULq4riGRSvXQHiA+cHmQv+PtWjHL7pb/Zjr
ajAXRN71X9oXDtOu5tinNnh1bnLbc7GFTB944RzXutzcjbAS27Zh189JLlodr87XajvO8w2mCxIf
zeP81FXY9g9ALLWrW2wXt0pkxl1rbd/BB9EIz4u7qlEFcf0En6XqYGGzk27LtEe3VYp5BcW+Dqa7
kmxQSDfzqSGwhgRrXQSO9xMdhOPYh2Nw0+/vCeg2o72oInFccAXX+nz3sMBrLVtu3ILsu6w+fcnH
h/mjoywuczwSYbbDgMg4BT8JJAETFG8LPB0cQZMBpCKNXkPwWxZAua5TOTBwMZ+dVURrlGVt+N9t
2unoys1c63QrzmbfzL6Q25Ml+d1iTv4fSrEODLHy6fNS7ofxf0pgrXXbRFNc0lf9PsEXf8kApFlu
zMeiii2C1ZLQvWpyTTPVUxg+IVUc4Gvm+v2NL8s60bUPLlgh1BjCWITqkEubzrL2LMTzNPglOOwj
TY3tHFORyXEkAW/sXVD/VIlZN2jBds+XzBl7lpLscq25aotYAopXEVl/3Zt+eE0jOkRcoSSjs2Cp
0ZzUxaNF4l1kQLgZ1b9/ftRYZ5vT6kTUUD5l5cOtbSzjNG8iOSkBDnES0w1CQPucvNueQtdAm9JF
ZYuD2sWtyVppg/KblOJHRNlwQ0O0IZwW7Vkc+GbTjcabeJPtMY18Fb36ThyloK3zCepkoVljJGFn
lnDXvFjHFH+7mCAaSDa1AHzXNZlf2FWqTQ8RM2hCyOdXxLDL4oyKry/nILpCgzKE0GAUDtpGOj6d
VkrbAK1Eg7Zakw1VZuRKa3WTNkRLEDc4Bmsh0JeMHqmx0iolotknGAk6LUmmDYEbYi4JFpIhQwgu
bAaXRuveQcEJ97XA/W6dnNNsq3VQKFNKcq/bqsukDACG9jxa71KCfZUMZ27ALG6ide+LVHMVGQGx
1KfBVmzUjlSFXMKzTFabp3e2BOnc8/c6ZxlKt2OuMgItpXA1SFcoMMig8D8SQBl30jJqjprrOWhA
hPHklg69dM/98qQ8QTYYu+IkHH+wIgx1UuIihMeAjVXCPR426xIcSWx2X91EyY1k4+1JucZ+YKTN
7v8bIf7MC48L8rDg1lxjTgMXsu/Nw5cVkRQOh8Qbn/yHs2vv4k+zxNh4E2pF1ZgS1UsgQxAOWrKB
eDgH7qZukm0g477Sjr7PchTvIlPoS/7AKz2l0/Qt7Wz4z7VRrmtxklbIgSIC9Fp2n8Xga/nQydQk
D8mFCjFdEDo9jurPnfUAYgzZoMlU6+/WY3G0vaQqKTUwWToW6/1/5iZNZ2wnm8UceY+XuebCUijA
8omP3ReenxPvc+NFXd6yu6RFoPfJHfJt37ZMsiPGakfRTmzYzkf5pLpdmg4W0I88OC5uZWtVSbfP
EqnZSq7KHHp7fJvXNcxgZJuLN1pc/vSGf0PuJoI3oMuneu4sHrJNzBmIpqCAbnLewTZiz8NA4HPI
5VjC95ZMbfQr5yWiP1iWb3fwx3C/+y2FF1qHuup7kKcA2whBB30jPpsa17YPl0ksTmqmcf4hqXLG
DtNKTqQnv9F4W6XFwJUIB58UlulLvTeV9x9rnHbfFf5nXZqMFHkSa69A1QpBy2hPX85Lqe6tcttB
Sa4n2heFPu7aH6DmaoKrFNqN/JKauUNkIgkFNVgZFsuFtk7sT/rlH3G2eV8Z0UJMEUqEeS32i/3O
kDbWzdJFra9hQ0QFSfAPWsZrx3PCUA897ioth9fXN02D79L+t8cCKe0dcJcN2rR5tX2rRVp7hv2A
0jcenGDPKJUHYgnIpdai0wRV5DEjabvTqsQzd+IMNEFqX6QvZbMyFIO/1Fq26A6Vk1UgBsdaRqfq
K8jpXoFz4UIDFzz+VRb2EitOQLD0WkxMce7oKXxLzK7eVi4LjEtMXKb6ZzlIDVc+k4ZQvVbWQrdW
VKZFeBF15ZfJqX/7PGaTCKcCcZOEKpzejtc2g8i+fKAMSOv8yA6rbDR9LG7wHyvZ6dYtEKRwGW5l
gUD/qliB863/TeN+4k95r8QYFIW2X26plO+diPmuNPVxP0oXD/Zd+mq+sqtzK0LHmuzpbAo318Xc
c8N+d7a1EatAQTLhSKv/lb/ovWRbXcBiRq56FsHQrF+cMIVVerr6fjYgzwxlLqGaz+ddhHHVrn1m
VwjLsqgR+fyP6FDpExTOkVMiDBd6Yu6tGYX+x2xALadNZDW8wgHPwEW/U2Z5Q87btXdChuo4Ou9T
T9cjezJ5rXQt9LRfZLvbRL2pP1DTtN0+/WVtvA/3OB4xvIFi2RnmttMkNOGytoKX/tlOVoQ02j1S
hr23dT6X0AXq/dy5HWXnzxGlquqUsAYH+lKIihjmADdYU0x6cUbHDpDz/obn1kmMeeWvmKD2UIDI
4yH+QuNl8FZzQjH0yHbwN4WOE8i2EkpBjvyjf8nRz4w8DgZtHq6pmrKVfpVZPHkPWqKB9tSfsA0C
NoNOvz7vNp+YuUIB/q5uuT86g9gIWkXDAf5y/5ZSF0QOz6+GVyCo1I3NrOA23q3C00KtqMvCWQN3
s4U6evD7ajGnJHKvWDMrINIhrrhWSL8FIltNybPWiHAO2wx6aH3KtEDE7+0ZHxZx4JsgjZ9eSSqS
hDrRUHZvOv1WFtgf1PnLHrhijE84edDDS55oXN3mAzD98uQnsExxFxgVV0tQYIZvZ6sT36Eon/UG
NcIoZzs8Vcw89AJxN1l2I4ZFJZMlAuDXnT4OboQ6d08z2BsFscAquoHgevgJzRK5XKVroikIalou
PPqCdl4dyJ2CBIA9vtYAZL/DFqALL2Rfd4jrvyoRh4ucxV7/OLp04PGJSqVP7L6BBHfp5ILo0tV9
8Ob1wgNf5ECsNN6gctCq42XgypCweFcOdaszQrDY/+dmLzxGy2NU7l/UHvQr1GS5ffPw6P6A7gz3
f0rAibwSwNF1L3t6kgDivERedQBaxZyO4tlIui4gkd6suAcBvw85NwKJd506/dqnQc8yihzBPobv
Bl5sYqukhXuSmE5aWiHroRwzJQWN97yS6gX3m77Mt9PjZB/mh8iB/NmpK/6G0qaSUJ4VGQOnlBD4
g4/45ksWUIJcZGQ0m15+4Anqp5Tpi7NiSLlk5hyxYzA+GNyuNNYlV53Y82JNMHz1deEJ3x3/lLya
D08SkwOml2J68++VMTCTBAFwOHF9BUgE10mBZwMUiz8lW3Nj9zLposm3XzgvWLAyYac4o7/QxXWE
3DjAX2FEk7lSYrHjX1azqlc135nTuyT32seQziu8NBt6HzIR03TjLWR4U8Vy+iWulXz1H2TOIOaR
eZkVRXQxf3+NM6f7eM5O6hNtTC4ZbQoGnFEQxvnFmPeE2UAfuPSFWSwA0aLhllCDLYg9GEWErz8X
FBTm+4E9ThToeu9jexcgwdhJSoSiL8UhmzpaZ2CCnqhkX88JWMEbKeW22jc4JC1En6QlylW9j4Yn
tEBY3G+V0a4RzIvC2a/lauTqozXhAhqP4c4ajoIXQLXNp3vIht/wpBuItxKht+rLV0cLF/lv2nBf
53qX/CbPh2qbWbK7PQh7lsYlEFbTOufzxgywiZJ2Cm0YJOyZDVQcb46QuQXJmA1uLYJu659RwUhi
yTA2/U7nssXRedJkS9QrMMwI6f8BsG1ZbhgkWu2gRorx5/Bxi3qVVlMvCN++yTOXk16K0Uz1R08l
Dh4/vM+0hvD2CJMEfRbcN/aYV1wIoQYnDRZYw+eP8lOcMOrBkxJzV7ucuNXo7kRZ1EYy5LlHsuP2
o/Ms6CAC7Grnvz33g0XcYHAz967Tzw8kSSzn4tZnyxfYQQc+HfEhQ0mFOghBFrWIfjFfT0uOqRLf
9xgThah+03n6uyZaNzDVPPWkWrGmqCtWwkMAopd0YAFJKIS+w/4sPFY6EAqsgtHlmZfuYALRbtQm
og2hTWJJmTNH1mXG20uAPQIq+yQytfz4q7ks0EcrNmUHT0J1gNgywOwyHxUDAxQkAjAMsjPBVy07
jxW/fjjDjtisjPruumaFivHaA+CkzRz9jOwgmkaarQicnGu+kiYUZx1gXIWqBLqLswjFEJPjqjmn
JDaLXVGYLOQ/beR2fCkJk8fwQiIiBiE2j1KR+Wnhg7tZsuAviKJclXH5RPZwl0l2VztahkWq4A9n
AuH1ObXEBoEEFJlQM/p2BOnlaGiT+/MkJaedypJ4iBd8I2hiQIUzGVUejIcmd8BFagV6jmKfFOx/
I7D/u2KeKUJ9WkN1qLm3gzSQP1UJw96Pr2OSTkuYbQRnFODcEYlaScFFHZHe+SlGFhkoZpF34gCi
BaZoOOHvMMs7KQIHfqm9LE+TeZUCSa51CVwvIkuxdpHSfmuvUcpJxOCH3cNHGnCT4fNJ9bEWKEe2
dWcd2kODi4YaKO6fGggsgV6Lntfeix6a3E8JbQZqArh6IMYPBi8/G6DsclDWjvdzJsXb71h+Tzij
+v2bgR4MgWn8921Dp0VJmZJAjb5A/J4L5lD6bJNMceTsM7Q8wpBIc+GpQVYVSy2ztdrVB7m1ATUQ
fsdP5KsnOIgxK3QbTgDhBTPBhD3dE0yzmSfK4g++A8m1iENgPgziH+GVRcK7Lqub+949AYbYkYLR
ot0rHiULluoHetOqzrXkRjFKlIwyHlIWAjPyEReTIKF5yainLX5cYgtGU36XOBcAcAzoPwzSWF/M
vN6LRH2CJMS9H2iYd2bFGYZfzVp+/KR+w0mWc+j48W3QhS2IMOUL1p5Aif05rM9VJONTT3Zy0o5q
sI8tpL0iNdxYQDLQg9k2dxKgZKleMjnlyJb5L4AXzzg8xnX9GJSZzrG1oVRypW64H59ZGxJCwmRw
+A8NUMSdicPD9khKUzcvxBz3Cu0KxX2CYa5SftOLJsaWIxJPzLepfC+BnaD0vskYPkvE71LyQeny
Jcm+R/LLj0Qf2VMsmzqC3OGB/IlcreIU72CIiMOe4mdkyA7iTQBQSttqJzr9AKTnPRsjtO/ELk2R
BhFRdlcatMWkwA75RoG9Adlz03eFrzosYwsj5Op6qEprG+DXUSrnbEjKvEh3ybGyAj/9hVAA29eu
lggzBHUf8tKmb3jHjtInaB7Qlgzy4o4gtXmXXn2Kv2XbX9WvkP+K5vD49enRUO4P4jFvnmDgMnI4
UAs7sk5L/VFinv5heuvZrgekZPPAJHSuK7k6PP5yL98Gm0XzD2qDKQoMQ/OIVGdPqEvwNvQLaeS4
+Hsb70tZrOJ4w5TN0n3Pe4Qn/0ANYpXNwXmaCpWm0w0JhOiMRn0FzVVUGx5ncF2sHJSzAshKtrek
Hdzq1odBVF10MMXmefLLvfgYoVBAy0Pd8LbTSe0EasJkIDOseydWyD8wMHLMkGYD7c8auzEFodow
BQatUuKylKV7DnBbaL+Vd7hGf/gglilXKsZs+pT++zSjGmEoSQDAXZtlI3npj3gZEyc9o1yyApVn
/8kYVTKTZYvU6T7uYMbRExLCRuMFN26jYk7CBDIi2bhbhhWjKjCGc1UT5b5HoV29PuCPqLa3sREp
VIrZmW53wWIWQflxpfqmONtEg6co4F143t8wZXXypy5rfoinueeU5JXf+FNA02q95rdtgxwkH4DC
Xfo2L8E3pB+ftcK5F3E2uJt1GxXInhFpqw1LOyK6k5lc6/yetacUYXl6ghJNgvXZnlVhess+wnkI
Y+TXqJyCo4I4qAXveXn4rH98m8LqOrKyLp+7fyRIetXFx3sHH8NeIlviaXbd7cMNaG3Yc8L8HFP5
6FNY6TcX0R5z2Pbs+pUw3Ydu8ahoWvhKxerJ7K/37ateK/oH14njz1pehRcN5tHIJ0p4gBqD8nzB
eoOb0dYWnKERQb50jKJGI3ipKxBsexv1+aMOkp5no8X8SJVCZbA8chAmpQJG1YBdgntY8fbC9R1O
hJCSOw3UvUb7Y140+az/a5bzP3sNBSeFrsZNCjOAPgHkVDlI1/B76TJJ/Kpq68XhY0+tq+2rKRMI
C9AW/BX2N/9Ove5r+hR509a7Cy7jgIHmgoamVH5S3bohgfKOa7QRt0AAaDqW9MMRsanVLcO1fX50
0aVhCYNzt1/W2d2R3YVOvquHLO95579i3c5VEJjDr19IeSHkk0mtgWxrggstS8FhpaHh7ljMeEph
BBcl23xurJd3XcbdLk4FqKi7MdFwXSqaZTCYYPVlavSuofQ0fNLKGR2wLr16o+WDRe4axYUTshxN
nlHZRTDhDwTQKjOoWsGaBHqK+BK5D0kW2Vd4Ofh956oR53kMjYRqVdVwGZ6/eADKNTepj7uCaP3K
O6w2Qg/XCAlJX+OuPDZa+5R81dBx3SqF1nei8tZ+UaP2XbjE/xTXUXwJsnEQQZ9vxPGg+NcF61Mr
u8XKa2KTly8tcIiLZlxoMYRL+R+N1BQYmn8tobtUzWTGAKeZBdF37gkIoLhyoR8JUT5x6GPPUQc1
3zOuAmcR9A0RJExTMvAtmAsroNe2bOnIJdGmYqFaeG3OtoSEAm3KFTNSC/Hvyz8GE8N1LgNpHDAm
Tk/vMekWOFdgDoRI0N6+589fsUppyCgR/40WbTGGOqe7sTrSmQ10o8HF053pCB3bM5h7k9Y+x5iZ
nfPCKN/JGu+UfQcNvkyBSv549G7WQMREsOzlnXrNGVfQnINKiwc2a9KVPKrokejNkUcy1wWAvNjH
t6w/p/e9LNOE19k/0f7B8MKTbrAg5SVj0i5ZFhsm3YbW+NWP2yUGLYt2OcYMyw+ocmkiinxd4Lbh
7AQZCt+Jpjuf7niGhbsrWpePzyMdm9J84oU9I1513yJSHFDbcTJx94DZPp/CZFCXhyss05wW3aWr
E31MmihIDVo8z+qULCrpnjrfOkkGx36tLn41HJtm9VhtfJ0cdLMND3x4DBjxKCtZlqUHubpI8eah
dU6RteZlMoPMCwdizAsIAPzjaKeCgmWeS2Xdmv7+QSbKs5CE6g8sGueja0vhFgDXztyHLM5Vw+L/
P4jcptTFRhv8tYP7DAdLfNYnuY1jS25FDw5X7T2INxxwzRjuA9cwVZsuzu1Vg7n7Ztf+QR5ju4qC
vF6k34K9HLtl++JCR73F9ESxaTV1lxtuXkaIjuij5lX3rw0GZknZTCC36nvJQTBB1fL+x2Rq6M85
f5iQ4Z6RaLtrtB4bXLjp1tVks7hnU+3N89CdWy1+XD9WFJHcTY4/27QA8yh13u6AkeBY9xhORx7W
Cm0ZtYll4ApB1GQ6jyZTGlyaQGOgZBJlDWxpV/T4i/Bgp0xAHu4W3oQpl6LB4rh/5XvehHkk49Z1
EIpUXrcGn0f5dZxMIRJK28qlLJRjPSkw45I28FFPqynBvvlu8YXCQXH085jiaQfgXKwpV04iMlu9
Lc+hHWcBV2vg/PqIgZd45l+2cPsN87HrDMJp3WaL56qwHn7ZW9nQxHeqFCPDhaMelWz3ogGw7jVG
LQSmMlNxnTh9SDxiKD/EtVbDxjc3cXVvGiZs7gkCRqZN0qfRSLjdWbHO+B6j24F+KgKxkqm5yzl5
3IUc4uvDRV8mMisfHljmhLu87uYg2sYI8BDzl3UvO4t1QkAPljbhUxLJH6zD5V52SfqxI4e9ntsM
wXwDqakDYb3DJQAzbKjGeCZ362RwoxGSi9KtApHiui96XOlLg9/Z+Mwre8TBJoPNuTxRchm+mP0E
aM8bV2PZKFTxI61EZypG6eXE+CVKlIjC6HlmnJP/5S8l83Slel/tXKE49hQLEaLdDfnsxrcFKVIS
L4DKLMpgl26Du0wlp6rU410cMc14c5+sjF4Qf8466MQRa4c+ZDxNtTCELTEpVClk9Am3cDmZsR1B
jYqbew0lQJzemHRRmyPEuEB5MJx0RnEljhpLB0tnC5mwA5g+W/5CsdRZ4DXqgaP7OxqWucpeLdKw
nEwvnTdPSr8egg+p2Jtvzox9EdKyIIgtpK0TfFNdQh/MNr+QZzJUt5co57YheijNB8DzXUrcKe6o
YZ+GIVhymrMBP52g7UtW/h1vpOVHEyc4niNrp+rvzdHp4vFG2k86K6iDsoADcngmCwQssDzzw1ED
uy9VYsukyLj6SwiFPND2KPM+GKbHkQI5M/VvUk3i9ntmk4kuT4spwS156hrP/vaGNz2i/BIxHMQe
n93eB9eiXus6kY4sUlI7WJwe+QK3WGmrjRqRCRgvet+9R9hiIo5zhbcKycWoErQTO499zIWPLA0O
Kjdcikx5RQdQomeE9g9kT7b1we+vkvXJRipQiSZV2+fSHrdOpAB9mjQ89LXc6U/3N+ve9wfpr/t1
tXbjH7v3dKk8Frs317gDHQDH4Actp1/w2JJo4oKbn2w/kIzT9boEa+jIJFha0CpJLgbwAV2gVm5k
5lzl4veE8Mv03IMNIpAUq/nz29DN+P8O6iJM8uATf3gE8UY+P5fPWCZVlclqiBO0cM0Ammh6M2sf
IDMT7D2r+OcAt4I5XGKVO0JPIP9W2Dabpzzop2o7v+9ni8J0BwznpoaGNiDmVL1wJqBlk2XQwsgh
CAdkh4bV3kvuULhgcOMOsobJr7k0xT2mvtMjYRPaqIe2OWbT9g28bK80OS6sA5n3yXcGcofxFfUg
5VMLdTQ7olFgFEgmAewaG3/YDJc0U4qmvdSWFmiZsw3rGOnqSSlsFOrG85ahNDnKsIcnGhDLWFSg
w83kKRruDUrLZ8E4MyGafsGKOzHKzWEqtbBn2qXT+b8db3isUx+qCetL4BFbQzGUH1e6+GFJn8IQ
pexEJYIWehM/6MvfpPZvT701VvEj+p4zQ93aROHHOnDMCQnXgbg1aPS+yN40lrvGCjPBlLIEkaN6
9vtF4yNVwl4d6YLsCLli4KXePvFtgGytNNCNLUAMGpF9Wuh/+uL1X17jVqeTx2VoDqxJDrTqyQ2N
tgrEUd793UvUIvi5TTrn9gxunjW5PY8KoWq1/7jqI87HKvPRUvMoWZ0dHSVT0r6KbM/UMXphH/E6
3go8G9JA/637aYdFglOBzd4PonU+38n/geZFJV6hD5CwR8VA2/7l67aUEFbQ/JEEGPjUjGI2iBHd
qmN2BemW9CEuC62ulBLiOA0ep7S9p5IlWAh9eQb3UhtUdl/DTbOdEToNjNHI358xSrDOSUAMLi34
5VMBowuKnpHvVtkI6SLuaFooCUcVd5Si3s4xvgE5rxS8DClzIIeto6RXrF1VkyuOKWs+qvr42k2U
uvkzK1zUpx4TdVBoxQ/ReQ7m+k3UWbFc/05HwpqJxr7TmeCx8bzoNhM1edXwRk9P7BZS9A//w1qa
k512aeRzuoAo47OncU/vaE1GuJ+RLazBJn4G/hBSDkd6O2zSlu1gxIYxfJvFBAty7jNqzIk94n3m
PpRn2B7rMReUp730m1cDJO0drfxN6s9XMk/F1aIi3WeOywogXAq8ftg9UzODDENUnBRNCfW8QuuU
kXn0z/zvMMd2CX3mtekWUfinzJSJRg2zWYAxFx9b5LD5/TNuSQ4Dce1hHOBolDwGEyqSI/ertFRS
3H/dYliaU+NTk254wskxxfzer1q9SNfTu0YeBVrmk6niD02iAs69/VBzoeI/A5ndwlmeirctXZaD
1oy9ybffhzcyRCed6GzpP7/JmKu0Rc5UYIS1EIR3ekpGyNzn+p843Qj5QneJLnWA1nCW/Lfbci9f
4DaOsklqut1odAnE3lEBv0bdbL9H7KjYTXsVBY1/qskcquKp7Lb2n4diWpY04bBhEaispMCVjxlJ
jK7gdCr2geiW3JgoBILtFU0ovfrbYWvNazQOjyk8IHKv2ebSOVURaDOr2hv6rBGTZ4IdHtecToPr
IkaJMqTOcTWDjW3rEt4w41WfuliXyYlEGiEcN7IX8oxJemrnsWV/telCGAXkPrL2JEUeKahzrWHJ
eq6Ae2LCqHHLibchvvii7ayffPFy++bLC2aRxmDzxHG8KpBJtYN7YBFr3Zhz4IrLFUp0p5PneIzr
dWdk83Co0Um0AqlCS+p0itz4rYZo1e12gaIrX11iYssaaLJNvn0VBcdJ27exMuRM5tHzWsYJ46uq
PvhG7kLjdNYhQE0DUNvazrB4hklFuk5tnj0QVgiW35cUMmWTpowrzr8Ijma5tc3ix1/NWBZ0Lyvy
EcBMMuWCDpSY/QAlhnwG3pI4h33MPpq4yfFOV/pfkRuzR73zLS3AhXEBLiFB5/UrO6B0nYKXt35i
n39bJRqTI9lULWqgkPZo4cOUc6GKeX4aTkONRjLUpI5uv2poDFdm45ZSm+2W5sOqsYLP1J9+Wg23
Xhh2EiGCYYAXRS6c10LqI2/3mkGz+aSKuXhg6WaNkV76fO75KaabK806zLiGaHvdmGnTaCeaSB55
ZxfGI/yIlUJCkwvtVUoAR0QnBqkY3dk3ztMBm1IabNbbUC7/+WSk19C50UUd8gCj+kpOjBohPyi4
gz3hLwNwnwMtkMYIGgm/8m3n7I2y57hcB2VFl8C9Ow2sTQGC4PlBoDI2SvVIehV+EenAk/wn8/SP
2EYSnwlUHU0l3F45eyS2lkwuNAutX+KnEm+LVDM1XPhPpDYRoV51P8buQmsP5urwsDlxSmyvIaK8
nqVOebiwTUlBKsf+IEWwyW2/XpvtZqFvLq3cicIfJ3DXGOAsBEUTECSQRajpYjGeLJE/zT6nlqE+
SrZZ6H9xlEbBAKDDuwSHG//W9XI6Tz+6k+Q3dkGqdjCZYIBtohicUN+I/W3cNagK73+ungT1+86c
sy3Rt+F+xkYaraDBV/sQHQ1LN58g5qNjYCsg59d4LepKqceSITvi82TvLnitOZZpfVr1kdIng3Ll
T/RKN9b8V0GOeej7xWRLPHffIHNLjdy6u+hpPdNKgCJOIBSHz336VpjNSRh6k8Ccwe3v76/twcQB
deIlfYAB08YZhW64RE4500eQtjejZbwf+9FD3WlRJUr3s/fVO6BPfdCBx/uXE8jTBBvyEA50Mh7I
OmvSEYOho1vxAiHIIUdVIaC1F54Up9IJDZnI2Qm0Go+Vu8mv1az9f/xNbkeXKUNAGH0R+HtkDlOW
vy9Ij4IkXKASB/Yyy/IQlhoKYi9mueqbTmMhd/TxzBlhHhfgvXPZP+J6dHzNWBMQuYHLplMe7Cfc
qIl9tCLw30vElCWxAoY+UKBl7eKM02tzVEkaeh+tWU+PR5sCfVOq091ieboRIys5oUJbWA3cahCe
xC0NnX4KsBc16Ml0gPkx5LGRNjXX3ZcMt3qGzaeF5IeS4skniz08H8DCt4rXFAu/dSzwVwly2tcv
BbukTj/snXUzRwEmD6Rya0T0mIT4FexbYgX0OO665fkqjsKnXymmF427D4xh6IYyUKQdbC9yOxfm
k5WKNtFgMCt9j8ZK9qMFTmUa0PRrsoMMWw5V/BSTkMVyI8Oa9WB1FW6xdCyKjdqyI5dM9zoFHWvK
+y6z8SA8RjOO3v10qggHDApi65fyaIeY2TAfZqO49/6Tde9DOZ0xUFAKTJP2j/0sCje1svMl4fWu
cRbLf1COvmHCbWMNvxZpgx0R4kUXqvu2OR31TeVmleQDg9cUutIKTP3S+hXTMHLwxzow4W4jxfyU
5dd+UZwdDnVhf17Gu3DgDMxaTyd5TEz6MrilFLVUEz5JuhoeuA7HonVQqP7kfp2ffXsFZDlqUAI6
eaelv16uKkUBZ/E2AQ7cDuFCocJsqZv3JjJIyXHnAkE3oae/u8i2bGAiG57uSGrUeC8W1kxfwQy8
/t9LlSm6tHgAJywBKP/vv200FBNy/Y01g51HpEVGp8ehhiYT1wXiH1LlOG+SVlMoMd//PXzSPt2U
RGhJFsgacxg3/EOs+5qnCCOd/gq/OlhriB/XrWJtR161J2j88V9tv+SSy1ekLpzm2f5dl1fxRk2J
ry5nhLl4DFUkj5ZZwvahQ5H61VOZnsjZ3jsNkvm/IivpLcXFQ+SJJgCNCXo5IIKEsdFHarWarBnJ
rYSnnGCwYt4AqFQu46+HidbioQAvXg8MEurR2AeutZ76MnB3jyGBw3oV/0TcwUMP5rDLetyCJleR
SQiM9J1XFMbP3U/PVjlD2SV+dln1xXOi+SnO4/brHkVgKycGqGMc+YzG+yWR6vwSemltBCvvImMF
yOCtHgq6ZHti1BpMsYvfUMQDm5S8x5m72OmuDq37THw7fdTDkJhOH+IZogweXlr24D5bbmRX6ZUe
07PDn/7z/gGYLMUjFZfYo42qWSYx3iQOkCi6XIatoqji1COcVNZbW8mvJMwn7Bq1z6A4DjiFt4Io
7v2bHSDo/WyTpO6eTRaxRRG5E3siOuj1VeMAVM7e/aG0cyG2OJN/I2FdGvIdmxkTIhBAov4L1lZc
12NxOeI6L53Oo6kWKyqmk78XjULI2L985kFNwS0NKm9PYbLm7F66cTB1f7ZO0f6Gw3xdoM42Elsl
WLpmpCNUKPsEU4O4K90Q9gxMbxraCSsC7HnCHS1vFhvirfu+xPk/0KHDszFO7vHZiBX4H7RmUxtT
HSkcfImgiIjTijumrBGKSSGAhg97sNi11eqAWsk/cI0w/sscMWmRfsXutI/Hurg6b8aPAzec6wp6
MbyPhc0r6EG5z4PaTDrMLbPXP8Dnm9bR+qEd6MQulNRIn0eJdg6lbDailJIoUorHEZU/xrx+7wny
xMYncruF5Hqrt7Rlsu5EFebVFGbYuCLsCy0UDxq7CZn1fP51WjG/dwU+bX2goShTNPBC58Vwcy69
rjTvryp5guBstk/K0jESN6h3X/99DNSCxvQVGVD4ji9H64HLmT0hoBpeplRCsgPCTq93tFSyzYGf
McmBq97ZCu0wcBhZ8c7deGJ/qJbIRRsEZ8+y5BXpPLYUsP+5RldpXGJVKRxuuzK5q76Pf1vI0gqj
GrCnFSA3J+m+OZ6buwe/YeYXzL+k+OfEem+c1osxEVv6QcqBincRovFvq9UG9gBZl1v9DYVmVsPY
1bgHiGPBvdnImQ6WP1W5MQXXOI3TTL9d8biKBoPohD0gb3uloIQFtmGPy0bRplBVmAx6NT/6r34e
FtRHKW9tiw6QUjofza/ExkhaSmZUNjc7zchyLnP5xdY6ZZ7CLsPZo+8Gh/XtFZjNJrkdqJsZ1fYF
FpkVQwevEQHeaiI3L2++p2tsDuhDRjLROQs4ijn1arhcOjM1LBACvESXZCgDs1sRUrHM+OGBWV0i
YfGftR9RjxePLOHzNxCNf04duTYlnqXbO2cQHs8iXjGUHXmZPa/oCvSJ45qEkixQtm4KI0mzad21
UgDO4+F/DCHk38MNzO4xmXYFZnWgzn3lQK3CF0kWQeBeFxDoflRhkUXOidsp8nkuC+gb1WTl4i4O
Nl9NXi4nPF94V457W1zcXNe6SJm97H3r0zMVSyuisoQEYTAautFbx/hiCUohDfLn1dR68HyaqnNe
GqHaIC7frwI55GsNMg0BloPkP37jUu7QXxGGnejgKgGVf4nUTfZsWhzQves8eE4ho4gOn6NUlsBx
9qOHBdgmF4CkO3PtqNaXclvcv0MMrYSzVr0jnKRSCjw4+WPJ8oiIkaenGvyMLuvlChOaTp3/AOKK
B6a+nWvZSgblV5LR2FTX7f68wPF3GPxj+BTcqke5JE0pMRJNS0frR1neIIeRAR/nZBe1Qnechavc
SsBm8PUdOcqZwxsfzxcLlbc2JynLvmW076ceqQm4s2Veh4U94Rk5qo5tRTdZMN+IELMjDhF4pWJJ
0l0Ol7hBXZru4xUFQJBh7qV/Z8DkQ1j6K63RUrnNowHEVEnu+pdn8SFsYErGvRzUR3cppZS+zaut
54PWWflgn8ofI3Yz4AOcZA4jmmJueexH5GEgs2uHK3i3pSdBTDZk7wuLQpOwaVtQCWxVzkJN4OLh
ToCZ93lnlthqJsNQOs0+eiDdFhOyC/6Q6/ORX9eFaJx+Z6rCWiJKGpBV3M8wmWFj35EdN0TQJszL
YS5zbennGQWvRCtlB3ytCeQppMDPAgzug5QEzeBT+q8gPpTZNyLimouTQY8lQty/V1prlPuOwZAr
4xdiD4gCF143X2ilF1YrcB+nu5q7Z55SqbnY7drAO0WfMUE+GIN0UIq+YnML6QvEhHmsVV1bF4P6
eTcy9s9bVlnQi4oBgllEd73KTbo0GDchBnwZmc+DxeGDnhaKgFjNgcHoySMunmML1DAm49fiysML
bQs8bgS0HsjVqLBfI7FH9Byd4BBPW/aQupKxQdU+XILggZssSpTOixDHi+HNc1In0MZcSdi54mNT
GY9W8bv4Ky/SZntwjMEA+Tt1x7foiwZXRf5DkuP6XmDMK7DfpGDUw0DtJY7AtmAjpCUwaAZGxwLd
QVakh7OLj53GYCxrjvyvdGSQAzzXuRa98soh3qaZ104+sqSEwKda+KtdhlkzGL/jcWwxcI0T2dAW
5Ur48GnmZKhkFF12seyBY55TCH1bxI4uUaNG4zBRZ1RIOqLkwUtbPMvR2tMP5WF5/Ffx0Jj8oarK
dPnvgm3+TerAa9bvYiat8FXl6fOsGxhOcpXMJ5rObvEciZGPJ17arIa7EXhuv/BB83cY+xQM9f9f
Thh2V6WJ4YKLHuC7tVfrS5p201RMh7mdSVJpJ9Iim5NfK4o98Alh0/n/JYrI2u4+wETvS57Qb6Zd
o508Gwhlv53nHVB1rH2opwyKiy6uyZtRkdefatDV+kdFA/DTFSzeAfPCu+ty6tR0ARABrwlZBQxP
ijolVfro8VGl7fybXz7IhuVj/x6b3PjQ6Cf0SCqPFPD0YSiTY1XQriLkfgovGRIDKIDJHG7zlZGr
gGqgEE6iDe75jrUM89iIivU2pGLIE6BrwaCMSuDm7C50m1mg/IOLofVoFflzBD/Lo0YS6x1nv4/Y
zOKjrkM6hkAoRzUXTJHUHwGfNl5WEIf8f8GCTNo0l/HqFIW2JUr5VIPoqUv3JEuJ0a4h+ZnkVO+F
tRef+FLrAHdnftnjOafiI7/RSIO7qSu3S8JYBkCQtx3XLNrRhPUpmYgGM5t5YldnijI032EZaSmz
5KOyTbkfSV9vNT4whcz29tBVgwZ1ICj7C7WKYlgwqqm/qW8qNDKJd2gTCH4rLVU4A7ic768YzZAz
zmr+J7pRGPfex28BFGryHRMjxSDBV3GXj9SOqdVmJGaZOzSEQ7b47nb178sQLBKPDVe8msMd44/3
yUnXCxP1UpVHksCWxMYjzjc9wH1u1XLgfI2P2gMtMrN2Sf+2TN0rgCUBidb6O8TPsw2WSzE8NXTD
c5pZyTRDWqwzfvJNrkzVTMkYCPKLNw8SHCJ+IhUrpf0wxZ+3JvOZAHaO7IDDkM1GfrkP8vro3HGU
xgYqv9gdyHJk4+PQEBkVyky6hEtEtLPoLUbKRymFkq3uA9gBFYf7RrxwEu9CNCp4I8QlCT9voyHh
lEHCsKikJNrpcy1ApC6nA3BcSEXlqqOcgy8LfgyrfI5sT73xWwmculNS2FEB2UzHqrPxxxPgpJIk
GemBfKR8F7H2jtO/EqgMHGsrYXaDq3FND2BKgmLocoxsShH5S7B3yJaTRo6qADiRvfU9GS/yq2iA
STFFHOYOulTWlvSKGluilTYrAC4RXPJsa9buENcOaoh1gK5EGzHg2J88zMnHVaxWn+drg+gcUvaA
5lde7Hbf8UCHY3h00TAjamxj54hG5zLjdO/dEv3qiw6u9sj7aBJylGYUKqDN4f2nnTLnHhecugf5
6dU5Q6B48m16hSqEHs3eRCvkkQ5XNClRejJOqG5MXJDemUbmssGlg8ql0k06KgziseAfD1GeYF8D
Qt1ZDe4VEfSVgH/RKB//Qev8VKo+N1/nXeIWBq9Kj8RAV8sNBrVslHChg7Rt7Vfjr/3TRUJ85Il0
yorMcLPPWHn+wH0vKg7huAmddyDFPZOjIFqBeeJiOtx2tWG0Oi8mIr13+p4ktaECHxuqpCGUJE7L
kSv+RDKuuOibWT5JxkHL0Fu1N25Hymp1zR8whBdYT/ZYJh040UEVyJ5eFyhpDSZEnq8ULaRZhdoa
IeANt0rVDkuoXy5MBt/EvgjhUTpg7M/9fQe6GPbv0U1b7ziaZc40EDCi6gcXRN35yjgr31unRiIa
Kxmr9UGfzbNxwZLN5ACQc8IhW+LqTQFnmtcd86NCSDv5wirtVwmsw09vtzYwNWaxMvLeTKiqGjAY
z58knUEtvvWtEJshCyinzCdFYmSdWyBOeuqBzjApO8rgPYudYpkCod0BZTbOrMrOzl00Bx61PzP/
4MKv9EsQrO70c+R4NICtVVTJ2LEqcdRRHoSGePUNei75WmzW3MzBhDh5WOBO1E0vl9icGbwti8Wn
v144wnIntrPQwLj3O622Xi2WnbfBGZiwsEisWZqKbmVyTRCsRabkWZ1SvGNpC5czzSsCbQjjxj7I
rH5I6s4Pmb/ZikyLxCZPeM2KgXQjgEMQV4R1NB13Ip7mfgdCrQ8rc3q/0r0FShabNC5hQvhKy7VE
BisUdJQGUd+gOTrSvxnpn347yWZyQy4WgrhoOa4fDcfX81L6w1TCLkyE4wwXbSoIMKyZZ1O9Iu0+
9IJkYKUTFyoQfda26qc50R/DJDc1j7IosbQYe1WjEd4uvlUJ31tmToCzIZpGK6xzSDNNxSJSZmbo
j0dNnnmXcBgep7Ufn4PQmwNcytAi9CG01S6E+Try9lkCVbHYP+zMTX68P63kxf2aikIAxYoI7w+k
t0E6H4/A1UhZH3hpVxsJ97Na74BBuZ6vMPV8Lp2+EpWo7EM7QEiRwTmNzzteeDOLNdkjK8SsH4jC
v2ZD6qo2X8PN3j7TPKEktys5Ly1PY5c079pIH+YGeHYTrCOCfg7kN/evV42IPBLhK7aA88wQXH7q
qswsFAZi51ao9YrNRj4PjIwG1ZvyOVcyzLY8CZB3W9aoYHKZY2f88pMxkFaANbwSjpFiddaw3Px3
LRzFL6rf2mb8abfGcNSK9DWYFa8G/JwgiH3pOzMvfexXw36hVNArfmvdD4c5Opt0ejBs9MdgeOvL
99YJ7JquY0m68oqNveXP6RSFo7vXhzoaQwbIxD1l1Mc3On17Zcx+GFFFD8y5tuleyv4Cj3EvbmK9
zjGaFXPGC6ai+XJxWlRoO5Hv1XwsPxSf7Wqp3eaFLKvVqGxgSJhga/RrsUnzaEbg77/009smff6s
GC2dMJt/jdq5EfOcCg9jHEjrfJoLmJKZJonZLkUtAuVgdfk/YQjAJvyp66XCQWRTCcYZU/D+EFB5
t9xKrq3PhlaEjF2gHvLeMwLMNvyFYvjSloVwtBWcH0o/0+QQZScAfHJboI6yc9J9gJ6DmlUA3WRc
vY92jHQQQU7jP9moc/ZXa+Ps+H8VElGEr3E0Z8yiNsFJFzsbsrxT02Cpn4Fr6yUjaYwU55PweCg1
soeZIv8xBrYZ7/gZU2wYz7UnromW7l3aLk9aWHfwZXDEwcMQc4bThxlPoGKmcGhNBaSFxpXCitzK
Nbyb/zzNYxJ9SlD0I+oZkcp/QcMhkQpIDjJJF4cKJoVJgeY3Husatok0Qqx7446lL1wcIWo1SpN+
pw4Io0JvFlVTD3oowpcBl0ACXJ0WIaim7iHWOBpsQ64C3pLTer+VCh6Oqmuzp8l0R8TsWR5ivwA8
Wj2kR5C02Am87owi1zQUNur1IU+naVfgxdtGaWnMzSRpZ8e3fueUHUWLmMTypucBxfEOhqUMoK2r
veYVN/SLvZefji8Dv+o2IFOtA+lhG6wq/Ni1nme5eaD2C5rzHlV3kVLXwSm3wlmBjIq+8iv5+XTU
T5AAxuRZ9tb6lGcExjoZ6SuymnaEbwOgz3RJKEemUoj6wnRyLGUC6s8EFZvTsptiorqIcGFU1VU3
FZpbb0noG8njjd9PKfw/n4MyP+LVq3Sg4DfeX9gmSwFL5mn26V0HGiWcZ3cQCmeqUO41Ih1mKbb1
BGQNIXPn8/aD/U7eCCb2eCuLLDWhjxKZeSVA14uDjeAZG2sGQUinWBMWDuws2W8xwgXq8aLZ+8JN
T5KoVMmPJfYRUGv2JQ9vlSAPTmAFmmtXuC82G7ZF/R8J5ffA870Fgl/9ik+/fkaArir/dBASsxJS
GSyE3ThNr8FMyXgflb7ldEMRVk4LW+qfECS2DIVHYOfp1b36UmAmw2FAYHB8xeCIySWfLdciDHtB
J10p44vAUd7DfRFZsd85crksVMy0xldjbPSPGBfmF4mCp7CLhLc5HHsxUkL7cOW8gypluuHONM4C
ODpxsFVHXHMeHNdYRgPVJoZ/VTo2P+AQXEEWMKMY3hf86V1YJfySon07cgGGfD1DQppAFCR4o3zJ
GgMHsxzE/kcrkvCCs1xiwpByW+qJ3sk74tx8xfk/UPmA4n8o1Zl2wwfAIFTaKwXABZS8jqbuMKQK
DFOHclvVf/2rvLdKq8Vqx05rGkEGyLaSSfX4LLWJ3Jk+qRdCebNLWA0zRpLobbhxTXVoeee9g2Mx
HMFfFi7enl6mzOTkhpEhjb1m17NhfSibbBfEIhZYqMv/6pOtH5umLljMyNaZRMirW7z97vy9Sseg
RhkPzoTe7isJz6nEa4aWwFVO5XIzj0uAh+C5RLco1FGq0kacmZmLSO1tLfFywuYjRduE3sVepQLc
WB7VtERjB06gOuLhXWlXqVSWBeiYn1myTMiDfwS/IvnVAC5ZQSVb64TZUia/YbQKhAi6E9eD+SEV
PxfdQaTTuZNVMbQM1pOswHhjue4FKfPEPvdZzxvd6m1X++Da4dVAN4T8+N+uH8f5h8gATttwQ/z+
pcXPdoDVtQBUgz9jqmZ6baRjEyw1Kjqv4SYdNfnpLhZ1wclHZytMmODD3LJQmRCE2+sdSynIOl5F
laNZdBh1XJ1hMcewhvpBBx8YddApjHaXXZQWJH7x/J9+/ifxwfE9e4tseLul/pWm1iLDLj9RvGC4
y4Or2J2wm1dE5t5Lg7Xtp/OT0Jze4lglaE7jfpE3ht0DM4rJGzUP664wF/C5AaOER4t1uOi/Zc4M
+Lz/23K9jVRocUhYbWOaD/A9DwXcX345OTBS2pvi+ljKsNG0Dobvh9BUwQNxZeGc4OgPvUIvbJlo
Kk+3hjG4/1ZKl7yyg7x8begezfx04Ry8rcfE7YvyK0GWfpGdnlbbYxdeskWH4oogMdy5nPQgQ8ds
02IVZYTkkzJxgFXUcd6j7QnUH2ojPCcdgBoN5/tPQ41vCp0+YdObtY92hFrnVZMZ5nxuMV4MP96C
v0tybB/Mg302Mt+JQQiReVH2Cgz7Gci09+MKZfV98BBUF7xmBvWGrQ/fyRIG3L/EkP03fENCDujw
1icfyTNd0UJuXNH7gPSXzz//qYnxT6PCXUtNX/gYpDOgo44EsfadDaIi0HsUNK62ahvksISuFnTJ
9+My+q8RRQRxTc33dn3N+H9v4wkyuHY4n/nIPAjtzoXqogx9UAUPKkcUWUUV/m+kFnjjICb1iOkp
0+tA/OMe0cTzCkO4RFQyilyqQ7/XSTD1EoTl5jWn0MM4/6h4VHPc4L5AKxDpnHIH334/KzFrYwTg
fb+N6+l0+sTzIY00roXpUZKVNrP8Gd9VCbURgiRuenl08y+k6hQW0zmpNJB6jgC5JPsW5pHzbfeN
+Zy0KI9Be2T2WX+e/i0FwNAEFliWL0sw31ayL+HLKwJMU+jXXy1pn61rn53LOPBAq5bdC2+hX6Ue
0o0urlGKVm7QMoPoDciGW2ioy/I9B4a6nRy73FGl8wRr5+3aGpi61H0V+d4uZ6cLjP3gZ2w5B+89
RVF47DS3Dv33cFpJu6HcotxylWbqo/l8evhbet+NOQuVuZEU6Emigh45d+miYtRw/kHP/IAP+ogj
n4yaJnEqA+bnvQLoEvbLkGRHI5jY84JgvrMU4zrLDSc8Af/Yuy18dzKw56LIZ6ds/xSDgVzx+wZ6
x4Nr+GptS9/f4bVTDbWUGbbwDNRwAk4xlXagZpnDHnxAOU6HYFLlTpzDhGo1gWI9VKish3I9qYrS
xH3OmozdUR7UDqzKb8coIFRMNYgUJKnUeUXFfWjETK8MjpGnAxiynblyi7rO//1SlnNSNqB9l96k
ZPhbnb77056Jn6PLQFcE0yNu3+kYxXviYIjBFeDP9X/G9vvCmrLf9UFlY/JF+o1VSsBNt5pHBCxF
vOIb5ZmD+ui9sBdBQezxL+tuCvJSb79ta67NBmgMSd01CaN1MIhQqInMrhl5T6qSYenLbcyOl4dG
aWv4tmdY+vwCV+7n5ppG/rPmCaJY+I+/3tT3gvusa7mzS7Zz1ysfXBFfLK7CNA27RzK7jN2yltOV
h9CbFRMgm/jeKjlbQuQ02QybK8BRb2kyT8oUCXqgSTHgajVcwmbIFbyribQv9wROAO5Kw3R7aKlT
YoENYfs7DzohgoQd4iTX3clQ8WBmFPVzIg/fVrarM0LasTWo3DC+eTkjmpLvLwjPxXtqmyr4xdcN
cQwohLgZ4lVwic4z2Mkv3OoWY3S9+Yu7Jh2NRRWp0yJNCDN5CVxJwNzzGb3eOy9Rgq3NTWfzajUu
Wo0bWe2N7mDKiC4nH/U79juQR34tKo1FOE+s0SWXpzSsl3zX85Dvg/GyhAhTm0P/qjB2UYlo7zgA
3Pb79YNUg9SaWVX6TO08vvoYY57NF8kODJpHHw20Cn+8OYVhyV/SvJrg7hTaOOroKFjgnA1n18ID
H/QWcbinqCoWfjNMp9rGx/1orDjUr8tnmeAMyimZn8+VhHL6B3yb+9oyFWqTwM/dNbVhZQwRCGYT
UmgUvdnTDKoXUYTMOfY07GYcfum2CNzT8N50NwK2v7JK7FPUefOhulhhU6jZMF/O7JjE++5RRMiA
fRs5hNb8LsYiH5pNNLlz5l7GsLI66dva2MctaTC4kX8FSRsH/QhMMORigKZmq6PDXEr0LDnL9KBS
+eVRHkWvHo+dY3JxTqZkLUX1wdEmWity7kdCs1G7CR5LusgcgQmZhL/xvcAXmoH82h94s+okvf0n
tdQV+R2vHvT5uGSB/9+hyJQsZTCYVW2SJep2GqQnnDJEGvfl33FVDK0/retawGW4zG/55DD93Trm
AHC8IikEgsR42jM29+KAAz0GU0Nplc895kXI/tREheuIhEuWifGUTnATxXo8ZrCxP4jbIsgzDzlA
RDzxIrapz/cBWhXf50RccLjLoL+DPRUOfodmoQYtbPxBS3f+LkwvaC2l7umvGbDV6V2UDfrE8vyo
P0c0fhMCjJbQ3I4SEXQhutxsR31E9YjdhUF8whc+PfoGWvyMOHQYPG41xMy6ljedoRmXlZLzQmiS
ltDIklLZne/LCL4JCwOf3+i4KwWfgGiR/6esu+25GnrQ8IOKQSebe8ts3sbJCMe1DfcfDwRMxHHN
CrTJMRf4dTWMUZ/utPtTtiJpsrAGs24cB/e9DtvzGHsGhIMrJMOEMu+V/c7cww9GSDCyr7tb4soF
GQz/mRyRHOS5EtUYW79TbPGXomi9UJ9ZwVRqRLWKkPaeTNySC8rdGgtlqSMVXI14O6UHJLWHPvNf
JZdMwXW5rGypstD8MTWyqq4G7BTbM77AhhI2KobAhLggfUpsoC/GG9u4kAYGqRldgPUiX0hn0e66
laWA0VoVLljrLZtq4LscYqD/TZmm7XvFUzVdntPFawb6iEIDUDo5qGFB9uSsxyke+XOeoMJ49VDy
mfX6uYGPfc4Oi62r1IV1qdrjD/Ms/LGuoqC02roYRPuHdEf1rHzxrEcFZXfp6aMTLWAe4d0pOBG/
U8iPrELTBZFEyNl/wsb4S7+T3Bv/+c2Ng10K1Ru1kfWU9VPECLY2lILb9EsTOHai+sGdFaoIugXl
jdTAimFAjPCuHY3AUlIRv4nauzPSuHv4+UD2a6D+7g6HrAAJUjIWSrOcxPNRgT66/69gdm17F0P4
4tTsVSzM7D6pbnEUDf5LefvzsKc43oC5Ssn/ASiCLLedchsZsi+nTuOFrT+LW0/kOMElekMdx+Y8
bassrWQchbm/aysEyALWM3ClD79MbAnrfBmIamFc0of0a/vStmnIz0VdZjiLQ+gGYR3jnbybhdhE
CswhG3n26DC/K2NJlJGhzRUrUKH2h//j7M3Ivl8MSB8os0AgLqMhHrQAd0NPeS9qvkZRa5PtE1GJ
/pPaIU6QYMn7jk1Bsq/iQ+23sxeLslLklPE7gU8LLSY6HFd4hmRs8KISiTf1fGCtIAud843FqS3G
qj2UO9z/wQRftbBpQi1jxeZ+sVhW7mOXOnRQkrW1pmaHPhmXE7CvoSxARo3OaaICFuOqhpa5iLVy
h7DVg7LGJBy2QMgPKi9O9AcjE1gXu0BoF59KXK+Dy5USlKNXn4VbieI+mQGZKF5/W0S0jIMVec44
P5Jp7BZPe9XbEo+99m5pTC/Qm6ZAGsfXQbnMMhUw4P403/AzOoOOrCANPC3BexutxST6HTLTWodf
q9JFXXm/G8T+yt04Cn2P+swVlWhhEpclj5c8ZxvkTvPeI8QE1bguGDtj+uyrXf1UlfA2+ENyzQ4T
IImIAABY72VE1vuIBxV3gx6Ffbgs9QOAGnMwX9tBka2cJfoOB0avOlFyZNdxve53WULDY4dGnHKn
e7hLcF080ygKi8+2N2fqYpztFwRLInWzUyc17r1c3Vg3F9ss7df81TGLctVn70Orf71YOFYj4kam
QVDwMM0A1WAdSGKnoATMHd7UnhUJnyQ+/IEVTdYOa+O4XVLgzGwlPl0m98ve7ffiwWDi4F3QTP49
3txHQsQyUfSGAXqqWZtDDmcMIAVU5N8fEClZdhaihATXRkxmqjdTO0EgGrR246i5/bzKvTPZ6Hl6
kAYM+E4/FFrfGJAmzP6WXbYMRKHei3Djm9kwCWLYn+otYZNGBcKznzvLriSy+pE5ByleQzWWhOHx
8cS6nrZmzMbd4CmMbmIpgRG+2EZCLRUxOiW4WWd0/AH/ZeheZef9yq+2lVYLsxDyXWe6OdB71Efz
QWO/k91FT2Z5lxr6dJ5psGI/5kb2klRlcueHNUHDbfvjiBJqxNvtALEIID201zoiXRSSYQcGV83s
ZLWar0MSj3fGoC5T8d277M+yQTAoh1C9qDDr9i9z0eGAw9nPJd/c4R1SyygoRC/Pc4LHk0vv82+b
3eAtdedCmD51QLTRCVEceSUejePKzW4m8Eh/qgmWfzTQqNA/VsVa+CIFlS5cLrzzoRVgyYpQKjQH
5xl5ScKowHD6LuOm5AF+/nhAHDMBdOXocZkvniscF4YwKhKKYTSyMCWmdSyUKsvT90ziYFaS720Y
pgyU7+scY8OE0OWgFtg06ggtrAXjA/umUGNc0ynsXPkhYr1lVX7nqs/hvgtSaUhLmQ3QHdQXAhMe
aH6LDlygBhWB0LIpnFIogTHfIW4UUszNQx8nDUkfwwLxAUf2aDwZa4YlPluJVib80DDt5Emv240g
zphnXE3ne0DARidVV8om3JkWSQIjIMQBdSmLsVHwESu30tXjVLX+o2AURM8ez1FetZkoDhSmwRfL
A4nncG/5rUVkWqEqEXwdciMcLy8p5V70v+/iBNtIdel2p7FJeDgGSCGwUYSDMRNgWx61o3h1pn64
YPysdJPKXn3hDhtotvUKB9J8EYlNyHAFkO7B2cgZS9m3t9ap450O2HrA0j5x9NmYIo4dZSiziyp0
YZt1mNy4Es+h3cJS53DPdUCkoNs2IP21seZaJ4zryZaRoaV4SR+Ba/U/wbdNUOKLA6QIWl3eZQsb
XdGXcHKUiehNQcpk9BFfo6Pzrl53B6mZVjAiEApNAp7uP43/BV50zXzS7e1w17lYU0jXrlfa7rvs
hZgkRDY7vuMo3Rvja3GHJgPPES+fKxiyFJv6y9E/MX3/g0voPtraet8Gf62VfAJxBNA3OJUAqNYT
cXelHpCuiwJTJxGrXVwL+i4D6DWr03Cj/kZzjBjdWiWlPswDWJng/Z/NGHUiaoDHm5n0zSvfgFFv
YYK93DWtyyMetzDT/lc+LCSeo6qWprWmzxVGTbTSUfqPK8592BweA6R/MMwpzZuLuysxNgtmWnts
CpplS4TAYfnsPqaSu5moDtVz+cClafBF5J3paqBL3kmzxzfNnV0hEmm7wo+mpOkmPQegyDBOUiju
S7xxXdhmiARo4muUZrLaY+mn3O6RUevYGecgSivLEwlGVTbpZOk/iClU4B4JI7uuQJ500isVkSah
2fkilX9aS3G+z767s804tGNFz0gagsBj/m4E1c6EeCb7NxhnPOt7Xyd3nEwAKkM6vyBfz5p0FJPi
2P/DXfC0VRZnAfV2ymqKX/GWcmQko4agwgw4UeV1AaBJbCuJaY6Ou3VBsFBiXU7a0/Cuh+F6/CA8
hMRoBVNyQorFtP5FWDeI7/CgCbgntxVezINygvtpgrSk5H0xTNrxNmBWYSGHIhSsTxOTcwwLqq7q
ec9eFZoHMjLiihoOKEs/GSqAYMVEDJ6PZaisR2OTO67CR60xNgYuS/tzf80cwyOydMkvq+DmAZUY
AhugtMI3SkFhuwhV2yCCl4KoW4QeRw/IpJR1Rofb9B7ucYE53ZoJSsDDHLclSb/I+cqgPH6HQPMV
KrbALPm9e2btZB943Ujf/nQzWdhuZio9IBFIcLmD3s0vNWQk+RvNv0khaWemIRJrQERG3IaW5Yk9
oZ2cykEm6KOBRffC6UeG8H+e4zeUHJ6bi5od1HSlgliSL9BQOkpCFBicoqAFbg7nil2mSX1PFUdf
+MQeChbFL+r2yZwipKO9nRuE7iqWIKI9PYwQpIZ9i2j49X1MyPed5Rt/M8+LmZtIeiKg0DGgQ/qW
pW/O2SWnt+0NGQiHzpAOX61JLtZ67b8SfKYk8CbjvtLZI136Sct4CP0gLs6jW7vvRTLJp7FG5bj0
XIHTRriMlbKONt2L7LuUCozmXx/VeW/9Qv61x5G0N9xlPkXOcgw9W+A9VSOWa9w6jF/eN7cU3AML
/TZV7bOIuyk7DX3nGH257fzBg4K88vckKX9HcrdZtfteNkN7SbSccDR+KybOeu36QeNARJeAj7QX
tLjKwYo9vFlYURuvENdMQToTylRVBHpJkAvn3HMk59R5bBMmSID3wc2gahyZDzo+S9HZJRvwIWE7
/q33+NGDmaDNeIknA4APvLetbEXD1K5DkS2ukJ9xzF3PRlrMMsx+R66kucx1PY5cM6sYoXMlvzQ7
hgDxi23MnHl/hd7LAyxml3WflEtDC6nOFWbAPmZo9oczQm54aL0fwhsZnnOQn0X6r86zsAXpKQe6
Bft3cORgIl3q4GbDlb2Lol69qnlOQK+oQZyaP+ZlEVc4oqk5v5Ndb4/X982ysfmyJU9iA2rfKleM
Dvgp6+Gzc+XFY9Br1tX4cJ4kFFrDH2nfO28MbOVFbaaRNO9j76HnBnqYsypljLW0pfBpG8YkA/Oz
q4sUa4V0Y38hxFGBx9JaGYcgnvA4cXldGyNLsbo8S93IlTleMLD8Q+2PKvALh4ob9aS1Gupg0bil
knGklfVvUWM2uHPTL3e/QDm5DtvwyfD9fvM9bqA5bLiWBJuKMy1IlcXZJu3B1miKWzynb2jQy2nV
xbcqvuiA2sN3hJzm5Z1H1EOq2Tyw3xvButT1uORztpmEvWK6Sr/MMadGheGjwNOzX/0fzpRmUkar
rnRQPT0bkPpo+To2iBOypEktpKbOo9z3hsCF70XNlxY6I2cHeZDg18bDmHBMnkiKc8Y/DZ+BJCxg
8899whH1K8t4I2oe6wHJ/D+kbkK/2DQAbSscHN6VfybwlSKuHsMjPVonMpAX2fHYt6QRLYYzeYK/
K5siZEaaH54a0DJSp8IhkuFCW4IvBrgAZEwoxB2891+Chnl6Jra4d0u0sNX3aUzmuUOADFpaucYR
cyjoYhqS5BFl0l4NinWhaRnrjj35sQK+Japa52WeybiTODpCOdDqEq5e8jVKsHCX0yYfQMvXxarp
BWrMkPpdackilR8pECYgPAGIhS1qwS9G/s3AtQWhb0hSNXncfVY+Sx+0WjzmIiZMdQvPqlOxk1/k
It8f1LOhb+l5+JFhQIcypO3kpq0Jg5cLRmP8uQOPxckuVPEEAATxo36OW9+c+6f6zel5tz6hgYnh
DekmbSTXBGtGDa/92l9L3gd9bFNyuIRjmh4tB5S8WRcrsIql2zE7Wpj+TsRjxz+ufSPtyvW7lXes
Y1BGDgqDbHVW2oaDCCwbT/yqhQ3a+/FUElCk2umQ0SlfIS177J0gurVF0cseH/gEnYKll71WiQVq
alrAdAjkG/wDzbVH7nuXMLEpS8NLYjron/wm/qJsHgWJwh0oA1+OmOyEMb6QfI7NsQ4x0+H8rLS2
1ZcgWRefUV1wn8ynLSF6+efla56UkM+UMFGW/YuleXOz16ENmdS3WyGOb/MuJWQCCaNWzPyX9qTR
rC4TUrp8juPbH66bXlJi8VT4MRO4TrY2Hg+y6JyMtMcAjdgTdYLjNcAH4OXfCztUwnipBPbrDWt5
QuILZiTuq0okprPDZfK373PT4NV1LZjwXaFr6BnDyR3+YO7VdMpazDIeiFTjywGbZxbzrD1w1ZNX
D0R1BwYXmvA66RctKrHPihlvzWXxYdvBMlxCtiIVYfqqB5HTyn5wyibwTvQgCGbdL48gtuT5mUAh
y/XzUuj4yMtdPlwTulGm7Bc8j822JhF8hRVT/IsLBzKLw7XGa4xwAPmY/Lj+SZ+cXdVBN3kubQGK
vBnwQV7aMm5NJQhnm3tHM44AejJQWj6FKuDEb5sPyVfoYb+VEzBGpUpz2k4qx47YkObfq5OfHj5O
eNM21lPHJW0GHB+mmtxbuENUrUtXMaWqZ8lqKPHAxslCzdopfVOsjf8G/yYq/x1NM9DrHuJUJX/N
scHNzSsNeUj7whgAOeBlvaIwPO5As+rmkBf+S8C0Za1JuTmGLXhcPr2qT0JMjTyYDGO1XByd9rXA
TNrx+YHeOlr5QRnIF7n5gYzoIt2eWQ09i6CPUFc/x+TkwKN00obvhLozbX2gtFhvVgHggNWDGis4
ch6BHhkvYPGdrkRkkHGJC3STowC1/+S0Ty7GCdZPWUYbxLv9rwnZVoXTMTiQyqwRaPEJR6YoWSdA
8BQwC84Vv8SxnjwTP0ZS7bqZjFwIoQEHVJ0n7HDWBfZc5OHfw82dC9w2Fukk/lGMXNvAZr5dgq41
NG4jDl6ZCrv4ISt1De5AtP2iIZRwdfjBTmw6ioVLYWJhTXqxEjfNDkfS0Q9v2gxLT95DJA22d/7c
HwKIMs+cnaYclhS5WJkyKlyL59vtde9ApxCAaz7BBRUoXdzay0g6BEtiKh157rMjRfTWIx1Qs+pX
eHraWUUZSft7U6kuw4uutW3Q+xHljZot0beFR/OqfW+ffRZKWnAnXtv9gxWL/IYx20Z//QlzO5cY
W/tTWCEmRrPb54m1KhYDGQ/MDEMGrSjGgsiGEIWVikG4a7+y26PqD/H20L0CUBZwTFsT5FuveUK5
qt79ZLHYPmQOUdKiqmPclvFpxFVV3qFFupTR5sRFkCD7OvG6TMs02ryYjCj69QmQE000lwYBbiuz
SuvY1peMLROdI73gyFDTsRtYqHPuAlrsdpm2UywzAk0XrYdsgeJ2NWG2smmb9VebcLWGBJo+6uiB
7DK5fEC3jjJxyPjj6TZUyppa61V+jZCYlDiKq52diYNPKFveYdKzB3bReOEAn+wWNSpB/eJKdiXS
g5b1MLeVWboqG8+aOOjXB2LKUHj0gt09tcdK8uQOgOzUHKA46sVhcyXaHLvga5FtTMhPOTYuz+ud
aoWeioFeigzIL4n4N0T9Y1N7elI+d6m1MG3RreeiQBtb1koJbbex0Q7Fdx3SX2Il92va3nuuBkqD
hnyhHZC+Js+dTSOA7fVww5FuiD3f0VqXwmq53RVxvN05xPX3P5/yMwL38A2cXApI/pkaL22FVzma
ZYWpfwTIlCvCjKKSdt74q4BwqQeCjmPj2GFhMAjnFxTvlaVr3CV2VHGrVfxNC7ad0Kb6yccPhmJL
jJU0MObJkp/8+LclHZbmSck0OSc33qiaRN2JJgxTiyumRCvQUVI9jNfPmuUXi2HfjAW2z7yRiHBR
WUtYu5uuX9NbZO1cT+kEG61DdftP/LKnrvoqyYA3Ob5P/QtZiDD8Z+olVcV5W3qUsHNp2+hMzlhm
omJAAxEsSanhRylWNjnSgDlvh+RPUSDbt2Y5m44vquSLhMaiexkZ5mt8fMSD86pAexz7xfB3vdGr
LtIUPVXK87+7I2QKoT+Dr0jP0thMtgNXF7Qin2H6+z+FNbHdtoNkzUidD5+5i4PfuEG+jjTV+2DK
KPLE41w5B/u+/Kd4Ewn1v7T0DhVZEAqlkCkahAjEqfyD+fZ44N5PBiuK8guBLzzY8hTBQO10Y3Fm
xgfFEo3i4FZ0mMSsPsglqZsO9tuLYy23dPCQsEEscEilVj2rDyRupHuFAju+Vj2yrDLiNxvwX+Hb
Ghnk3NClHZL2IV2X/vZBkRLW8xe/Znh+YVy93LpERt9X5QuaFpdr73a/2Ba1hFjoGC5JPJGuvxe1
CuxiJttexTp3W3Sd8vXMrM5hRtEKprU0y5gi47ryl4f0r1QJXgndH+v32h/CGE+0sE6pDmOVBlIz
8CognyiryMmAyiyW5N4nwmyglHxiNg8FUtGtyqr0NBXc1gYCreaBFjfAksd+vZZS706sZKBtM/c9
mS1Q37TTkYLRoHdU49GWqSwiOgmpBhhMCEyPODbDYsb8qu7zOaKrDcWavhzwXQn2krlU2Zn4JQeD
pFChSDM1ccv/RITMk9XGRGUezXj7PIOM0Om86Wxy/CI1ot/zNlcPhgsF2kdNrGN6gO05rYD6Oh0c
lVyLgSIOQ6YyyzYVnD1Cjfq+/xTWmA+JEjqCYIMcUiu1A6AHwKobbIzsUAMCcNjv6vXjChz1YNhN
XnY2w4UUf7Uha+7hPmDp6MYGgK/bObuxzkSYUPFZKAfpAJGhEbHKTNOx5rzTKIKc2ul+YvcjebFm
2BYJN+Up5DbP62FCv7sQmOSLvEJI/wzBmgPGjQvmg9G0YDMilcWkhDYO9+e9SCRfp9yQZ7MabTM9
rH6fRT+BRfbHlsMGDlTaVqnn/HudjsQlH08qKTDOcSp9VDOWXXvnZ6SF1GeS5DyIB5RhRL8Sp6/e
hICWgN+B5zD7HTI9cjrZ9HHTajpgw+OCmt0CfpSC08/Ffop5RurG3KmnEoGYaaizEG+emPo4n+uQ
kTqZpxKK/HVhzDunNr/U+l3IDCFjSUtDoCasjoN0INRg0Wcgzh22AaFtxNNVLdxfNqu7sZmM7NhH
C/0WaDTkDDD/BDPKtIVIGR+sVVNDKlw+v5exl9oW+ZLTDuwmV7sJpdKiRdMc0F0aXaFTCx4Rsaky
OGkIOf8sH/4ekdGzPCXMLWM26VSEYezXRxAhdAG6TLCukWGJ7NQWSUEQ7nMjx4XqhGExEGVz1ABT
xY4sbBazR76AUhgUjh29gdMhJYdw/EKjyKWTIrj9pBGRZjEKfewFDHsZCl5Hw8lklK4gAMAK62Iz
bSuXdTL5x+ewkYHHLcuVG1E0TswXY3gwAlp+c/XO2mobGBFLd5Kd8WX+QvN1uAQLzL9NViTDO1Wa
Bitrc45rwJY7PG+Pw4O4a0RgewmFzNNZJNXQ+MVozMZhC5t6CvcewYwbSftiAFLzLWFJxtr4ZfZj
DI2xb0c0yBG+UL+2msHYQpytyN1DN8eQOTT9PZDTfllcpNaLodMsHnFFHQ4VFRhBCGDdOC43SAWo
r+XfoxWbKEnhC64HpMZ2cNsrkkqGE+GhiN64rLPzHyZE54aT8Act1pTG+02Qv+CHNRGlYVRmzkOF
GG+PSE5iDUl5RGPZwPC/rctq/4YznqB0Fhdo93+vI/NqFsh9tKqrM8+VBm5tVRCCipBOU8mX70iv
+de+IOM0qJzynTVyT/uRhwp8Wu7hs++kT0Dzo38Fa3wqH+Hyj4x3DmIqeRaHo+SIlpKUoXBpfmj8
gZaqmzFEYNR8bRe5Q8+B341EBbWo79+CSXb65tgYzybm4MTYzZCtflVKNriU1/mOK9A0kktSKU0z
Jw4JYqHOtd8pliRK9Kw4SD3lO/QItvlgO+b8ajMGtzWdwhdCoj77CJRlrTRsdwQm4yiLpFm7wh9j
o3FuHgmx+ojckMhEo+nUT6g0nMlNE+tbiCPX42HTDU1BqT6ScwSHJl+r5b1hpN3ro91dfPes5+kL
EAHXVzbshWR1d30OWBLdSJnun12P60734O+CzGCNfjQQd6M/Yr3+Q5vUxtMTY4QS6XKinasVQnXK
vmbrEiz5lBgY7Bb70GEzzhliNGRHG9//+kOCvHfY4/eu8itCFKTcdcKOUD937BBDLt+ih1/HeB45
Qahcn43j2/9GWnv1ndnvZ/a8wgolpcER9pdsfGhTIjmDGHfcgTSBpiR+Br/O8GQiWHsORNYZhX53
jgIQ10f+Va5HXZ5GrFIMNcIJkYnLp1fuuRKzu1k6aWHGENVzBz3QK+0Vqx+dDWUegW6oSTXMgBvJ
HfnT84n6v2Y773HOavJ3U06Useb4JLKWY3RjCMk43DvAlQp3XoZeIKzyrmT5QkjtwdmK2mG24URP
7fGb0xEQos/us0Si9iGAYUTQ0FzjBx4ftJn0gP2dNTSaKFfaIMz5oxGqGenWwsIDlldpyW7Q1hPf
K2T5B9RXtH3iZe/9t9kHG7oN2SPg9Etd45ZHnNY4QUvskkjNYXz2NL6SgR4bCB+wY74Bvz9UGQla
/UjG0/UmEskSTRhNef1dIMpbjh0t+YXGeINWnAsgQawaRdTc8ZPxizPPR8Vu+Dq4XYZLJQQDgJ9f
1uTFI4lVTOclfZVZu8r5aYm35t2Fpn3l1bLWOADYAz7RtkRL+/CB5PahAz44PseyQZ0FdwHC2TiP
w2wuno3nIWDRx/S7xfYoB7fdpR+Edyml7x+GMJrqAwIUrzkWQtwWaP6bMBdELKiMVurpAGK5BnE7
A0gyYr1PXlwUTzdJ4caoDMUi/XEfvBW/+BzAKJIVhqQsR67ZgV7MFQCEKw4SCsJ5Cahfoz67QWTg
pbO8AiC33v4QQJ5RA+2Pj52YWNOwraI3tBI7oZHbUWVN+uIIP8seiAzcYQLw8/7HsdhmlWOwrnT/
QO+dtKDsoQL9vz4Wp6sUNnGFXScfK5hl2AJQwTkvA/zNSVj9JigfG2CL34Nhi1DVGj1zYBGZPCmp
2sEsR5SSPlI5lBtNP/epYFjV633YEJm0fSTWPtDyZ5anmYwj/rpZ9eqPdiHxfHwcR+mPWxoKcoav
Erg//h804GURMeo9qJ4yFoRiD0Ah05OMgTmWJv5q00Y9PPJYGUdfzkseibxrrXjsziAv9tQxHUK9
ly3Dn54jSIB8C1nyEiF9Y8QvQ1D/jLIFTYk1s21VguoJrKxZVTvMl0JNA7vmoENnSvwxd+j82OkT
dMRcBbyFjcFX9g+a7cb7XDNee6TDDTPdvhseOMMX9xGgXvkFVWCFZxiBumM6o+Sf0yHAADo4I4j0
ykUjTUPMnSQlQgz7CbFZ9GJqqGQPSk+DG7VMjoIgrJzXC2gBIREH4/upQMZc8HB/x5EGoYGjiWk5
d/3C+L8r2RybpwMaViEjG/+X1mLP753KeE16FWwSkk1wVJSHFS23AHhIYpkVnEhXZBEqYgxnjD0/
QKd8P8OhclQSoHoB67UoHYMVg8IwQhx1zBGYfpuNeBfYqqDxrETTnedbiEklHE+gU1n0qKVKPbnW
CIpPNJ69BftkzAgo8nGWR+6FhbvA42IBOUoaexe1fb8eMqMKEzZxH+EnazIN019i9getbXYXd5XY
3Ch+G34YmczyyarnBfBmcatCUV4htt68KldihC87AAX2lnAdnrUZpWa8irYhltmHNRHoKd/dLmFL
OJlEYljMt1eICWaZAxpusKW8tNbR7jvigR4j/EtHrEOjUmKa22ESrgcNi17lieYCNucEcm4UwH74
5OCJOKElR977E8/+ZI/mXLlhEW5H1ujB+iXPPrmiUJEN4ubrQFH7fyIegrGlP03RJy7dTcJhL1w/
BGnhwnJzG9OSZ/u5osbeHccpcCQi5XvCgtsbNsmK+9FUFVuI03WiyZJUiNHQoLqjV9qHjV6R/wSs
PTxJiXBVtTiIgcVySm/ueh00yLmkGO0+QeiwJs79+h8vFIz3G17NO5SKpke6DFj/SdErJ0EGKS95
QCF5+GhZbQ7WG/Ti4ykODOGi2OHbF/rrFlxSe5aVF6L97fE0m6UhlF7zYlEwjsFIqvg7H/RxjQZR
bgvsxlIJeUq7GofTXFB5lM2T+pN33rcCfPSD5FdAeaVaEM/hznCsKUsJPpe928fU18XXvLhRsiQ7
x+l52TJ5CQrg1ZF6F+SmMb5GhD5c5kUZxTkyJZqy7A6zqXX/zlgRAf7qJpK1CvZCygwFWldd8fka
rLLxRT2+oIUr3W8saLtLMEZtC0+eccGfGTfwuMkKLUFR6IIsACtQDiNUeGlcKZ3l2zpKH3ZjWKe1
A+m2UfdJg+V0HgmfEzEReT72XgtQoKPEdFxq0mGy4gZcXocnIYc9h4oWWzxfDwiQHZEyNdbadfo4
qmklsAf0az3tXPKRAabodOBd5SBERWuRnZGgACYQehCLhNRwMqzpTfV7lVND2UBwrrsgctTzRwTr
HVAZ553BML04RVvSjKagJ83v07mSe53TTqOPj9GqBRQXuU+fNmrasGCmSrkaubQSHDUf07E4SiIf
GMQDeO2J4aYMqiGp56LYXYU7uk6mNcWjosv3Hq430c0q9e8ptSMORVvJI6fb74AtqibDXz1Ukj7c
y86MW43uRY9BKDV3rZRju+APUshyEhsC7gDIQOrkJ85cEmWG3xFt3hNdRF02pj1Ccgub8kVzRjG/
Zoz7bdV6QOHFYmB86Y9MK60Or3qZcok7ILfVvbOuhWntpkMbdaH5BxOl40gX+GGlrf2JAK0NAp/5
K+9/Ttv7BlvrlpZL8jUkOKLal4zOawodmQVEiMZAlEiW24WUx/x0Yi//P8sWrJ9kI/POBUC7+7ex
OBCijDvtpjMKMNIghDHPuEf1DIl5IH882EnfQtV7rl4MVFSm83F3ssq8ao9ookmz6qDcuCsmtbKH
GRd8OQ7bm+28iB2YUoZhIj6Orvx6xDdJi1lM+Jd4FVKj/C1A4vm1pI/EGBO/VOQln0XbYgaMUYUG
OIcb9pFiRGWZ0IRdNCipPHoVob40NFlWh0C6faVox/nTRukT7SK0Dwm8vEbBhJiJFu/h5hdIXFf6
dKL9SUJjitnTHaKB988rNNDqYW+HDhQW0ClfB8uI0y20mVq6cQgXzTCcQOCVTzrsphiEV9tooLFz
HSYOgppOCu2XLzaEAHRnWTM1wkydG3bsd16h/euGjXc3waF8XReAb2WwfnLSikfXVUq4ThIpYE/o
7x7iBkovmOm6xufeKtEqIyi3+EpZ9qt5hkfyyUHBsF4RRFsb2+CKEuzFaxNr1yVsD1C1SxfszgZ+
EAhGsmMaPYkLDOFqHAZ0qrqixsvNNJnJLGZPo3Nl1/xsmWAqg0YoAmo3Aj6QEflFyWe7WlkkA/En
v12q/lvVIEOIiw0eYOOGtg2RJ4YFkY+AH1BoxiKs1L2ajlKH189gYW1MsLud0/ia+F/b2jeRTI0F
RH66jkw+XOYdrxKgJnYaqahiFkzLCB1cdzvRKHviILEDDK2QAa8nfwEW0qovBfmaIvnDGkxTRdCZ
aR+FZDvgVDucaVdtzdbwYweVX1vjKALRFlDrCJsfzykOxUt1NeFAWmywY4wKpoZ1kU6KafLomiTz
tDMjpy+4XuMacbjQPEcE9SSKrF1Qy73rdaoiIp27G334pcP5YwW77bEDK/wTABRsHTlZEAPWoYZK
WRrYdGjMkvKZrXy8mpAp7bbLU96mbOBTULqRMdHqRoKJZ73+hTeV6IUoPEJ8+UuDiyPXn3FKnhKN
4O0AN1QL7ATYtZrId2YVdAXMWJDgVnq9EgOqX2MYB2Bifj75DYRPDiV7pDd8sVoTu15VcPQGr4GF
Oc2lI8zaGF327w8tYYUl/7thHNQtrb3FGO8SMHraVdsjEWstMIC1jJztorSLILweor2Crr1IJza0
eM2DTaKZikF8qCSyqJatcgr94w/AzuxGeD3gJxsrlsXROZv2W9EydzPbebToLWOAl8mNI+xwYr0j
KBf73wc6ggVIr6DchIgneas4dtpdymYp5N/ffKR/Gc1hgWrTiEAL+cqtKnTBPQTkSRwkMbIqDsdV
hMbtQLw8qXwMHUw8DDeZlt/7DCkZGl1YRQKMWEV4bzU35HcGckN0QSpizQfKwcbUV87ztyQ50Aou
a26TlPcuwIihqY1OQsFcHU99annJNRtrVubc9fggI9XbmBvsdx+uo+U+HqXXXS4sAISPwGOWLsmA
+Oj4C2RjzK/H1UO6EsqPIiNsyhZjlxepG/LFqUe+RslpYfQIRS6UHi1uarZX4pG2aoDkEVuAW8LM
gYwneQy54A/7jXxe0Cqoir4EowCWn/cxfOsw1aMQd6GY3EgLJ0D2snQUNYeHnSWZs0NCBfG9MKZB
y/RZVQHEv4Ra9hIxzxlRhjhkxO1c/dYWGPDUOl7tHzfiiGP+e2mZBUBZhMxWhOIQ2WsphmPi+Hnu
TZkaPWQmuaR5b+EXuG9gvPi0B66MqakhTXemegNf6SI6S4/zTfTY9QiklOJBSZX0xS/lzl7fuz71
7zUVolVcv5L6JV1r0tTEB3b/GNCAREQ1R1P8Bkp6nkKBDPiOekViGnTXHHe/IWAlo4+YtLjKW8Bx
bFi6gXbLFE0ewsYYSOVqLPEF5s/PHHXoak7W1nZbd8IPlfqaUWAnZvR6xpEHM73vyqJdG6viBmw4
8tp7g+OAh419ySGkLnwzwEG9PutyWQrSyWe+8DQFN8wJdLMxo2ktdv9X2tbk+Gv33SAOIyt+b1Vc
XdGzY7PV158m3MNN4tjjF5qCODG/04NlvpUMnSO8BPlUWW0py40+C0DExwABnBqgIfMuWPicrbQy
K+75/AvQlVdVuN/D5TbdOsFrKmu7ga8p+bV15Uvf6snNPA2FLwsIbcBrriD6/5cvOxBhIfaHPI04
y2rqn7hVxdcsq7v1ZVGVDcIZnMDjOjeNpGuvjkLmdN4danZKfuAWis50T7KZtyRu33tu1QRC8GVu
MhTXASfQZEv+PWSOxEjxN5XRSVrgrdyDjzGCPactUs8U1DMftc7JOtwy31y126RWc6Hm7fEOf9Bk
O0mmBbwmgTm2qDZEhYjPfXdoUNNoqECDX5eINnHC+s+kxb6BINDO/RvGmsYbkcHIKx0iilFgfjrs
L9yqFVrX2I/9nJjr+ryytth/vOTjeQAkqWB1eRGyCLj6Yna7IknednP/aJ/6eiACj9rPYfIQQVRS
6voM4Ku6l2YTHSQofSbmweWlFKF6FUs3lftTwf00/mIXdA6mLbHPr4U6/x1B+5b0r+FTmHPSraLv
D1gmQxlz1IeTLwT5JUCSI5WJDhfroCkDVg/GVLeegy7UvH3lZQZP4PZQo9ApqAT41i25OeC9UGIA
HApgDB815L/98CNMeHydKC9JHOVTjUdsTCSKaYUjC0fbNe+3o+fbkJmwp2u9mlQ/pLq9PLtBm8Co
T88Ool83NAYGGz6kf29F7cYlEc3tsYGCbSQXPwFx1BmEQEg4GUCL8dNGShq/HuMwEsf5ntdPAodC
kXTQR2KmlzOEyrGK5z3sUPYpDwkCi3TaEUE4Cy0BdHiB2xXSLo46eKcsZ4odxppnYliOGNs+vhZH
JxqfgBdY0VklrM7pwTp2JQTzO6JMoYMq7hTy6Grz3oWVHgnwLD/4D572oMVAc41fi6tjuArCC76U
Aal0xKMP4wjdlWBtWJmuLjTCu1k/TUMXylq1fFC6Jl2CB8fIs4t6PYVfhIbXREN6dzlM6R+T/2vA
02SfRFzM7fRj/m97VEQ/5N7dXzqcDzR6QbKsuKLF/YrkPOLS+I69YAZw7oOrKyauHlj/CSW+uXey
/Km8bWRFvF0aE4o34YhSgVd0U+zDg3qHvOthuJv2EQviMUC8aSxn2SQbRd9H6iHvhNstVRC/PdAA
AuiVFIEE1OLawV8Z+IuoIVQfdtCcvIDeGOuuHWUvodjJI3i2E49exRXbxkUAVtrWL1CRcLl5QS1k
Yhq/x3dzGa45FyXDuHZs80UQvh2iqWsE5wNR4EvoZN8l5Vq0Qi6ObQ9yUcRt6DssuFL2MeEss7gI
yak8uOzShqGWfpCwq2G7JZxCcbk/JJH+OGI2QRRNxaur23KR7xlzfQW9mHmpnQX83jW7nVIJMvJ3
onFRPUudPSJD5i/va3Xr+tVWmuecjMRQ0GcjB/foZaotsHaL7Cvghy+yUvMAH+H2gQNWpV2V4JlS
P2a+0pAVprpAWWTM0KCQX8k8CpWNkaWs1JhrMTEmYLUFnfTi49BrVfFrjKUQfaiAjCRObpl9gWTc
Uj8tYoJtwX1q3I/TO9YW7V2BHjlCx3+1ByaCINxeQfF4D7RXth2mHzIW5IS+6BQlgyzdW+TFNjM2
T68LMHHBOGvmjr73RXc1anJyzYSsO8voy2hIuLqd3W7LiXvBuifireXLhE105gnvw4QwxRpoct8e
tQOBNBtL0Z2ZMz9+dHBOjaYfPBTyIgYW4S0exPelV+q5A7BqT7HI8B7TfFYmtf34kkHt8ZLhe3KH
bTfbKeQBxY+xTuqRnaheNkBtLgma9x13QOpwyI1uPzNa+j9MrplZOPn3hGT8OVLJf/jlZZJUu34v
c6DdsKxMBp8RZL2yydgXtdsU04KHQjukCA5GjuP9qDV7dU6pxHvSc4WMnPEYZOZXigVzmxoW7VBD
0z8FFyZE4uqtGPlcp5Ju9dBBgm/DZrhzp9kuqKKBvUmOQK0McImyCcXVi+H/3O98sTEV41mtepqA
P1eB30OHRUyawl/0rDvsw6QzXeFlbvinUIg9Y/vS6YgAvxIEs93PKR8NZEOYnrewxMOs+fyOPbIG
i4oQS0TC/1s6agfBFCYIJPf4RQqpDP/ve9RT8jLUFOJybwalDTYu7VtAEbH4KYEmxntxdqYXy1JB
51jSQHj+2tHO6GhheMEG89xNz2aQjDuXaCbPpDPzzexAbdbEdmEZlBHexXprTpVBnJ/927kPaoKq
aN/hoP3RTOQa3DA+5es5ilimB69cCncEj3eMSwQ81jro4L0uqSKP+eXO0xm34LnTWoy1nlLkCCZr
UF2Uq5bztx/5v003YtBlTIzrJ21ECg+DBGUlLL24w3GnIviOhY47lgTMdOcOmctCPeAZfbOe29PO
0xKDWRi4ac3/NrGzmhc6LOYYzCi1Z+oZpz3skubpuEpuSXGvONeHJwIRMbNE0bPMflPbjbLfLF6H
7BKW6ne1BOuq941jGcPgIDL95n0+sEk7vue3xs5M9CPU3Z7lFs0u9IFNb0CJvKtysprbnT2wXCGs
0CBliEZ5FrqvKsBPT9pr/TwIYsvfzxnOBkLAEoAvhg1svQLV7TCQlMLxkGYG0W9pkXQevWezy33T
dZajt9cPLul2H6PRMAVDddibk8QYoxZkeuhVWRLrQWWJfOXgxDoritD1047iXYYkgfZT/lwIaabH
5AJ+kswezOoLzE23AT/E7g/RBmSm+DKO3S0pZQ2piPDYdorzETNE/WIZ7RHKouqkAoStZGoFu/Lg
AGxH6ACGapNp9dCXNI6o7qn6bZVut2WZQGLcotXRR0Se/8OdGm+t35U4N/GM+J7asJK7stjJd4lG
HcT6PLqLQdhjYkXY2kycjtCaXy4jNY7C0FZ/d3mGfa3M3AT2wTvrJmOSBHOxQlp59XRMgHR0sUYT
rHxIN7DTRuZgVEybgDdZBK6IaH6Pl6/3dyNNPblViVrX4shBd0sU2g1c/IJ8hWxENHMDvJHTJcBO
xSmtD3amfJJPWVZPfeWMYccRtb2fWns6H6E1dg81sQF6hYpm3HD3MXHPyVc7LKGqvRlVnH7SwGZE
V0BDEVb+/wT4JptP2//e1XTYFecQI6gCmaG+CHX/ZlqyDyt3y9vk6Xq489g1IY6ykin+tftph0Tn
et/XUGeoHWTqpc20WpFNzVmOnavtVZCLDH3Mv0nT/IoqognD325ycE7vlAoA37Grr80D46wjlbiz
RYxPqUqzTk+jbKTbvcv+2jhPUfhgzP1RSXazKzlFva2SHfD3ol2DKb/gHI3AFUCT3jxhRaes6HzU
fHVPTixMKJPepWuOU5KX6LRs4f7c7Bm7kyH+4DOWdw0Ia5ytLIjvJS22bes/CTC33mTb7GSKNwn7
fBJfsSr9HImZg5lLE7DzqmTjdK419ZE1ZiYuwQehsmIYRn9MZgeWZtzzCWcBYZhBYLXZGmzhCGgO
Ls8/P9XrYF1eKMOZNe2a7okQUzEkEkYWhmMo647oqUjddLZeZa+TFe3TYl9KQExpP4jwMdtdK5S0
X5L/WN2dvzntSXmKh/LNo8ROXkWKwSiB0gYo/1WeJuTRdlUnjpIGsZ3qiM+2FXY3qF0NHEA9F4D8
Srzc4WmSXEXWMC60OZmAEdIbU3kX3QjqthNLZ9BkctQQbQE12TOHiStT9GJd+zuyqIHuEeI5sW3B
jDvZKOhHJPNdSKlvw19R0jAJMg+c55lUelEbju7c7KF6W+s6ZpRrU3WiqDdfULByE+efUKpdh3k4
YlRSPzEuFQCqhg6HAk5gB3dzFg4JyWvUSCtHEjZe5e7OQDeYJ0bkRWjcT9j42EYJltHe4c3/BdTw
Uapszrr2CD0VXVQ12XwrIX8yd5vXNyyhz1KXeER62aghm+nyBLMksCqFE0dIMWQMFCmAFlrgD4pY
xhL6xm3ae96f9zZCdKXkpd9Sfb3Sw2oV3QzZiFcB9/mZw8SVvjYtsOQWQzKcX3/j9FdWLYmHMRMX
R0yCTNcqsxzJpz2eaHEg/tUQBPqevMNUvXxPZR4ClxZ89RA55E48f8wsfJLNBs2j5e3o4iq46EQF
k5xilrMbTt4W+7LzEazYAwQvtLgnmQiztrauJv97qc2yb7Cy/GEmNHdJNBMGYUcDtu88m80fPKnY
nkRzQWzDEr4/z72v0tP9jORXRnSTICfwLkT3bWzxZD91HavtKSskKLWp/S2/1Xh7gBic0cPrGanY
IPS+meP3Df1PlLyXz7mDI+Tz805kNY9s/V14u6EBgsaG4FHrfgZHndElLtimKQUfYc3iAkGxryba
9uow1+Px2BBgrUzFIxzn2kw7fYybv+mLIujM9sxAqCs1Jujr8LKU2QqIdDgT9WqsPUtAO3u8EbfF
lJYJX+cQnkO4zMufMt+xp0eVvtkembsJ5wodv8OXt8wpts/o6+gh8q6GluJFYZRhcIMUxTYosQO4
zTywkSXj2pPSE2dSt0T7+wU+TXm/WnP1vRX6XA7Ply5Y4fFopwqPQNV3Pphp3bt4lfuKnjzmV/UI
uCG0m63wC/THrEvM1zYxvjve9noLKkvrgCwAvQkbPFkzIorwGd2M9sAjYYRkYy/GHyCzZMBsWw9m
cGO9rnhUZ0OX5Cue67P9YHscBDffnyXwZi8wIOh2DaUGfVw0jswhKodUcAXOAXYEO5ehcOw903sn
ng0Jyx0yja5hr1GJF3bZ0JHw0BQ+7bf9PhLXjYcXlyDV9QEt4H9lo6up/TeFKR7cYSTBq2waqLkC
V7J4iURG7VygUFYucwoTgWgkuJmuKOedcAh2BeqrnKMDJ5KL0BkekMmxAwr+JIKiINJtrUUK/TjS
HpYJHgjj9inamnAIJeSO3ZzIy9DT6rOrWXF5JcJa/xgHBPPsqY4kqV1MC8LlQy1ntRwrH78iBseJ
Dwm7ky/C9q20EXgWUs4RQVLWGYwPp5KIkFIOZ8zScha05TXuQHh0Nd+evHZrNKQy6psVC9rWhFDz
JKItFLia7RPEFWw3aPAeuTG2XotgZamYb4HdClxRHPPKuIlW47S369k9+scjFEyRbiVf4wnfI4FJ
SJhLDV0fn0gPDOgRlkkQ4fFCBPdgKuZfqk2WYF3Hn1DJX1XjKqvTQOxx/A+ijJkIRMbeZfpC3I3s
aSxQ53wnR0UlIe1s1dcHaLXslp9n4TfL7I6YYErlEPpaNq3Rre9ZP3DNFfKa1GKFR66iuGYnkKd9
jmF1VEJRWXglJgpymL6L5ETtLW/1u7iauIzJJ/9X9v+RmiSAGrRkeBuRZE1R6WrLUnNTv60r1g29
X7UhQGOTUrzFhdYB1YKUl7cdBTr272cluI0kuG7PXhM34jsfWsiANu2Pgg3BV6WAAL5F3MrcbsA0
xUw+ULmdWROxocAxpoRn2j2fi203xRQ5NWoUGpK0sWSSlVp5lWOTiwzkvT8hhuDypaiH2sQkWDnD
ubRwF2rkg2YnwkOFQSZzW9EvPWafEzqdEHDvRHC/modhS+NuT6gVcj9uQ1wblug2lM/YW4FXHrSh
kfrGBXXjSTP24Mi/i/XMM0ZYL2Yl6OX4zHHekj7BiMJEJKRvxa3zqRRlHxoFOPwNxnYrHivaoV05
TkFS7v6gHceZ3d8O1oABZEjUQ9QXEucWj+4+QvaF75SDg4NxYwXErm0YzoE368b0YGpp6Qy/pqSB
45vRcJ8XpGsOC+MMfyovBZaxJOR40++DQ4NVOFSEgUFncNb7jy6BHwLz51Y7KJIFpX6BtHj93b6W
lojC+/AsLCiNTzb4VF7qDtAR4y3NTmSyXSurEHY3nDOWZixJFy+5nhWeRgKHm3wpPo9rdJtAQFEq
iXzvKzTUrIODZ4I1+nKoJdYhKHWlpJQsndRtFXhU24r/95Wg908o/m+A+MYxKdezi+xSRE7NBQRX
1XIenrAcVJ2odcLVo3/zlC2vz+y2X28io5+Mmd4SFRarmLzbqNmoIppf9pfZZLV/WlBWlVlilMN1
5g+OSInUULb65mvvWXTLlONjJrx+MP4YtiTL+oEYmVW2Q1O06fmNvvh5+HsIAr5BYIyPj1lh6rBC
ZTJ7kso3pZH2Grc6EofyiIhAoDmV7YcBk5qeKKyrpkJSw9THcMFm5DZ57jXAOOqg/PCcfYqfFCFA
F66EHOYNYmxkqTyn+hzfVuKGCnbeMYblP9shqJ1zh5NHgHAjL6nWeidE1lr8dr0yx/yGypdV1lou
lNa3feHWGy8SQT6pU8FVORypixmAO+K7bqV4KRTP01Hik6kU1ffOjeem8w4PADgFxZDxbQ0/UIpk
7YPoTxCQ1hPO+VRjBm8QUqGQIF42ad6mKUvyoBW0BHt7SpG2LS9NpyKfLBAJ1pEp6CCxbqNCEB4v
YuvYMPdi9aLHWYsEhznLlKWtCTNMvkqOWYnUaL+b4pdjUwFepDPn6KSb2Z4nHEi3JV3b8D3KEKeN
JzgPUIB0LrHbvoPYRmrD7u+YsqfO8N2LgyblxOuR3jJZYyRHdRO7DOOT8Lkf9iGUNpYgVkcDEmT+
9hG+37usi4zqbhFrALxSZwg7bAsLoqB5lxXIjsJ91j3lB3V50gHVXwfogH1iiCsZAxiu9OwZm8F3
1LhbB2Q3DwR/5fIyWD1BH1+O4Xoldhl7RNFtBaLJ8+bFCTVowYeUtt1oski4N71YUJBdOoJxT4AW
mVF0GZ9L82Fqb3SdB+mzLtmDMWKZwlAiSH7bPbefyl0Ebs9c0IGY0rzoshuAhYluaEiZoDTGsRS0
WB8MzB4xHu+pPHFX2hR6+eC9Da1LaNhACXnn11Z5DEIy4XWQTNxs4iMEp7OHf5A7JONlfoUHbPP2
rZG3Hs/FteubtMkk8sUoumfco9W7v8ZcBeWjVviN6cb9sm5O2hFgH4ZTSRercyZm8kdfjnfDqK+w
oYdV8Ae27Qrg0GBLa+3wNbVblpiFA5HiEhbTGa2gVhKKsLcfVv4d8GMpgflp/BAAkKxquTyW+FHE
KOQ0FA1TxLBF5y6h/VRroj65MPULmnqERfeUI0mNnbgRyfM3bmtX5MesIMzNf3b/+W8xLZ6Nl3jB
krmaJ92IZ+rXDWVyxWBPrJjTgyJmq+JEPveVOghFM52IlPSkpAuretK/MBaTtd1DHcjDHhPSXj6+
xcPo37szey2Yu+woR4QzRdvJq10mXP2LAlc67RYLMeXJ+HW1XzdREtJ2FGcb4JHCgsvGReZF4f9f
t4kb1jXcWle2dsdiQsOjQYpTRZcpHofW9ATtr63Yd6lfRVXq558FrTJgAfGy1wLTUg81+lDjBO4Z
QK1s6wA2ubvOBAuDR+y9K0hV85c8WJJ5ty2xmFh740bLu25KkQj1jQGNVNVp3jHN+yBzAjA9vYoe
dI96xOEhXWBhec22bHgKD1nL/BGaaWFqcoWiLs7qAVBIwLT94Py3g9ysrcjcqbjgwgmurZcVkDzz
qEIMbrlCpyl17Ewuk6unAhhsgO0Ks9d/mYPScn2omsmyCatEWoT2U1FsJ5knErYlWbAmWqZEnlsw
uNEptsenCHYl2BzE0/ev6Xjwn4PLLsyhl5so0BsiZW6EilDJKQJ+9VPglYO+Zc7QaH79SfR3jp5w
x4Y1/7TkIcwG0ZnkUwVMjEpFcdqoImMhHrZ7hM23/TKo5Zy7MxBZ1CBqAqEkh3+gon6Qhn1KlX0w
LPaYUvlMZavwlUGgbieyngs+igr9g04qCKnUJKMFGMhaFzX1wwU4h4Z9kJ7g63yc/ACilgj66EeS
JnW+Ox9iYqcfjmfh3xNMiwANkDO8/SLbBAQre0RPjGTjAtfz6Nc4EQF+g5iXW4yL8vTDAbUL5QcT
+UszAsahFsg7+eWwLQsTmqlqXmS1ZUwHRQ8dRwuerfB4EnPnjR8lNAP6apx9xackCYMbFfcvOhBj
FkjT7P1ao4QmD2cCUlphtio5NYypCSlYP0RHmFsgfnnqSFtEOsfr+G+cvpquhQ9vD1U3V+GnOhD8
lt9kUFa+3myYxXd6TgpBMa5sA1t7gYZpx8mJzahh9rmqmmB3QZbdpqTdFAxQsALb5hUJDyoujNOk
k/Ew4QaPjSVorIZ43cn2slbhqiyJczqXwT7QX537ACmTTojYhBdzppWM4xPcCrnWeAhHC9kr7gHR
iKr3DCl7PQUzeMf5yqDWP4c0geHC4/jK4jEpRBdBg8fenA88Xe7QzwTWS5IC+4ev3H5ssqLeZ8x3
G4RIyfZNHjhPyP8egDlfd8iYLrpul8SbmOYtuuaNQNxvHuUPs4DqMvr5NPO2yfbRC+Eps3JUUqrY
25ExZNHCxW6HgS5381V5y5seAsyb0ZLXZX9kedFkTlhDJJtDWwbaupcoe7pF4XD30VQ7TvFrYn90
GDTA170rDJcTbIyApxNAoT4xdn8tviQ8OrppFOuhA/wHgKTXNJb50vWIk4pI9ulteVHdfVT1mSmB
vA1WkDuxPpMoM8ink8VyZhs/y09E1JuHFV0Zf6uS91IGB2pOXCSkwOR9bkCF9ZHzNrcyK3b0Pa98
putkljMR8hDygQtPzUfQsUK2ILuQXyQAKExV+fhJ6QsbCfqajylOZ5VbOL9MjjUSBq6Qs69SX7X5
gwY+T8mOja8k8jkG4ZsayKFwHXZOlb6rROp3XJv3Oop8/o4tOgZJ66lFNFfIveH4Xp0a5EPS0I/c
MiNsD5hEt4nM6utUASou1GE0JIs=
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
