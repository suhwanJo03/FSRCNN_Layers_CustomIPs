transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+expand_fifo_generator_1  -L xpm -L fifo_generator_v13_2_8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.expand_fifo_generator_1 xil_defaultlib.glbl

do {expand_fifo_generator_1.udo}

run 1000ns

endsim

quit -force
