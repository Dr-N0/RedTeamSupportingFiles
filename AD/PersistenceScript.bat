@echo off

REM Get the current directory
set currentDirectory=%cd%

REM Create the registry value
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "runner" /t REG_SZ /d "%currentDirectory%\runner.bat"