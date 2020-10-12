# Maîtrise de poste - Day 1
## Self-footprinting
### Host OS
* Commande: `systeminfo`
    * Nom: `Nom de l’hôte: BASTIEN-PORTABL`
    * OS Name: `Nom du système d’exploitation: Microsoft Windows 10 Famille`
    * OS Version:  `Version du système: 10.0.19041 N/A version 19041`
    * Architecture: `Type du système: x64-based PC`
* Commande: `Get-WMIObject win32_physicalmemory`
    * RAM: `Capacity: 8589934592`
    * RAM Modele: `PartNumber: HMA81GS6JJR8N-VK`

### Devices
* Commande: `Get-WMIObject win32_Processor`
    * Nom Processeur : `Name: Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz`
* Commande: `WMIC CPU Get NumberOfCores,NumberOfLogicalProcessors`
    * Nombre de coeur: `NumberOfCores 6`
    * Nombre de processeurs: `NumberOfLogicalProcessors 12`

i7-9750H: **i7** est le nom du modèle, **9** est la version du modele, **750** est la réference du processeur et le **H** signifit que le processeur a une consommation basique.

