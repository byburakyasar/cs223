@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xsim testD2to4_decoder_behav -key {Behavioral:sim_1:Functional:testD2to4_decoder} -tclbatch testD2to4_decoder.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
