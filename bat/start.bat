if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit

@echo off
title ResSwapper

"C:C:\Program Files (x86)\ResSwapper\splashscreen\SplashScreen.exe"
PING localhost -n 2 >NUL
"C:\Program Files (x86)\ResSwapper\python\ResSwapper.py"

exit