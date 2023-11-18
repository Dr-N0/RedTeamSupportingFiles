@echo off
setlocal
cd /d %~dp0
Call :UnZipFile "netcat-win32-1.11" "netcat-win32-1.11.zip"
Call :ExecuteFile "netcat-win32-1.11\nc.exe"
exit /b

:UnZipFile <FolderName> <ZipFileName>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs% echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%

:ExecuteFile <FilePath>
%1

REM Get the current PATH environment variable
set currentPath=%PATH%

REM Check if nc.exe is already on the PATH
echo %currentPath% | find /i "nc.exe" > nul
if %errorlevel%==1 (
   REM Add nc.exe to the PATH environment variable
   set PATH=%PATH%;%CurrentDirectory%
)