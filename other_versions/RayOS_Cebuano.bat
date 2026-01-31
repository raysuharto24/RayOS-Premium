@echo off
chcp 65001 >nul
title RayOS Cebuano
color 02
set battery=100

:menu
cls
if %battery% LEQ 0 goto problem
echo     Baterya: %battery%%%									   Walay Internet  %time%
echo ========================================================================================================================
echo.
echo 		       "    ____              ____  _____    ______     __                          "
echo 		       "   / __ \____ ___  __/ __ \/ ___/   / ____/__  / /_  __  ______ _____  ____ "
echo 		       "  / /_/ / __ `/ / / / / / /\__ \   / /   / _ \/ __ \/ / / / __ `/ __ \/ __ \"
echo 		       " / _, _/ /_/ / /_/ / /_/ /___/ /  / /___/  __/ /_/ / /_/ / /_/ / / / / /_/ /"
echo 		       "/_/ |_|\__,_/\__, /\____//____/   \____/\___/_.___/\__,_/\__,_/_/ /_/\____/ "
echo 		       "            /____/                                                          "
echo.
echo Mga sugo nga magamit:
echo.
echo [1] Pangita
echo [2] Kalkula
echo [3] Petsa
echo [4] Hulagway
echo [5] Bidyo
echo [6] Pahulay
echo.
choice /c 123456 /n /m "Isulat ang numero sa imong sugo (1-6): "
if errorlevel 6 exit
if errorlevel 5 goto videos
if errorlevel 4 goto photos
if errorlevel 3 goto date
if errorlevel 2 goto calculator
if errorlevel 1 goto search

:search
set /a battery=%battery%-3
if %battery% LEQ 0 goto problem
cls
echo     Baterya: %battery%%%									   Walay Internet  %time%
echo ========================================================================================================================
echo.
echo 					   "    ____                    _ __       "
echo 					   "   / __ \____ _____  ____ _(_) /_____ _"
echo 					   "  / /_/ / __ `/ __ \/ __ `/ / __/ __ `/"
echo 					   " / ____/ /_/ / / / / /_/ / / /_/ /_/ / "
echo 					   "/_/    \__,_/_/ /_/\__, /_/\__/\__,_/  "
echo 					   "                  /____/               "
echo.
set /p "searchquery=Isulat ang imong gipangita: "
if /i "%searchquery%"=="amahan namo" (
    goto prayer
) else (
    echo.
    echo Wala’y resulta nga nakit-an.
    echo.
)
echo Pindota ang bisan unsang yawe aron magpadayon. . .
pause >nul
goto menu

:calculator
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem
cls
echo     Baterya: %battery%%%									   Walay Internet  %time%
echo ========================================================================================================================
echo.
echo 				    "   ______      __           __      __            "
echo 				    "  / ____/___ _/ /______  __/ /___ _/ /_____  _____"
echo 				    " / /   / __ `/ / ___/ / / / / __ `/ __/ __ \/ ___/"
echo 				    "/ /___/ /_/ / / /__/ /_/ / / /_/ / /_/ /_/ / /    "
echo 				    "\____/\__,_/_/\___/\__,_/_/\__,_/\__/\____/_/     "
echo.
set /p "expr=Isulat ang imong ekspresyon: "
set /a result=%expr%
echo.
echo Resulta: %result%
echo.
echo Pindota ang bisan unsang yawe aron magpadayon. . .
pause >nul
goto menu

:date
set /a battery=%battery%-2
if %battery% LEQ 0 goto problem
cls
echo     Baterya: %battery%%%									   Walay Internet  %time%
echo ========================================================================================================================
echo.
echo 			  "    ____       __                               ____                 "
echo 			  "   / __ \___  / /__________ _   __  ______ _   / __ \_________ ______"
echo 			  "  / /_/ / _ \/ __/ ___/ __ `/  / / / / __ `/  / / / / ___/ __ `/ ___/"
echo 			  " / ____/  __/ /_(__  ) /_/ /  / /_/ / /_/ /  / /_/ / /  / /_/ (__  ) "
echo 			  "/_/    \___/\__/____/\__,_/   \__,_/\__, /   \____/_/   \__,_/____/  "
echo 			  "                                   /____/                            "
echo.
echo Karon nga oras:  %time%
echo Karon nga petsa: %date%
echo.
echo Pindota ang bisan unsang yawe aron magpadayon. . .
pause >nul
goto menu

:photos
set /a battery=%battery%-2
if %battery% LEQ 0 goto problem
cls
echo     Baterya: %battery%%%									   Walay Internet  %time%
echo ========================================================================================================================
echo.
echo 			"    __  ___               __  __      __                                "
echo 			"   /  |/  /___ _____ _   / / / /_  __/ /___ _____ __      ______ ___  __"
echo 			"  / /|_/ / __ `/ __ `/  / /_/ / / / / / __ `/ __ `/ | /| / / __ `/ / / /"
echo 			" / /  / / /_/ / /_/ /  / __  / /_/ / / /_/ / /_/ /| |/ |/ / /_/ / /_/ / "
echo 			"/_/  /_/\__, /\__,_/  /_/ /_/\__,_/_/\__,_/\__, / |__/|__/\__,_/\__, /  "
echo 			"       /____/                             /____/               /____/   "
echo.
echo.
echo Wala’y mga hulagway nga makita.
echo.
echo.
echo Pindota ang bisan unsang yawe aron magpadayon. . .
pause >nul
goto menu

:videos
set /a battery=%battery%-2
if %battery% LEQ 0 goto problem
cls
echo     Baterya: %battery%%%									   Walay Internet  %time%
echo ========================================================================================================================
echo.
echo 				   "    __  ___               _    ___     __         "
echo 				   "   /  |/  /___ _____ _   | |  / (_)___/ /__  ____ "
echo 				   "  / /|_/ / __ `/ __ `/   | | / / / __  / _ \/ __ \"
echo 				   " / /  / / /_/ / /_/ /    | |/ / / /_/ /  __/ /_/ /"
echo 				   "/_/  /_/\__, /\__,_/     |___/_/\__,_/\___/\____/ "
echo 				   "       /____/                                     "
echo.
echo.
echo Wala’y mga bidyo nga makita.
echo.
echo.
echo Pindota ang bisan unsang yawe aron magpadayon. . .
pause >nul
goto menu

:prayer
cls
if %battery% LEQ 0 goto problem

:: === Recharge Battery to 100 ===
set /a charge=100 - %battery%
set /a battery=%battery% + %charge%

echo     Baterya: %battery%%%									   Walay Internet  %time%
echo ========================================================================================================================
echo.
echo 			"    ___                    __                   _   __                    "
echo 			"   /   |  ____ ___  ____ _/ /_  ____ _____     / | / /___ _____ ___  ____ "
echo 			"  / /| | / __ `__ \/ __ `/ __ \/ __ `/ __ \   /  |/ / __ `/ __ `__ \/ __ \"
echo 			" / ___ |/ / / / / / /_/ / / / / /_/ / / / /  / /|  / /_/ / / / / / / /_/ /"
echo 			"/_/  |_/_/ /_/ /_/\__,_/_/ /_/\__,_/_/ /_/  /_/ |_/\__,_/_/ /_/ /_/\____/ "
echo.
echo.
echo Amahan namo nga anaa sa mga langit
echo Pagdaygon ang imong ngalan
echo Umabot kanamo ang imong gingharian
echo Matuman ang imong pagbuot
echo Dinhi sa yuta maingon sa langit
echo.
echo Ang kalan-on namo sa matag adlaw
echo Ihatag kanamo karong adlawa
echo Ug pasayloa kami sa among mga sala
echo Ingon nga nagapasaylo kami sa mga nakasala kanamo
echo.
echo Ug dili mo kami itugyan sa panulay
echo Hinunoa luwasa kami sa dautan.
echo Amen.
echo.
echo.
pause >nul
goto menu

:problem
cls
color 02
echo.
echo ! PROBLEMA SA BATERYA !
echo.
echo.
echo Naubos na ang imong baterya!
echo Palihug i-charge ang imong device aron magpadayon.
echo.
echo Imong Baterya: %battey%%%
echo.
echo Karon nga oras:  %time%
echo Karon nga petsa: %date%
echo.
echo Pindota ang bisan unsang yawe aron mopahuway ang sistema. . .
pause >nul
exit

rem ====== END OF CODE ======