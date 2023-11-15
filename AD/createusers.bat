@echo off
::creates domain admin accounts with names 1-10

for /f "tokens=1,*" %%a in ('seq 1 10') do (
  echo Creating user %%a...
  net user %%a %%a /add /y
  net localgroup administrators %%a /add
)