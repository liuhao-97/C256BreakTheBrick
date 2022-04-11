#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/sw/workstations/apps/linux-ubuntu18.04-ivybridge/xilinx/2020.2/gcc-7.5.0/egagsozgixafjmnittzgqtr2zi55uxhw/Vitis/2020.2/bin:/sw/workstations/apps/linux-ubuntu18.04-ivybridge/xilinx/2020.2/gcc-7.5.0/egagsozgixafjmnittzgqtr2zi55uxhw/Vivado/2020.2/ids_lite/ISE/bin/lin64:/sw/workstations/apps/linux-ubuntu18.04-ivybridge/xilinx/2020.2/gcc-7.5.0/egagsozgixafjmnittzgqtr2zi55uxhw/Vivado/2020.2/bin
else
  PATH=/sw/workstations/apps/linux-ubuntu18.04-ivybridge/xilinx/2020.2/gcc-7.5.0/egagsozgixafjmnittzgqtr2zi55uxhw/Vitis/2020.2/bin:/sw/workstations/apps/linux-ubuntu18.04-ivybridge/xilinx/2020.2/gcc-7.5.0/egagsozgixafjmnittzgqtr2zi55uxhw/Vivado/2020.2/ids_lite/ISE/bin/lin64:/sw/workstations/apps/linux-ubuntu18.04-ivybridge/xilinx/2020.2/gcc-7.5.0/egagsozgixafjmnittzgqtr2zi55uxhw/Vivado/2020.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/bouazim/Desktop/home/liuh0f/project/pro1/pro1.runs/impl_1'
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

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log game_top.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source game_top.tcl -notrace


