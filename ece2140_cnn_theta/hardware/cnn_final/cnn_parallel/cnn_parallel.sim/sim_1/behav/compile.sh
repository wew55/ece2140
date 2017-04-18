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
echo "xvhdl -m64 --relax -prj test_top_vhdl.prj"
ExecStep $xv_path/bin/xvhdl -m64 --relax -prj test_top_vhdl.prj 2>&1 | tee -a compile.log
