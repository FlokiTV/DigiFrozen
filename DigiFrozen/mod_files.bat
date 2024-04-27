@echo off
move "winhttp.dll" "..\winhttp.dll"
move "doorstop_config.ini" "..\doorstop_config.ini"
start "" "..\valheim.exe"
:esperar
echo Esperar
timeout /t 1 /nobreak >nul
tasklist | find /i "valheim.exe" >nul && goto :esperar
move "..\winhttp.dll" "winhttp.dll"
move "..\doorstop_config.ini" "doorstop_config.ini" 