@echo off
::creates domain admin accounts with names 1-10

setlocal enabledelayedexpansion

for /l %%a in (1,1,10) do (
 echo Creating user %%a...
 net user %%a %%a /add /y
 net localgroup administrators %%a /add
)