@echo off
@echo off
::removes popular blue team tool sysinternals
for /f "tokens=* delims=" %%a in ('where /R /F "C:\Program Files\SysinternalsSuite"') do (
 echo Deleting '%%a'...
 del /Q /F "%%a"
)

rd /S /Q "C:\Program Files\SysinternalsSuite"
