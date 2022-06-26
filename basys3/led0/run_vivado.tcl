read_xdc ../basys3_master.xdc
read_edif simple.edif
link_design -part xc7a35tcpg236-1 -top simple
opt_design
place_design
route_design
report_utilization
report_timing
write_bitstream -force simple.bit
