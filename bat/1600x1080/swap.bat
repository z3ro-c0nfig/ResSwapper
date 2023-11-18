@echo off
title ResSwapper v2
REM ResSwapper v2
xcopy /s "C:\Program Files (x86)\ResSwapper\resolutions\1600x1080\GameUserSettings.ini" "C:\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient" /Y
cd C:\Program Files (x86)\ResSwapper\vbs
start donemsgv2.vbs