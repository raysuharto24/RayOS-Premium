@echo off
title Mini Casino
color 0A
chcp 65001 >nul
rem Error restart area.
:reset
set /a balance=1000
goto home

:home
cls
echo.
echo Mini Casino
echo.
echo Your balance is %balance% how much do you want to bet?
set /p bet_amount=
:get_input
rem Check if input is empty
if "%bet_amount%"=="" (
    echo Err: String cant be empty try again.
    set /p bet_amount=
    goto get_input
)
rem Check if input is a int.
echo %bet_amount% | findstr /r "^[0-9][0-9]*$" >nul
if %errorlevel% neq 0 (
    echo Err: "%bet_amount%" is not a int.
    set /p bet_amount=
    goto get_input
)
rem Check if bet is within balance.
if %bet_amount% gtr %balance% (
    echo Err: bet to large balance.
    pause
    goto home
)
rem End of first batch of checks.
echo.
echo Bet on a number from 1 to 20.
set /A winner=%RANDOM% %% 20 + 1
set /p bet=Place your bet: 
:get_bet
rem Check if input is empty.
if "%bet%"=="" (
    echo Err: empty input.
    set /p bet=Place your bet:
    goto get_bet
)
rem Check if input int.
echo %bet% | findstr /r "^[0-9][0-9]*$" >nul
if %errorlevel% neq 0 (
    echo Err: "%bet%" is not a valid number.
    set /p bet=Place your bet:
    goto get_bet
)
rem Check if input in range.
if %bet% lss 1 (
    echo Err: number must be between 1 and 20.
    set /p bet=Place your bet:
    goto get_bet
)
if %bet% gtr 20 (
    echo Err: number must be between 1 and 20.
    set /p bet=Place your bet:
    goto get_bet
)

echo.
echo Lucky Winner: %winner%
echo.
rem Determine win/lose.
if "%winner%"=="%bet%" (
    echo You Won!
    set /a balance=balance+bet_amount
    echo New balance: %balance%
) else (
    echo You Lose!
    set /a balance=balance-bet_amount
    echo New balance: %balance%
)
if %balance% leq 0 (
    echo.
    echo Balance to low.
    pause
    goto reset
)
rem Error free restart area.
echo.
pause
goto home
rem --- END OF CODE ---
