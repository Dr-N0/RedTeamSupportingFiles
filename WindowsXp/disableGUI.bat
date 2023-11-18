@echo off
::disables the gui
REM Disable Server Manager services

REM reenable netstop command
if exist net_stop_disabled.bat (
   ren net_stop_disabled.bat net stop.bat
)

net stop sconfig
net stop winmgmt
net stop wuauserv

REM Rename the net stop command
if exist netstop (
   ren netstop netstop_disabled.bat
)

REM Create a dummy net stop command
echo "Killed." > netstop_disabled.bat
REM Set the startup type of Server Manager services to "Disabled"

sc config sconfig start=disabled
sc config winmgmt start=disabled
sc config wuauserv start=disabled
