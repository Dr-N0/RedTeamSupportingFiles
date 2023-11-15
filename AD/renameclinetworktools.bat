@echo off

REM Rename netstat
ren C:\Windows\System32\netstat.exe netsh.exe

REM Rename ss
ren C:\Windows\System32\ss.exe ssh.exe

REM Rename lsof
ren C:\Sysinternals\Tools\lsof.exe lsof_r.exe

REM Rename nmap
ren C:\Program Files (x86)\Nmap\nmap.exe namap.exe

REM Rename tcpdump
ren C:\Program Files\Wireshark\tcpdump\tcpdump.exe tcpdmp.exe

REM Rename wireshark
ren C:\Program Files\Wireshark\Wireshark.exe wireshark_r.exe

REM Rename ipconfig
ren C:\Windows\System32\ipconfig.exe ipconfig_r.exe

REM Rename getmac
ren C:\Program Files (x86)\NirSoft\GetMac\GetMac.exe getmac_r.exe

REM Rename ifconfig
ren C:\Windows\System32\ifconfig.exe ifconfig_r.exe

REM Rename route
ren C:\Windows\System32\route.exe route_r.exe

REM Rename net
ren C:\Windows\System32\net.exe netr.exe

REM Rename ping
ren C:\Windows\System32\ping.exe pingr.exe

REM Rename traceroute
ren C:\Windows\System32\tracert.exe tracerouter.exe

REM Rename whois
ren C:\Windows\System32\whois.exe whoisr.exe

echo CLI tools have been renamed.
pause
