#!/bin/bash

iverilog -o sim fulladder_tb.v
./sim
