@echo off 
title Uninstall Gnbots :-( 
set arg1=%1 
IF NOT "%arg1%" == "uninstall"( 
    exit 
) 
set location =%cd% 
IF NOT EXIST "%location%\GnBots.exe" ( 
    exit 
) 
cd.. 
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\GnBots /f \nrmdir /S /Q %location% 
exit
