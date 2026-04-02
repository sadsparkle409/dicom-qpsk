transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xbip_utils_v3_0_15
vlib riviera/axi_utils_v2_0_11
vlib riviera/mult_gen_v12_0_24
vlib riviera/xbip_dsp48_wrapper_v3_0_7
vlib riviera/xbip_pipe_v3_0_11
vlib riviera/floating_point_v7_1_21
vlib riviera/dds_compiler_v6_0_28
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xbip_utils_v3_0_15 riviera/xbip_utils_v3_0_15
vmap axi_utils_v2_0_11 riviera/axi_utils_v2_0_11
vmap mult_gen_v12_0_24 riviera/mult_gen_v12_0_24
vmap xbip_dsp48_wrapper_v3_0_7 riviera/xbip_dsp48_wrapper_v3_0_7
vmap xbip_pipe_v3_0_11 riviera/xbip_pipe_v3_0_11
vmap floating_point_v7_1_21 riviera/floating_point_v7_1_21
vmap dds_compiler_v6_0_28 riviera/dds_compiler_v6_0_28
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../../../../tools/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" -l xpm -l xbip_utils_v3_0_15 -l axi_utils_v2_0_11 -l mult_gen_v12_0_24 -l xbip_dsp48_wrapper_v3_0_7 -l xbip_pipe_v3_0_11 -l floating_point_v7_1_21 -l dds_compiler_v6_0_28 -l xil_defaultlib \
"D:/tools/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/tools/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/tools/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_15 -93  -incr \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_11 -93  -incr \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_24 -93  -incr \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_7 -93  -incr \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_11 -93  -incr \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_21 -93  -incr \
"../../../ipstatic/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work dds_compiler_v6_0_28 -2008  -incr \
"../../../ipstatic/hdl/float_pkg.vhd" \

vcom -work dds_compiler_v6_0_28 -93  -incr \
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

vcom -work dds_compiler_v6_0_28 -2008  -incr \
"../../../ipstatic/hdl/sin_cos_fp.vhd" \

vcom -work dds_compiler_v6_0_28 -93  -incr \
"../../../ipstatic/hdl/sin_cos_fp_reconstruct.vhd" \

vcom -work dds_compiler_v6_0_28 -2008  -incr \
"../../../ipstatic/hdl/sin_cos_fp_partition.vhd" \

vcom -work dds_compiler_v6_0_28 -93  -incr \
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

vcom -work xil_defaultlib -93  -incr \
"../../../../dicom_qpsk.gen/sources_1/ip/dds_compiler_0/sim/dds_compiler_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

