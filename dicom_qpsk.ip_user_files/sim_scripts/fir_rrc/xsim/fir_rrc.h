
//------------------------------------------------------------------------------
// (c) Copyright 2023 Advanced Micro Devices. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//------------------------------------------------------------------------------ 
//
// C Model configuration for the "fir_rrc" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: 0,0,1,2,3,4,5,6,8,9,11,12,13,14,14,14,13,11,9,5,0,-6,-13,-21,-29,-39,-48,-58,-68,-76,-84,-91,-95,-96,-95,-90,-81,-68,-50,-27,0,32,70,111,157,207,259,314,370,427,483,538,590,639,684,724,757,784,803,815,819,815,803,784,757,724,684,639,590,538,483,427,370,314,259,207,157,111,70,32,0,-27,-50,-68,-81,-90,-95,-96,-95,-91,-84,-76,-68,-58,-48,-39,-29,-21,-13,-6,0,5,9,11,13,14,14,14,13,12,11,9,8,6,5,4,3,2,1,0,0
// chanpats: 173
// name: fir_rrc
// data_coefficient_type: 0
// filter_type: 1
// rate_change: 0
// interp_rate: 20
// decim_rate: 1
// zero_pack_factor: 1
// coeff_padding: 19
// num_coeffs: 121
// coeff_sets: 1
// reloadable: 0
// is_halfband: 0
// quantization: 0
// coeff_width: 16
// coeff_fract_width: 0
// chan_seq: 0
// num_channels: 1
// num_paths: 1
// data_width: 8
// data_fract_width: 0
// output_rounding_mode: 1
// output_width: 16
// accum_width: 19
// output_fract_width: 0
// config_method: 0

const double fir_rrc_coefficients[121] = {0,0,1,2,3,4,5,6,8,9,11,12,13,14,14,14,13,11,9,5,0,-6,-13,-21,-29,-39,-48,-58,-68,-76,-84,-91,-95,-96,-95,-90,-81,-68,-50,-27,0,32,70,111,157,207,259,314,370,427,483,538,590,639,684,724,757,784,803,815,819,815,803,784,757,724,684,639,590,538,483,427,370,314,259,207,157,111,70,32,0,-27,-50,-68,-81,-90,-95,-96,-95,-91,-84,-76,-68,-58,-48,-39,-29,-21,-13,-6,0,5,9,11,13,14,14,14,13,12,11,9,8,6,5,4,3,2,1,0,0};

const xip_fir_v7_2_pattern fir_rrc_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_fir_rrc_config() {
  xip_fir_v7_2_config config;
  config.name                = "fir_rrc";
  config.data_coefficient_type = XIP_FIR_REAL_TYPE;
  config.filter_type         = 1;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 20;
  config.decim_rate          = 1;
  config.zero_pack_factor    = 1;
  config.coeff               = &fir_rrc_coefficients[0];
  config.coeff_padding       = 19;
  config.num_coeffs          = 121;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_INTEGER_COEFF;
  config.coeff_width         = 16;
  config.coeff_fract_width   = 0;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = fir_rrc_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 8;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_TRUNCATE_LSBS;
  config.output_width        = 16;
  config.accum_width         = 19;
  config.output_fract_width  = 0;
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_rrc_config = gen_fir_rrc_config();

