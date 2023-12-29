color 27
echo off
title Android Multi-Tools
:pontozero
cls
echo =======================================================================
echo.
echo                        Android Multi-Tools
echo.
echo.
echo Options:
echo.
echo (1) Formart                      (4) Reboot for Bootloader
echo (2) Reboot for system            (5) Open Terminal
echo (3) Reboot for fastboot          (6) Exit
echo.
echo Digite sua escolha:
 set /p "sclh=>"
echo =======================================================================
if %sclh% equ 1 (start fastboot.exe
fastboot erase data
fastboot erase cache
fastboot reboot
cls
pause
goto pontozero)
if %sclh% equ 2 (start fastboot.exe
fastboot reboot
cls
pause
goto pontozero)
if %sclh% equ 3 (adb reboot fastboot
cls
pause
goto pontozero)
if %sclh% equ 4 (adb reboot bootloader
cls
pause
goto pontozero)
if %sclh% equ 5 (start terminal.bat
cls
pause
goto pontozero)
if %sclh% equ 6 (exit)