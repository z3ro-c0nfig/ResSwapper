@echo off
title ResSwapper V2
REM ResSwapper V2
xcopy /s "C:\Program Files (x86)\ResSwapper\resolutions\2560x1440\GameUserSettings.ini" "C:\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient" /Y
cd C:\Program Files (x86)\ResSwapper\vbs
start donemsgv2.vbs