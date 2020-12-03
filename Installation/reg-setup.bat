@echo off

REG ADD "HKCR\*\shell\Force Delete" /v Icon /t REG_SZ /d "C:\Program Files\Force-Delete\force-del.exe"
REG ADD "HKCR\*\shell\Force Delete\command" /ve /t REG_SZ /d "C:\Program Files\Force-Delete\force-del.exe %1"
:: adds file "right click" option

REG ADD "HKCR\Folder\shell\Force Delete" /v Icon /t REG_SZ /d "C:\Program Files\Force-Delete\force-del.exe"
REG ADD "HKCR\Folder\shell\Force Delete\command" /ve /t REG_SZ /d "C:\Program Files\Force-Delete\force-del.exe %1"
:: adds folder "right click" option

setup-assist.exe