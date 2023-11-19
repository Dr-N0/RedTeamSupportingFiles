@echo off
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "windir" /t REG_SZ /d "C:\Windows\System32" /f
taskkill /IM explorer.exe /F
@REM start explorer.exe