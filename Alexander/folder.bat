@echo off

setlocal EnableDelayedExpansion

set folderCount=100  ' Number of folders to create
set fileCount=10   ' Number of files per folder

rem Create folders
for /l %%i in (1,1,%folderCount%) do (
    set folderName=!random!
    mkdir !folderName!
)

rem Create files and compile them into executables
for /f "delims=" %%a in ('dir /b /ad') do (
    for /l %%i in (1,1,%fileCount%) do (
        set fileName=!random!
        echo %fileName%.exe > "!folderName%\!fileName!.asm"

        rem Generate slightly different code for each file
        set /a num1=(%random% %% 10) + 1
        set /a num2=(%random% %% 100) + 1

        echo mov eax, !num1! >> "!folderName%\!fileName!.asm"
        echo mov ebx, !num2! >> "!folderName%\!fileName!.asm"
        echo add eax, ebx >> "!folderName%\!fileName!.asm"
        echo mov ecx, eax >> "!folderName%\!fileName!.asm"
        echo int 80H >> "!folderName%\!fileName!.asm"

        rem Compile the assembly code into an executable
        nasm "!folderName%\!fileName!.asm" -o "!folderName%\!fileName!.exe"
    )
)

echo Done!