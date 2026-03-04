@echo off
title RayOS Premium
chcp 65001 >nul
set battery=100
setlocal enabledelayedexpansion
:: --- LENGTH ---
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
goto login

rem ==============================================================================
rem   Welcome to RayOS Premium,
rem        The only released version of RayOS is finally here. Also,it now comes
rem   with six languages so you can select whatever language you want the system.
rem   Have fun using the PREMIUM version of RayOS.
rem                                                        -Czian Macrae Valiente
rem                                                             ( Developer )
rem ==============================================================================

:login
title RayOS Premium
color 17
cls
echo.
echo       Please Login
echo.
echo Username: Administrator
set /p password=Password: 
rem Change Password here:
if "%password%"=="Password" goto langsetup 
if "%password%"=="Lite" goto litemode
echo.
echo Wrong password! Try again.
pause
cls
goto login

:langsetup
title RayOS Premium
color 17
chcp 65001
cls
if %battery% LEQ 0 goto problem-eng
echo    Battery: %battery%%%										No Internet %time%
echo ========================================================================================================================
echo.
echo 			"______            _____ _____  ______                   _                 "
echo 			"| ___ \          |  _  /  ___| | ___ \                 (_)                "
echo 			"| |_/ /__ _ _   _| | | \ `--.  | |_/ / __ ___ _ __ ___  _ _   _ _ __ ___  "
echo 			"|    // _` | | | | | | |`--. \ |  __/ '__/ _ \ '_ ` _ \| | | | | '_ ` _ \ "
echo 			"| |\ \ (_| | |_| \ \_/ /\__/ / | |  | | |  __/ | | | | | | |_| | | | | | |"
echo 			"\_| \_\__,_|\__, |\___/\____/  \_|  |_|  \___|_| |_| |_|_|\__,_|_| |_| |_|"
echo 			"             __/ |                                                        "
echo 			"            |___/                                                         "
echo.
echo Select a language:
echo.
echo [1]  English
echo [2]  Dutch
echo [3]  Filipino
echo [4]  French
echo [5]  German
echo [6]  Indonesian
echo [7]  Italian
echo [8]  Portuguese
echo [9]  Russian
echo [10] Spanish
echo.
set /p lang=Enter choice (1-10): 
if "%lang%"=="1" set language=English & goto desktop-eng
if "%lang%"=="2" set language=Dutch & goto desktop-du
if "%lang%"=="3" set language=Filipino & goto desktop-fil
if "%lang%"=="4" set language=French & goto desktop-fr
if "%lang%"=="5" set language=German & goto desktop-ger
if "%lang%"=="6" set language=Indonesian & goto desktop-ind
if "%lang%"=="7" set language=Italian & goto desktop-it
if "%lang%"=="8" set language=Portuguese & goto desktop-pt
if "%lang%"=="9" set language=Russian & goto desktop-ru
if "%lang%"=="10" set language=Spanish & goto desktop-sp
echo Invalid choice! Try again.
pause
goto langsetup

rem === ENGLISH ===

:desktop-eng
title RayOS Premium
color 02
cls
if %battery% LEQ 0 goto problem-eng
echo    Battery: %battery%%%									       No Internet  %time%
echo ========================================================================================================================
echo.
echo 		    "    ____              ____  _____    ____                      _               "
echo 		    "   / __ \____ ___  __/ __ \/ ___/   / __ \________  ____ ___  (_)_  ______ ___ "
echo 		    "  / /_/ / __ `/ / / / / / /\__ \   / /_/ / ___/ _ \/ __ `__ \/ / / / / __ `__ \"
echo 		    " / _, _/ /_/ / /_/ / /_/ /___/ /  / ____/ /  /  __/ / / / / / / /_/ / / / / / /"
echo 		    "/_/ |_|\__,_/\__, /\____//____/  /_/   /_/   \___/_/ /_/ /_/_/\__,_/_/ /_/ /_/ "
echo 		    "            /____/                                                             "
echo.
echo Tasks:
echo.
echo [1] Search
echo [2] Calculator
echo [3] Date
echo [4] Media
echo [5] Games
echo [6] File Explorer
echo [7] Settings
echo [8] Power
echo.
set /p engtask=Enter choice(1-8): 
if "%engtask%"=="1" goto search-eng
if "%engtask%"=="2" goto calculator-eng
if "%engtask%"=="3" goto date-eng
if "%engtask%"=="4" goto media-eng
if "%engtask%"=="5" goto games-eng
if "%engtask%"=="6" goto files-eng
if "%engtask%"=="7" goto settings-eng
if "%engtask%"=="8" goto power-eng
echo.
echo Invalid choice! Try again.
pause
goto desktop-eng

:search-eng
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-eng
cls
echo.
echo Search Engine
echo.
echo.
set /p engsearchquery=Search: 
if /i "%engsearchquery%"=="hello" (
	echo.
    echo No result
	echo.
) else (
	echo.
    echo No Result
	echo.
)
pause
goto desktop-eng

:files-eng
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-eng
cls
echo.
echo File Explorer
echo.
echo DIR Photos                  2 files
echo DIR Videos                  1 files
echo DIR Audios                  0 files
echo DIR Messages                1 files
echo DIR Games                   1 files
echo.
echo Read ONLY page is enabled.
echo.
pause
goto desktop-eng

:calculator-eng
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-eng
cls
echo Calculator
echo.
set /p "engexpression=Enter expression: "
set /a engresult=%engexpression%
echo.
echo Result: %engresult%
echo.
pause
goto desktop-eng

:date-eng
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-eng
cls
echo.
echo Date
echo.
echo Current Date: %date%
echo Current Time: %time%
echo.
pause
goto desktop-eng

:media-eng
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-eng
cls
echo Media
echo.
echo [1] Photos
echo [2] Videos
echo [3] Music Player
echo [4] Messages
echo [5] Exit
echo.
set /p engmedia=Enter choice (1-5): 
if "%engmedia%"=="1" goto photos-eng
if "%engmedia%"=="2" goto videos-eng
if "%engmedia%"=="3" goto music-eng
if "%engmedia%"=="4" goto messages-eng
if "%engmedia%"=="5" goto desktop-eng
echo.
echo Invalid choice! Try again.
pause
goto media-eng

:photos-eng
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-eng
cls
echo.
echo Photos
echo.
echo [1] dog.png
echo [2] cat.png
echo [3] Exit
echo.
set /p engphoto=Open Picture(1-3): 
if "%engphoto%"=="1" goto dogpic-eng
if "%engphoto%"=="2" goto catpic-eng
if "%engphoto%"=="3" goto desktop-eng
echo Invalid choice! Try again.
pause
goto photos-eng

:dogpic-eng
cls
echo.
echo File Name: dog.png
echo.
echo "..............................."
echo "..........+++-..--++-.........."
echo ".....++-+............++++-....."
echo "...++--+-.............+--++...."
echo "..+----#..--......--..+----#..."
echo ".+----++..##+....-##-.++----+-."
echo "-+----+................#----+-."
echo ".-+---+......####-.....#---++.."
echo "....++-..-...-##-...--.-+--...."
echo "......--..++-+##+-+#-.-+......."
echo ".......-+....+--+-...--........"
echo ".........-++-.--..++-.........."
echo "..............................."
echo.
pause
goto photos-eng

:catpic-eng
cls
echo.
echo File Name: cat.png
echo.
echo "....--...................--...."
echo "..-#+-++-.............-++-+#-.."
echo "..-#++--+#############+--++#-.."
echo "..-#+++-----+--+--+-----+++#-.."
echo "...#-----------+---+-------#..."
echo "..-+-----------+-----------+-.."
echo ".-#+------.--+-+-+...------+#-."
echo ".#+-++#+++#+-+++++-++####++-++."
echo ".#++-++-+##+#++-+-#+##+-++-++#."
echo ".#+------+---+---+---+------++."
echo ".-#--++-----.#---#.-----++--#-."
echo "..-#+---+-.....#.....-+---+#-.."
echo "....+++++-.-+##.##+-.-+++++...."
echo ".....--++++++-----++++++--....."
echo "..............................."
echo.
pause
goto photos-eng

:videos-eng
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-eng
cls
echo.
echo Videos
echo.
echo [1] movingball.vid
echo [2] Exit
echo.
set /p engvideo=Open a Video(1-2): 
if "%engvideo%"=="1" goto animation-eng
if "%engvideo%"=="2" goto desktop-eng
echo Invalid choice! Try again.
pause
goto videos-eng

:animation-eng
cls
echo.
echo Filename: movingball.vid
echo.
echo O
ping -n 2 localhost >nul
cls
echo.
echo Filename: movingball.vid
echo.
echo  O
ping -n 2 localhost >nul
cls
echo.
echo Filename: movingball.vid 
echo.
echo   O
ping -n 2 localhost >nul
cls 
echo.
echo Filename: movingball.vid
echo.
echo Video has ended
pause >nul
goto videos-eng

:music-eng
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-eng
cls
echo.
echo Music Player
echo.
echo No audio files saved.
echo.
pause
goto desktop-eng

:messages-eng
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-eng
cls
echo.
echo Messages
echo.
echo [ 1 Message Notification ] 
echo.
pause >nul
echo.
echo ==================================
echo From: RayOS Premium Developers
echo Subject: Welcome
echo ==================================
echo Welcome to RayOS Premium
echo We are glad you are using our
echo operating system. Enjoy exploring
echo your new easy to use tool.
echo ==================================
echo.
pause
goto desktop-eng

:games-eng
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-eng
cls
echo.
echo What do you want to play?
echo.
echo [1] Minecraft 2D
echo [2] Exit
echo.
set /p enggamechoice=Enter your choice (1-2): 

if "%enggamechoice%"=="1" goto gameplay-eng
if "%enggamechoice%"=="2" goto desktop-eng
echo Invalid choice! Try again.
pause
goto desktop-eng

:gameplay-eng
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
if %key%==7 goto games-eng
:: Keep player inside map
if %px% lss 1 set px=1
if %px% gtr %width% set px=%width%
if %py% lss 1 set py=1
if %py% gtr %height% set py=%height%
goto gameplay-eng
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

:settings-eng
if %battery% LEQ 0 goto problem-eng
cls
echo.
echo Settings
echo.
echo [1] Design
echo [2] Network
echo [3] System Info
echo [4] Change Language
echo [5] Return to Desktop
echo.
set /p settingeng=Enter choice (1-5): 
if "%settingeng%"=="1" goto design-eng
if "%settingeng%"=="2" goto network-eng
if "%settingeng%"=="3" goto info-eng
if "%settingeng%"=="4" goto langsetup
if "%settingeng%"=="5" goto desktop-eng
echo Invalid choice! Try again.
pause
goto settings-eng 

:design-eng
cls
echo.
echo Design
echo.
echo Background Color: Black
echo Font Color: Green
echo.
pause
goto settings-eng

:network-eng
cls
echo.
echo Network Configuration
echo.
echo Status: Not Connected
echo.
pause >nul
goto settings-eng

:info-eng
cls
echo.
echo System Information
echo.
echo Operating System: RayOS Premium
echo Device Name: unknown
echo Device Type: unknown
echo.
pause
goto settings-eng

:power-eng
cls
echo Power
echo.
echo [1] Shut Down
echo [2] Log Out
echo [3] Sleep
echo [4] Lite Mode
echo [5] Exit
echo.
set /p engpower=Enter choice (1-5): 
if "%engpower%"=="1" exit
if "%engpower%"=="2" goto login
if "%engpower%"=="3" goto sleep-eng
if "%engpower%"=="4" goto litemode
if "%engpower%"=="5" goto desktop-eng
echo.
echo Invalid choice! Try again.
pause
goto desktop-eng

:sleep-eng
cls
echo.
echo Sleep Mode
echo.
echo Battery: %battery%
echo.
pause
goto power-eng

:problem-eng
cls
echo.
echo ! BATTERY PROBLEM !
echo.
echo.
echo Your battery has run out!
echo Current battery level: %battery%%%
echo.
pause
exit

rem === FILIPINO ===

:desktop-fil
title RayOS Premium
color 02
cls
if %battery% LEQ 0 goto problem-fil
echo    Baterya: %battery%%%									   Walang Internet  %time%
echo ========================================================================================================================
echo.
echo 		    "    ____              ____  _____    ____                      _               "
echo 		    "   / __ \____ ___  __/ __ \/ ___/   / __ \________  ____ ___  (_)_  ______ ___ "
echo 		    "  / /_/ / __ `/ / / / / / /\__ \   / /_/ / ___/ _ \/ __ `__ \/ / / / / __ `__ \"
echo 		    " / _, _/ /_/ / /_/ / /_/ /___/ /  / ____/ /  /  __/ / / / / / / /_/ / / / / / /"
echo 		    "/_/ |_|\__,_/\__, /\____//____/  /_/   /_/   \___/_/ /_/ /_/_/\__,_/_/ /_/ /_/ "
echo 		    "            /____/                                                             "
echo.
echo Mga Gawain:
echo.
echo [1] Maghanap
echo [2] Kalkulador
echo [3] Petsa
echo [4] Midya 
echo [5] Mga Laro
echo [6] Tagapagsiyasat ng File
echo [7] Mga Setting
echo [8] Power
echo.
set /p filtask=Ilagay ang iyong pili (1-8): 
if "%filtask%"=="1" goto search-fil
if "%filtask%"=="2" goto calculator-fil
if "%filtask%"=="3" goto date-fil
if "%filtask%"=="4" goto media-fil
if "%filtask%"=="5" goto games-fil
if "%filtask%"=="6" goto files-fil
if "%filtask%"=="7" goto settings-fil
if "%filtask%"=="8" goto power-fil
echo.
echo Mali ang pagpili! Subukan muli.
echo.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto desktop-fil

:search-fil
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fil
cls
echo.
echo Maghanap
echo.
echo.
set /p filsearchquery=Hanapin: 
if /i "%filsearchquery%"=="hello" (
	echo.
    echo Walang resulta
	echo.
) else (
	echo.
    echo Walang resulta
	echo.
)
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto desktop-fil

:files-fil
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fil
cls
echo.
echo Tagapagsiyasat ng File
echo.
echo DIR Larawan                 2 files
echo DIR Videos                  1 files
echo DIR Audio                   0 files
echo DIR Mensahe                 1 files
echo DIR Mga Laro                1 files
echo.
echo Naka-enable ang Basahin LAMANG na pahina.
echo.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto desktop-fil

:calculator-fil
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fil
cls
echo Calculator
echo.
set /p "filexpression=Ilagay ang ekspresyon: "
set /a filresult=%filexpression%
echo.
echo Resulta: %filresult%
echo.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto desktop-fil

:date-fil
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fil
cls
echo.
echo Petsa
echo.
echo Kasalukuyang Petsa: %date%
echo Kasalukuyang Oras:  %time%
echo.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto desktop-fil

:media-fil
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fil
cls
echo Midya
echo.
echo [1] Mga Larawan
echo [2] Mga Bidyo
echo [3] Tagpatugtog ng Musika
echo [4] Mga Mensahe
echo [5] Lumabas
echo.
set /p filmedia=Ilagay ang iyong pili (1-5): 
if "%filmedia%"=="1" goto photos-fil
if "%filmedia%"=="2" goto videos-fil
if "%filmedia%"=="3" goto music-fil
if "%filmedia%"=="4" goto messages-fil
if "%filmedia%"=="5" goto desktop-fil
echo.
echo Mali ang pagpili! Subukan muli.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto media-fil

:photos-fil
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fil
cls
echo.
echo Mga Larawan
echo.
echo [1] aso.png
echo [2] pusa.png
echo [3] Lumabas
echo.
set /p filphoto=Open Picture(1-3): 
if "%filphoto%"=="1" goto dogpic-fil
if "%filphoto%"=="2" goto catpic-fil
if "%filphoto%"=="3" goto desktop-fil
echo Mali ang pinili! Subukang muli.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto photos-fil

:dogpic-fil
cls
echo.
echo File Name: aso.png
echo.
echo "..............................."
echo "..........+++-..--++-.........."
echo ".....++-+............++++-....."
echo "...++--+-.............+--++...."
echo "..+----#..--......--..+----#..."
echo ".+----++..##+....-##-.++----+-."
echo "-+----+................#----+-."
echo ".-+---+......####-.....#---++.."
echo "....++-..-...-##-...--.-+--...."
echo "......--..++-+##+-+#-.-+......."
echo ".......-+....+--+-...--........"
echo ".........-++-.--..++-.........."
echo "..............................."
echo.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto photos-fil

:catpic-fil
cls
echo.
echo File Name: pusa.png
echo.
echo "....--...................--...."
echo "..-#+-++-.............-++-+#-.."
echo "..-#++--+#############+--++#-.."
echo "..-#+++-----+--+--+-----+++#-.."
echo "...#-----------+---+-------#..."
echo "..-+-----------+-----------+-.."
echo ".-#+------.--+-+-+...------+#-."
echo ".#+-++#+++#+-+++++-++####++-++."
echo ".#++-++-+##+#++-+-#+##+-++-++#."
echo ".#+------+---+---+---+------++."
echo ".-#--++-----.#---#.-----++--#-."
echo "..-#+---+-.....#.....-+---+#-.."
echo "....+++++-.-+##.##+-.-+++++...."
echo ".....--++++++-----++++++--....."
echo "..............................."
echo.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto photos-fil

:videos-fil
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fil
cls
echo.
echo Mga Video
echo.
echo [1] gumagalawnabola.vid
echo [2] Lumabas
echo.
set /p filvideo=Mamili ng Video(1-2): 
if "%filvideo%"=="1" goto animation-fil
if "%filvideo%"=="2" goto desktop-fil
echo Mali ang pinili! Subukang muli.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto videos-fil

:animation-fil
cls
echo.
echo Filename: gumagalawnabola.vid
echo.
echo O
ping -n 2 localhost >nul
cls
echo.
echo Filename: gumagalawnabola.vid
echo.
echo  O
ping -n 2 localhost >nul
cls
echo.
echo Filename: gumagalawnabola.vid 
echo.
echo   O
ping -n 2 localhost >nul
cls 
echo.
echo Filename: gumagalawnabola.vid
echo.
echo Natapos na ang Video.
echo.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto videos-fil

:music-fil
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fil
cls
echo.
echo Musika
echo.
echo Walang naka-save na mga audio file.
echo.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto desktop-fil

:messages-fil
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fil
cls
echo.
echo Mga Mensahe
echo.
echo [ 1 Notipikasyon ng Mensahe ]
echo.
pause >nul
echo.
echo ==========================================
echo Mula: RayOS Premium Developers
echo Paksa: Maligayang Pagdating
echo ==========================================
echo Maligayang pagdating sa RayOS Premium!
echo Natutuwa kaming ginagamit mo ang aming
echo operating system. Masiyahan sa paggamit
echo ng iyong bagong madaling gamitin na tool.
echo ==========================================
echo.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto desktop-fil

:games-fil
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fil
cls
echo.
echo Ano ang gusto mong laruin?
echo.
echo [1] Minecraft 2D
echo [2] Lumabas
echo.
set /p filgamechoice=Ilagay ang pinili mo (1-2): 
if "%filgamechoice%"=="1" goto gameplay-fil
if "%filgamechoice%"=="2" goto desktop-fil
echo Mali ang pinili. Subukan muli
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto desktop-fil

:gameplay-fil
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
echo Mga Kontrol:
echo W A S D = Gumalaw
echo R = Maglagay ng block (#)
echo X = Maghukay (gawing X)
echo Q = Umalis
echo ==================================================
choice /c wasdrxq /n >nul
set key=%errorlevel%
if %key%==1 set /a py-=1
if %key%==2 set /a px-=1
if %key%==3 set /a py+=1
if %key%==4 set /a px+=1
if %key%==5 call :placeBlockfil
if %key%==6 call :removeBlockfil
if %key%==7 goto games-fil
:: Keep player inside map
if %px% lss 1 set px=1
if %px% gtr %width% set px=%width%
if %py% lss 1 set py=1
if %py% gtr %height% set py=%height%
goto gameplay-fil
:placeBlockfil
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!#!after!"
set "map%py%=!row!"
goto :eof
:removeBlockfil
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!X!after!"
set "map%py%=!row!"
goto :eof

:settings-fil
if %battery% LEQ 0 goto problem-fil
cls
echo.
echo Mga Setting
echo.
echo [1] Disenyo
echo [2] Network
echo [3] Impormasyon ng Sistema
echo [4] Palitan ang Wika
echo [5] Bumalik sa Desktop
echo.
set /p settingfil=Ilagay ang pinili mo (1-5): 
if "%settingfil%"=="1" goto design-fil
if "%settingfil%"=="2" goto network-fil
if "%settingfil%"=="3" goto info-fil
if "%settingfil%"=="4" goto langsetup
if "%settingfil%"=="5" goto desktop-fil
echo Maling pagpili! Subukang muli.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto settings-fil

:design-fil
cls
echo.
echo Disenyo
echo.
echo Kulay ng Background: Itim
echo Kulay ng Font: Berde
echo.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto settings-fil

:network-fil
cls
echo.
echo Konpigurasyon ng Network
echo.
echo Katayuan: Hindi Nakakonekta
echo.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto settings-fil

:info-fil
cls
echo.
echo Impormasyon ng Sistema
echo.
echo Operating System: RayOS Premium
echo Pangalan ng Device: unknown
echo Uri ng Device: unknown
echo.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto settings-fil

:power-fil
cls
echo Power
echo.
echo [1] Patayin
echo [2] Log Out
echo [3] Tulog (Sleep)
echo [4] Lite Mode
echo [5] Lumabas
echo.
set /p filpower=Ilagay ang iyong pili (1-5): 
if "%filpower%"=="1" exit
if "%filpower%"=="2" goto login
if "%filpower%"=="3" goto sleep-fil
if "%filpower%"=="4" goto litemode
if "%filpower%"=="5" goto desktop-fil
echo.
echo Mali ang pagpili! Subukan muli.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto desktop-fil


:sleep-fil
cls
echo.
echo Tulog na Mode
echo.
echo Baterya: %battery%
echo.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
goto power-fil

:problem-fil
cls
echo.
echo ! PROBLEMA SA BATERYA !
echo.
echo.
echo Ubos na ang iyong baterya!
echo Kasalukuyang antas ng baterya: %battery%%%
echo.
echo Pindutin ang anumang key upang magpatuloy . . .
pause >nul
exit

rem === INDONESIAN ===

:desktop-ind
title RayOS Premium
color 02
cls
if %battery% LEQ 0 goto problem-ind
echo    Baterai: %battery%%%									    Tiada Internet  %time%
echo ========================================================================================================================
echo.
echo 		    "    ____              ____  _____    ____                      _               "
echo 		    "   / __ \____ ___  __/ __ \/ ___/   / __ \________  ____ ___  (_)_  ______ ___ "
echo 		    "  / /_/ / __ `/ / / / / / /\__ \   / /_/ / ___/ _ \/ __ `__ \/ / / / / __ `__ \"
echo 		    " / _, _/ /_/ / /_/ / /_/ /___/ /  / ____/ /  /  __/ / / / / / / /_/ / / / / / /"
echo 		    "/_/ |_|\__,_/\__, /\____//____/  /_/   /_/   \___/_/ /_/ /_/_/\__,_/_/ /_/ /_/ "
echo 		    "            /____/                                                             "
echo.
echo Tugas:
echo.
echo [1] Cari
echo [2] Kalkulator
echo [3] Tanggal
echo [4] Media
echo [5] Permainan
echo [6] Penjelajah File
echo [7] Pengaturan
echo [8] Daya
echo.
set /p indtask=Masukkan pilihan (1-8): 
if "%indtask%"=="1" goto search-ind
if "%indtask%"=="2" goto calculator-ind
if "%indtask%"=="3" goto date-ind
if "%indtask%"=="4" goto media-ind
if "%indtask%"=="5" goto games-ind
if "%indtask%"=="6" goto files-ind
if "%indtask%"=="7" goto settings-ind
if "%indtask%"=="8" goto power-ind
echo.
echo Pilihan tidak valid! Coba lagi.
echo.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto desktop-ind

:search-ind
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ind
cls
echo.
echo Mesin Pencari
echo.
echo.
set /p indsearchquery=Cari: 
if /i "%indsearchquery%"=="hello" (
	echo.
    echo Tidak ada hasil
	echo.
) else (
	echo.
    echo Tidak ada hasil
	echo.
)
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto desktop-ind

:files-ind
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ind
cls
echo.
echo Penjelajah File
echo.
echo DIR Foto                  2 file
echo DIR Video                 1 file
echo DIR Audio                 0 file
echo DIR Pesan                 1 file
echo DIR Permainan             1 file
echo.
echo Hanya halaman Baca diaktifkan.
echo.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto desktop-ind

:calculator-ind
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ind
cls
echo Aplikasi Kalkulator
echo.
set /p "indexpression=Masukkan ekspresi: "
set /a indresult=%indexpression%
echo.
echo Hasilnya: %indresult%
echo.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto desktop-ind

:date-ind
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ind
cls
echo.
echo Tanggal dan Waktu
echo.
echo Tanggal Saat Ini: %date%
echo Waktu Saat Ini:   %time%
echo.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto desktop-ind

:media-ind
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ind
cls
echo Media
echo.
echo [1] Foto
echo [2] Video
echo [3] Pemutar Musik
echo [4] Pesan
echo [5] Keluar
echo.
set /p indmedia=Masukkan pilihan (1-5): 
if "%indmedia%"=="1" goto photos-ind
if "%indmedia%"=="2" goto videos-ind
if "%indmedia%"=="3" goto music-ind
if "%indmedia%"=="4" goto messages-ind
if "%indmedia%"=="5" goto desktop-ind
echo.
echo Pilihan tidak valid! Coba lagi.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto media-ind

:photos-ind
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ind
cls
echo.
echo Foto
echo.
echo [1] anjing.png
echo [2] kucing.png
echo [3] Keluar
echo.
set /p indfoto=Buka Gambar(1-3): 
if "%indfoto%"=="1" goto dogpic-ind
if "%indfoto%"=="2" goto catpic-ind
if "%indfoto%"=="3" goto desktop-ind
echo Pilihan tidak valid! Coba lagi.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto photos-ind

:dogpic-ind
cls
echo.
echo Nama File: anjing.png
echo.
echo "..............................."
echo "..........+++-..--++-.........."
echo ".....++-+............++++-....."
echo "...++--+-.............+--++...."
echo "..+----#..--......--..+----#..."
echo ".+----++..##+....-##-.++----+-."
echo "-+----+................#----+-."
echo ".-+---+......####-.....#---++.."
echo "....++-..-...-##-...--.-+--...."
echo "......--..++-+##+-+#-.-+......."
echo ".......-+....+--+-...--........"
echo ".........-++-.--..++-.........."
echo "..............................."
echo.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto photos-ind

:catpic-ind
cls
echo.
echo Nama File: kucing.png
echo.
echo "....--...................--...."
echo "..-#+-++-.............-++-+#-.."
echo "..-#++--+#############+--++#-.."
echo "..-#+++-----+--+--+-----+++#-.."
echo "...#-----------+---+-------#..."
echo "..-+-----------+-----------+-.."
echo ".-#+------.--+-+-+...------+#-."
echo ".#+-++#+++#+-+++++-++####++-++."
echo ".#++-++-+##+#++-+-#+##+-++-++#."
echo ".#+------+---+---+---+------++."
echo ".-#--++-----.#---#.-----++--#-."
echo "..-#+---+-.....#.....-+---+#-.."
echo "....+++++-.-+##.##+-.-+++++...."
echo ".....--++++++-----++++++--....."
echo "..............................."
echo.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto photos-ind

:videos-ind
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ind
cls
echo.
echo Videos
echo.
echo [1] bolabergerak.vid
echo [2] Keluar
echo.
set /p indvideo=Buka Video (1-2): 
if "%indvideo%"=="1" goto animation-ind
if "%indvideo%"=="2" goto desktop-ind
echo Pilihan tidak valid! Coba lagi.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto videos-ind

:animation-ind
cls
echo.
echo Nama File: bolabergerak.vid
echo.
echo O
ping -n 2 localhost >nul
cls
echo.
echo Nama File: bolabergerak.vid
echo.
echo  O
ping -n 2 localhost >nul
cls
echo.
echo Nama File: bolabergerak.vid 
echo.
echo   O
ping -n 2 localhost >nul
cls 
echo.
echo Nama File: bolabergerak.vid
echo.
echo Video telah berakhir
echo.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto videos-ind

:music-ind
set /a battery=%battery%-1
cls
echo.
echo Pemutar Musik
echo.
echo Tidak ada file audio yang disimpan.
echo.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto desktop-ind

:messages-ind
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ind
cls
echo.
echo Pesan
echo.
echo [ 1 Notifikasi Pesan ] 
echo.
pause >nul
echo.
echo ==================================
echo Dari: Pengembang RayOS Premium
echo Subjek: Selamat Datang
echo ==================================
echo Selamat datang di RayOS Premium!
echo Kami senang Anda menggunakan
echo sistem operasi kami. Nikmati
echo pengalaman baru yang mudah 
echo digunakan.
echo ==================================
echo.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto desktop-ind

:games-ind 
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ind
cls
echo.
echo Mau main apa?
echo.
echo [1] Minecraft 2D
echo [2] Keluar
echo.
set /p indgamechoice=Masukkan pilihanmu (1-2): 
if "%indgamechoice%"=="1" goto gameplay-ind
if "%indgamechoice%"=="2" goto desktop-ind
echo Pilihan tidak valid! Coba lagi.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto desktop-ind

:gameplay-ind
cls
echo   "___  ____                            __ _   "
echo   "|  \/  (_)                          / _| |  "
echo   "| .  . |_ _ __   ___  ___ _ __ __ _| |_| |_ "
echo   "| |\/| | | '_ \ / _ \/ __| '__/ _` |  _| __|"
echo   "| |  | | | | | |  __/ (__| | | (_| | | | |_ "
echo   "\_|  |_/_|_| |_|\___|\___|_|  \__,_|_|  \__|"
echo.
:: GAMBAR PETA
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
echo Kontrol:
echo W A S D = Bergerak
echo R = Tempatkan blok (#)
echo X = Gali (jadikan X)
echo Q = Keluar
echo ==================================================
choice /c wasdrxq /n >nul
set key=%errorlevel%
if %key%==1 set /a py-=1
if %key%==2 set /a px-=1
if %key%==3 set /a py+=1
if %key%==4 set /a px+=1
if %key%==5 call :placeBlockind
if %key%==6 call :removeBlockind
if %key%==7 goto games-ind
:: Jaga pemain tetap di dalam peta
if %px% lss 1 set px=1
if %px% gtr %width% set px=%width%
if %py% lss 1 set py=1
if %py% gtr %height% set py=%height%
goto gameplay-ind

:placeBlockind
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!#!after!"
set "map%py%=!row!"
goto :eof

:removeBlockind
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!X!after!"
set "map%py%=!row!"
goto :eof

:settings-ind
if %battery% LEQ 0 goto problem-ind
cls
echo.
echo Pengaturan
echo.
echo [1] Desain
echo [2] Jaringan
echo [3] Info Sistem
echo [4] Ubah Bahasa
echo [5] Kembali ke Desktop
echo.
set /p settingind=Masukkan pilihan (1-5): 
if "%settingind%"=="1" goto design-ind
if "%settingind%"=="2" goto network-ind
if "%settingind%"=="3" goto info-ind
if "%settingind%"=="4" goto langsetup
if "%settingind%"=="5" goto desktop-ind
echo Pilihan tidak valid! Coba lagi.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto settings-ind

:design-ind
cls
echo.
echo Desain
echo.
echo Warna Latar Belakang: Hitam
echo Warna Huruf:          Hijau
echo.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto settings-ind

:network-ind
cls
echo.
echo Konfigurasi Jaringan
echo.
echo Status: Tidak Terhubung
echo.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto settings-ind

:info-ind
cls
echo.
echo Informasi Sistem
echo.
echo Sistem Operasi:  RayOS Premium
echo Nama Perangkat:  tidak diketahui
echo Jenis Perangkat: tidak diketahui
echo.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto settings-ind

:power-ind
cls
echo Daya
echo.
echo [1] Matikan Sistem
echo [2] Keluar
echo [3] Tidur
echo [4] Mode Lite
echo [5] Keluar Aplikasi
echo.
set /p indpower=Masukkan pilihan (1-5): 
if "%indpower%"=="1" exit
if "%indpower%"=="2" goto login
if "%indpower%"=="3" goto sleep-ind
if "%indpower%"=="4" goto litemode
if "%indpower%"=="5" goto desktop-ind
echo.
echo Pilihan tidak valid! Coba lagi.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto desktop-ind

:sleep-ind
cls
echo.
echo Mode Tidur
echo.
echo Baterai: %battery%
echo.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
goto power-ind

:problem-ind
cls
echo.
echo ! MASALAH BATERAI !
echo.
echo.
echo Baterai kamu sudah habis!
echo Tingkat baterai saat ini: %battery%%%
echo.
echo Tekan tombol apa saja untuk melanjutkan . . .
pause >nul
exit

rem === ESPAÑOL ===

:desktop-sp
title RayOS Premium
color 02
cls
if %battery% LEQ 0 goto problem-sp
echo    Batería: %battery%%%									      Sin Internet  %time%
echo ========================================================================================================================
echo.
echo 		    "    ____              ____  _____    ____                      _               "
echo 		    "   / __ \____ ___  __/ __ \/ ___/   / __ \________  ____ ___  (_)_  ______ ___ "
echo 		    "  / /_/ / __ `/ / / / / / /\__ \   / /_/ / ___/ _ \/ __ `__ \/ / / / / __ `__ \"
echo 		    " / _, _/ /_/ / /_/ / /_/ /___/ /  / ____/ /  /  __/ / / / / / / /_/ / / / / / /"
echo 		    "/_/ |_|\__,_/\__, /\____//____/  /_/   /_/   \___/_/ /_/ /_/_/\__,_/_/ /_/ /_/ "
echo 		    "            /____/                                                             "
echo.
echo Tareas:
echo.
echo [1] Buscador
echo [2] Calculadora
echo [3] Fecha
echo [4] Medios
echo [5] Juegos
echo [6] Explorador de Archivos
echo [7] Configuración
echo [8] Energía
echo.
set /p sptask=Ingrese opción (1-8): 
if "%sptask%"=="1" goto search-sp
if "%sptask%"=="2" goto calculator-sp
if "%sptask%"=="3" goto date-sp
if "%sptask%"=="4" goto media-sp
if "%sptask%"=="5" goto games-sp
if "%sptask%"=="6" goto files-sp
if "%sptask%"=="7" goto settings-sp
if "%sptask%"=="8" goto power-sp
echo.
echo ¡Opción inválida! Intente de nuevo.
echo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto desktop-sp

:search-sp
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-sp
cls
echo.
echo Buscador
echo.
set /p spsearchquery=Buscar: 
if /i "%spsearchquery%"=="hola" (
    echo.
    echo Sin resultados
    echo.
) else (
    echo.
    echo Sin resultados
    echo.
)
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto desktop-sp

:files-sp
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-sp
cls
echo Explorador de Archivos
echo.
echo DIR Fotos                    2 archivos
echo DIR Videos                   1 archivos
echo DIR Audios                   0 archivos
echo DIR Mensajes                 1 archivos
echo DIR Juegos                   1 archivos
echo.
echo Página de solo lectura activada.
echo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto desktop-sp

:calculator-sp
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-sp
cls
echo Aplicación Calculadora
echo.
set /p "spexpression=Introduce la operación: "
set /a spresult=%spexpression%
echo.
echo Resultado: %spresult%
echo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto desktop-sp

:date-sp
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-sp
cls
echo.
echo Fecha y Hora
echo.
echo Fecha actual: %date%
echo Hora actual:  %time%
echo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto desktop-sp

:media-sp
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-sp
cls
echo Medios
echo.
echo [1] Fotos
echo [2] Videos
echo [3] Reproductor de Música
echo [4] Mensajes
echo [5] Salir
echo.
set /p spmedia=Ingrese opción (1-5): 
if "%spmedia%"=="1" goto photos-sp
if "%spmedia%"=="2" goto videos-sp
if "%spmedia%"=="3" goto music-sp
if "%spmedia%"=="4" goto messages-sp
if "%spmedia%"=="5" goto desktop-sp
echo.
echo ¡Opción inválida! Intente de nuevo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto media-sp

:photos-sp
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-sp
cls
echo.
echo Fotos
echo.
echo [1] perro.png
echo [2] gato.png
echo [3] Salir
echo.
set /p spphoto=Abrir Imagen(1-3): 
if "%spphoto%"=="1" goto dogpic-sp
if "%spphoto%"=="2" goto catpic-sp
if "%spphoto%"=="3" goto desktop-sp
echo ¡Opción no válida! Inténtalo de nuevo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto photos-sp

:dogpic-sp
cls
echo.
echo Nombre del archivo: perro.png
echo.
echo "..............................."
echo "..........+++-..--++-.........."
echo ".....++-+............++++-....."
echo "...++--+-.............+--++...."
echo "..+----#..--......--..+----#..."
echo ".+----++..##+....-##-.++----+-."
echo "-+----+................#----+-."
echo ".-+---+......####-.....#---++.."
echo "....++-..-...-##-...--.-+--...."
echo "......--..++-+##+-+#-.-+......."
echo ".......-+....+--+-...--........"
echo ".........-++-.--..++-.........."
echo "..............................."
echo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto photos-sp

:catpic-sp
cls
echo.
echo Nombre del archivo: gato.png
echo.
echo "....--...................--...."
echo "..-#+-++-.............-++-+#-.."
echo "..-#++--+#############+--++#-.."
echo "..-#+++-----+--+--+-----+++#-.."
echo "...#-----------+---+-------#..."
echo "..-+-----------+-----------+-.."
echo ".-#+------.--+-+-+...------+#-."
echo ".#+-++#+++#+-+++++-++####++-++."
echo ".#++-++-+##+#++-+-#+##+-++-++#."
echo ".#+------+---+---+---+------++."
echo ".-#--++-----.#---#.-----++--#-."
echo "..-#+---+-.....#.....-+---+#-.."
echo "....+++++-.-+##.##+-.-+++++...."
echo ".....--++++++-----++++++--....."
echo "..............................."
echo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto photos-sp

:videos-sp
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-sp
cls
echo.
echo Videos
echo.
echo [1] bolaenmovimiento.vid
echo [2] Salir
echo.
set /p spvideo=Abrir un video (1-2): 
if "%spvideo%"=="1" goto animation-sp
if "%spvideo%"=="2" goto desktop-sp
echo ¡Opción no válida! Inténtalo de nuevo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto videos-sp

:animation-sp
cls
echo.
echo Nombre de archivo: bolaenmovimiento.vid
echo.
echo O
ping -n 2 localhost >nul
cls
echo.
echo Nombre de archivo: bolaenmovimiento.vid
echo.
echo  O
ping -n 2 localhost >nul
cls
echo.
echo Nombre de archivo: bolaenmovimiento.vid
echo.
echo   O
ping -n 2 localhost >nul
cls 
echo.
echo Nombre de archivo: bolaenmovimiento.vid
echo.
echo El video ha terminado
echo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto videos-sp

:music-sp
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-sp
cls
echo.
echo Reproductor de Música
echo.
echo No hay archivos de audio guardados.
echo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto desktop-sp

:messages-sp
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-sp
cls
echo.
echo Mensajes
echo.
echo [ 1 Notificación de mensaje ] 
echo.
pause >nul
echo.
echo =======================================
echo De: Desarrolladores de RayOS Premium
echo Asunto: Bienvenido
echo =======================================
echo ¡Bienvenido a RayOS Premium!
echo Nos alegra que estés usando nuestro
echo sistema operativo. Disfruta explorando
echo tu nueva herramienta fácil de usar.
echo =======================================
echo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto desktop-sp

:games-sp
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-sp
cls
echo.
echo ¿Qué usted quiere jugar?
echo.
echo [1] Minecraft 2D
echo [2] Salir
echo.
set /p spgamechoice=Ingresa tu elección (1-2): 
if "%spgamechoice%"=="1" goto gameplay-sp
if "%spgamechoice%"=="2" goto desktop-sp
echo ¡Elección inválida! Intenta de nuevo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto desktop-sp

:gameplay-sp
cls
echo   "___  ____                            __ _   "
echo   "|  \/  (_)                          / _| |  "
echo   "| .  . |_ _ __   ___  ___ _ __ __ _| |_| |_ "
echo   "| |\/| | | '_ \ / _ \/ __| '__/ _` |  _| __|"
echo   "| |  | | | | | |  __/ (__| | | (_| | | | |_ "
echo   "\_|  |_/_|_| |_|\___|\___|_|  \__,_|_|  \__|"
echo.
:: DIBUJAR MAPA
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
echo Controles:
echo W A S D = Mover
echo R = Colocar bloque (#)
echo X = Excavar (convertir en X)
echo Q = Salir
echo ==================================================
choice /c wasdrxq /n >nul
set key=%errorlevel%
if %key%==1 set /a py-=1
if %key%==2 set /a px-=1
if %key%==3 set /a py+=1
if %key%==4 set /a px+=1
if %key%==5 call :placeBlocksp
if %key%==6 call :removeBlocksp
if %key%==7 goto games-sp
:: Mantener al jugador dentro del mapa
if %px% lss 1 set px=1
if %px% gtr %width% set px=%width%
if %py% lss 1 set py=1
if %py% gtr %height% set py=%height%
goto gameplay-sp

:placeBlocksp
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!#!after!"
set "map%py%=!row!"
goto :eof

:removeBlocksp
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!X!after!"
set "map%py%=!row!"
goto :eof

:settings-sp
cls
echo.
echo Configuración
echo.
echo [1] Diseño
echo [2] Red
echo [3] Información del Sistema
echo [4] Cambiar Idioma
echo [5] Volver al Escritorio
echo.
set /p settingsp=Ingrese una opción (1-5): 
if "%settingsp%"=="1" goto design-sp
if "%settingsp%"=="2" goto network-sp
if "%settingsp%"=="3" goto info-sp
if "%settingsp%"=="4" goto langsetup
if "%settingsp%"=="5" goto desktop-sp
echo ¡Opción no válida! Inténtalo de nuevo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto settings-sp

:design-sp
cls
echo.
echo Diseño
echo.
echo Color de Fondo: Negro
echo Color de Texto: Verde
echo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto settings-sp

:network-sp
cls
echo.
echo Configuración de Red
echo.
echo Estado: No Conectado
echo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto settings-sp

:info-sp
cls
echo.
echo Información del Sistema
echo.
echo Sistema Operativo: RayOS Premium
echo Nombre del Dispositivo: desconocido
echo Tipo de Dispositivo: desconocido
echo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto settings-sp

:power-sp
cls
echo Energía
echo.
echo [1] Apagar
echo [2] Cerrar sesión
echo [3] Suspender
echo [4] Modo Ligero
echo [5] Salir
echo.
set /p sppower=Ingrese opción (1-5): 
if "%sppower%"=="1" exit
if "%sppower%"=="2" goto login
if "%sppower%"=="3" goto sleep-sp
if "%sppower%"=="4" goto litemode
if "%sppower%"=="5" goto desktop-sp
echo.
echo ¡Opción inválida! Intente de nuevo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto desktop-sp

:sleep-sp
cls
echo.
echo Modo Suspensión
echo.
echo Batería: %battery%
echo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
goto power-sp

:problem-sp
cls
echo.
echo ! PROBLEMA DE BATERÍA !
echo.
echo.
echo ¡Tu batería se ha agotado!
echo Nivel actual de batería: %battery%%%
echo.
echo Presiona cualquier tecla para continuar . . .
pause >nul
exit

rem === RUSSIAN ===

:desktop-ru
title RayOS Premium
color 02
chcp 65001 >nul
cls
if %battery% LEQ 0 goto problem-ru
echo    Батарея: %battery%%%									     Нет Интернета  %time%
echo ========================================================================================================================
echo.
echo 		    "    ____              ____  _____    ____                      _               "
echo 		    "   / __ \____ ___  __/ __ \/ ___/   / __ \________  ____ ___  (_)_  ______ ___ "
echo 		    "  / /_/ / __ `/ / / / / / /\__ \   / /_/ / ___/ _ \/ __ `__ \/ / / / / __ `__ \"
echo 		    " / _, _/ /_/ / /_/ / /_/ /___/ /  / ____/ /  /  __/ / / / / / / /_/ / / / / / /"
echo 		    "/_/ |_|\__,_/\__, /\____//____/  /_/   /_/   \___/_/ /_/ /_/_/\__,_/_/ /_/ /_/ "
echo 		    "            /____/                                                             "
echo.
echo Задачи:
echo.
echo [1] Поиск
echo [2] Калькулятор
echo [3] Дата
echo [4] Медиа
echo [5] Игры
echo [6] Проводник
echo [7] Настройки
echo [8] Питание
echo.
set /p rutask=Выберите опцию (1-8): 
if "%rutask%"=="1" goto search-ru
if "%rutask%"=="2" goto calculator-ru
if "%rutask%"=="3" goto date-ru
if "%rutask%"=="4" goto media-ru
if "%rutask%"=="5" goto games-ru
if "%rutask%"=="6" goto files-ru
if "%rutask%"=="7" goto settings-ru
if "%rutask%"=="8" goto power-ru
echo.
echo Неверный выбор! Попробуйте снова.
echo.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto desktop-ru

:search-ru
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ru
cls
echo.
echo Поиск
echo.
set /p rusearchquery=Введите запрос: 
if /i "%rusearchquery%"=="привет" (
    echo.
    echo Результаты не найдены
    echo.
) else (
    echo.
    echo Результаты не найдены
    echo.
)
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto desktop-ru

:files-ru
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ru
cls
echo Проводник
echo.
echo DIR Фото                  3 файла
echo DIR Видео                 1 файл
echo DIR Аудио                 0 файлов
echo DIR Сообщения             1 файл
echo DIR Игры                  1 файл
echo.
echo Включена только для чтения.
echo.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto desktop-ru

:calculator-ru
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ru
cls
echo Калькулятор
echo.
set /p "expressionru=Введите выражение: "
set /a resultru=%expressionru%
echo.
echo Результат: %resultru%
echo.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto desktop-ru

:date-ru
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ru
cls
echo.
echo Дата и Время
echo.
echo Текущая дата:  %date%
echo Текущее время: %time%
echo.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto desktop-ru

:media-ru
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ru
cls
echo Медиа
echo.
echo [1] Фото
echo [2] Видео
echo [3] Музыкальный плеер
echo [4] Сообщения
echo [5] Выход
echo.
set /p rmedia=Выберите опцию (1-5): 
if "%rmedia%"=="1" goto photos-ru
if "%rmedia%"=="2" goto videos-ru
if "%rmedia%"=="3" goto music-ru
if "%rmedia%"=="4" goto messages-ru
if "%rmedia%"=="5" goto desktop-ru
echo.
echo Неверный выбор! Попробуйте снова.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto media-ru

:photos-ru
color 02
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ru
cls
echo.
echo Фотографии
echo.
echo [1] sobaka.png
echo [2] kot.png
echo [3] kommunizm.png
echo [4] Выйти
echo.
set /p ruphoto=Открыть изображение(1-4): 
if "%ruphoto%"=="1" goto dogpic-ru
if "%ruphoto%"=="2" goto catpic-ru
if "%ruphoto%"=="3" goto communism
if "%ruphoto%"=="4" goto desktop-ru
echo Неверный выбор! Попробуйте снова.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto photos-ru

:communism
color 4E
cls
echo.
echo Имя файла: kommunizm.png
echo.
echo                             `¨·`                     
echo                               ´“¡:´                  
echo                                 ´ª)¦ˆ`               
echo                   `’»»¬¦ª“–;‚ˆ¨` `˜•)l‚              
echo                 `‚•)))))))))¬’`    ¨÷))—¨            
echo               `‚¬)))))))))l˜        ´—))«˜`          
echo              ’•)))))))))!…`          ´¡))»ˆ          
echo            ˆ«))))))))))/‘             ‚())/ˆ         
echo          `—)))))))))/))))/‘`          ´¡)))ª`        
echo            ’¬)))))lˆ º/))))«:`         “)))»ˆ        
echo              :»)¬‘`   ´”)))))»¹`       ³))))­`       
echo               `…`       ¨ª)))))/­`    ´¡))))²`       
echo                           …¦)))))»°´  ;))))/:`       
echo                             ¸l)))))»º¹/))))!´        
echo               `¸‘~«»^¸`       `’«))))))))))(‘        
echo             ¨l))))))))/¬°’…´ `¨ˆ“))))))))»ˆ`         
echo           `/ª))))/¡))))))))))))))))))))))))“´        
echo      ´‹¬))))/^·  `ˆ—»))))))))))))))))))))))^¨       
echo     `º()))))•¨        `¸–^|•»»»«¬¡“:´`º)))))))„·`    
echo    ´^))))))¬¸                          ´„))))))/’    
echo    ·•))))/°``                            ·¯))))»ˆ    
echo    `ˆ‹›‚¨`                                 …;­‚``    
echo.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto photos-ru

:dogpic-ru
cls
echo.
echo Имя файла: sobaka.png
echo.
echo "..............................."
echo "..........+++-..--++-.........."
echo ".....++-+............++++-....."
echo "...++--+-.............+--++...."
echo "..+----#..--......--..+----#..."
echo ".+----++..##+....-##-.++----+-."
echo "-+----+................#----+-."
echo ".-+---+......####-.....#---++.."
echo "....++-..-...-##-...--.-+--...."
echo "......--..++-+##+-+#-.-+......."
echo ".......-+....+--+-...--........"
echo ".........-++-.--..++-.........."
echo "..............................."
echo.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto photos-ru

:catpic-ru
cls
echo.
echo Имя файла: kot.png
echo.
echo "....--...................--...."
echo "..-#+-++-.............-++-+#-.."
echo "..-#++--+#############+--++#-.."
echo "..-#+++-----+--+--+-----+++#-.."
echo "...#-----------+---+-------#..."
echo "..-+-----------+-----------+-.."
echo ".-#+------.--+-+-+...------+#-."
echo ".#+-++#+++#+-+++++-++####++-++."
echo ".#++-++-+##+#++-+-#+##+-++-++#."
echo ".#+------+---+---+---+------++."
echo ".-#--++-----.#---#.-----++--#-."
echo "..-#+---+-.....#.....-+---+#-.."
echo "....+++++-.-+##.##+-.-+++++...."
echo ".....--++++++-----++++++--....."
echo "..............................."
echo.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto photos-ru

:videos-ru
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ru
cls
echo.
echo Видео
echo.
echo [1] shariki.vid
echo [2] Выход
echo.
set /p ruvid=Открыть видео (1-2): 
if "%ruvid%"=="1" goto animation-ru
if "%ruvid%"=="2" goto desktop-ru
echo Неверный выбор! Попробуйте снова.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto videos-ru

:animation-ru
cls
echo.
echo Имя файла: shariki.vid
echo.
echo O
ping -n 2 localhost >nul
cls
echo.
echo Имя файла: shariki.vid
echo.
echo  O
ping -n 2 localhost >nul
cls
echo.
echo Имя файла: shariki.vid
echo.
echo   O
ping -n 2 localhost >nul
cls 
echo.
echo Имя файла: shariki.vid
echo.
echo Видео закончилось.
echo.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto videos-ru

:music-ru
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ru
cls
echo.
echo Музыкальный проигрыватель
echo.
echo Нет сохранённых аудиофайлов.
echo.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto desktop-ru

:messages-ru
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ru
cls
echo.
echo Сообщения
echo.
echo [ 1 уведомление о сообщении ] 
echo.
pause >nul
echo.
echo ===================================
echo От: Разработчики RayOS Premium
echo Тема: Добро пожаловать
echo ===================================
echo Добро пожаловать в RayOS Premium!
echo Мы рады, что вы используете нашу
echo операционную систему. Наслаждайтесь
echo изучением этого простого и удобного 
echo инструмента.
echo ===================================
echo.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto desktop-ru

:games-ru
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ru
cls
echo.
echo Во что ты хочешь поиграть?
echo.
echo [1] Minecraft 2D
echo [2] Выйти
echo.
set /p rugamechoice=Введите ваш выбор (1-2): 
if "%rugamechoice%"=="1" goto gameplay-ru
if "%rugamechoice%"=="2" goto desktop-ru
echo Неверный выбор! Попробуйте снова.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto desktop-ru

:gameplay-ru
cls
echo   "___  ____                            __ _   "
echo   "|  \/  (_)                          / _| |  "
echo   "| .  . |_ _ __   ___  ___ _ __ __ _| |_| |_ "
echo   "| |\/| | | '_ \ / _ \/ __| '__/ _` |  _| __|"
echo   "| |  | | | | | |  __/ (__| | | (_| | | | |_ "
echo   "\_|  |_/_|_| |_|\___|\___|_|  \__,_|_|  \__|"
echo.
:: РИСУЕМ КАРТУ
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
echo Управление:
echo W A S D = Движение
echo R = Поставить блок (#)
echo X = Копать (становится X)
echo Q = Выйти
echo ==================================================
choice /c wasdrxq /n >nul
set key=%errorlevel%
if %key%==1 set /a py-=1
if %key%==2 set /a px-=1
if %key%==3 set /a py+=1
if %key%==4 set /a px+=1
if %key%==5 call :placeBlockru
if %key%==6 call :removeBlockru
if %key%==7 goto games-ru
:: Держим игрока в пределах карты
if %px% lss 1 set px=1
if %px% gtr %width% set px=%width%
if %py% lss 1 set py=1
if %py% gtr %height% set py=%height%
goto gameplay-ru

:placeBlockru
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!#!after!"
set "map%py%=!row!"
goto :eof

:removeBlockru
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!X!after!"
set "map%py%=!row!"
goto :eof

:settings-ru
if %battery% LEQ 0 goto problem-ru
cls
echo.
echo Настройки
echo.
echo [1] Дизайн
echo [2] Сеть
echo [3] Информация о системе
echo [4] Сменить язык
echo [5] Вернуться на рабочий стол
echo.
set /p settingru=Введите выбор (1-5): 
if "%settingru%"=="1" goto design-ru
if "%settingru%"=="2" goto network-ru
if "%settingru%"=="3" goto info-ru
if "%settingru%"=="4" goto langsetup
if "%settingru%"=="5" goto desktop-ru
echo Неверный выбор! Попробуйте снова.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto settings-ru

:design-ru
cls
echo.
echo Дизайн
echo.
echo Цвет фона: Чёрный
echo Цвет текста: Зелёный
echo.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto settings-ru

:network-ru
cls
echo.
echo Настройки сети
echo.
echo Состояние: Не подключено
echo.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto settings-ru

:info-ru
cls
echo.
echo Информация о системе
echo.
echo Операционная система: RayOS Premium
echo Имя устройства: неизвестно
echo Тип устройства: неизвестно
echo.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto settings-ru

:power-ru
cls
echo Питание
echo.
echo [1] Выключить
echo [2] Выйти из системы
echo [3] Сон
echo [4] Лёгкий режим
echo [5] Выход
echo.
set /p rupower=Выберите опцию (1-5): 
if "%rupower%"=="1" exit
if "%rupower%"=="2" goto login
if "%rupower%"=="3" goto sleep-ru
if "%rupower%"=="4" goto litemode
if "%rupower%"=="5" goto desktop-ru
echo.
echo Неверный выбор! Попробуйте снова.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto desktop-ru

:sleep-ru
cls
echo.
echo Режим сна
echo.
echo Батарея: %battery%
echo.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
goto power-ru

:problem-ru
cls
echo.
echo ! ПРОБЛЕМА С БАТАРЕЕЙ !
echo.
echo.
echo Ваш аккумулятор разрядился!
echo Текущий уровень заряда: %battery%%%
echo.
echo Нажмите любую клавишу, чтобы продолжить . . .
pause >nul
exit

rem === FRANÇAIS ===

:desktop-fr
title RayOS Premium
color 02
cls
if %battery% LEQ 0 goto problem-fr
echo    Batterie: %battery%%%									   Pas d'Internet  %time%
echo ========================================================================================================================
echo.
echo 		    "    ____              ____  _____    ____                      _               "
echo 		    "   / __ \____ ___  __/ __ \/ ___/   / __ \________  ____ ___  (_)_  ______ ___ "
echo 		    "  / /_/ / __ `/ / / / / / /\__ \   / /_/ / ___/ _ \/ __ `__ \/ / / / / __ `__ \"
echo 		    " / _, _/ /_/ / /_/ / /_/ /___/ /  / ____/ /  /  __/ / / / / / / /_/ / / / / / /"
echo 		    "/_/ |_|\__,_/\__, /\____//____/  /_/   /_/   \___/_/ /_/ /_/_/\__,_/_/ /_/ /_/ "
echo 		    "            /____/                                                             "
echo.
echo Tâches :
echo.
echo [1] Rechercher
echo [2] Calculatrice
echo [3] Date
echo [4] Médias
echo [5] Jeux
echo [6] Explorateur de fichiers
echo [7] Paramètres
echo [8] Alimentation
echo.
set /p frtask=Entrez un choix (1-8) : 
if "%frtask%"=="1" goto search-fr
if "%frtask%"=="2" goto calculator-fr
if "%frtask%"=="3" goto date-fr
if "%frtask%"=="4" goto media-fr
if "%frtask%"=="5" goto games-fr
if "%frtask%"=="6" goto files-fr
if "%frtask%"=="7" goto settings-fr
if "%frtask%"=="8" goto power-fr
echo.
echo Choix invalide ! Réessayez.
echo.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto desktop-fr

:search-fr
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fr
cls
echo.
echo Moteur de Recherche
echo.
set /p frsearchquery=Rechercher : 
if /i "%frsearchquery%"=="bonjour" (
    echo.
    echo Aucun résultat
    echo.
) else (
    echo.
    echo Aucun résultat
    echo.
)
echo Appuie sur une touche pour continuer . . .
pause >nul
goto desktop-fr

:files-fr
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fr
cls
echo Explorateur de fichiers
echo.
echo DIR Photos                  2 fichiers
echo DIR Vidéos                  1 fichier
echo DIR Audios                  0 fichier
echo DIR Messages                1 fichier
echo DIR Jeux                    1 fichier
echo.
echo Mode lecture seule activé.
echo.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto desktop-fr

:calculator-fr
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fr
cls
echo Calculatrice
echo.
set /p "frexpression=Entrez l'expression : "
set /a frresult=%frexpression%
echo.
echo Résultat : %frresult%
echo.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto desktop-fr

:date-fr
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fr
cls
echo.
echo Date et Heure
echo.
echo Date actuelle  : %date%
echo Heure actuelle : %time%
echo.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto desktop-fr

:media-fr
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fr
cls
echo Médias
echo.
echo [1] Photos
echo [2] Vidéos
echo [3] Lecteur de musique
echo [4] Messages
echo [5] Quitter
echo.
set /p frmedia=Entrez un choix (1-5) : 
if "%frmedia%"=="1" goto photos-fr
if "%frmedia%"=="2" goto videos-fr
if "%frmedia%"=="3" goto music-fr
if "%frmedia%"=="4" goto messages-fr
if "%frmedia%"=="5" goto desktop-fr
echo.
echo Choix invalide ! Réessayez.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto media-fr

:photos-fr
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fr
cls
echo.
echo Photos
echo.
echo [1] chien.png
echo [2] chat.png
echo [3] Quitter
echo.
set /p frphoto=Ouvrir l'image(1-3): 
if "%frphoto%"=="1" goto dogpic-fr
if "%frphoto%"=="2" goto catpic-fr
if "%frphoto%"=="3" goto desktop-fr
echo Choix invalide ! Réessayez.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto photos-fr

:dogpic-fr
cls
echo.
echo Nom du fichier : chien.png
echo.
echo "..............................."
echo "..........+++-..--++-.........."
echo ".....++-+............++++-....."
echo "...++--+-.............+--++...."
echo "..+----#..--......--..+----#..."
echo ".+----++..##+....-##-.++----+-."
echo "-+----+................#----+-."
echo ".-+---+......####-.....#---++.."
echo "....++-..-...-##-...--.-+--...."
echo "......--..++-+##+-+#-.-+......."
echo ".......-+....+--+-...--........"
echo ".........-++-.--..++-.........."
echo "..............................."
echo.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto photos-fr

:catpic-fr
cls
echo.
echo Nom du fichier : chat.png
echo.
echo "....--...................--...."
echo "..-#+-++-.............-++-+#-.."
echo "..-#++--+#############+--++#-.."
echo "..-#+++-----+--+--+-----+++#-.."
echo "...#-----------+---+-------#..."
echo "..-+-----------+-----------+-.."
echo ".-#+------.--+-+-+...------+#-."
echo ".#+-++#+++#+-+++++-++####++-++."
echo ".#++-++-+##+#++-+-#+##+-++-++#."
echo ".#+------+---+---+---+------++."
echo ".-#--++-----.#---#.-----++--#-."
echo "..-#+---+-.....#.....-+---+#-.."
echo "....+++++-.-+##.##+-.-+++++...."
echo ".....--++++++-----++++++--....."
echo "..............................."
echo.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto photos-fr

:videos-fr
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fr
cls
echo.
echo Vidéos
echo.
echo [1] balleenmouvement.vid
echo [2] Quitter
echo.
set /p frvideo=Ouvrir une vidéo (1-2): 
if "%frvideo%"=="1" goto animation-fr
if "%frvideo%"=="2" goto desktop-fr
echo Choix invalide ! Réessayez.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto videos-fr

:animation-fr
cls
echo.
echo Nom du fichier : balleenmouvement.vid
echo.
echo O
ping -n 2 localhost >nul
cls
echo.
echo Nom du fichier : balleenmouvement.vid
echo.
echo  O
ping -n 2 localhost >nul
cls
echo.
echo Nom du fichier : balleenmouvement.vid
echo.
echo   O
ping -n 2 localhost >nul
cls 
echo.
echo Nom du fichier : balleenmouvement.vid
echo.
echo La vidéo est terminée
echo.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto videos-fr

:music-fr
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fr
cls
echo.
echo Lecteur de musique
echo.
echo Aucun fichier audio enregistré.
echo.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto desktop-fr

:messages-fr
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fr
cls
echo.
echo Messages
echo.
echo [ 1 Notification de message ]
echo.
pause >nul
echo.
echo ==================================
echo De: Développeurs de RayOS Premium
echo Sujet: Bienvenue
echo ==================================
echo Bienvenue sur RayOS Premium !
echo Nous sommes heureux que vous 
echo utilisiez notre système 
echo d’exploitation.Profitez de votre 
echo nouvel outil simple et pratique.
echo ==================================
echo.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto desktop-fr

:games-fr
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-fr
cls
echo.
echo À quoi veux-tu jouer ?
echo.
echo [1] Minecraft 2D
echo [2] Quitter
echo.
set /p frgamechoice=Entrez votre choix (1-2) : 
if "%frgamechoice%"=="1" goto gameplay-fr
if "%frgamechoice%"=="2" goto desktop-fr
echo Choix invalide ! Réessaie.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto desktop-fr

:gameplay-fr
cls
echo   "___  ____                            __ _   "
echo   "|  \/  (_)                          / _| |  "
echo   "| .  . |_ _ __   ___  ___ _ __ __ _| |_| |_ "
echo   "| |\/| | | '_ \ / _ \/ __| '__/ _` |  _| __|"
echo   "| |  | | | | | |  __/ (__| | | (_| | | | |_ "
echo   "\_|  |_/_|_| |_|\___|\___|_|  \__,_|_|  \__|"
echo.
:: DESSINER LA CARTE
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
echo Contrôles :
echo W A S D = Déplacer
echo R = Placer un bloc (#)
echo X = Creuser (devenir X)
echo Q = Quitter
echo ==================================================
choice /c wasdrxq /n >nul
set key=%errorlevel%
if %key%==1 set /a py-=1
if %key%==2 set /a px-=1
if %key%==3 set /a py+=1
if %key%==4 set /a px+=1
if %key%==5 call :placeBlockfr
if %key%==6 call :removeBlockfr
if %key%==7 goto games-fr
:: Garder le joueur à l'intérieur de la carte
if %px% lss 1 set px=1
if %px% gtr %width% set px=%width%
if %py% lss 1 set py=1
if %py% gtr %height% set py=%height%
goto gameplay-fr

:placeBlockfr
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!#!after!"
set "map%py%=!row!"
goto :eof

:removeBlockfr
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!X!after!"
set "map%py%=!row!"
goto :eof

:settings-fr
if %battery% LEQ 0 goto problem-fr
cls
echo.
echo Paramètres
echo.
echo [1] Design
echo [2] Réseau
echo [3] Informations Système
echo [4] Changer la Langue
echo [5] Retour au Bureau
echo.
set /p settingfr=Entrez votre choix (1-5): 
if "%settingfr%"=="1" goto design-fr
if "%settingfr%"=="2" goto network-fr
if "%settingfr%"=="3" goto info-fr
if "%settingfr%"=="4" goto langsetup
if "%settingfr%"=="5" goto desktop-fr
echo Choix invalide ! Réessayez.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto settings-fr

:design-fr
cls
echo.
echo Design
echo.
echo Couleur d’arrière-plan : Noir
echo Couleur du texte : Vert
echo.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto settings-fr

:network-fr
cls
echo.
echo Configuration réseau
echo.
echo État : Non connecté
echo.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto settings-fr

:info-fr
cls
echo.
echo Informations système
echo.
echo Système d’exploitation : RayOS Premium
echo Nom de l’appareil : inconnu
echo Type d’appareil : inconnu
echo.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto settings-fr

:power-fr
cls
echo Alimentation
echo.
echo [1] Éteindre
echo [2] Déconnexion
echo [3] Veille
echo [4] Mode léger
echo [5] Quitter
echo.
set /p frpower=Entrez un choix (1-5) : 
if "%frpower%"=="1" exit
if "%frpower%"=="2" goto login
if "%frpower%"=="3" goto sleep-fr
if "%frpower%"=="4" goto litemode
if "%frpower%"=="5" goto desktop-fr
echo.
echo Choix invalide ! Réessayez.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto desktop-fr

:sleep-fr
cls
echo.
echo Mode veille
echo.
echo Batterie : %battery%
echo.
echo Appuie sur une touche pour continuer . . .
pause >nul
goto power-fr

:problem-fr
cls
echo.
echo ! PROBLÈME DE BATTERIE !
echo.
echo.
echo Ta batterie est déchargée !
echo Niveau actuel de la batterie : %battery%%%
echo.
echo Appuie sur une touche pour continuer . . .
pause >nul
exit

rem === GERMAN ===

:desktop-ger
title RayOS Premium
color 02
cls
if %battery% LEQ 0 goto problem-ger
echo    Batterie: %battery%%%									      Kein Internet  %time%
echo ========================================================================================================================
echo.
echo 		    "    ____              ____  _____    ____                      _               "
echo 		    "   / __ \____ ___  __/ __ \/ ___/   / __ \________  ____ ___  (_)_  ______ ___ "
echo 		    "  / /_/ / __ `/ / / / / / /\__ \   / /_/ / ___/ _ \/ __ `__ \/ / / / / __ `__ \"
echo 		    " / _, _/ /_/ / /_/ / /_/ /___/ /  / ____/ /  /  __/ / / / / / / /_/ / / / / / /"
echo 		    "/_/ |_|\__,_/\__, /\____//____/  /_/   /_/   \___/_/ /_/ /_/_/\__,_/_/ /_/ /_/ "
echo 		    "            /____/                                                             "
echo.
echo Aufgaben:
echo.
echo [1] Suchen
echo [2] Rechner
echo [3] Datum
echo [4] Medien
echo [5] Spiele
echo [6] Dateimanager
echo [7] Einstellungen
echo [8] Energie
echo.
set /p gertask=Option eingeben (1-8): 
if "%gertask%"=="1" goto search-ger
if "%gertask%"=="2" goto calculator-ger
if "%gertask%"=="3" goto date-ger
if "%gertask%"=="4" goto media-ger
if "%gertask%"=="5" goto games-ger
if "%gertask%"=="6" goto files-ger
if "%gertask%"=="7" goto settings-ger
if "%gertask%"=="8" goto power-ger
echo.
echo Ungültige Auswahl! Bitte versuche es erneut.
echo.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto desktop-ger

:search-ger
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ger
cls
echo.
echo Suchmaschine
echo.
echo.
set /p gersearchquery=Suchen: 
if /i "%gersearchquery%"=="hallo" (
	echo.
    echo Kein Ergebnis
	echo.
) else (
	echo.
    echo Kein Ergebnis
	echo.
)
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto desktop-ger

:files-ger
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ger
cls
echo.
echo Dateimanager
echo.
echo DIR Fotos                  2 Dateien
echo DIR Videos                 1 Datei
echo DIR Audios                 0 Dateien
echo DIR Nachrichten            1 Datei
echo DIR Spiele                 1 Datei
echo.
echo Nur-Lesen-Modus ist aktiviert.
echo.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto desktop-ger

:calculator-ger
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ger
cls
echo Rechner
echo.
set /p "gerexpression=Gib eine Rechnung ein: "
set /a gerresult=%gerexpression%
echo.
echo Ergebnis: %gerresult%
echo.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto desktop-ger

:date-ger
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ger
cls
echo.
echo Datum
echo.
echo Aktuelles Datum: %date%
echo Aktuelle Uhrzeit: %time%
echo.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto desktop-ger

:media-ger
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ger
cls
echo Medien
echo.
echo [1] Fotos
echo [2] Videos
echo [3] Musik-Player
echo [4] Nachrichten
echo [5] Beenden
echo.
set /p germedia=Option eingeben (1-5): 
if "%germedia%"=="1" goto photos-ger
if "%germedia%"=="2" goto videos-ger
if "%germedia%"=="3" goto music-ger
if "%germedia%"=="4" goto messages-ger
if "%germedia%"=="5" goto desktop-ger
echo.
echo Ungültige Auswahl! Bitte versuche es erneut.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto media-ger

:photos-ger
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ger
cls
echo.
echo Fotos
echo.
echo [1] hund.png
echo [2] katze.png
echo [3] Beenden
echo.
set /p gerphoto=Bild öffnen (1-3): 
if "%gerphoto%"=="1" goto dogpic-ger
if "%gerphoto%"=="2" goto catpic-ger
if "%gerphoto%"=="3" goto desktop-ger
echo Ungültige Auswahl! Bitte versuche es erneut.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto photos-ger

:dogpic-ger
cls
echo.
echo Dateiname: hund.png
echo.
echo "..............................."
echo "..........+++-..--++-.........."
echo ".....++-+............++++-....."
echo "...++--+-.............+--++...."
echo "..+----#..--......--..+----#..."
echo ".+----++..##+....-##-.++----+-."
echo "-+----+................#----+-."
echo ".-+---+......####-.....#---++.."
echo "....++-..-...-##-...--.-+--...."
echo "......--..++-+##+-+#-.-+......."
echo ".......-+....+--+-...--........"
echo ".........-++-.--..++-.........."
echo "..............................."
echo.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto photos-ger

:catpic-ger
cls
echo.
echo Dateiname: katze.png
echo.
echo "....--...................--...."
echo "..-#+-++-.............-++-+#-.."
echo "..-#++--+#############+--++#-.."
echo "..-#+++-----+--+--+-----+++#-.."
echo "...#-----------+---+-------#..."
echo "..-+-----------+-----------+-.."
echo ".-#+------.--+-+-+...------+#-."
echo ".#+-++#+++#+-+++++-++####++-++."
echo ".#++-++-+##+#++-+-#+##+-++-++#."
echo ".#+------+---+---+---+------++."
echo ".-#--++-----.#---#.-----++--#-."
echo "..-#+---+-.....#.....-+---+#-.."
echo "....+++++-.-+##.##+-.-+++++...."
echo ".....--++++++-----++++++--....."
echo "..............................."
echo.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto photos-ger

:videos-ger
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ger
cls
echo.
echo Videos
echo.
echo [1] bewegenderball.vid
echo [2] Beenden
echo.
set /p gervideo=Video öffnen (1-2): 
if "%gervideo%"=="1" goto animation-ger
if "%gervideo%"=="2" goto desktop-ger
echo Ungültige Auswahl! Bitte versuche es erneut.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto videos-ger

:animation-ger
cls
echo.
echo Dateiname: bewegenderball.vid
echo.
echo O
ping -n 2 localhost >nul
cls
echo.
echo Dateiname: bewegenderball.vid
echo.
echo  O
ping -n 2 localhost >nul
cls
echo.
echo Dateiname: bewegenderball.vid 
echo.
echo   O
ping -n 2 localhost >nul
cls 
echo.
echo Dateiname: bewegenderball.vid
echo.
echo Video ist beendet
echo.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto videos-ger

:music-ger
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ger
cls
echo.
echo Musik-Player
echo.
echo Keine Audiodateien gespeichert.
echo.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto desktop-ger

:messages-ger
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ger
cls
echo.
echo Nachrichten
echo.
echo [ 1 neue Nachricht ] 
echo.
pause >nul
echo.
echo ==================================
echo Von: RayOS Premium Entwickler
echo Betreff: Willkommen
echo ==================================
echo Willkommen bei RayOS Premium
echo Wir freuen uns, dass du unser
echo Betriebssystem benutzt. Viel Spaß 
echo beim Erkunden!
echo ==================================
echo.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto desktop-ger

:games-ger
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-ger
cls
echo.
echo Was möchtest du spielen?
echo.
echo [1] Minecraft 2D
echo [2] Beenden
echo.
set /p gergamechoice=Gib deine Wahl ein (1-2): 
if "%gergamechoice%"=="1" goto gameplay-ger
if "%gergamechoice%"=="2" goto desktop-ger
echo Ungültige Wahl! Versuche es erneut.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto desktop-ger

:gameplay-ger
cls
echo   "___  ____                            __ _   "
echo   "|  \/  (_)                          / _| |  "
echo   "| .  . |_ _ __   ___  ___ _ __ __ _| |_| |_ "
echo   "| |\/| | | '_ \ / _ \/ __| '__/ _` |  _| __|"
echo   "| |  | | | | | |  __/ (__| | | (_| | | | |_ "
echo   "\_|  |_/_|_| |_|\___|\___|_|  \__,_|_|  \__|"
echo.
:: KARTE ZEICHNEN
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
echo Steuerung:
echo W A S D = Bewegen
echo R = Block setzen (#)
echo X = Graben (zu X machen)
echo Q = Beenden
echo ==================================================
choice /c wasdrxq /n >nul
set key=%errorlevel%
if %key%==1 set /a py-=1
if %key%==2 set /a px-=1
if %key%==3 set /a py+=1
if %key%==4 set /a px+=1
if %key%==5 call :placeBlockger
if %key%==6 call :removeBlockger
if %key%==7 goto games-ger
:: Spieler innerhalb der Karte halten
if %px% lss 1 set px=1
if %px% gtr %width% set px=%width%
if %py% lss 1 set py=1
if %py% gtr %height% set py=%height%
goto gameplay-ger

:placeBlockger
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!#!after!"
set "map%py%=!row!"
goto :eof

:removeBlockger
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!X!after!"
set "map%py%=!row!"
goto :eof

:settings-ger
if %battery% LEQ 0 goto problem-ger
cls
echo.
echo Einstellungen
echo.
echo [1] Design
echo [2] Netzwerk
echo [3] Systeminformationen
echo [4] Sprache ändern
echo [5] Zurück zum Desktop
echo.
set /p settingger=Option eingeben (1-5): 
if "%settingger%"=="1" goto design-ger
if "%settingger%"=="2" goto network-ger
if "%settingger%"=="3" goto info-ger
if "%settingger%"=="4" goto langsetup
if "%settingger%"=="5" goto desktop-ger
echo Ungültige Auswahl! Bitte versuche es erneut.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto settings-ger 

:design-ger
cls
echo.
echo Design
echo.
echo Hintergrundfarbe: Schwarz
echo Schriftfarbe: Grün
echo.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto settings-ger

:network-ger
cls
echo.
echo Netzwerkkonfiguration
echo.
echo Status: Nicht verbunden
echo.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto settings-ger

:info-ger
cls
echo.
echo Systeminformationen
echo.
echo Betriebssystem: RayOS Premium
echo Gerätename:     unbekannt
echo Gerätetyp:      unbekannt
echo.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto settings-ger

:power-ger
cls
echo Energie
echo.
echo [1] Herunterfahren
echo [2] Abmelden
echo [3] Energiesparmodus
echo [4] Leichtmodus
echo [5] Beenden
echo.
set /p gerpower=Option eingeben (1-5): 
if "%gerpower%"=="1" exit
if "%gerpower%"=="2" goto login
if "%gerpower%"=="3" goto sleep-ger
if "%gerpower%"=="4" goto litemode
if "%gerpower%"=="5" goto desktop-ger
echo.
echo Ungültige Auswahl! Bitte versuche es erneut.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto desktop-ger

:sleep-ger
cls
echo.
echo Energiesparmodus
echo.
echo Batterie: %battery%
echo.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
goto power-ger

:problem-ger
cls
echo.
echo ! BATTERIEPROBLEM !
echo.
echo.
echo Deine Batterie ist leer!
echo Aktueller Batteriestand: %battery%%%
echo.
echo Drücken Sie eine beliebige Taste, um fortzufahren . . .
pause >nul
exit

rem === PORTUGUÊS ===

:desktop-pt
title RayOS Premium
color 02
cls
if %battery% LEQ 0 goto problem-pt
echo    Bateria: %battery%%%									       Sem Internet  %time%
echo ========================================================================================================================
echo.
echo 		    "    ____              ____  _____    ____                      _               "
echo 		    "   / __ \____ ___  __/ __ \/ ___/   / __ \________  ____ ___  (_)_  ______ ___ "
echo 		    "  / /_/ / __ `/ / / / / / /\__ \   / /_/ / ___/ _ \/ __ `__ \/ / / / / __ `__ \"
echo 		    " / _, _/ /_/ / /_/ / /_/ /___/ /  / ____/ /  /  __/ / / / / / / /_/ / / / / / /"
echo 		    "/_/ |_|\__,_/\__, /\____//____/  /_/   /_/   \___/_/ /_/ /_/_/\__,_/_/ /_/ /_/ "
echo 		    "            /____/                                                             "
echo.
echo Tarefas:
echo.
echo [1] Pesquisa
echo [2] Calculadora
echo [3] Data
echo [4] Mídia
echo [5] Jogos
echo [6] Explorador de Arquivos
echo [7] Configurações
echo [8] Energia
echo.
set /p pttask=Escolha uma opção (1-8): 
if "%pttask%"=="1" goto search-pt
if "%pttask%"=="2" goto calculator-pt
if "%pttask%"=="3" goto date-pt
if "%pttask%"=="4" goto media-pt
if "%pttask%"=="5" goto games-pt
if "%pttask%"=="6" goto files-pt
if "%pttask%"=="7" goto settings-pt
if "%pttask%"=="8" goto power-pt
echo.
echo Opção inválida! Tente novamente.
echo.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto desktop-pt

:search-pt
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-pt
cls
echo.
echo Motor de Pesquisa
echo.
set /p ptsearchquery=Pesquisar: 
if /i "%ptsearchquery%"=="olá" (
	echo.
    echo Nenhum resultado
	echo.
) else (
	echo.
    echo Nenhum resultado
	echo.
)
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto desktop-pt

:files-pt
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-pt
cls
echo.
echo Explorador de Arquivos
echo.
echo DIR Fotos                  2 arquivos
echo DIR Vídeos                 1 arquivo
echo DIR Áudios                 0 arquivo
echo DIR Mensagens              1 arquivo
echo DIR Jogos                  1 arquivo
echo.
echo Página SOMENTE leitura ativada.
echo.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto desktop-pt

:calculator-pt
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-pt
cls
echo Calculadora
echo.
set /p "expressionpt=Digite a expressão: "
echo.
set /a resultpt=%expressionpt%
echo Resultado: %resultpt%
echo.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto menu

:date-pt
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-pt
cls
echo.
echo Data
echo.
echo Data atual: %date%
echo Hora atual: %time%
echo.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto desktop-pt

:media-pt
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-pt
cls
echo Mídia
echo.
echo [1] Fotos
echo [2] Vídeos
echo [3] Reprodutor de Música
echo [4] Mensagens
echo [5] Sair
echo.
set /p ptmedia=Escolha uma opção (1-5): 
if "%ptmedia%"=="1" goto photos-pt
if "%ptmedia%"=="2" goto videos-pt
if "%ptmedia%"=="3" goto music-pt
if "%ptmedia%"=="4" goto messages-pt
if "%ptmedia%"=="5" goto desktop-pt
echo.
echo Opção inválida! Tente novamente.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto media-pt

:photos-pt
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-pt
cls
echo.
echo Fotos
echo.
echo [1] cachorro.png
echo [2] gato.png
echo [3] Sair
echo.
set /p ptphoto=Abrir imagem (1-3): 
if "%ptphoto%"=="1" goto dogpic-pt
if "%ptphoto%"=="2" goto catpic-pt
if "%ptphoto%"=="3" goto desktop-pt
echo Opção inválida! Tente novamente.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto photos-pt

:dogpic-pt
cls
echo.
echo Nome do Arquivo: cachorro.png
echo.
echo "..............................."
echo "..........+++-..--++-.........."
echo ".....++-+............++++-....."
echo "...++--+-.............+--++...."
echo "..+----#..--......--..+----#..."
echo ".+----++..##+....-##-.++----+-."
echo "-+----+................#----+-."
echo ".-+---+......####-.....#---++.."
echo "....++-..-...-##-...--.-+--...."
echo "......--..++-+##+-+#-.-+......."
echo ".......-+....+--+-...--........"
echo ".........-++-.--..++-.........."
echo "..............................."
echo.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto photos-pt

:catpic-pt
cls
echo.
echo Nome do Arquivo: gato.png
echo.
echo "....--...................--...."
echo "..-#+-++-.............-++-+#-.."
echo "..-#++--+#############+--++#-.."
echo "..-#+++-----+--+--+-----+++#-.."
echo "...#-----------+---+-------#..."
echo "..-+-----------+-----------+-.."
echo ".-#+------.--+-+-+...------+#-."
echo ".#+-++#+++#+-+++++-++####++-++."
echo ".#++-++-+##+#++-+-#+##+-++-++#."
echo ".#+------+---+---+---+------++."
echo ".-#--++-----.#---#.-----++--#-."
echo "..-#+---+-.....#.....-+---+#-.."
echo "....+++++-.-+##.##+-.-+++++...."
echo ".....--++++++-----++++++--....."
echo "..............................."
echo.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto photos-pt

:videos-pt
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-pt
cls
echo.
echo Vídeos
echo.
echo [1] bolaemmovimento.vid
echo [2] Sair
echo.
set /p ptvideo=Abrir vídeo (1-2): 
if "%ptvideo%"=="1" goto animation-pt
if "%ptvideo%"=="2" goto desktop-pt
echo Opção inválida! Tente novamente.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto videos-pt

:animation-pt
cls
echo.
echo Nome do Arquivo: bolaemmovimento.vid
echo.
echo O
ping -n 2 localhost >nul
cls
echo.
echo Nome do Arquivo: bolaemmovimento.vid
echo.
echo  O
ping -n 2 localhost >nul
cls
echo.
echo Nome do Arquivo: bolaemmovimento.vid
echo.
echo   O
ping -n 2 localhost >nul
cls 
echo.
echo Nome do Arquivo: bolaemmovimento.vid
echo.
echo O vídeo terminou
echo.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto videos-pt

:music-pt
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-pt
cls
echo.
echo Reprodutor de Música
echo.
echo Nenhum arquivo de áudio salvo.
echo.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto desktop-pt

:messages-pt
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-pt
cls
echo.
echo Mensagens
echo.
echo [ 1 Notificação de Mensagem ] 
echo.
pause >nul
echo.
echo ==================================
echo De: Desenvolvedores do RayOS Premium
echo Assunto: Boas-vindas
echo ==================================
echo Bem-vindo ao RayOS Premium!
echo Ficamos felizes que você esteja
echo usando nosso sistema operacional.
echo Aproveite para explorar sua nova 
echo ferramenta!
echo ==================================
echo.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto desktop-pt

:games-pt
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-pt
cls
echo.
echo O que você quer jogar?
echo.
echo [1] Minecraft 2D
echo [2] Sair
echo.
set /p ptgamechoice=Digite sua escolha (1-2): 
if "%ptgamechoice%"=="1" goto gameplay-pt
if "%ptgamechoice%"=="2" goto desktop-pt
echo Escolha inválida! Tente novamente.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto desktop-pt

:gameplay-pt
cls
echo   "___  ____                            __ _   "
echo   "|  \/  (_)                          / _| |  "
echo   "| .  . |_ _ __   ___  ___ _ __ __ _| |_| |_ "
echo   "| |\/| | | '_ \ / _ \/ __| '__/ _` |  _| __|"
echo   "| |  | | | | | |  __/ (__| | | (_| | | | |_ "
echo   "\_|  |_/_|_| |_|\___|\___|_|  \__,_|_|  \__|"
echo.
:: DESENHAR O MAPA
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
echo Controles:
echo W A S D = Mover
echo R = Colocar bloco (#)
echo X = Cavar (transformar em X)
echo Q = Sair
echo ==================================================
choice /c wasdrxq /n >nul
set key=%errorlevel%
if %key%==1 set /a py-=1
if %key%==2 set /a px-=1
if %key%==3 set /a py+=1
if %key%==4 set /a px+=1
if %key%==5 call :placeBlockpt
if %key%==6 call :removeBlockpt
if %key%==7 goto games-pt
:: Mantendo o jogador dentro do mapa
if %px% lss 1 set px=1
if %px% gtr %width% set px=%width%
if %py% lss 1 set py=1
if %py% gtr %height% set py=%height%
goto gameplay-pt

:placeBlockpt
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!#!after!"
set "map%py%=!row!"
goto :eof

:removeBlockpt
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!X!after!"
set "map%py%=!row!"
goto :eof

:settings-pt
if %battery% LEQ 0 goto problem-pt
cls
echo.
echo Configurações
echo.
echo [1] Design
echo [2] Rede
echo [3] Informações do Sistema
echo [4] Mudar Idioma
echo [5] Voltar à Área de Trabalho
echo.
set /p settingpt=Escolha uma opção (1-5): 
if "%settingpt%"=="1" goto design-pt
if "%settingpt%"=="2" goto network-pt
if "%settingpt%"=="3" goto info-pt
if "%settingpt%"=="4" goto langsetup
if "%settingpt%"=="5" goto desktop-pt
echo Opção inválida! Tente novamente.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto settings-pt 

:design-pt
cls
echo.
echo Design
echo.
echo Cor de Fundo: Preto
echo Cor da Fonte: Verde
echo.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto settings-pt

:network-pt
cls
echo.
echo Configuração de Rede
echo.
echo Status: Desconectado
echo.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto settings-pt

:info-pt
cls
echo.
echo Informações do Sistema
echo.
echo Sistema Operacional: RayOS Premium
echo Nome do Dispositivo: desconhecido
echo Tipo de Dispositivo: desconhecido
echo.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto settings-pt

:power-pt
cls
echo Energia
echo.
echo [1] Desligar
echo [2] Encerrar Sessão
echo [3] Suspender
echo [4] Modo Leve
echo [5] Sair
echo.
set /p ptpower=Escolha uma opção(1-5): 
if "%ptpower%"=="1" exit
if "%ptpower%"=="2" goto login
if "%ptpower%"=="3" goto sleep-pt
if "%ptpower%"=="4" goto litemode
if "%ptpower%"=="5" goto desktop-pt
echo.
echo Opção inválida! Tente novamente.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto desktop-pt

:sleep-pt
cls
echo.
echo Modo de Suspensão
echo.
echo Bateria: %battery%
echo.
echo Pressione qualquer tecla para continuar . . .
pause >nul
goto power-pt

:problem-pt
cls
echo.
echo ! PROBLEMA NA BATERIA !
echo.
echo.
echo Sua bateria acabou!
echo Nível atual da bateria: %battery%%%
echo.
echo Pressione qualquer tecla para continuar . . .
pause >nul
exit

rem === ITALIANO ===

:desktop-it
title RayOS Premium
color 02
cls
if %battery% LEQ 0 goto problem-it
echo    Batteria: %battery%%%									Nessuna Connessione  %time%
echo ========================================================================================================================
echo.
echo 		    "    ____              ____  _____    ____                      _               "
echo 		    "   / __ \____ ___  __/ __ \/ ___/   / __ \________  ____ ___  (_)_  ______ ___ "
echo 		    "  / /_/ / __ `/ / / / / / /\__ \   / /_/ / ___/ _ \/ __ `__ \/ / / / / __ `__ \"
echo 		    " / _, _/ /_/ / /_/ / /_/ /___/ /  / ____/ /  /  __/ / / / / / / /_/ / / / / / /"
echo 		    "/_/ |_|\__,_/\__, /\____//____/  /_/   /_/   \___/_/ /_/ /_/_/\__,_/_/ /_/ /_/ "
echo 		    "            /____/                                                             "
echo.
echo Attività:
echo.
echo [1] Ricerca
echo [2] Calcolatrice
echo [3] Data
echo [4] Media
echo [5] Giochi
echo [6] Esplora File
echo [7] Impostazioni
echo [8] Alimentazione
echo.
set /p ittask=Inserisci scelta (1-8): 
if "%ittask%"=="1" goto search-it
if "%ittask%"=="2" goto calculator-it
if "%ittask%"=="3" goto date-it
if "%ittask%"=="4" goto media-it
if "%ittask%"=="5" goto games-it
if "%ittask%"=="6" goto files-it
if "%ittask%"=="7" goto settings-it
if "%ittask%"=="8" goto power-it
echo.
echo Scelta non valida! Riprova.
echo.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto desktop-it

:search-it
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-it
cls
echo.
echo Motore di Ricerca
echo.
set /p itsearchquery=Cerca: 
if /i "%itsearchquery%"=="ciao" (
	echo.
    echo Nessun risultato
	echo.
) else (
	echo.
    echo Nessun risultato
	echo.
)
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto desktop-it

:files-it
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-it
cls
echo.
echo Esplora File
echo.
echo DIR Foto                    2 file
echo DIR Video                   1 file
echo DIR Audio                   0 file
echo DIR Messaggi                1 file
echo DIR Giochi                  1 file
echo.
echo La modalità di sola lettura è attiva.
echo.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto desktop-it

:calculator-it
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-it
cls
echo Calcolatrice
echo.
set /p "itexpression=Inserisci espressione: "
set /a itresult=%itexpression%
echo.
echo Risultato: %itresult%
echo.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto desktop-it

:date-it
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-it
cls
echo.
echo Data
echo.
echo Data Corrente: %date%
echo Ora Corrente: %time%
echo.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto desktop-it

:media-it
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-it
cls
echo Media
echo.
echo [1] Foto
echo [2] Video
echo [3] Lettore Musicale
echo [4] Messaggi
echo [5] Esci
echo.
set /p itmedia=Inserisci scelta (1-5): 
if "%itmedia%"=="1" goto photos-it
if "%itmedia%"=="2" goto videos-it
if "%itmedia%"=="3" goto music-it
if "%itmedia%"=="4" goto messages-it
if "%itmedia%"=="5" goto desktop-it
echo.
echo Scelta non valida! Riprova.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto media-it

:photos-it
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-it
cls
echo.
echo Foto
echo.
echo [1] cane.png
echo [2] gatto.png
echo [3] Esci
echo.
set /p itphoto=Apri immagine (1-3): 
if "%itphoto%"=="1" goto dogpic-it
if "%itphoto%"=="2" goto catpic-it
if "%itphoto%"=="3" goto desktop-it
echo Scelta non valida! Riprova.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto photos-it

:dogpic-it
cls
echo.
echo Nome File: cane.png
echo.
echo "..............................."
echo "..........+++-..--++-.........."
echo ".....++-+............++++-....."
echo "...++--+-.............+--++...."
echo "..+----#..--......--..+----#..."
echo ".+----++..##+....-##-.++----+-."
echo "-+----+................#----+-."
echo ".-+---+......####-.....#---++.."
echo "....++-..-...-##-...--.-+--...."
echo "......--..++-+##+-+#-.-+......."
echo ".......-+....+--+-...--........"
echo ".........-++-.--..++-.........."
echo "..............................."
echo.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto photos-it

:catpic-it
cls
echo.
echo Nome File: gatto.png
echo.
echo "....--...................--...."
echo "..-#+-++-.............-++-+#-.."
echo "..-#++--+#############+--++#-.."
echo "..-#+++-----+--+--+-----+++#-.."
echo "...#-----------+---+-------#..."
echo "..-+-----------+-----------+-.."
echo ".-#+------.--+-+-+...------+#-."
echo ".#+-++#+++#+-+++++-++####++-++."
echo ".#++-++-+##+#++-+-#+##+-++-++#."
echo ".#+------+---+---+---+------++."
echo ".-#--++-----.#---#.-----++--#-."
echo "..-#+---+-.....#.....-+---+#-.."
echo "....+++++-.-+##.##+-.-+++++...."
echo ".....--++++++-----++++++--....."
echo "..............................."
echo.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto photos-it

:videos-it
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-it
cls
echo.
echo Video
echo.
echo [1] palla_movente.vid
echo [2] Esci
echo.
set /p itvideo=Apri un video (1-2): 
if "%itvideo%"=="1" goto animation-it
if "%itvideo%"=="2" goto desktop-it
echo Scelta non valida! Riprova.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto videos-it

:animation-it
cls
echo.
echo Nome File: palla_movente.vid
echo.
echo O
ping -n 2 localhost >nul
cls
echo.
echo Nome File: palla_movente.vid
echo.
echo  O
ping -n 2 localhost >nul
cls
echo.
echo Nome File: palla_movente.vid
echo.
echo   O
ping -n 2 localhost >nul
cls 
echo.
echo Nome File: palla_movente.vid
echo.
echo Il video è terminato.
echo.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto videos-it

:music-it
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-it
cls
echo.
echo Lettore Musicale
echo.
echo Nessun file audio salvato.
echo.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto desktop-it

:messages-it
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-it
cls
echo.
echo Messaggi
echo.
echo [ 1 Notifica Messaggio ] 
echo.
pause >nul
echo.
echo ==================================
echo Da: Sviluppatori di RayOS Premium
echo Oggetto: Benvenuto
echo ==================================
echo Benvenuto su RayOS Premium
echo Siamo lieti che tu stia usando
echo il nostro sistema operativo.
echo Buona esplorazione!
echo ==================================
echo.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto desktop-it

:games-it
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-it
cls
echo.
echo A cosa vuoi giocare?
echo.
echo [1] Minecraft 2D
echo [2] Esci
echo.
set /p itgamechoice=Inserisci la tua scelta (1-2): 
if "%itgamechoice%"=="1" goto gameplay-it
if "%itgamechoice%"=="2" goto desktop-it
echo Scelta non valida! Riprova.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto desktop-it

:gameplay-it
cls
echo   "___  ____                            __ _   "
echo   "|  \/  (_)                          / _| |  "
echo   "| .  . |_ _ __   ___  ___ _ __ __ _| |_| |_ "
echo   "| |\/| | | '_ \ / _ \/ __| '__/ _` |  _| __|"
echo   "| |  | | | | | |  __/ (__| | | (_| | | | |_ "
echo   "\_|  |_/_|_| |_|\___|\___|_|  \__,_|_|  \__|"
echo.
:: DISEGNARE LA MAPPA
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
echo Controlli:
echo W A S D = Muovere
echo R = Posizionare un blocco (#)
echo X = Scavare (diventa X)
echo Q = Uscire
echo ==================================================
choice /c wasdrxq /n >nul
set key=%errorlevel%
if %key%==1 set /a py-=1
if %key%==2 set /a px-=1
if %key%==3 set /a py+=1
if %key%==4 set /a px+=1
if %key%==5 call :placeBlockit
if %key%==6 call :removeBlockit
if %key%==7 goto games-it
:: Mantieni il giocatore all'interno della mappa
if %px% lss 1 set px=1
if %px% gtr %width% set px=%width%
if %py% lss 1 set py=1
if %py% gtr %height% set py=%height%
goto gameplay-it

:placeBlockit
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!#!after!"
set "map%py%=!row!"
goto :eof

:removeBlockit
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!X!after!"
set "map%py%=!row!"
goto :eof

:settings-it
if %battery% LEQ 0 goto problem-it
cls
echo.
echo Impostazioni
echo.
echo [1] Aspetto
echo [2] Rete
echo [3] Info di Sistema
echo [4] Cambia Lingua
echo [5] Ritorna al Desktop
echo.
set /p settingit=Inserisci scelta (1-5): 
if "%settingit%"=="1" goto design-it
if "%settingit%"=="2" goto network-it
if "%settingit%"=="3" goto info-it
if "%settingit%"=="4" goto langsetup
if "%settingit%"=="5" goto desktop-it
echo Scelta non valida! Riprova.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto settings-it 

:design-it
cls
echo.
echo Aspetto
echo.
echo Colore Sfondo: Nero
echo Colore Testo: Verde
echo.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto settings-it

:network-it
cls
echo.
echo Configurazione di Rete
echo.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto settings-it

:info-it
cls
echo.
echo Informazioni di Sistema
echo.
echo Sistema Operativo: RayOS Premium
echo Nome Dispositivo:  sconosciuto
echo Tipo Dispositivo:  sconosciuto
echo.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto settings-it

:power-it
cls
echo Alimentazione
echo.
echo [1] Spegni
echo [2] Disconnetti
echo [3] Sospensione
echo [4] Modalità Leggera
echo [5] Esci
echo.
set /p itpower=Inserisci scelta (1-5): 
if "%itpower%"=="1" exit
if "%itpower%"=="2" goto login
if "%itpower%"=="3" goto sleep-it
if "%itpower%"=="4" goto litemode
if "%itpower%"=="5" goto design-it
echo.
echo Scelta non valida! Riprova.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto desktop-it

:sleep-it
cls
echo.
echo Modalità Sospensione
echo.
echo Batteria: %battery%
echo.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
goto power-it

:problem-it
cls
echo.
echo ! PROBLEMA DI BATTERIA !
echo.
echo.
echo La tua batteria è scarica!
echo Livello attuale della batteria: %battery%%%
echo.
echo Premere un tasto qualsiasi per continuare . . .
pause >nul
exit

rem === DUTCH ===

:desktop-du
title RayOS Premium
color 02
cls
if %battery% LEQ 0 goto problem-du
echo    Batterij: %battery%%%									      Geen internet  %time%
echo ========================================================================================================================
echo.
echo 		    "    ____              ____  _____    ____                      _               "
echo 		    "   / __ \____ ___  __/ __ \/ ___/   / __ \________  ____ ___  (_)_  ______ ___ "
echo 		    "  / /_/ / __ `/ / / / / / /\__ \   / /_/ / ___/ _ \/ __ `__ \/ / / / / __ `__ \"
echo 		    " / _, _/ /_/ / /_/ / /_/ /___/ /  / ____/ /  /  __/ / / / / / / /_/ / / / / / /"
echo 		    "/_/ |_|\__,_/\__, /\____//____/  /_/   /_/   \___/_/ /_/ /_/_/\__,_/_/ /_/ /_/ "
echo 		    "            /____/                                                             "
echo.
echo Taken:
echo.
echo [1] Zoeken
echo [2] Rekenmachine
echo [3] Datum
echo [4] Media
echo [5] Spellen
echo [6] Bestandsverkenner
echo [7] Instellingen
echo [8] Energie
echo.
set /p dutask=Voer keuze in (1-8): 
if "%dutask%"=="1" goto search-du
if "%dutask%"=="2" goto calculator-du
if "%dutask%"=="3" goto date-du
if "%dutask%"=="4" goto media-du
if "%dutask%"=="5" goto games-du
if "%dutask%"=="6" goto files-du
if "%dutask%"=="7" goto settings-du
if "%dutask%"=="8" goto power-du
echo.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto desktop-du

:search-du
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-du
cls
echo.
echo Zoekmachine
echo.
echo.
set /p duzoek=Zoeken: 
if /i "%duzoek%"=="hallo" (
	echo.
    echo Geen resultaat
	echo.
) else (
	echo.
    echo Geen resultaat
	echo.
)
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto desktop-du

:files-du
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-du
cls
echo.
echo Bestandsverkenner
echo.
echo DIR Foto's                 2 bestanden
echo DIR Video's                1 bestand
echo DIR Audio's                0 bestanden
echo DIR Berichten              1 bestand
echo DIR Spellen                1 bestand
echo.
echo Alleen-lezen modus is ingeschakeld.
echo.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto desktop-du

:calculator-du
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-du
cls
echo Rekenmachine
echo.
set /p "dureken=Voer berekening in: "
set /a dures=%dureken%
echo.
echo Resultaat: %dures%
echo.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto desktop-du

:date-du
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-du
cls
echo.
echo Datum
echo.
echo Huidige datum: %date%
echo Huidige tijd:  %time%
echo.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto desktop-du

:media-du
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-du
cls
echo Media
echo.
echo [1] Foto's
echo [2] Video's
echo [3] Muziekspeler
echo [4] Berichten
echo [5] Afsluiten
echo.
set /p dumedia=Voer keuze in (1-5): 
if "%dumedia%"=="1" goto photos-du
if "%dumedia%"=="2" goto videos-du
if "%dumedia%"=="3" goto music-du
if "%dumedia%"=="4" goto messages-du
if "%dumedia%"=="5" goto desktop-du
echo.
echo Ongeldige keuze! Probeer opnieuw.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto media-du

:photos-du
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-du
cls
echo.
echo Foto's
echo.
echo [1] hond.png
echo [2] kat.png
echo [3] Afsluiten
echo.
set /p duphoto=Open afbeelding (1-3): 
if "%duphoto%"=="1" goto dogpic-du
if "%duphoto%"=="2" goto catpic-du
if "%duphoto%"=="3" goto desktop-du
echo Ongeldige keuze! Probeer opnieuw.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto photos-du

:dogpic-du
cls
echo.
echo Bestand: hond.png
echo.
echo "..............................."
echo "..........+++-..--++-.........."
echo ".....++-+............++++-....."
echo "...++--+-.............+--++...."
echo "..+----#..--......--..+----#..."
echo ".+----++..##+....-##-.++----+-."
echo "-+----+................#----+-."
echo ".-+---+......####-.....#---++.."
echo "....++-..-...-##-...--.-+--...."
echo "......--..++-+##+-+#-.-+......."
echo ".......-+....+--+-...--........"
echo ".........-++-.--..++-.........."
echo "..............................."
echo.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto photos-du

:catpic-du
cls
echo.
echo Bestand: kat.png
echo.
echo "....--...................--...."
echo "..-#+-++-.............-++-+#-.."
echo "..-#++--+#############+--++#-.."
echo "..-#+++-----+--+--+-----+++#-.."
echo "...#-----------+---+-------#..."
echo "..-+-----------+-----------+-.."
echo ".-#+------.--+-+-+...------+#-."
echo ".#+-++#+++#+-+++++-++####++-++."
echo ".#++-++-+##+#++-+-#+##+-++-++#."
echo ".#+------+---+---+---+------++."
echo ".-#--++-----.#---#.-----++--#-."
echo "..-#+---+-.....#.....-+---+#-.."
echo "....+++++-.-+##.##+-.-+++++...."
echo ".....--++++++-----++++++--....."
echo "..............................."
echo.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto photos-du

:videos-du
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-du
cls
echo.
echo Video's
echo.
echo [1] bewegendebal.vid
echo [2] Afsluiten
echo.
set /p duvideo=Open een video (1-2): 
if "%duvideo%"=="1" goto animation-du
if "%duvideo%"=="2" goto desktop-du
echo Ongeldige keuze! Probeer opnieuw.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto videos-du

:animation-du
cls
echo.
echo Bestand: bewegendebal.vid
echo.
echo O
ping -n 2 localhost >nul
cls
echo.
echo Bestand: bewegendebal.vid
echo.
echo  O
ping -n 2 localhost >nul
cls
echo.
echo Bestand: bewegendebal.vid 
echo.
echo   O
ping -n 2 localhost >nul
cls 
echo.
echo Bestand: bewegendebal.vid
echo.
echo Video is afgelopen
echo.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto videos-du

:music-du
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-du
cls
echo.
echo Muziekspeler
echo.
echo Geen audiobestanden opgeslagen.
echo.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto desktop-du

:messages-du
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-du
cls
echo.
echo Berichten
echo.
echo [ 1 Berichtmelding ] 
echo.
pause >nul
echo.
echo ==================================
echo Van: RayOS Premium Ontwikkelaars
echo Onderwerp: Welkom
echo ==================================
echo Welkom bij RayOS Premium
echo We zijn blij dat je ons
echo besturingssysteem gebruikt. Veel plezier
echo met het verkennen van je nieuwe, eenvoudige tool.
echo ==================================
echo.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto desktop-du

:games-du
set /a battery=%battery%-1
if %battery% LEQ 0 goto problem-du
cls
echo.
echo Wat wil je spelen?
echo.
echo [1] Minecraft 2D
echo [2] Afsluiten
echo.
set /p dugamechoice=Voer je keuze in (1-2): 
if "%dugamechoice%"=="1" goto gameplay-du
if "%dugamechoice%"=="2" goto desktop-du
echo Ongeldige keuze! Probeer opnieuw.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto desktop-du

:gameplay-du
cls
echo   "___  ____                            __ _   "
echo   "|  \/  (_)                          / _| |  "
echo   "| .  . |_ _ __   ___  ___ _ __ __ _| |_| |_ "
echo   "| |\/| | | '_ \ / _ \/ __| '__/ _` |  _| __|"
echo   "| |  | | | | | |  __/ (__| | | (_| | | | |_ "
echo   "\_|  |_/_|_| |_|\___|\___|_|  \__,_|_|  \__|"
echo.
:: TEKEN KAART
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
echo Besturing:
echo W A S D = Bewegen
echo R = Plaats blok (#)
echo X = Graven (wordt X)
echo Q = Afsluiten
echo ==================================================
choice /c wasdrxq /n >nul
set key=%errorlevel%
if %key%==1 set /a py-=1
if %key%==2 set /a px-=1
if %key%==3 set /a py+=1
if %key%==4 set /a px+=1
if %key%==5 call :placeBlockdu
if %key%==6 call :removeBlockdu
if %key%==7 goto games-du
:: Houd speler binnen de kaart
if %px% lss 1 set px=1
if %px% gtr %width% set px=%width%
if %py% lss 1 set py=1
if %py% gtr %height% set py=%height%
goto gameplay-du

:placeBlockdu
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!#!after!"
set "map%py%=!row!"
goto :eof

:removeBlockdu
for /f "tokens=1,* delims==" %%a in ('set map%py%') do (
    set "row=%%b"
)
set /a left=%px%-1
set "before=!row:~0,%left%!"
set "after=!row:~%px%!"
set "row=!before!X!after!"
set "map%py%=!row!"
goto :eof

:settings-du
if %battery% LEQ 0 goto problem-du
cls
echo.
echo Instellingen
echo.
echo [1] Ontwerp
echo [2] Netwerk
echo [3] Systeeminfo
echo [4] Taal wijzigen
echo [5] Terug naar bureaublad
echo.
set /p dusetting=Voer keuze in (1-5): 
if "%dusetting%"=="1" goto design-du
if "%dusetting%"=="2" goto network-du
if "%dusetting%"=="3" goto info-du
if "%dusetting%"=="4" goto langsetup
if "%dusetting%"=="5" goto desktop-du
echo Ongeldige keuze! Probeer opnieuw.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto settings-du 

:design-du
cls
echo.
echo Ontwerp
echo.
echo Achtergrondkleur: Zwart
echo Tekstkleur: Groen
echo.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto settings-du

:network-du
cls
echo.
echo Netwerkconfiguratie
echo.
echo Status: Niet verbonden
echo.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto settings-du

:info-du
cls
echo.
echo Systeeminformatie
echo.
echo Besturingssysteem: RayOS Premium
echo Apparaatnaam: onbekend
echo Apparaattype: onbekend
echo.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto settings-du

:power-du
cls
echo Energie
echo.
echo [1] Uitschakelen
echo [2] Afmelden
echo [3] Slaapstand
echo [4] Lichte modus
echo [5] Afsluiten
echo.
set /p dupower=Voer keuze in (1-5): 
if "%dupower%"=="1" exit
if "%dupower%"=="2" goto login
if "%dupower%"=="3" goto sleep-du
if "%dupower%"=="4" goto litemode
if "%dupower%"=="5" goto desktop-du
echo.
echo Ongeldige keuze! Probeer opnieuw.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto desktop-du

:sleep-du
cls
echo.
echo Slaapstand
echo.
echo Batterij: %battery%
echo.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
goto power-du

:problem-du
cls
echo.
echo ! BATTERIJPROBLEEM !
echo.
echo.
echo Je batterij is leeg!
echo Huidig batterijniveau: %battery%%%
echo.
echo Ongeldige keuze! Probeer opnieuw.
pause >nul
exit

rem === LITE MODE ===

:litemode
title RayOS Premium Lite
color 02
cls
if %battery% LEQ 0 goto problemlite
echo    Battery: %battery%%%									       No Internet  %time%
echo ========================================================================================================================
echo.
echo 				  "______            _____ _____   _     _ __      "
echo 				  "| ___ \          |  _  /  ___| | |   (_) |      "
echo 				  "| |_/ /__ _ _   _| | | \ `--.  | |    _| |_ ___ "
echo 				  "|    // _` | | | | | | |`--. \ | |   | | __/ _ \"
echo 				  "| |\ \ (_| | |_| \ \_/ /\__/ / | |___| | ||  __/"
echo 				  "\_| \_\__,_|\__, |\___/\____/  \_____/_|\__\___|"
echo 				  "            |___/                               "
echo.
echo Task List:
echo.
echo [1] Calculator
echo [2] Date
echo [3] Shut Down
echo.
set /p litetask=Enter choice (1-3): 
if "%litetask%"=="1" goto calculator-lite
if "%litetask%"=="2" goto date-lite
if "%litetask%"=="3" exit
echo Invalid choice! Try again.
pause
goto litemode

:calculator-lite
set /a battery=%battery%-1
if %battery% LEQ 0 goto problemlite
cls
echo Calculator
echo.
set /p "liteexpression=Enter expression: "
set /a literesult=%liteexpression%
echo.
echo Result: %literesult%
echo.
pause
goto litemode

:date-lite
set /a battery=%battery%-1
if %battery% LEQ 0 goto problemlite
cls
echo.
echo Date
echo.
echo Current Date: %date%
echo Current Time: %time%
echo.
pause
goto litemode

:problemlite
cls
echo.
echo ! BATTERY SAVING PROBLEM !
echo.
echo.
echo Your battery has run out!
echo Current battery level: %battery%%%
echo.
pause
exit

rem =============== End of code ===============