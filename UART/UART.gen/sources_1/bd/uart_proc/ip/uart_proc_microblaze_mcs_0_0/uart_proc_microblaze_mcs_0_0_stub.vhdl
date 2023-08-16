-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Aug  1 00:01:59 2023
-- Host        : DESKTOP-MRR1QCE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/hexad/Documents/Artix-7/UART/UART.gen/sources_1/bd/uart_proc/ip/uart_proc_microblaze_mcs_0_0/uart_proc_microblaze_mcs_0_0_stub.vhdl
-- Design      : uart_proc_microblaze_mcs_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity uart_proc_microblaze_mcs_0_0 is
  Port ( 
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    UART_txd : out STD_LOGIC
  );

end uart_proc_microblaze_mcs_0_0;

architecture stub of uart_proc_microblaze_mcs_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk,Reset,UART_txd";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_0c38,Vivado 2023.1";
begin
end;
