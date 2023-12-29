echo off
color 70
title Android4Hack
cd multi-tools
:loop
cls
echo ==================================================================
echo.
echo                        Android4Hack
echo.
echo.
echo Options:
echo        (1) scrcpy         (3) Android Multi-tools
echo        (2) gnirehtet      (4) sndcpy
echo                     (e) Exit
 set /p "choice=>"
echo ==================================================================
pause
if %choice% equ 1 (start scrcpy.exe
cls
goto loop)
if %choice% equ 2 (start gni.bat
cls
goto loop)
if %choice% equ 3 (start app.cmd
cls
goto loop)
if %choice% equ 4 (start snd.cmd
cls
goto loop)
if %choice% equ e (exit)