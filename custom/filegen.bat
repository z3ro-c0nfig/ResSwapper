@echo off
title ResSwapper
color 4

cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                                     Whats gonna be the name of the custom resolution?
echo                                           Example: Stretched resolution
echo ------------------------------------------------------------------------------------------------------------------------
set/p input=">>> "

cd C:\Program Files (x86)\ResSwapper\resolutions\custom
mkdir %input%
cd C:\Program Files (x86)\ResSwapper\resolutions\%input%
copy con GameUserSettings.ini
cls
echo ------------------------------------------------------------------------------------------------------------------------
echo                                                    ResSwapper
echo ------------------------------------------------------------------------------------------------------------------------
echo                                         Custom GameUserSettings Created!
echo                                            Please close this window!
echo ------------------------------------------------------------------------------------------------------------------------
exit