@echo off
title WinRAR Password Cracker - by eu
color A
if not exist "C:\Program Files\7-Zip" (
	echo 7-Zip not installed! Make sure to install it in "C:\Program Files\7-Zip" in order for this to work!
	pause
	exit
)

echo.
set /p archive="Enter archive: "
if not exist "%archive%" (
	echo Archive couldn't be found! Try again!
	pause
	exit
)

echo.
set /p passlist="Enter Password List: "
if not exist "%passlist%" (
	echo Password List couldn't be found! Try again!
	pause
	exit
)

echo Cracking...
for /f %%a in (%passlist%) do (
	set pass=%%a
	call :attempt
)
echo Password couldn't be found!
pause
exit

:attempt
"C:\Program Files\7-Zip\7z.exe" x -p%pass% "%archive%" -o"Cracked WinRAR" -y >nul 2>&1
echo Attempt: %pass%
if /I %errorlevel% EQU 0 (
	echo Archive cracked succesfully!
	pause
	exit
)