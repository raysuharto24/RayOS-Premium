@echo off
title Minecraft 2D (Batch Edition)
chcp 65001 >nul
setlocal enabledelayedexpansion

:: --- CONFIG ---
set width=50
set height=12

:: --- INITIALIZE MAP ---
for /l %%y in (1,1,%height%) do (
    set "row="
    for /l %%x in (1,1,%width%) do (
        set "row=!row!."
    )
    set "map%%y=!row!"
)

:: --- PLAYER POSITION ---
set px=25
set py=6

:game
cls
echo   "___  ____                            __ _   "
echo   "|  \/  (_)                          / _| |  "
echo   "| .  . |_ _ __   ___  ___ _ __ __ _| |_| |_ "
echo   "| |\/| | | '_ \ / _ \/ __| '__/ _` |  _| __|"
echo   "| |  | | | | | |  __/ (__| | | (_| | | | |_ "
echo   "\_|  |_/_|_| |_|\___|\___|_|  \__,_|_|  \__|"
echo.

:: DRAW MAP
for /l %%y in (1,1,%height%) do (
    set "row=!map%%y!"
    if %%y==%py% (
        set /a left=%px%-1
        set "before=!row:~0,%left%!"
        set "after=!row:~%px%!"
        set "row=!before!O!after!"
    )
    echo !row!
)

echo.
echo Controls:
echo W A S D = Move
echo R = Place block (#)
echo X = Dig (turns to X)
echo Q = Quit
echo ==================================================
choice /c wasdrxq /n >nul
set key=%errorlevel%

if %key%==1 set /a py-=1
if %key%==2 set /a px-=1
if %key%==3 set /a py+=1
if %key%==4 set /a px+=1
if %key%==5 call :placeBlock
if %key%==6 call :removeBlock
if %key%==7 exit

:: Keep player inside map
if %px% lss 1 set px=1
if %px% gtr %width% set px=%width%
if %py% lss 1 set py=1
if %py% gtr %height% set py=%height%

goto game

:: --- PLACE BLOCK SUBROUTINE ---
:placeBlock
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!#!after!"
set "map%py%=!row!"
goto :eof

:: --- REMOVE BLOCK SUBROUTINE ---
:removeBlock
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!X!after!"
set "map%py%=!row!"
goto :eof

