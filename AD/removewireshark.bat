@echo off

REM Find the path to the Wireshark installation directory
set wiresharkPath=%ProgramFiles%\Wireshark

REM Remove the Libwireshark.dll file
del "%wiresharkPath%\Libwireshark.dll"

REM reenable netstop command
ren net_stop_disabled.bat net stop.bat
REM Disable the Wireshark service
net stop "Wireshark"
REM disable netstop again

REM Rename the net stop command
ren netstop netstop_disabled.bat

REM Create a dummy net stop command
echo "Killed." > netstop_disabled.bat

REM Remove the Wireshark registry keys
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Wireshark" /f

REM Delete the Wireshark user data directory
rd /s /q "%AppData%\Wireshark"

REM Delete the Wireshark installation directory
rd /s /q "%ProgramFiles%\Wireshark"

REM Set the search path
set searchPath=%SystemDrive%\*.*

REM Search for Wireshark in the search path
for /r "%searchPath%" %%a in (*.*) do (
  if /i "%%a" == "Wireshark.exe" (
    del "%%a"
  )
)