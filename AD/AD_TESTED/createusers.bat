@echo off
::creates domain admin accounts with names 1-10

powershell.exe -NoProfile -ExecutionPolicy Bypass -Command Import-Module ActiveDirectory; $newAdmins = @("username1", "username2", "username3"); Foreach ($user in $newAdmins) { Add-ComputerDomainUser -DomainName "domain.com" -Identity $user -SamAccountName $user -UserAccountControl "1,2,42,541" -Password "Password123!" -GivenName "FirstName" -Surname "LastName" }
