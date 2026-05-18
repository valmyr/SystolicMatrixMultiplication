#!/bin/bash

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/media/valmyrsilva07/243aad91-22c0-42a8-ba29-06c4e186c14c/xmen/Music/2025.2/Vitis/bin:/media/valmyrsilva07/243aad91-22c0-42a8-ba29-06c4e186c14c/xmen/Music/2025.2/Vivado/ids_lite/ISE/bin/lin64:/media/valmyrsilva07/243aad91-22c0-42a8-ba29-06c4e186c14c/xmen/Music/2025.2/Vivado/bin
else
  PATH=/media/valmyrsilva07/243aad91-22c0-42a8-ba29-06c4e186c14c/xmen/Music/2025.2/Vitis/bin:/media/valmyrsilva07/243aad91-22c0-42a8-ba29-06c4e186c14c/xmen/Music/2025.2/Vivado/ids_lite/ISE/bin/lin64:/media/valmyrsilva07/243aad91-22c0-42a8-ba29-06c4e186c14c/xmen/Music/2025.2/Vivado/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/valmyrsilva07/Área de Trabalho/SystolicCore/Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot/Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot.runs/teste_dma_rst_ps8_0_99M_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log teste_dma_rst_ps8_0_99M_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source teste_dma_rst_ps8_0_99M_0.tcl
