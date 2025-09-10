transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+shrink_dsp_macro_1  -L xpm -L xbip_dsp48_wrapper_v3_0_4 -L xbip_utils_v3_0_10 -L xbip_pipe_v3_0_6 -L dsp_macro_v1_0_3 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.shrink_dsp_macro_1 xil_defaultlib.glbl

do {shrink_dsp_macro_1.udo}

run 1000ns

endsim

quit -force
