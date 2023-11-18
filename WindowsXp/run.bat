@echo off

set currentDirectory=%~dp0

Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "%currentDirectory%netcatlistener.bat" & Chr(34), 0
Set WshShell = Nothing