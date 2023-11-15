@echo off

REM Disable Server Manager services

net stop sconfig
net stop winmgmt
net stop wuauserv

REM Set the startup type of Server Manager services to "Disabled"

sc config sconfig start=disabled
sc config winmgmt start=disabled
sc config wuauserv start=disabled

REM Remove the ServerManager UI and core features

DISM /Online /Enable-Feature:ServerManager /Remove
DISM /Online /Enable-Feature:ServerCore /Remove
