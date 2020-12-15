@echo off


REG ADD "HKCR\*\shell\Force Delete (Advanced)" /v Icon /t REG_SZ /d "C:\Program Files\JMP-Manager\Force-Delete-ADV\force-del.exe" /f
REG ADD "HKCR\*\shell\Force Delete (Advanced)\command" /ve /t REG_SZ /d "\"C:\Program Files\JMP-Manager\Force-Delete-ADV\force-del.exe\" \"%1\"" /f
:: adds force delete file (advanced) "right click" option

REG ADD "HKCR\Folder\shell\Force Delete (Advanced)" /v Icon /t REG_SZ /d "C:\Program Files\JMP-Manager\Force-Delete-ADV\force-del.exe" /f
REG ADD "HKCR\Folder\shell\Force Delete (Advanced)\command" /ve /t REG_SZ /d "\"C:\Program Files\JMP-Manager\Force-Delete-ADV\force-del.exe\" \"%1\"" /f
:: adds force delete folder (advanced) "right click" option


REG ADD "HKCR\*\shell\Force Delete (Standard)" /v Icon /t REG_SZ /d "C:\Program Files\JMP-Manager\Force-Delete-STAN\force-del.exe" /f
REG ADD "HKCR\*\shell\Force Delete (Standard)\command" /ve /t REG_SZ /d "\"C:\Program Files\JMP-Manager\Force-Delete-STAN\force-del.exe\" \"%1\"" /f
:: adds force delete file (standard) "right click" option

REG ADD "HKCR\Folder\shell\Force Delete (Standard)" /v Icon /t REG_SZ /d "C:\Program Files\JMP-Manager\Force-Delete-STAN\force-del.exe" /f
REG ADD "HKCR\Folder\shell\Force Delete (Standard)\command" /ve /t REG_SZ /d "\"C:\Program Files\JMP-Manager\Force-Delete-STAN\force-del.exe\" \"%1\"" /f
:: adds force delete folder (standard) "right click" option


REG ADD "HKCR\*\shell\Kill Running Tasks" /v Icon /t REG_SZ /d "C:\Program Files\JMP-Manager\Force-Kill\force-kill.exe" /f
REG ADD "HKCR\*\shell\Kill Running Tasks\command" /ve /t REG_SZ /d "\"C:\Program Files\JMP-Manager\Force-Kill\force-kill.exe\" \"%1\"" /f
:: adds force kill "right click" option

REG ADD "HKCR\Folder\shell\Kill Running Tasks" /v Icon /t REG_SZ /d "C:\Program Files\JMP-Manager\Force-Kill\force-kill.exe" /f
REG ADD "HKCR\Folder\shell\Kill Running Tasks\command" /ve /t REG_SZ /d "\"C:\Program Files\JMP-Manager\Force-Kill\force-kill.exe\" \"%1\"" /f
:: adds force kill "right click" option


REG ADD "HKCR\*\shell\Block Firewall Connection" /v Icon /t REG_SZ /d "C:\Program Files\JMP-Manager\Firewall-Blocker\blocker.exe" /f
REG ADD "HKCR\*\shell\Block Firewall Connection\command" /ve /t REG_SZ /d "\"C:\Program Files\JMP-Manager\Firewall-Blocker\blocker.exe\" \"%1\"" /f
:: adds firewall block "right click" option

REG ADD "HKCR\Folder\shell\Block Firewall Connection" /v Icon /t REG_SZ /d "C:\Program Files\JMP-Manager\Firewall-Blocker\blocker.exe" /f
REG ADD "HKCR\Folder\shell\Block Firewall Connection\command" /ve /t REG_SZ /d "\"C:\Program Files\JMP-Manager\Firewall-Blocker\blocker.exe\" \"%1\"" /f
:: adds firewall block "right click" option


REG ADD "HKCR\*\shell\Allow Firewall Connection" /v Icon /t REG_SZ /d "C:\Program Files\JMP-Manager\Firewall-Unblocker\unblocker.exe" /f
REG ADD "HKCR\*\shell\Allow Firewall Connection\command" /ve /t REG_SZ /d "\"C:\Program Files\JMP-Manager\Firewall-Unblocker\unblocker.exe\" \"%1\"" /f
:: adds firewall allow "right click" option

REG ADD "HKCR\Folder\shell\Allow Firewall Connection" /v Icon /t REG_SZ /d "C:\Program Files\JMP-Manager\Firewall-Unblocker\unblocker.exe" /f
REG ADD "HKCR\Folder\shell\Allow Firewall Connection\command" /ve /t REG_SZ /d "\"C:\Program Files\JMP-Manager\Firewall-Unblocker\unblocker.exe\" \"%1\"" /f
:: adds firewall allow "right click" option


REG ADD "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\Program Files\JMP-Manager\Firewall-Blocker\blocker.exe" /t REG_SZ /d "~ RUNASADMIN" /f
REG ADD "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\Program Files\JMP-Manager\Firewall-Unblocker\unblocker.exe" /t REG_SZ /d "~ RUNASADMIN" /f
:: tells the system to run certain programs as an admin


setup-assist.exe