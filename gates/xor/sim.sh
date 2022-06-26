#!/bin/bash

iverilog -o sim xor_tb.v
./sim
