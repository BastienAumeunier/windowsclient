# Création des variables
$name = hostname #NOM du PC
$os = (Get-WmiObject -class Win32_OperatingSystem).Caption #NOM DE L'OS
$version=(Get-WmiObject Win32_OperatingSystem).Version #VERSION DE L'OS
$osmaj = [Environment]::OSVersion.Version -ge (new-object 'Version') #VERSION
$SIZE_RAM_MAX=(Get-WmiObject -Class Win32_ComputerSystem ).TotalPhysicalMemory/1000000000 #RAM
$SIZE_RAM_FREE=(Get-WmiObject -Class Win32_OperatingSystem).FreePhysicalMemory/1000000000
$SIZE_RAM_USE=$SIZE_RAM_MAX - $SIZE_RAM_FREE
$SIZE_Disk_FREE=(Get-wmiobject  Win32_LogicalDisk).Freespace/1000000000 #DISK
$SIZE_Disk_USE=((Get-wmiobject  Win32_LogicalDisk).Size - $SIZE_Disk_FREE )/1000000000
$IP = ( `
    Get-NetIPConfiguration | `
    Where-Object { `
        $_.IPv4DefaultGateway -ne $null `
        -and `
        $_.NetAdapter.Status -ne "Disconnected" `
    } `
).IPv4Address.IPAddress #RECUPERATION DE L'IP
###SCRIPT
"--------------------------------------------------------------------------------------- " 
"|   Author: Aumeunier Bastien                                                         | "
"|    Date: 24.10.2020                                                                 | "
"|    Comment: Script to get basic info from the computer                              | " 
"--------------------------------------------------------------------------------------- "
"OS INFO"
"NAME : $name"
"OS : $os"
"VERSION : $version"
net statistics workstation | Find  "depuis "
"OS UP TO DATE : $osmaj"
"IP : $IP"
"RAM FREE : $SIZE_RAM_FREE GB"
"RAM USE : $SIZE_RAM_USE GB"
"DISK FREE : $SIZE_DISK_FREE GB"
"DISK USE : $SIZE_DISK_USE GB"
"---------------------------------------------------------------------------------------"
"USERS"
(Get-LocalUser).Name
"---------------------------------------------------------------------------------------"
"PING"
ping 8.8.8.8 | find " Minimum "
"---------------------------------------------------------------------------------------"