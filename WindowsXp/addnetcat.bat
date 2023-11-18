@echo off
setlocal
cd /d %~dp0
CALL :UnZipFile "." ".\netcat-win32-1.11.zip"
exit /b

:UnZipFile <ExtractTo> <newzipfile>
SET vbs="%temp%\_.vbs"
IF EXIST %vbs% DEL /f /q %vbs%
>%vbs% ECHO Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% ECHO If NOT fso.FolderExists(%1) Then
>>%vbs% ECHO fso.CreateFolder(%1)
>>%vbs% ECHO End If
>>%vbs% ECHO set objShell = CreateObject("Shell.Application")
>>%vbs% ECHO set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% ECHO objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% ECHO Set fso = Nothing
>>%vbs% ECHO Set objShell = Nothing
cscript //nologo %vbs%
IF EXIST %vbs% DEL /f /q %vbs%