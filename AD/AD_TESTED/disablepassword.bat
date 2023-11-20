@echo off
reg add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\AutoAdminLogon /v DisablePassword /t REG_DWORD /d 1 /f