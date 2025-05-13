# Docker + DeXRAY

**Dockerfile + bash + DeXRAY.pl == Good Day**

## Installation:

```bash
git clone https://github.com/MNESTRASHNO/docker_DeXRAY.git
cd docker_DeXRAY/
docker build --no-cache -t dexray .
docker run --rm -v $(pwd):/data dexray -i /data/<your_file> -o /data/report.csv
```

## Example of a CTF task:
```bash
al@MNESTRASHNO:~/docker_DeXRAY$ docker run --rm -v $(pwd):/data dexray /data/zabolelwe.klq -o /data/report.csv
--2025-05-13 23:05:12--  https://hexacorn.com/d/DeXRAY.pl
Resolving hexacorn.com (hexacorn.com)... 173.236.213.81
Connecting to hexacorn.com (hexacorn.com)|173.236.213.81|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 127080 (124K) [text/plain]
Saving to: '/data/DeXRAY.pl'

     0K .......... .......... .......... .......... .......... 40%  198K 0s
    50K .......... .......... .......... .......... .......... 80%  387K 0s
   100K .......... .......... ....                            100%  139M=0.4s

2025-05-13 23:05:13 (325 KB/s) - '/data/DeXRAY.pl' saved [127080/127080]

"my" variable $data masks earlier declaration in same scope at /data/DeXRAY.pl line 1373.

=================================================================
 dexray v2.35, copyright by Hexacorn.com, 2010-2025
 Trend&Kaspersky decryption based on code by Optiv
 McAfee BUP decryption code by Brian Maloney
 Much better Symantec VBN support code by Brian Maloney
 Kaspersky System Watcher decryption by Luis Rocha&Antonio Monaca
 Sentinel One decryption research by MrAdz350
 Microsoft AV/Security Essentials by Corey Forman /fetchered/
 Cisco AMP research by @r0ns3n
 Fortinet code by TheMythologist
 Thx to Brian Baskin, James Habben, Brian Maloney, Luis Rocha,
 Antonio Monaca, MrAdz350, Corey Forman /fetchered/, @r0ns3n
 Tony, Jordan Meurer, Oskar, RevD17, Roman D., TheMythologist,
 Maldump team
=================================================================
Processing file: '/data/zabolelwe.klq'
 -> '/data/zabolelwe.klq.00000000_Kaspersky.out' - Kaspersky File
 -> ofs='0' (00000000)
 -> '/data/zabolelwe.klq.00000000_Kaspersky.met' - Kaspersky File MetaData
    Header Length   = 64
    Metadata offset = 1250120
    Metadata length = 1163
    Original length = 1250056
    ###
    Attribute: 'cNP_QB_ID'
      4F 77 CC C2 44 55 37 35                          Ow..DU75

    ###
    Attribute: 'cNP_QB_FULLNAME'
        File name: \\VBoxSvr\TestShare\mimikatz.exe
    ###
    Attribute: 'cNP_QB_FILE_ATTRIBUTES'
        Attributes = 0x20 ('A')
    ###
    Attribute: 'cNP_QB_FILE_CREATION_TIME'
      00 0C 7F 00 F5 72 6D 58                          .....rmX

    ###
    Attribute: 'cNP_QB_FILE_LAST_ACCESS_TIME'
      8A 2B 2D 27 A4 63 95 58                          .+-'.c.X

    ###
    Attribute: 'cNP_QB_FILE_LAST_WRITE_TIME'
      52 E2 25 FB A3 63 95 58                          R.%..c.X

    ###
    Attribute: 'cNP_QB_FILE_SECURITY_OWNER'
    ###
    Attribute: 'cNP_QB_FILE_SECURITY_GROUP'
    ###
    Attribute: 'cNP_QB_FILE_SECURITY_INTEGRITY_LABEL'
    ###
    Attribute: 'cNP_QB_FILE_SECURITY'
      01 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00  ................
      00 00 00 00                                      ....

    ###
    Attribute: 'cNP_QB_FILE_SECURITY_AUDIT'
    ###
    Attribute: 'cNP_QB_RESTORER_PID'
      12 00 00 00                                      ....

    ###
    Attribute: 'cNP_QB_STORE_TIME'
      F8 23 1A 60 A4 63 95 58                          .#.`.c.X

    ###
    Attribute: 'cNP_QB_INFO'
      01 00 00 01 BC C0 00 D9 01 00 00 C7 01 00 00 BB  ................
      00 00 00 53 00 00 00 22 00 00 00 8F FF FF FF 7F  ...S..."........
      81 4D 8F FF FF FF 7F 89 30 08 6F 61 73 00 89 30  .M......0.oas..0
      02 00 81 FF FF FF FF FF FF FF FF 7F 00 00 00 0B  ................
      89 30 42 5C 5C 56 42 6F 78 53 76 72 5C 54 65 73  .0B\\VBoxSvr\Tes
      74 53 68 61 72 65 5C 6D 69 6D 69 6B 61 74 7A 2E  tShare\mimikatz.
      65 78 65 00 8F FF FF FF 7F 00 89 30 34 48 45 55  exe........04HEU
      52 3A 54 72 6F 6A 61 6E 2E 57 69 6E 33 32 2E 47  R:Trojan.Win32.G
      65 6E 65 72 69 63 00 02 03 01 00 86 A8 C1 F8 63  eneric.........c
      89 30 1C 57 49 4E 31 30 58 36 34 5C 6B 69 63 6B  .0.WIN10X64\kick
      00 89 30 14 6C 6F 63 61 6C 68 6F 73 74 00 66 00  ..0.localhost.f.
      CC A6 08 00 00 89 30 02 00 00 00 00 00 00 00 00  ......0.........
      00 86 A8 C1 F8 63 00 00 00 01 00 03 00 00 01 89  .....c..........
      30 02 00 89 30 02 00 01 00 5A 42 00 00 00 41 00  0...0....ZB...A.
      90 20 0A 00 00 00 2B 6F D9 06 B0 04 00 00 00 00  . ....+o........
      00 00 5C 00 5C 00 56 00 42 00 6F 00 78 00 53 00  ..\.\.V.B.o.x.S.
      76 00 72 00 5C 00 54 00 65 00 73 00 74 00 53 00  v.r.\.T.e.s.t.S.
      68 00 61 00 72 00 65 00 5C 00 6D 00 69 00 6D 00  h.a.r.e.\.m.i.m.
      69 00 6B 00 61 00 74 00 7A 00 2E 00 65 00 78 00  i.k.a.t.z...e.x.
      65 00 00 00 86 A5 BE BA 30 B5 9B D5 A8 CC 96 B1  e.......0.......
      EE 4F 89 30 02 00 00 00 85 00 00 00 35 00 00 00  .O.0........5...
      26 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00  &... ...........
      00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
      00 00 00 00 00 00 00 00 00 01 00 01 00 00 00 00  ................
      01 01 00 01 00 04 0F C8 00 00 00 00 01 00 01 01  ................
      01 01 00 01 00 00 00 01 00 00 00 00 00 00 00 00  ................
      01 00 8F FF FF FF 7F 01 01 00 01 00 00 00 89 30  ...............0
      02 00 01 00 01 00 01 00 00 87 68 00 00 03 00 0F  ..........h.....
      01 00 01 00 00 00 01 00 01 00 00 00 00 00 00 00  ................
      00 86 A5 BE BA 30 B5 9B D5 A8 CC 96 B1 EE 4F CC  .....0........O.
      A6 08 00 00                                      ....

al@MNESTRASHNO:~/docker_DeXRAY$ strings zabolelwe.klq.00000000_Kaspersky.out | head -1
She hailed from a very distant country, Nocturnal child of ancient times; 
She had no kin to greet her entry Not even skies with a welcome shine. 
And just the Nevas faithful sentry - The sphinx with an indented face - Under the blizzard, fierce and wintrys reminiscent of her birthplace. 
And when the tempest showers snowflakes Upon her shoulders, hair, and breast, Nocturnal Egypt wakes her heartache In the midst of northern fog and mist. My hometown, gray and distant, Its wind and chill, and gloom and rain, With faith - so unexplained and fervent - She had received as her domain. 
She fell in love with regal buildings, At rest in the stillness of the night. 
And peaceful cozy light in the windows Became one with her inner sight. She recognized its morning frown, Its mansions, lights, and snowy twirl. 
mireactf{bl0k_1s_a_t1m3l3ss_p3rs0n} This whole unfathomable

``` 
