@echo off
:: Carissa Hartley, Delta Team
:: Change Keyboard layout on a timer

:: Initially set keyboard to american english in case the script
:: was interupted by a reboot.

powershell.exe -command "Set-WinUserLanguageList -Force 'en-US'"

:: Pause for 300 seconds (5 min)
TIMEOUT /t 300 /NOBREAK

:: Change keyboard language to hebrew
powershell.exe -command "Set-WinUserLanguageList -Force 'he'"

:: Pause for 180 seconds (3 min)
TIMEOUT /t 180 /NOBREAK

:: Change keyboard language back to american english
powershell.exe -command "Set-WinUserLanguageList -Force 'en-US'"

:: Pause for 300 seconds (5 min)
TIMEOUT /t 300 /NOBREAK

:: Change keyboard language to french
powershell.exe -command "Set-WinUserLanguageList -Force 'fr-FR'"

:: Pause for 180 seconds (3 min)
TIMEOUT /t 180 /NOBREAK

:: Change keyboard language back to american english and end
powershell.exe -command "Set-WinUserLanguageList -Force 'en-US'"







