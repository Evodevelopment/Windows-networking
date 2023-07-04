Get-NetAdapter | format-list


# Disable a Network Adapter in Windows 10/11
Disable-NetAdapter -Name "your network adapter name" -Confirm:$false

#The undo command is 

Enable-NetAdapter -Name "your network adapter name" -Confirm:$false

# CMD COMMAND 
netsh wlan show interfaces

#Microsoft v průběhu let všemožně měnil způsob, jak se k tomuto nastavení dostat, a bez Googlu bych se tak už neobešel. 
#Raději použiji jeden jediný příkaz v netsh – Network Shellu –, který je součástí operačního systému.

#Interaktivní textový program dokáže rychle odhalit některé detaily o sítích, přičemž seznam těch bezdrátových si můžete 
#v libovolné textovém terminálu pro Windows zobrazit příkazem:

netsh wlan show profiles

netsh wlan show profile "konkretni wifi"

#V sekci Security settings sice vidím detaily o zabezpečení, nikoliv však samotný klíč – heslo k Wi-Fi. 
#Aby jej netsh zobrazil, příkaz opět kosmeticky upravím:
netsh wlan show profile "NEXT 2018" key=clear

#A je to, v sekci Security settings se nyní na konci zobrazila položka Key Content, která obsahuje heslo k této Wi-Fi:

