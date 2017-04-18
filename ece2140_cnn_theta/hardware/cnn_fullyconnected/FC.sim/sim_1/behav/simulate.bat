@echo off
set xv_path=D:\\Software\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim test_top_behav -key {Behavioral:sim_1:Functional:test_top} -tclbatch test_top.tcl -view C:/Users/Darius/FC/test_top_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
