@echo off

REM Rename the Resource Monitor DLL
if exist C:\Windows\System32\rmapi.dll ren C:\Windows\System32\rmapi.dll rmapi.old

REM Rename the Performance Monitor DLLs
if exist C:\Windows\System32\Wbem\wbemcore.dll ren C:\Windows\System32\Wbem\wbemcore.dll wbemcore.old
if exist C:\Windows\System32\Wbem\wbemprov.dll ren C:\Windows\System32\Wbem\wbemprov.dll wbemprov.old

REM Rename the Netstat DLL
if exist C:\Windows\System32\iphlpapi.dll ren C:\Windows\System32\iphlpapi.dll iphlpapi.old

REM Rename the Wireshark DLLs
if exist C:\Program Files\Wireshark\Npcap\npcapd.dll ren C:\Program Files\Wireshark\Npcap\npcapd.dll npcapd.old
if exist C:\Program Files\Wireshark\Npcap\NpcapLoader.dll ren C:\Program Files\Wireshark\Npcap\NpcapLoader.dll NpcapLoader.old

REM Rename the TCPview EXE
if exist C:\Program Files (x86)\TCPview\tcpview.exe ren C:\Program Files (x86)\TCPview\tcpview.exe tcpview.old
