//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_0c38_wrapper.bd
//Design : bd_0c38_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0c38_wrapper
   (Clk,
    Reset,
    UART_txd);
  input Clk;
  input Reset;
  output UART_txd;

  wire Clk;
  wire Reset;
  wire UART_txd;

  bd_0c38 bd_0c38_i
       (.Clk(Clk),
        .Reset(Reset),
        .UART_txd(UART_txd));
endmodule
