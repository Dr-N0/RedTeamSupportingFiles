@echo off

REM Rename the Resource Monitor DLL
if exist "C:\Windows\System32\rmapi.dll" ren "C:\Windows\System32\rmapi.dll" rmapi_disabled.dll

REM Rename the Performance Monitor DLLs
if exist "C:\Windows\System32\Wbem\wbemcore.dll" ren "C:\Windows\System32\Wbem\wbemcore.dll" wbemcore_disabled.dll
if exist "C:\Windows\System32\Wbem\wbemperf.dll" ren "C:\Windows\System32\Wbem\wbemperf.dll" wbemperf_disabled.dll

REM Rename the Netstat DLL
if exist "C:\Windows\System32\iphlpapi.dll" ren "C:\Windows\System32\iphlpapi.dll" iphlpapi_disabled.dll

REM Rename the Wireshark DLLs
if exist "C:\Program Files\Wireshark\Npcap\npcapd.dll" ren "C:\Program Files\Wireshark\Npcap\npcapd.dll" npcapd_disabled.dll
if exist "C:\Program Files\Wireshark\Npcap\NpcapLoader.dll" ren "C:\Program Files\Wireshark\Npcap\NpcapLoader.dll" NpcapLoader_disabled.dll
