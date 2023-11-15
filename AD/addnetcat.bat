@echo off

REM Unzip the Netcat ZIP file
7z x netcat-win32-1.11.zip

REM Get the path to the Netcat executable file
set ncPath=%CurrentDirectory%\nc.exe

REM Get the current PATH environment variable
set currentPath=%PATH%

REM Check if nc.exe is already on the PATH
if not %currentPath% FIND "nc.exe" == "" (
    REM Add nc.exe to the PATH environment variable
    set PATH=%PATH%;%CurrentDirectory%

)
