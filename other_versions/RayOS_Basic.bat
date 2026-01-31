@echo off
title RayOS Basic
color 04
chcp 65001 >nul
set battery=100
goto menu

echo No Internet
:menu
cls
if %battery% LEQ 0 goto problem
echo    Battery: %battery%%%										No Internet %time%
echo ========================================================================================================================
echo          Welcome to RayOS Basic
echo ========================================================================================================================
echo.
echo Task list:
echo.
echo [1] Calculator
echo [2] Date and Time
echo [3] Shut Down
echo.
set /p choice=Enter a task(1-3): 
if "%choice%"=="1" goto calculator
if "%choice%"=="2" goto datetime
if "%choice%"=="3" exit
echo.
echo Invalid choice! Try again.
pause
goto menu

:calculator
set /a battery=%battery%-1
cls
echo Calculator
echo.
set /p "expression=Enter expression: "
set /a result=%expression%
echo Result: %result%
pause
goto menu

:datetime
set /a battery=%battery%-1
cls
echo Date and Time
echo.
echo Current Date: %date%
echo Current Time: %time%
echo.
pause
goto menu

:problem
cls
color 0C
echo ========================================
echo        !! SYSTEM BATTERY FAILURE !!
echo ========================================
echo.
echo Your battery has run out.
echo Please recharge your system.
echo.
pause
exit