echo off
color 70
:loop
cls
echo ==================================================================
echo.
echo                        Android4Hack
echo.
echo.
echo Options:
echo (1) scrcpy         (3) Android Multi-tools
echo (2) gnirehtet      (4) Donwload Mode
 set /p "choice=>"
echo ==================================================================
pause
if %choice% equ 1 (cd 1
start scrcpy
cls
goto loop)
if %choice% equ 2 (cd 2
)