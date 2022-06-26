PIN_DEF = icestick.pcf

all: design.bin design.rpt

design.blif: design.v
	yosys -p 'synth_ice40 -top tff -blif design.blif' design.v

design.asc: icestick.pcf design.blif
	arachne-pnr -d 1k -o design.asc -p icestick.pcf design.blif

design.bin: design.asc
	icepack design.asc design.bin

design.rpt: design.asc
	icetime -d hx1k -mtr design.rpt design.asc

prog: design.bin
	iceprog design.bin

sim: 
	iverilog -o sim design_tb.v

clean:
	rm -f *.blif
	rm -f *.asc
	rm -f *.bin
	rm -f *.rpt
