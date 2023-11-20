@echo off

:loop
net stop "DNS Server"
timeout /t 10 /nobreak
goto loop
