@echo off
::setup scripting for AD tools
call /b createusers.bat
call /b removewireshark.bat
call /b stopDNS.bat


