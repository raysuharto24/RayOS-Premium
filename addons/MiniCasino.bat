@echo off
title Mini Casino
color 0A
chcp 65001 >nul

:home
cls
echo.
echo Mini Casino
echo.
echo Bet on a number from 1 to 20.
echo.
SET /A winner = %RANDOM% %% 20 + 1
echo.
set /p bet=Place your Bet: 
echo.
echo Lucky Winner: %winner%
echo.
if "%winner%"=="%bet%" (
echo You Won!
) else (
echo You Loose!
)
echo.
pause
goto home

rem --- END OF CODE ---