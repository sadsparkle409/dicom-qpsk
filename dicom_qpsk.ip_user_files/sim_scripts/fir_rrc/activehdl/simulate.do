transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+fir_rrc  -L xil_defaultlib -L xpm -L xbip_utils_v3_0_15 -L axi_utils_v2_0_11 -L xbip_pipe_v3_0_11 -L fir_compiler_v7_2_26 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fir_rrc xil_defaultlib.glbl

do {fir_rrc.udo}

run 1000ns

endsim

quit -force
