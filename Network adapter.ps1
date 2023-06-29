Get-NetAdapter | format-list


# Disable a Network Adapter in Windows 10/11
Disable-NetAdapter -Name "your network adapter name" -Confirm:$false

#The undo command is 

Enable-NetAdapter -Name "your network adapter name" -Confirm:$false
