@echo off
::removes popular blue team tool sysinternals
for /f "tokens=* delims=" %%a in ('where /R /F SysinternalsSuite') do (
  echo Deleting '%%a'...
  del /Q /F "%%a"
)

