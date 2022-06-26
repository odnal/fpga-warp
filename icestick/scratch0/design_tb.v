`include "design.v"
//`timescale 1us/1ns
module top_tb;
  reg clk;
  wire led5, led4, led3;

  top UUT (.clk(clk), .LED5(led5), .LED4(led4), .LED3(led3));

  // clock generator
  initial 
    clk <= 1'b0;
  always begin
    #1 clk <= ~clk;
  end

  initial begin
    $dumpvars;
    $display("led5   led4   led3");
    $monitor(" %b      %b       %b", led5, led4, led3);
    #100;
    $finish;
  end

endmodule
