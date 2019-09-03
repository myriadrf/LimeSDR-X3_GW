onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib pcie_x4_opt

do {wave.do}

view wave
view structure
view signals

do {pcie_x4.udo}

run -all

quit -force
