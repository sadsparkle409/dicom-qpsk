vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xbip_utils_v3_0_15
vlib modelsim_lib/msim/axi_utils_v2_0_11
vlib modelsim_lib/msim/mult_gen_v12_0_24
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_7
vlib modelsim_lib/msim/xbip_pipe_v3_0_11
vlib modelsim_lib/msim/floating_point_v7_1_21
vlib modelsim_lib/msim/dds_compiler_v6_0_28
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xbip_utils_v3_0_15 modelsim_lib/msim/xbip_utils_v3_0_15
vmap axi_utils_v2_0_11 modelsim_lib/msim/axi_utils_v2_0_11
vmap mult_gen_v12_0_24 modelsim_lib/msim/mult_gen_v12_0_24
vmap xbip_dsp48_wrapper_v3_0_7 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_7
vmap xbip_pipe_v3_0_11 modelsim_lib/msim/xbip_pipe_v3_0_11
vmap floating_point_v7_1_21 modelsim_lib/msim/floating_point_v7_1_21
vmap dds_compiler_v6_0_28 modelsim_lib/msim/dds_compiler_v6_0_28
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../../../tools/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" \
"D:/tools/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/tools/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/tools/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_15  -93  \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_11  -93  \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_24  -93  \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_7  -93  \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_11  -93  \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_21  -93  \
"../../../ipstatic/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work dds_compiler_v6_0_28  -2008  \
"../../../ipstatic/hdl/float_pkg.vhd" \

vcom -work dds_compiler_v6_0_28  -93  \
"../../../ipstatic/hdl/dds_compiler_v6_0_viv_comp.vhd" \
"../../../ipstatic/hdl/dds_compiler_v6_0_comp.vhd" \
"../../../ipstatic/hdl/pkg_dds_compiler_v6_0.vhd" \
"../../../ipstatic/hdl/pkg_beta.vhd" \
"../../../ipstatic/hdl/pkg_alpha.vhd" \
"../../../ipstatic/hdl/dds_compiler_v6_0_hdl_comps.vhd" \
"../../../ipstatic/hdl/dither_wrap.vhd" \
"../../../ipstatic/hdl/pipe_add.vhd" \
"../../../ipstatic/hdl/lut_ram.vhd" \
"../../../ipstatic/hdl/lut5_ram.vhd" \
"../../../ipstatic/hdl/flt_ufma_consts.vhd" \
"../../../ipstatic/hdl/flt_ufma.vhd" \
"../../../ipstatic/hdl/sin_cos.vhd" \

vcom -work dds_compiler_v6_0_28  -2008  \
"../../../ipstatic/hdl/sin_cos_fp.vhd" \

vcom -work dds_compiler_v6_0_28  -93  \
"../../../ipstatic/hdl/sin_cos_fp_reconstruct.vhd" \

vcom -work dds_compiler_v6_0_28  -2008  \
"../../../ipstatic/hdl/sin_cos_fp_partition.vhd" \

vcom -work dds_compiler_v6_0_28  -93  \
"../../../ipstatic/hdl/sin_cos_quad_rast.vhd" \
"../../../ipstatic/hdl/dsp48_wrap.vhd" \
"../../../ipstatic/hdl/accum.vhd" \
"../../../ipstatic/hdl/raster_accum.vhd" \
"../../../ipstatic/hdl/multadd.vhd" \
"../../../ipstatic/hdl/dds_compiler_v6_0_eff_lut.vhd" \
"../../../ipstatic/hdl/dds_compiler_v6_0_eff.vhd" \
"../../../ipstatic/hdl/dds_compiler_v6_0_rdy.vhd" \
"../../../ipstatic/hdl/dds_compiler_v6_0_core.vhd" \
"../../../ipstatic/hdl/dds_compiler_v6_0_viv.vhd" \
"../../../ipstatic/hdl/dds_compiler_v6_0.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../dicom_qpsk.gen/sources_1/ip/dds_compiler_0/sim/dds_compiler_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

