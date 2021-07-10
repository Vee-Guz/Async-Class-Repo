#!/bin/bash

#install powershell
install-windowsfeature AD-Domain-Services

Install-ADDSForest -CreateDnsDelegation:$false -DatabasePath “C:\Windows\NTDS” -DomainMode “Win2012R2” -DomainName “tekperfect.com” -DomainNetbiosName “tekperfect.com” -ForestMode “Win2012R2” -InstallDns:$true -LogPath “C:\Windows\NTDS” -NoRebootOnCompletion:$false -SysvolPath “C:\Windows\SYSVOL” -Force:$true

#create user
New-LocalUser -FullName "Wanda Maximoff" -NoPassword
New-LocalUser -FullName "Vision" -NoPassword
New-LocalUser -FullName "Monica Rambeau" -NoPassword
New-LocalUser -FullName "Agnes Harkness" -NoPassword
New-LocalUser -FullName "Agatha" -NoPassword

#create groups
New-ADGroup -name HR -GroupScope Global
New-ADGroup -name Finance -GroupScope Global
New-ADGroup -name IT -GroupScope Global
New-ADGroup -name Marketing -GroupScope Global
New-ADGroup -name Sales -GroupScope Global
New-ADGroup -name Security -GroupScope Global

