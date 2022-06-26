PIN_DEF = icestick.pcf

all: example.bin example.rpt

example.blif: example.v
	yosys -p 'synth_ice40 -top top -blif example.blif' example.v

example.asc: icestick.pcf example.blif
	arachne-pnr -d 1k -o example.asc -p icestick.pcf example.blif

example.bin: example.asc
	icepack example.asc example.bin

example.rpt: example.asc
	icetime -d hx1k -mtr example.rpt example.asc

prog: example.bin
	iceprog example.bin

clean:
	rm -f *.blif
	rm -f *.asc
	rm -f *.bin
	rm -f *.rpt
