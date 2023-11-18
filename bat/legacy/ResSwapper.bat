@echo off
title ResSwapper
color 4
REM ResSwapper

cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                Made by Kaasblokje
echo                                        YT: www.youtube.com/@echtkaasblokje
echo                                      DONATE: www.buymeacoffee.com/kaasblokje
echo ------------------------------------------------------------------------------------------------------------------------
pause

cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    WARNING!
echo                           USING STRETCHED RESOLUTIONS IS AGAINST THE FORTNITE TOS!
echo                               Swapping resolutions may RESET display settings!
echo                                  Also im NOT responsible for any damages!
echo                                     ARE YOU SURE YOU WANT TO CONTINUE?
echo ------------------------------------------------------------------------------------------------------------------------
pause

:game

cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                   1: Fortnite                                               2: Apex Legends (Coming Soon)
echo ------------------------------------------------------------------------------------------------------------------------
set/p input=">>> "
if %input% == 1 goto menu1
if %input% == 2 goto menu2

:menu2

cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                  Coming Soon...
echo ------------------------------------------------------------------------------------------------------------------------
pause
goto :game

:menu1

cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                 1: Swap Resolution                                                   2: Exit
echo                                                     0: Back
echo ------------------------------------------------------------------------------------------------------------------------
set/p input=">>> "
if %input% == 1 goto swap
if %input% == 2 goto exit
if %input% == 0 goto game

:swap

cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                  1: Recommended                                                     2: Custom
echo                                                     0: Back
echo ------------------------------------------------------------------------------------------------------------------------
set/p input=">>> "
if %input% == 1 goto recommended
if %input% == 2 goto custom
if %input% == 0 goto menu1

:exit
exit

:recommended

cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                  1: 1600x1080                                                      6: 1440x1080
echo                  2: 1280x1024                                                      7: 1024x768
echo                  3: 1400x1050                                                      8: 1024x1024
echo                  4: 1280x1080                                                      9: 1680x1080
echo                  5: 2560x1440                                                     10: 1920x1080
echo                                                     0: Back
echo ------------------------------------------------------------------------------------------------------------------------
set/p input=">>> "
if %input% == 0 goto swap
if %input% == 1 goto 1600x1080
if %input% == 2 goto 1280x1024
if %input% == 3 goto 1400x1050
if %input% == 4 goto 1280x1080
if %input% == 5 goto 2560x1440
if %input% == 6 goto 1440x1080
if %input% == 7 goto 1024x768
if %input% == 8 goto 1024x1024
if %input% == 9 goto 1680x1080
if %input% == 10 goto 1920x1080

:custom

cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                   Coming Soon
echo ------------------------------------------------------------------------------------------------------------------------
pause
goto :swap

start "C:\Program Files\ResSwapper\custom\filegen.bat"
cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                                       Please continue in the other window
echo                                                 Done? Hit enter
echo ------------------------------------------------------------------------------------------------------------------------
pause

cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                                       Whats the name of the custom resolution?
echo                                           Example: Stretched resolution
echo ------------------------------------------------------------------------------------------------------------------------
set/p input=">>> "

cd C:\Users\%username%\Desktop\ResSwapper\resolutions\custom
powershell -Command "(gc GameUserSettings.ini) -replace '200', '100' | Out-File -encoding ASCII GameUserSettings.ini"

:1680x1080

xcopy /s "C:\Program Files\ResSwapper\resolutions\1680x1080\GameUserSettings.ini" "C:\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient" /Y
cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                                           Resolution has been swapped!
echo ------------------------------------------------------------------------------------------------------------------------
cd C:\Users\%username%\Desktop\ResSwapper\vbs
start donemsg.vbs
pause
goto :recommended

:1024x1024

xcopy /s "C:\Program Files\ResSwapper\resolutions\1024x1024\GameUserSettings.ini" "C:\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient" /Y
cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                                           Resolution has been swapped!
echo ------------------------------------------------------------------------------------------------------------------------
cd C:\Users\%username%\Desktop\ResSwapper\vbs
start donemsg.vbs
pause
goto :recommended

:1280x1080

xcopy /s "C:\Program Files\ResSwapper\resolutions\1280x1080\GameUserSettings.ini" "C:\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient" /Y
cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                                           Resolution has been swapped!
echo ------------------------------------------------------------------------------------------------------------------------
cd C:\Users\%username%\Desktop\ResSwapper\vbs
start donemsg.vbs
pause
goto :recommended

:1400x1050

xcopy /s "C:\Program Files\ResSwapper\resolutions\1400x1050\GameUserSettings.ini" "C:\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient" /Y
cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                                           Resolution has been swapped!
echo ------------------------------------------------------------------------------------------------------------------------
cd C:\Users\%username%\Desktop\ResSwapper\vbs
start donemsg.vbs
pause
goto :recommended

:1600x1080

xcopy /s "C:\Program Files\ResSwapper\resolutions\1600x1080\GameUserSettings.ini" "C:\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient" /Y
cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                                           Resolution has been swapped!
echo ------------------------------------------------------------------------------------------------------------------------
cd C:\Program Files\ResSwapper\vbs
start donemsg.vbs
pause
goto :recommended

:1280x1024

xcopy /s "C:\Program Files\ResSwapper\resolutions\1280x1024\GameUserSettings.ini" "C:\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient" /Y
cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                                           Resolution has been swapped!
echo ------------------------------------------------------------------------------------------------------------------------
cd C:\Program Files\ResSwapper\vbs
start donemsg.vbs
pause
goto :recommended

:2560x1440

xcopy /s "C:\Program Files\ResSwapper\resolutions\2560x1440\GameUserSettings.ini" "C:\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient" /Y
cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                                           Resolution has been swapped!
echo ------------------------------------------------------------------------------------------------------------------------
cd C:\Users\%username%\Desktop\ResSwapper\vbs
start donemsg.vbs
pause
goto :recommended

:1440x1080

xcopy /s "C:\Program Files\ResSwapper\resolutions\1440x1080\GameUserSettings.ini" "C:\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient" /Y
cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                                           Resolution has been swapped!
echo ------------------------------------------------------------------------------------------------------------------------
cd C:\Program Files\ResSwapper\vbs
start donemsg.vbs
pause
goto :recommended

:1024x768

xcopy /s "C:\Program Files\ResSwapper\resolutions\1024x768\GameUserSettings.ini" "C:\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient" /Y
cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                                           Resolution has been swapped!
echo ------------------------------------------------------------------------------------------------------------------------
cd C:\Users\%username%\Desktop\ResSwapper\vbs
start donemsg.vbs
pause
goto :recommended

:1920x1080

xcopy /s "C:\Program Files\ResSwapper\resolutions\1920x1080\GameUserSettings.ini" "C:\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient" /Y
cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                                           Resolution has been swapped!
echo ------------------------------------------------------------------------------------------------------------------------
cd C:\Program Files\ResSwapper\vbs
start donemsg.vbs
pause
goto :recommended