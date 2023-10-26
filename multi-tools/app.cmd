color 27
echo off
@ start adb.exe
@ start fastboot.exe
for /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do if '.%%i.'=='.LocalDateTime.' set ldt=%%j
set ldt=%ldt:~0,4%-%ldt:~4,2%-%ldt:~6,2% %ldt:~8,2%:%ldt:~10,2%:%ldt:~12,6%
echo app aberto as %ldt% >> log_time.txt
:pontozero
cls
echo =======================================================================
echo.
echo            Multi-ferramentas do Android
echo.
echo.
echo (1) Formatar                      (2) Reiniciar
echo (3) Reiniciar Fastboot            (4) Reiniciar Bootloader
echo (5) Drives para tablet antigo     (6) Sair
echo.
echo Digite sua escolha:
 set /p "sclh=>"
echo ========================================================================
if %sclh% equ 1 (fastboot erase data
fastboot erase cache
start msg.vbs
echo [dispositivo formatado] >> log_use.txt
cls
pause
goto pontozero)
if %sclh% equ 2 (fastboot reboot
echo [dispositivo reiniciado pelo fastboot] >> log_use.txt
cls
pause
goto pontozero)
if %sclh% equ 3 (adb reboot fastboot
echo [dispositivo reiniciado para fastboot] >> log_use.txt
cls
pause
goto pontozero)
if %sclh% equ 4 (adb reboot bootloader
echo [dispositivo reiniciado para bootloader] >> log_use.txt
cls
pause
goto pontozero)
if %sclh% equ 5 (start driver.htm
[abriu site de drivers] >> log_use.txt
cls
pause
goto pontozero)
if %sclh% equ 6 (exit)