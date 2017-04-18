#!/bin/bash -f
xv_path="/home/wen/Xilinx/Vivado/2016.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim test_top_behav -key {Behavioral:sim_1:Functional:test_top} -tclbatch test_top.tcl -view /home/wen/Documents/CNN_SoC/cnn_parallel/test_top_behav.wcfg -log simulate.log
