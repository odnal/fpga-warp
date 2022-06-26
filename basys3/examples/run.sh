#!/bin/bash

if [ $1 == "clean" ]; then
  rm -f *.edif
  rm -f *.bit
else
  yosys run_yosys.ys
  vivado -nolog -nojournal -mode batch -source run_vivado.tcl
  vivado -nolog -nojournal -mode batch -source run_prog.tcl
fi

