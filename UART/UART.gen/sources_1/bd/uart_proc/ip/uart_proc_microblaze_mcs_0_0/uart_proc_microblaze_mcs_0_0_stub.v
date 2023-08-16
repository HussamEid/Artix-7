// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Aug  1 00:01:59 2023
// Host        : DESKTOP-MRR1QCE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/hexad/Documents/Artix-7/UART/UART.gen/sources_1/bd/uart_proc/ip/uart_proc_microblaze_mcs_0_0/uart_proc_microblaze_mcs_0_0_stub.v
// Design      : uart_proc_microblaze_mcs_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_0c38,Vivado 2023.1" *)
module uart_proc_microblaze_mcs_0_0(Clk, Reset, UART_txd)
/* synthesis syn_black_box black_box_pad_pin="Reset,UART_txd" */
/* synthesis syn_force_seq_prim="Clk" */;
  input Clk /* synthesis syn_isclock = 1 */;
  input Reset;
  output UART_txd;
endmodule
