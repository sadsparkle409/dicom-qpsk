transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+dds_compiler_0  -L xil_defaultlib -L xpm -L xbip_utils_v3_0_15 -L axi_utils_v2_0_11 -L mult_gen_v12_0_24 -L xbip_dsp48_wrapper_v3_0_7 -L xbip_pipe_v3_0_11 -L floating_point_v7_1_21 -L dds_compiler_v6_0_28 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.dds_compiler_0 xil_defaultlib.glbl

do {dds_compiler_0.udo}

run 1000ns

endsim

quit -force
