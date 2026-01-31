@echo off
goto helloworld

:helloworld
title Pizza Game -RaySuharto24
color 0a
cls
echo.
echo ====================================
echo Hello there,
echo ur only job is to satisfy customers  
echo with your cooking skills.
echo ====================================
echo Do you accept the offer?
echo 1. YES
echo 2. MAYBE
echo 3. NO

set /p choice=What's ur decission: (1-3): 

if "%choice%"=="1" goto startscreen
cls
if "%choice%"=="2" goto helloworld
cls
if "%choice%"=="3" exit
goto helloworld

pause
cls

:startscreen
title Pizza Game -RaySuharto24
color 0a
cls
echo.
echo ====================================
echo Location: Pizza Place Kitchen
echo ====================================
echo Boss:
echo We have big guests tonight, so
echo cook the best recipes.
echo ====================================
pause >nul
echo ====================================
echo You:
echo Sure boss, I'll take their orders.
echo ====================================
pause
cls
goto dining

:dining
title Pizza Game -Ray Suharto24
color 0a
cls
echo.
echo ====================================
echo Location: Pizza Place Dining Room
echo ====================================
echo You:
echo Sir, what would you eat on this 
echo fine evening?   :D
echo ====================================
pause >nul
echo ====================================
echo Mr. Schwartz:
echo I would like any pizza u got.
echo ====================================
pause
cls
goto cooking

:cooking
title Pizza Game -RaySuharto24
color 0a
cls
echo.
echo ====================================
echo You:
echo Now I will put the raw pizza on
echo the oven.
echo ====================================
pause >nul
echo *Puts raw pizza on oven*
echo *Waits*
pause >nul
echo ====================================
echo Decide on how long u wait:
echo 1. OVERCOOK
echo 2. FINE COOKED

set /p choice=Choose what (1-2): 

if "%choice%"=="1" goto hot
if "%choice%"=="2" goto good

echo Invalid choice. Please try again.
pause
cls
goto startscreen

:hot
title Pizza Game -RaySuharto24
color 0a
cls
echo.
echo ====================================
echo You:
echo Well, i can serve this now!
echo ====================================
pause >nul
echo *Goes to the Dining Table*
echo *Serves the overcooked pizza*
pause >nul
cls
echo ====================================
echo You:
echo Bon appetit, my fine diner! :) :) :)
echo ====================================
pause >nul
echo *Mr. Schwarts eats the pizza now*
pause >nul
cls
echo ====================================
echo Mr. Schwartz:
echo Ouch! Wtf is this, why is my pizza 
echo burne to a crisp?  *angry*
echo ====================================
pause >nul
echo *Mr. Schwartz leaves in anger*
pause >nul
cls
echo ====================================
echo Boss:
echo You're FIREDDD!
echo ====================================
pause
cls
goto fired

:good
title Pizza Game -RaySuharto24
color 0a
cls
echo.
echo ====================================
echo Narrator:
echo It's time to add topings on ur pizza!
echo ====================================
echo.
echo What toppings will you add?
echo 1. Gummy Bears and Sprinkles
echo 2. Pepperoni
echo 3. Expired Tuna
set /p menuchoice=Toppings to be added: 
if /i "%menuchoice%" == "1" goto gummybears
if /i "%menuchoice%" == "2" goto pepperoni
if /i "%menuchoice%" == "3" goto expiredtuna
goto :good
pause
cls

:gummybears
title Pizza Game -RaySuharto24
color 0a
cls
echo.
*putting gummy bears*
pause >nul
cls
echo.
echo ====================================
echo You:
echo It's time to serve the pizza to him!
echo ====================================
pause >nul
cls
echo.
echo *serves the pizza*
echo ====================================
echo You:
echo Bon appetit, my fine diner! :) :) :)
echo ====================================
pause >nul
echo ====================================
echo Mr. Schwartz:
echo I'd rather eat ice cream, yuck!
echo ====================================
pause >nul
echo *customer leaves restaurant
pause
cls
echo ====================================
echo Boss:
echo You are disgusting so you're fired!
echo *vomits after seeing the pizza*
echo ====================================
pause
cls
goto fired

:pepperoni
title Pizza Game -RaySuharto24
color 0a
cls
echo.
echo *puts pepperonis*
pause >nul
cls
echo ====================================
echo You:
echo This is smelling nice!
echo ====================================
pause >nul
cls
echo ====================================
echo You
echo Now it's time to add sauce!
echo ====================================
pause >nul
echo.
echo What sauce would u want to put:
echo 1. Hot Sauce
echo 2. Pizza Sauce

set /p choice=Choose what (1-2): 

if "%choice%"=="1" goto spicy
if "%choice%"=="2" goto perfectsauce
goto pepperoni
pause >nul
cls

:perfectsauce
title Pizza Game -RaySuharto24
color 0a
cls
echo.
echo *adds pizza sauce*
echo ====================================
echo You:
echo Smells good!
echo ====================================
pause
cls
echo.
echo ====================================
echo Mr. Schwartz:
echo Now this looks perfect!
echo ====================================
echo *eats pizza and smiles*
echo.
pause
cls
echo.
echo ====================================
echo Mr. Schwartz:
echo Out of every pizza I ate,
echo This is the best!
echo ====================================
pause
cls
goto promotion

:promotion
title Pizza Game -RaySuharto24
color 0a
cls
echo.
echo ====================================
echo Boss:
echo That was good so u get to keep
echo ur stupid job.
echo ====================================
echo *ur very happy*
echo.
pause
cls
goto nextcustomer

:spicy
title Pizza Game -RaySuharto24
color 0a
cls
echo.
echo ====================================
echo You:
echo I wanna put hot sauce!
echo ====================================
echo *puts spicy hot sauce*
echo.
pause
cls
echo ====================================
echo You:
echo It's serving time now.
echo ====================================
pause >nul
echo ====================================
echo You:
echo I hope it's perfect for Mr. Schwartz!
echo ====================================
pause
cls
echo.
echo *serves the flaming pizza*
echo.
echo ====================================
echo Mr. Schwartz:
echo I love ketchup!
echo ====================================
echo *eats the pizza*
echo.
pause
cls
echo ====================================
echo Mr. Schwarts:
echo Water! Water! Water!
echo ====================================
echo *he died from the sauce*
pause
cls
goto fbi

:expiredtuna
title Pizza Game -RaySuharto24
color 0a
cls
echo *puts expired tuna on the pizza*
pause >nul
cls
echo ====================================
echo You:
echo Well the expired tuna looks
echo appetizing
echo ====================================
pause >nul
cls
echo ====================================
echo You:
echo Well, dig in, sir!	:)
echo ====================================
echo *customer smiles*
pause >nul
cls
echo *eats the pizza*
echo ====================================
echo You:
echo Hope u enjoy it!
echo ====================================
pause >nul
cls
echo ====================================
echo Narrator:
echo You just killed Mr. Schwartz!
echo ====================================
pause >nul
cls
echo ====================================
echo Police:
echo We are taking this place down!
echo You're all under arrest!
echo ====================================
echo.
echo *You cry*
pause
cls
goto fbi

:fbi
title Pizza Game -RaySuharto24
color 0a
cls
echo.
echo.
echo ====================================
echo Judge: 
echo I hearby sentence u to 50 yrs. in prison!
echo ====================================
pause >nul
cls
goto prison

:prison
title Pizza Game -by RaySuharto24
color 0a
cls
echo.
echo Well, 10 years left.
echo.
pause
cls
goto fired

:fired
title Pizza Game -RaySuharto24
color 0a
cls
echo.
echo ====================================
echo Narrator:
echo You lost ur job for being a bad chef.
echo ====================================
echo YOU LOST THE GAME, REDO?
pause
cls 
goto helloworld

:nextcustomer
title Pizza Game -RaySuharto24
color 0a
cls
echo.
echo ====================================
echo Donald Trumpet:
echo Can I order some guns.
echo ====================================
pause >nul
echo ====================================
echo You:
echo NO, this is a pizza palace!
echo ====================================
pause >nul
echo *trump leaves area*
pause
cls
goto goodending

:goodending
title Pizza Game -RaySuharto24
color 0a
cls
echo.
echo ====================================
echo Narrator:
echo Good Job!
echo ====================================
echo Return now to Title Screen
pause
cls
goto helloworld

