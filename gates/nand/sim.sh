#!/bin/bash

iverilog -o sim nand_tb.v
./sim
