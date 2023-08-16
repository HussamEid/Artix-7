//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Tue Aug  1 00:00:14 2023
//Host        : DESKTOP-MRR1QCE running 64-bit major release  (build 9200)
//Command     : generate_target uart_proc_wrapper.bd
//Design      : uart_proc_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module uart_proc_wrapper
   (clk,
    rst,
    tx);
  input clk;
  input rst;
  output tx;

  wire clk;
  wire rst;
  wire tx;

  uart_proc uart_proc_i
       (.clk(clk),
        .rst(rst),
        .tx(tx));
endmodule
