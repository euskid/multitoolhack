@echo off
title Multitool - by eu
chcp 65001 >nul
cd files
:start
echo.
echo.
echo.
ping localhost -n 2 >nul
echo [96m                 • ▌ ▄ ·. ▄• ▄▌▄▄▌  ▄▄▄▄▄▪  ▄▄▄▄▄            ▄▄▌      ▄▄▄▄·  ▄· ▄▌    ▄▄▄ .▄• ▄▌[0m
ping localhost -n 1 >nul
echo [36m                 ·██ ▐███▪█▪██▌██•  •██  ██ •██  ▪     ▪     ██•      ▐█ ▀█▪▐█▪██▌    ▀▄.▀·█▪██▌[0m
ping localhost -n 1 >nul
echo [36m                 ▐█ ▌▐▌▐█·█▌▐█▌██▪   ▐█.▪▐█· ▐█.▪ ▄█▀▄  ▄█▀▄ ██▪      ▐█▀▀█▄▐█▌▐█▪    ▐▀▀▪▄█▌▐█▌[0m
ping localhost -n 1 >nul
echo [34m                 ██ ██▌▐█▌▐█▄█▌▐█▌▐▌ ▐█▌·▐█▌ ▐█▌·▐█▌.▐▌▐█▌.▐▌▐█▌▐▌    ██▄▪▐█ ▐█▀·.    ▐█▄▄▌▐█▄█▌[0m
ping localhost -n 1 >nul
echo [34m                 ▀▀  █▪▀▀▀ ▀▀▀ .▀▀▀  ▀▀▀ ▀▀▀ ▀▀▀  ▀█▄▀▪ ▀█▄▀▪.▀▀▀     ·▀▀▀▀   ▀ •      ▀▀▀  ▀▀▀ [0m
ping localhost -n 1 >nul
echo.
echo.
echo.
:input
ping localhost -n 1 >nul
echo      [95m[1][0m [92mWindows Password Cracker[0m
ping localhost -n 1 >nul
echo      [95m[2][0m [92mWinRAR Cracker[0m
ping localhost -n 1 >nul
echo|set /p="[30m.[0m    [95mSelect: [0m"
choice /c 12 >nul
if /I "%errorlevel%" EQU "1" (
	start PasswordCracker.bat
	goto start
)
if /I "%errorlevel%" EQU "2" (
	start WinRARCracker.bat
	goto start
)