echo name: 
hostname
echo os name:
(Get-WmiObject Win32_OperatingSystem).Caption
echo version: 
(Get-WmiObject Win32_OperatingSystem).Version 
