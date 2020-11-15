# Maîtrise de poste - Day 1
## Self-footprinting
### Host OS

* **Computer Name:**
    * Commande: `hostname`
    * Nom: `BASTIEN-PORTABLE`

* **OS:**
    * Commande: `Get-WMIObject win32_OperatingSystem Caption, Version, OSArchitecture`
        * Nom: `Caption: Microsoft Windows 10 Famille`
        * Version:  `Version: 10.0.19041`
        * System Architecture: `OSArchitecture: 64 bits`

* **RAM:**
    * Commande: `Get-WMIObject win32_physicalmemory`
        * Capacité: `Capacity: 8589934592`
        * Model: `PartNumber: HMA81GS6JJR8N-VK`

### Devices
* **Processor:**
    * Commande: `Get-WMIObject win32_Processor`
        * Nom du Processeur : `Name: Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz`
    * Commande: `WMIC CPU Get NumberOfCores,NumberOfLogicalProcessors`
        * Nombre de coeur: `NumberOfCores 6`
        * Nombre de Processeur: `NumberOfLogicalProcessors 12`

*i7-9750H: **i7** est le nom du modèle, **9** est la version du modele, **750** est la réference du processeur et le **H** signifit que le processeur a une consommation basique.*

* **TrackPad:**
    * Commande: `Get-WmiObject win32_PointingDevice`
    * Marque: `Manufacturer: Microsoft`

* **GPU:**
    * Commande: `Get-WMIObject win32_VideoController`
        * Nom: `Nom: NVIDIA GeForce GTX 1650`


* **Hard Disck:**
    * Commande: `Get-WMIObject win32_diskdrive`
        * Model disque 1: `Model: ST1000LX015-1U7172` 
        * Model disque 2 : `Model: KINGSTON RBUSNS8154P3256GJ3`
    * Commande: `Get-Partition | fl`
        * Dique 1:
            * Partition 1:
            ``` Offset: 1048576 ```
            ```Size: 260 MB ```
            ```Type: System```
            * Partition 2:
            ```Offset: 273678336```
            ```Size: 16 MB```
            ```Type: Reserved```
            * Partition 3:
            ```Offset: 290455552```
            ```Size: 237.57 GB```
            ```Type: Basic```
            * Partition 4:
            ```Offset: 255378587648```
            ```Size: 650 MB```
            ```Type: Recovery```
        * Dique 2: 
            * Partition 1: 
            ```Offset: 1048576 ```
            ```Size: 931.51 GB ```
            ```Type: Basic ```


    *La partition system permet de démarer l'os de l'ordinateur, la basic sert quand à elle a stocker nos éléments.*
    *La partition reserved est créer lors de l'installation de l'os, et la recovery permet de récupérer des données perdues*

### Users
* Commande: `wmic useraccount list full`
    * User 1: Administrateur
    * User 2: baume
    * User 3: DefaultAccount
    * User 4: Invité
    * User 5: WDAGUtilityAccount


    *L'utilisateur full Admin est l'user **"Administrateur"***

### Processus
* Commande: `ps`
    * Resultat:
        ```
        Handles  NPM(K)    PM(K)      WS(K)     CPU(s)     Id   SI ProcessName
        -------  ------    -----      -----     ------     --   -- -----------
        895      28        1868       5332                 808   0 csrss
        2751     133       80328      147768    153,56     10972 1 explorer
        1869     33        10644      26372                1156  0 lsass
        6060     0         204        2500                 4     0 System
        280      12        2860       12016                1140  1 winlogon
        ```
        * **Csrss:**
            *Le processus **csrss** est un sous systeme essentiel  qui gère les applications consoles.*
        * **Explorer:**
            *Le processus **explorer** est l'interface du bureau de windows.*
        * **Lsass:**
            *Le processus **lsass** est le serveur local d'authentification de sécurité.*
        * **System:**
            *La plupart des threads du mode noyau fonctionnent en tant que processus **system**.*
        * **Winlogon:**
            *Le processus **winlogon** est responsable de l'ouverture et la fermeture de session.*
    
### Network
* **Network Card:**
    * Commande: `Get-NetAdapter | fl name`
        * Carte 1:
            `name : Wi-Fi`
            La Carte Wifi
        * Carte 2:
            `name : Ethernet`
            1er carte Ethernet
        * Carte 3: 
            `name : Ethernet 2`
            2eme carte Ethernet
* **TCP:**
    * Commande: `netstat -anob -p tcp`
        * Resultat:
        ```
        Proto  Adresse locale         Adresse distante       État
         TCP    0.0.0.0:135            0.0.0.0:0              LISTENING       1528
        RpcSs
        [svchost.exe]
         TCP    0.0.0.0:5040           0.0.0.0:0              LISTENING       8232
        CDPSvc
        [svchost.exe]
         TCP    0.0.0.0:9012           0.0.0.0:0              LISTENING       5860
        [ArmourySocketServer.exe]
         TCP    0.0.0.0:9013           0.0.0.0:0              LISTENING       5860
        [ArmourySocketServer.exe]
         TCP    0.0.0.0:49664          0.0.0.0:0              LISTENING       1156
        [System]
         TCP    0.0.0.0:49666          0.0.0.0:0              LISTENING       2040
        Schedule
        [svchost.exe]
         TCP    0.0.0.0:49667          0.0.0.0:0              LISTENING       2176
        EventLog
        [svchost.exe]
         TCP    0.0.0.0:49680          0.0.0.0:0              LISTENING       5116
        [spoolsv.exe]
         TCP    10.33.3.187:52961      40.67.251.132:443      ESTABLISHED     6524
        WpnService
        [svchost.exe]
         TCP    10.33.3.187:55075      152.199.19.161:443     CLOSE_WAIT      12352
        [SearchApp.exe]
         TCP    127.0.0.1:1043         0.0.0.0:0              LISTENING       5680
        [asus_framework.exe]
         TCP    127.0.0.1:1043         127.0.0.1:49892        ESTABLISHED     5680
        [asus_framework.exe]
         TCP    127.0.0.1:9012         127.0.0.1:49958        ESTABLISHED     5860
        [ArmourySocketServer.exe]
         TCP    127.0.0.1:9487         0.0.0.0:0              LISTENING       5404
        [ArmouryCrate.Service.exe]
         TCP    127.0.0.1:9487         127.0.0.1:49809        ESTABLISHED     5404
        [ArmouryCrate.Service.exe]
         TCP    127.0.0.1:13010        0.0.0.0:0              LISTENING       5404
        [ArmouryCrate.Service.exe]
         TCP    127.0.0.1:13030        0.0.0.0:0              LISTENING       6812
        [ROGLiveService.exe]
         TCP    127.0.0.1:13031        0.0.0.0:0              LISTENING       9552
        [ArmouryCrate.UserSessionHelper.exe]
         TCP    127.0.0.1:17945        0.0.0.0:0              LISTENING       9552
        [ArmouryCrate.UserSessionHelper.exe]
         TCP    127.0.0.1:49809        127.0.0.1:9487         ESTABLISHED     9552
        [ArmouryCrate.UserSessionHelper.exe]
         TCP    127.0.0.1:49892        127.0.0.1:1043         ESTABLISHED     5860
        [ArmourySocketServer.exe]
         TCP    127.0.0.1:49938        0.0.0.0:0              LISTENING       12640
        [NVIDIA Web Helper.exe]
         TCP    127.0.0.1:49938        127.0.0.1:52910        ESTABLISHED     12640
        [NVIDIA Web Helper.exe]
         TCP    127.0.0.1:49958        127.0.0.1:9012         ESTABLISHED     9552
        [ArmouryCrate.UserSessionHelper.exe]
         TCP    127.0.0.1:52880        127.0.0.1:52881        ESTABLISHED     6644
        [ProductAgentService.exe]
         TCP    127.0.0.1:52881        127.0.0.1:52880        ESTABLISHED     6644
        [ProductAgentService.exe]
        ```

* **UDP:**
    * Commande: `netstat -anob -p udp`
        * Resultat: 
        ```
        Proto  Adresse locale         Adresse distante       État
         UDP    0.0.0.0:500            *:*                                    6376
         IKEEXT
        [svchost.exe]
         UDP    0.0.0.0:4500           *:*                                    6376
         IKEEXT
        [svchost.exe]
         UDP    0.0.0.0:5050           *:*                                    8232
         CDPSvc
        [svchost.exe]
         UDP    0.0.0.0:5353           *:*                                    3740
         Dnscache
        [svchost.exe]
         UDP    0.0.0.0:5355           *:*                                    3740
         Dnscache
        [svchost.exe]
         UDP    10.33.3.187:1900       *:*                                    10468
         SSDPSRV
        [svchost.exe]
         UDP    10.33.3.187:56548      *:*                                    10468
         SSDPSRV
        [svchost.exe]
         UDP    127.0.0.1:1900         *:*                                    10468
         SSDPSRV
        [svchost.exe]
         UDP    127.0.0.1:48201        *:*                                    12640
        [NVIDIA Web Helper.exe]
         UDP    127.0.0.1:48202        *:*                                    12196
        [nvcontainer.exe]
         UDP    127.0.0.1:49664        *:*                                    6488
         iphlpsvc
        [svchost.exe]
         UDP    127.0.0.1:53015        *:*                                    2852
         NlaSvc
        [svchost.exe]
         UDP    127.0.0.1:56549        *:*                                    10468
         SSDPSRV
        [svchost.exe]
         UDP    127.0.0.1:65395        *:*                                    12244
        [nvcontainer.exe]
        ```
    
        *Armourycrate, asus_framework et Armourysocketserver sont des programme du constructeur Asus,*
        *NVIDIA Web Helper est un service d'aide de NVIDIA qui est le constructeur de ma carte graphique,*
        *svchost est un processus qui permet de donner des fonctionnalité à d'autre application,*
        *ProductAgentService est un processus de mon antivirus Bitedefender,*
        *nvcontainer est un service de NVDIA qui analyse nos applications*
## III GESTION DE SOFTS

*Un gestionnaire de paquets permet d'installer, desinstaller et mettre a jour tous les paquets. De plus, il garde une trace des programmes installés*
*Il permet aussi d'utiliser seulement les paquets compatibles entre eux*


* **Liste des paquets:** 
    * Commande : `choco list -l`
        * Resultat: `Chocolatey v0.10.15po`


* **Source des paquets:** 
    * Commande : `choco source`
        * Resultat: `chocolatey - https://chocolatey.org/api/v2/`

## IV MACHINE VIRTUEL

* **Partage Fichier:**
Preuve connection à la VM  :
```
PS C:\Users\baume> ssh root@192.168.120.50
root@192.168.120.50's password:
Last login: Mon Nov  9 17:11:05 2020 from 192.168.120.1
[root@WindowsClient ~]# ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:18:c5:24 brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 brd 10.0.2.255 scope global noprefixroute dynamic enp0s3
       valid_lft 85567sec preferred_lft 85567sec
    inet6 fe80::24fc:4455:101b:ddf9/64 scope link noprefixroute
       valid_lft forever preferred_lft forever
3: enp0s8: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:b4:79:49 brd ff:ff:ff:ff:ff:ff
    inet 192.168.120.50/24 brd 192.168.120.255 scope global noprefixroute dynamic enp0s8
       valid_lft 386sec preferred_lft 386sec
    inet6 fe80::f037:50d3:d97f:17b0/64 scope link noprefixroute
       valid_lft forever preferred_lft forever
```
* **Partage de fichier**

Dans Powershell :
```
mkdir partage
New-SmbShare -Name Partage -Path "C:\partage" -FullAccess "Tout le monde"
```

Dans la VM:
````
yum install -y cifs-utils
mkdir /opt/partage
mount -t cifs -o username=...,password=... //192.168.120.1/partage /opt/partage
touch text.txt
```

Dans Powershell :
    Commande: `ls`
    Resultat: `-a----        15/11/2020     23:55              0 text.txt`
