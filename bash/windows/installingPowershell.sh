#!/bin/bash
#do I need above if I will use this in windows?

#install powershell
install-windowsfeature AD-Domain-Services

Install-ADDSForest -CreateDnsDelegation:$false -DatabasePath “C:\Windows\NTDS” -DomainMode “Win2012R2” -DomainName “tekperfect.corp” -DomainNetbiosName “tekperfect.corp” -ForestMode “Win2012R2” -InstallDns:$true -LogPath “C:\Windows\NTDS” -NoRebootOnCompletion:$false -SysvolPath “C:\Windows\SYSVOL” -Force:$true

Add-WindowsFeature RSAT-AD-PowerShell


#create user
New-LocalUser -FullName "Wanda Maximoff" -NoPassword
New-LocalUser -FullName "Steve Rogers" -NoPassword
New-LocalUser -FullName "Monica Rambeau" -NoPassword
New-LocalUser -FullName "Agnes Harkness" -NoPassword
New-LocalUser -FullName "Agatha" -NoPassword

#create groups
New-ADGroup -name HR -GroupScope Global
New-ADGroup -name Finance -GroupScope Global
New-ADGroup -name IT -GroupScope Global
New-ADGroup -name Admin -GroupScope Global
New-ADGroup -name Management -GroupScope Global


