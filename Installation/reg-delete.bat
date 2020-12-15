@echo off


REG DELETE "HKCR\*\shell\Force Delete (Advanced)" /f
:: removes force delete file (advanced) "right click" option

REG DELETE "HKCR\Folder\shell\Force Delete (Advanced)" /f
:: removes force delete folder (advanced) "right click" option

REG DELETE "HKCR\*\shell\Force Delete (Standard)" /f
:: removes force delete file (standard) "right click" option

REG DELETE "HKCR\Folder\shell\Force Delete (Standard)" /f
:: removes force delete folder (standard) "right click" option

REG DELETE "HKCR\*\shell\Kill Running Tasks" /f
:: removes force kill "right click" option

REG DELETE "HKCR\Folder\shell\Kill Running Tasks" /f
:: removes force kill "right click" option

REG DELETE "HKCR\*\shell\Block Firewall Connection" /f
:: removes firewall block "right click" option

REG DELETE "HKCR\Folder\shell\Block Firewall Connection" /f
:: removes firewall block "right click" option

REG DELETE "HKCR\*\shell\Allow Firewall Connection" /f
:: removes firewall allow "right click" option

REG DELETE "HKCR\Folder\shell\Allow Firewall Connection" /f
:: removes firewall allow "right click" option

REG DELETE "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\Program Files\JMP-Manager\Firewall-Blocker\blocker.exe" /f
REG DELETE "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\Program Files\JMP-Manager\Firewall-Unblocker\unblocker.exe" /f
:: removes admin rights to deleted files