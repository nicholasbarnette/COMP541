@echo off
set xv_path=E:\\Vivado\\Vivado\\2017.2\\bin
call %xv_path%/xsim Lab3_Part3_test_behav -key {Behavioral:sim_6:Functional:Lab3_Part3_test} -tclbatch Lab3_Part3_test.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0