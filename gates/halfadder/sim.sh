#!/bin/bash

iverilog -o sim halfadder_tb.v
./sim
