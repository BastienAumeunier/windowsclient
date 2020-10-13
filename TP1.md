# Maîtrise de poste - Day 1
## Self-footprinting
### Host OS

* **Computer Name:**
    * Command `hostname`
    * Name: `BASTIEN-PORTABLE`

* **OS:**
    * Command: `Get-WMIObject win32_OperatingSystem Caption, Version, OSArchitecture`
        * Name: `Nom de l’hôte: BASTIEN-PORTABL`
        * Name: `Caption: Microsoft Windows 10 Famille`
        * Version:  `Version: 10.0.19041`
        * System Architecture: `OSArchitecture: 64 bits`

* **RAM:**
    * Command: `Get-WMIObject win32_physicalmemory`
        * Capacity: `Capacity: 8589934592`
        * Model: `PartNumber: HMA81GS6JJR8N-VK`

### Devices
* **Processor:**
    * Command: `Get-WMIObject win32_Processor`
        * Processor Name : `Name: Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz`
    * Command: `WMIC CPU Get NumberOfCores,NumberOfLogicalProcessors`
        * Core Number: `NumberOfCores 6`
        * Processors Name: `NumberOfLogicalProcessors 12`

i7-9750H: **i7** est le nom du modèle, **9** est la version du modele, **750** est la réference du processeur et le **H** signifit que le processeur a une consommation basique.

* **TrackPad:**
    * Command: ``
    * Name: ``

* **GPU:**
    * Command: `Get-WMIObject win32_VideoController`
        * Name: `Name: NVIDIA GeForce GTX 1650`


* **Hard Disck:**
    * Command: `Get-WMIObject win32_diskdrive`
        * Model disk1: `Model: ST1000LX015-1U7172` 
        * Model disk2 : `Model: KINGSTON RBUSNS8154P3256GJ3`
