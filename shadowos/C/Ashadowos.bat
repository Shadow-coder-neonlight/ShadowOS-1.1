@echo off
cd C:\Users\sebix\Desktop\shadowos\important files do not delete!
title shadow os
setlocal enabledelayedexpansion
set theme=theme.txt
set nesk=username.txt
set passs=password.txt
for /f "tokens=1,2 delims==" %%i in (%theme%) do (
    set "a=%%i"
    
)
for /f "delims==" %%f in (%nesk%) do (
    set "name=%%f"
)
for /f "delims==" %%g in (%passs%) do (
    set "password=%%g"
)



color %a%

:turnon
cls
echo loading files...
%SystemRoot%\System32\timeout /t 3 /nobreak >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 3 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 1 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 2 >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping localhost -n 3 >nul
cls
echo checking for updates...
%SystemRoot%\System32\timeout /t 2 /nobreak >nul
echo turning on shadow os...
%SystemRoot%\System32\timeout /t 2 /nobreak >nul
goto loading
:loading
cls
echo booting shadowOS...
%SystemRoot%\System32\timeout /t 3 /nobreak >nul
goto logo
:desklog
cls
echo SELECT OPTION
Call Button  2 4 "register" 15 4 "login" 7 8 "shutdown" 8 12 "list of users"  # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto register
if %errorlevel%==2 goto login
if %errorlevel%==3 goto shutten
if %errorlevel%==4 goto list_users
:shutten
cls
echo shutting down... goodbye user :D
%SystemRoot%\System32\timeout /t 2 /nobreak >nul
exit
:register
cls
set /p username="Enter username: "
set /p password="Enter password: "

if exist users.txt (
    findstr /i /c:"%username%" users.txt >nul
    if not errorlevel 1 (
        echo Username already exists!
        pause
        goto desklog
    )
)

echo %username% %password%>>users.txt
echo User registered successfully!
pause
goto desklog


:login
cls
set /p username="Enter username: "
set /p password="Enter password: "

findstr /i /c:"%username% %password%" users.txt >nul
if errorlevel 1 (
    echo Invalid username or password!
    pause
    goto desklog
)
cls
ECHO        #
ECHO       #
ECHO #    #     Login successful!
ECHO  #  #
ECHO   #
ping localhost -n 3 >nul
goto desk
:list_users
cls
if not exist users.txt (
    echo No users registered!
    pause
    goto desklog
)

echo Registered users:
for /f "tokens=1" %%a in (users.txt) do echo %%a
Call Button 50 20 "exit"    # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto desklog
pause
goto desklog
:logo
cls
echo "  /$$$$$$  /$$                       /$$                          /$$$$$$   /$$$$$$ 
echo " /$$__  $$| $$                      | $$                         /$$__  $$ /$$__  $$
echo "| $$  \__/| $$$$$$$   /$$$$$$   /$$$$$$$  /$$$$$$  /$$  /$$  /$$| $$  \ $$| $$  \__/
echo "|  $$$$$$ | $$__  $$ |____  $$ /$$__  $$ /$$__  $$| $$ | $$ | $$| $$  | $$|  $$$$$$ 
echo " \____  $$| $$  \ $$  /$$$$$$$| $$  | $$| $$  \ $$| $$ | $$ | $$| $$  | $$ \____  $$
echo " /$$  \ $$| $$  | $$ /$$__  $$| $$  | $$| $$  | $$| $$ | $$ | $$| $$  | $$ /$$  \ $$
echo "|  $$$$$$/| $$  | $$|  $$$$$$$|  $$$$$$$|  $$$$$$/|  $$$$$/$$$$/|  $$$$$$/|  $$$$$$/
echo " \______/ |__/  |__/ \_______/ \_______/ \______/  \_____/\___/  \______/  \______/ 
%SystemRoot%\System32\timeout /t 3 /nobreak >nul
cls
cls
echo "  /$$$$$$  /$$                       /$$                          /$$$$$$   /$$$$$$ 
echo " /$$__  $$| $$                      | $$                         /$$__  $$ /$$__  $$
echo "| $$  \__/| $$$$$$$   /$$$$$$   /$$$$$$$  /$$$$$$  /$$  /$$  /$$| $$  \ $$| $$  \__/
echo "|  $$$$$$ | $$__  $$ |____  $$ /$$__  $$ /$$__  $$| $$ | $$ | $$| $$  | $$|  $$$$$$ 
echo " \____  $$| $$  \ $$  /$$$$$$$| $$  | $$| $$  \ $$| $$ | $$ | $$| $$  | $$ \____  $$
echo " /$$  \ $$| $$  | $$ /$$__  $$| $$  | $$| $$  | $$| $$ | $$ | $$| $$  | $$ /$$  \ $$
echo "|  $$$$$$/| $$  | $$|  $$$$$$$|  $$$$$$$|  $$$$$$/|  $$$$$/$$$$/|  $$$$$$/|  $$$$$$/
echo " \______/ |__/  |__/ \_______/ \_______/ \______/  \_____/\___/  \______/  \______/ 
echo.
echo "*******                                  "
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%

%SystemRoot%\System32\timeout /t 2 /nobreak >nul
cls
echo "  /$$$$$$  /$$                       /$$                          /$$$$$$   /$$$$$$ 
echo " /$$__  $$| $$                      | $$                         /$$__  $$ /$$__  $$
echo "| $$  \__/| $$$$$$$   /$$$$$$   /$$$$$$$  /$$$$$$  /$$  /$$  /$$| $$  \ $$| $$  \__/
echo "|  $$$$$$ | $$__  $$ |____  $$ /$$__  $$ /$$__  $$| $$ | $$ | $$| $$  | $$|  $$$$$$ 
echo " \____  $$| $$  \ $$  /$$$$$$$| $$  | $$| $$  \ $$| $$ | $$ | $$| $$  | $$ \____  $$
echo " /$$  \ $$| $$  | $$ /$$__  $$| $$  | $$| $$  | $$| $$ | $$ | $$| $$  | $$ /$$  \ $$
echo "|  $$$$$$/| $$  | $$|  $$$$$$$|  $$$$$$$|  $$$$$$/|  $$$$$/$$$$/|  $$$$$$/|  $$$$$$/
echo " \______/ |__/  |__/ \_______/ \_______/ \______/  \_____/\___/  \______/  \______/ 
echo.
echo "******************                       "
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
%SystemRoot%\System32\timeout /t 1.8 /nobreak >nul
cls
echo "  /$$$$$$  /$$                       /$$                          /$$$$$$   /$$$$$$ 
echo " /$$__  $$| $$                      | $$                         /$$__  $$ /$$__  $$
echo "| $$  \__/| $$$$$$$   /$$$$$$   /$$$$$$$  /$$$$$$  /$$  /$$  /$$| $$  \ $$| $$  \__/
echo "|  $$$$$$ | $$__  $$ |____  $$ /$$__  $$ /$$__  $$| $$ | $$ | $$| $$  | $$|  $$$$$$ 
echo " \____  $$| $$  \ $$  /$$$$$$$| $$  | $$| $$  \ $$| $$ | $$ | $$| $$  | $$ \____  $$
echo " /$$  \ $$| $$  | $$ /$$__  $$| $$  | $$| $$  | $$| $$ | $$ | $$| $$  | $$ /$$  \ $$
echo "|  $$$$$$/| $$  | $$|  $$$$$$$|  $$$$$$$|  $$$$$$/|  $$$$$/$$$$/|  $$$$$$/|  $$$$$$/
echo " \______/ |__/  |__/ \_______/ \_______/ \______/  \_____/\___/  \______/  \______/ 
echo.
echo "**************************               "
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%

%SystemRoot%\System32\timeout /t 1.5 /nobreak >nul

cls
echo "  /$$$$$$  /$$                       /$$                          /$$$$$$   /$$$$$$ 
echo " /$$__  $$| $$                      | $$                         /$$__  $$ /$$__  $$
echo "| $$  \__/| $$$$$$$   /$$$$$$   /$$$$$$$  /$$$$$$  /$$  /$$  /$$| $$  \ $$| $$  \__/
echo "|  $$$$$$ | $$__  $$ |____  $$ /$$__  $$ /$$__  $$| $$ | $$ | $$| $$  | $$|  $$$$$$ 
echo " \____  $$| $$  \ $$  /$$$$$$$| $$  | $$| $$  \ $$| $$ | $$ | $$| $$  | $$ \____  $$
echo " /$$  \ $$| $$  | $$ /$$__  $$| $$  | $$| $$  | $$| $$ | $$ | $$| $$  | $$ /$$  \ $$
echo "|  $$$$$$/| $$  | $$|  $$$$$$$|  $$$$$$$|  $$$$$$/|  $$$$$/$$$$/|  $$$$$$/|  $$$$$$/
echo " \______/ |__/  |__/ \_______/ \_______/ \______/  \_____/\___/  \______/  \______/ 
echo.
echo "**************************               "
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%

%SystemRoot%\System32\timeout /t 1.8 /nobreak >nul

cls
echo "  /$$$$$$  /$$                       /$$                          /$$$$$$   /$$$$$$ 
echo " /$$__  $$| $$                      | $$                         /$$__  $$ /$$__  $$
echo "| $$  \__/| $$$$$$$   /$$$$$$   /$$$$$$$  /$$$$$$  /$$  /$$  /$$| $$  \ $$| $$  \__/
echo "|  $$$$$$ | $$__  $$ |____  $$ /$$__  $$ /$$__  $$| $$ | $$ | $$| $$  | $$|  $$$$$$ 
echo " \____  $$| $$  \ $$  /$$$$$$$| $$  | $$| $$  \ $$| $$ | $$ | $$| $$  | $$ \____  $$
echo " /$$  \ $$| $$  | $$ /$$__  $$| $$  | $$| $$  | $$| $$ | $$ | $$| $$  | $$ /$$  \ $$
echo "|  $$$$$$/| $$  | $$|  $$$$$$$|  $$$$$$$|  $$$$$$/|  $$$$$/$$$$/|  $$$$$$/|  $$$$$$/
echo " \______/ |__/  |__/ \_______/ \_______/ \______/  \_____/\___/  \______/  \______/ 
echo.
echo "******************************           "
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
%SystemRoot%\System32\timeout /t 1.8 /nobreak >nul

cls
echo "  /$$$$$$  /$$                       /$$                          /$$$$$$   /$$$$$$ 
echo " /$$__  $$| $$                      | $$                         /$$__  $$ /$$__  $$
echo "| $$  \__/| $$$$$$$   /$$$$$$   /$$$$$$$  /$$$$$$  /$$  /$$  /$$| $$  \ $$| $$  \__/
echo "|  $$$$$$ | $$__  $$ |____  $$ /$$__  $$ /$$__  $$| $$ | $$ | $$| $$  | $$|  $$$$$$ 
echo " \____  $$| $$  \ $$  /$$$$$$$| $$  | $$| $$  \ $$| $$ | $$ | $$| $$  | $$ \____  $$
echo " /$$  \ $$| $$  | $$ /$$__  $$| $$  | $$| $$  | $$| $$ | $$ | $$| $$  | $$ /$$  \ $$
echo "|  $$$$$$/| $$  | $$|  $$$$$$$|  $$$$$$$|  $$$$$$/|  $$$$$/$$$$/|  $$$$$$/|  $$$$$$/
echo " \______/ |__/  |__/ \_______/ \_______/ \______/  \_____/\___/  \______/  \______/ 
echo.
echo "*************************************    "
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
%SystemRoot%\System32\timeout /t 1 /nobreak >nul

cls
echo "  /$$$$$$  /$$                       /$$                          /$$$$$$   /$$$$$$ 
echo " /$$__  $$| $$                      | $$                         /$$__  $$ /$$__  $$
echo "| $$  \__/| $$$$$$$   /$$$$$$   /$$$$$$$  /$$$$$$  /$$  /$$  /$$| $$  \ $$| $$  \__/
echo "|  $$$$$$ | $$__  $$ |____  $$ /$$__  $$ /$$__  $$| $$ | $$ | $$| $$  | $$|  $$$$$$ 
echo " \____  $$| $$  \ $$  /$$$$$$$| $$  | $$| $$  \ $$| $$ | $$ | $$| $$  | $$ \____  $$
echo " /$$  \ $$| $$  | $$ /$$__  $$| $$  | $$| $$  | $$| $$ | $$ | $$| $$  | $$ /$$  \ $$
echo "|  $$$$$$/| $$  | $$|  $$$$$$$|  $$$$$$$|  $$$$$$/|  $$$$$/$$$$/|  $$$$$$/|  $$$$$$/
echo " \______/ |__/  |__/ \_______/ \_______/ \______/  \_____/\___/  \______/  \______/ 
echo .
echo "*****************************************"
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
%SystemRoot%\System32\timeout /t 1.5 /nobreak >nul
goto desklog
:desk
cd C:\Users\sebix\Desktop\shadowos\C
title shadow os
cls
for %%d in ( A B C ª D E F G H CH I J K L M N O P Q R S T U V W X Y Z A B C ª D E F G H CH I A A A A A A A A A A A A A A A A A) do echo|set /p=-
for %%d in ( A ) do echo.|set /p=S
for %%d in ( A ) do echo.|set /p=h
for %%d in ( A ) do echo.|set /p=a
for %%d in ( A ) do echo.|set /p=d
for %%d in ( A ) do echo.|set /p=o
for %%d in ( A ) do echo.|set /p=w
for %%d in ( A ) do echo.|set /p=o
for %%d in ( A ) do echo.|set /p=s
for %%d in ( A B C ª D E F G H CH I J K L M N O P Q R S T U V W X Y Z A B C ª D E F G H CH I A A A A A A A A A A A A A A A A A) do echo|set /p=-
echo.
echo ---------------
echo [ shadowos 1.1) %name%  %time% %date% 
echo ---------------
echo                                        "     _               _               _____ _____ 
echo                                        "    | |             | |             |  _  /  ___|
echo                                        " ___| |__   __ _  __| | _____      _| | | \ `--. 
echo                                        "/ __| '_ \ / _` |/ _` |/ _ \ \ /\ / / | | |`--. \
echo                                        "\__ \ | | | (_| | (_| | (_) \ V  V /\ \_/ /\__/ /
echo                                        "|___/_| |_|\__,_|\__,_|\___/ \_/\_/  \___/\____/
Call Button  68 1 "shutdown" 15 4 "anti virus" 82 1 "  settings  " 4 12 "text editor" 20 12 "calculator" 10 16 "file explorer" 28 8 "games" 55 1 "refresh" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto exited
if %errorlevel%==2 goto scan
if %errorlevel%==3 goto settings
if %errorlevel%==4 goto TEXT
if %errorlevel%==5 goto calc1
if %errorlevel%==6 goto explorer
if %errorlevel%==7 goto games
if %errorlevel%==8 goto desk
goto desk
:games
set money=0
set resources=0
cls
echo         GAME SELECTION
Call Button  2 4 "exit" 15 4 "miner pos"   # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto desk
if %errorlevel%==2 goto mining_menuu
pause
:mainrpg
cls
:: Initialize player variables
set money=0
set resources=0
goto mining_menu
:mining_menuu
cls
echo                   GAME MENU
Call Button  2 4 "new game" 15 4 "load"   # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto mining_menu
if %errorlevel%==2 goto loed
:loed
cls
if exist savegame.txt (
    call :load_game
)
:load_game
cls
if not exist savegame.txt (
    echo No save file found.
    pause
    goto mining_menuu
)
echo Loading game...
set /a line_count=0
for /f "tokens=1,2" %%a in (savegame.txt) do (
    if !line_count! EQU 0 (
        set money=%%a
    ) else (
        set resources=%%a
    )
    set /a line_count+=1
)
echo Game loaded!
goto mining_menu
:mining_menu
cls
echo ==========================
echo Mining Simulator
echo ==========================
echo Money: $%money%
echo Resources: %resources%
echo.
Call Button  6 12 "exit" 15 8 "mine" 20 4 "sell reasources" 5 6 "save"  # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto games
if %errorlevel%==2 goto mine
if %errorlevel%==3 goto sell_resources
if %errorlevel%==4 goto saving
pause
:saving
cls
cls
echo Saving game...
%SystemRoot%\System32\timeout /t 2 /nobreak >nul
echo %money% > savegame.txt
echo %resources% >> savegame.txt
cls
echo Game saved!
pause
goto mining_menu
:mine
cls
set /a mined_resource=!random! %% 10 + 1
set /a resources+=mined_resource
echo You mined %mined_resource% resources.
Call Button  2 4 "go back" 15 4 "mine"   # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto mining_menu
if %errorlevel%==2 goto mine
pause 

:sell_resources
cls
if %resources% LEQ 0 (
    echo You have no resources to sell.
    pause
    goto mining_menu
)
set /a money+=resources
echo You sold %resources% resources for $%resources%.
set resources=0
pause
goto mining_menu


:explorer
goto main
:main
cls
echo ==========================
echo File Explorer
echo ==========================
set "currentDir=%cd%"
echo Current Directory: %currentDir%
echo.

rem List directories and files with numbers
set /a index=1
for /d %%D in (*) do (
    echo [!index!] [D] %%D
    set "item[!index!]=dir %%D"
    set /a index+=1
)
for %%F in (*) do (
    echo [!index!] [F] %%F
    set "item[!index!]=file %%F"
    set /a index+=1
)

echo.
echo Enter the number to navigate into a directory or view a file
echo Enter 'B' to go back
echo Enter 'N [FileName]' to create a new file
echo Enter 'E [FileName]' to edit a file
echo Enter 'DEL [FileName]' to delete a file
echo Enter 'Q' to quit
echo.
set /p "input=Command: "

rem Handle navigation by number
for /l %%i in (1,1,!index!) do (
    if "!input!"=="%%i" (
        set "command=!item[%%i]!"
        for /f "tokens=1,2" %%a in ("!command!") do (
            if "%%a"=="dir" (
                cd "%%b"
                goto main
            )
            if "%%a"=="file" (
                type "%%b"
                pause
                goto main
            )
        )
    )
)

rem Handle other commands
if /i "!input!"=="B" (
    cd ..
    goto main
)

if /i "!input:~0,1!"=="N" (
    set "fileName=!input:~2!"
    if not exist "!fileName!" (
        echo.>"!fileName!"
        echo File created: !fileName!
        pause
        goto main
    ) else (
        echo File already exists!
        pause
        goto main
    )
)

if /i "!input:~0,1!"=="E" (
    set "fileName=!input:~2!"
    if exist "!fileName!" (
        notepad "!fileName!"
        goto main
    ) else (
        echo File not found!
        pause
        goto main
    )
)

if /i "!input:~0,1!"=="V" (
    set "fileName=!input:~2!"
    if exist "!fileName!" (
        type "!fileName!"
        pause
        goto main
    ) else (
        echo File not found!
        pause
        goto main
    )
)

if /i "!input:~0,3!"=="DEL" (
    set "fileName=!input:~4!"
    if exist "!fileName!" (
        del "!fileName!"
        echo File deleted: !fileName!
        pause
        goto main
    ) else (
        echo File not found!
        pause
        goto main
    )
)

if /i "!input!"=="Q" (
    goto desk
)

echo Invalid command!
pause
goto main

:dier
cls
dir
pause
goto explorer



:newfile
cls
dir
set /p "filename=Enter new file name: "
echo > %filename%
goto explorer

:deletefile
cls
dir
set /p "filename=Enter file name to delete: "
del %filename%
goto explorer

:calc1
cls
echo ________Calculator________
echo 1 calculate
echo 2 exit
choice /c 12 /n
if %errorlevel% == 1 goto calc
if %errorlevel% == 2 goto desk
echo INVALID COMMAND
pause <nul click anything to return back
goto calc1
:calc
cls
echo ________Calculator________
echo.
set /p expression= enter calculation:
set /a ans=%expression%
echo.
echo = %ans%
echo.
pause 
cls
goto calc1
:scan 
cls
echo scanning files
%SystemRoot%\System32\timeout /t 0.5 /nobreak >nul
cls
echo scanning files.
%SystemRoot%\System32\timeout /t 0.3 /nobreak >nul
cls
echo scanning files..
%SystemRoot%\System32\timeout /t 0.3 /nobreak >nul
cls
echo scanning files...
%SystemRoot%\System32\timeout /t 0.5 /nobreak >nul
cls
echo scanning files
%SystemRoot%\System32\timeout /t 1 /nobreak >nul
cls
echo scanning files.
%SystemRoot%\System32\timeout /t 1 /nobreak >nul
cls
echo scanning files..
%SystemRoot%\System32\timeout /t 1 /nobreak >nul
cls
echo scanning files...
%SystemRoot%\System32\timeout /t 1 /nobreak >nul
cls
echo scanning files
%SystemRoot%\System32\timeout /t 0.5 /nobreak >nul
cls
echo scanning files.
%SystemRoot%\System32\timeout /t 0.3 /nobreak >nul
cls
echo scanning files..
%SystemRoot%\System32\timeout /t 0.3 /nobreak >nul
cls
echo scanning files...
%SystemRoot%\System32\timeout /t 0.3 /nobreak >nul
cls
echo scanning files
%SystemRoot%\System32\timeout /t 0.3 /nobreak >nul
cls
echo scanning files.
%SystemRoot%\System32\timeout /t 0.3 /nobreak >nul
cls
echo scanning files..
%SystemRoot%\System32\timeout /t 0.5 /nobreak >nul
cls
echo scanning files...
%SystemRoot%\System32\timeout /t 1 /nobreak >nul
cls
echo scanning files
%SystemRoot%\System32\timeout /t 1 /nobreak >nul
cls
echo scanning files.
%SystemRoot%\System32\timeout /t 1 /nobreak >nul
cls
echo scanning files..
%SystemRoot%\System32\timeout /t 1 /nobreak >nul
cls
echo scanning files...
%SystemRoot%\System32\timeout /t 0.3 /nobreak >nul
cls
echo scanning files
%SystemRoot%\System32\timeout /t 0.3 /nobreak >nul
cls
echo scanning files.
%SystemRoot%\System32\timeout /t 0.3 /nobreak >nul
cls
echo scanning files..
%SystemRoot%\System32\timeout /t 0.3 /nobreak >nul
cls
echo scanning files...
%SystemRoot%\System32\timeout /t 0.3 /nobreak >nul
cls
echo scanning files
%SystemRoot%\System32\timeout /t 1 /nobreak >nul
cls
echo scanning files.
%SystemRoot%\System32\timeout /t 1 /nobreak >nul
cls
echo scanning files..
%SystemRoot%\System32\timeout /t 0.3 /nobreak >nul
cls
echo scanning files...
%SystemRoot%\System32\timeout /t 1 /nobreak >nul
cls
echo scanning files
%SystemRoot%\System32\timeout /t 0.3 /nobreak >nul
cls
echo scanning files.
%SystemRoot%\System32\timeout /t 1 /nobreak >nul
cls
echo scan complete. no viruses founded!
%SystemRoot%\System32\timeout /t 3 /nobreak >nul
goto desk
:exited
cls
ECHO                   ARE YOU SURE TO SHUTDOWN SHADOWOS?
Call Button  2 4 "go back" 15 4 "exit"   # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto desk
if %errorlevel%==1 goto exited2
:exited2
cls
echo --------------
echo [ shadowos 1.   
echo -------------
echo 1 shutdo
echo 2 adwclean
%SystemRoot%\System32\timeout /t 1 /nobreak >nul
cls
echo ---------
echo [ shadowo   
echo ---------
echo 1 shu
echo 2 adwcl
%SystemRoot%\System32\timeout /t 1 /nobreak >nul
cls
echo ------
echo [ sh
echo ----
echo 1 s
echo 2 ad
%SystemRoot%\System32\timeout /t 1 /nobreak >nul
cls
echo -
echo [ 
echo -
%SystemRoot%\System32\timeout /t 1 /nobreak >nul
cls
echo Goodbye %user%!
%SystemRoot%\System32\timeout /t 2 /nobreak >nul
exit
:settings
cls
echo ---------------                    
echo [ shadowos 1.1)    
echo ---------------                                   
echo                                  "            .:::.               
echo                                  "           YB555BY              
echo                                  "      :. .~5@~   ~@5!. .:        
echo                                  "   !BP5PP57.     .75PP5PB!      
echo                                  "  J@!  .   :7?J?7:   .  !@J     
echo                                  "  ?#J.   :PBJ!~iJBP:   .J#?     
echo                                  "   ^@J   BB.     .BB   J@^      
echo                                  "   ^@J   BB.     .BB   J@^      
echo                                  "  ?#J.   :PBJ!~iJBP:   .J#?     
echo                                  "  J@!  .   :7?J?7:   .  !@J     
echo                                  "   !BP5PP57.     .75PP5PB!      
echo                                  "     :. .~5@~   ~@5~. .:        
echo                                  "           YB555BY              
echo                                  "            .:::.            
Call Button  2 4 "exit" 15 4 "sys info" 8 8 "log out" 4 12 "themes" 6 18 "user managment"  # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto desk
if %errorlevel%==2 goto info
if %errorlevel%==3 goto desklog
if %errorlevel%==4 goto theme
if %errorlevel%==5 goto usermans
pause
:usermans
cls
echo                   USER MANAGER 2.0
Call Button  2 5 "exit" 15 4 "edit User" 8 8 "delete user"   # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto settings
if %errorlevel%==2 goto edit_user
if %errorlevel%==3 goto delete_user
:edit_user
cls
set /p edit_username="Enter username to edit: "

if not exist users.txt (
    echo No users registered!
    pause
    goto menu
)

findstr /i /c:"%edit_username%" users.txt >nul
if errorlevel 1 (
    echo Username not found!
    pause
    goto usermans
)
goto editing
:editing
cls
echo                     EDITOR
Call Button  2 5 "exit" 15 4 "edit pass and username"    # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto usermans
if %errorlevel%==3 goto edit_username
:edit_username
cls
set /p new_username="Enter new username:"
set /p new_password="Enter new password:"

(for /f "tokens=1,2" %%a in (users.txt) do (
    if "%%a"=="%edit_username%" (
        if not "%new_username%"=="" (set new_username=%%a)
        if not "%new_password%"=="" (set new_password=%%b)
        echo %new_username% %new_password%
    ) else (
        echo %%a %%b
    )
)) > temp.txt
move /y temp.txt users.txt > nul

echo User "%edit_username%" updated successfully!
pause
goto usermans
:delete_user
cls
set /p del_username="Enter username to delete: "

if not exist users.txt (
    echo No users registered!
    pause
    goto usermans
)

findstr /i /v /c:"%del_username%" users.txt > temp.txt
move /y temp.txt users.txt > nul
cls
echo User "%del_username%" deleted successfully!
pause
goto settings
:name
cls
echo ---------------
echo [ shadowos 1.0)    
echo ---------------
echo set ur new username
set /p user=:
goto settings

:x
cls
echo reloading system...
%SystemRoot%\System32\timeout /t 4 /nobreak >nul
echo loading files...
%SystemRoot%\System32\timeout /t 3 /nobreak >nul
echo scanning for updates...
%SystemRoot%\System32\timeout /t 2 /nobreak >nul
echo checking for any virus...
%SystemRoot%\System32\timeout /t 2 /nobreak >nul
echo checking for any corrupt file 
%SystemRoot%\System32\timeout /t 4 /nobreak >nul
echo reloading complete!
%SystemRoot%\System32\timeout /t 3 /nobreak >nul
goto settings
:info
cls
echo shadow os 1.1
echo developer: sebastian (shadow)
echo last update 2024-06-14
pause
goto settings
:TEXT
cls
title Text Editor
echo Text Editor 
Call Button  2 4 "open" 15 4 "New" 8 8 "exit" 4 12 "delete txt"  # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto OPEN
if %errorlevel%==2 goto NEW
if %errorlevel%==3 goto desk
if %errorlevel%==4 goto DEL
:NEW
cls
echo Enter name of the .txt file you want to make. It cannot contain spaces.
echo. 
set /p N=Name 
cls
set /p WRITE=Write Your Document: 
echo %WRITE% > %N%.txt
goto TEXT
:OPEN
cls
echo Type the name of the file you are trying to open.
set /p file=
FOR /F "tokens=*" %%i IN (%file%) DO @ECHO %%i
echo.
pause
goto TEXT
:DEL
cls
echo Type the name of the file you want to delete.
set /p delete=
del %delete%
pause
goto TEXT
:theme
cls
echo ---------------
echo [ shadowos 1.0)    
echo ---------------
CmdMenuSel 0AA0 "green theme" "blue theme" "red theme" "cyan theme" "purple theme" "exit"
if "%Errorlevel%" == "1" goto theme1
if "%Errorlevel%" == "2" goto theme2
if "%Errorlevel%" == "3" goto theme3
if "%Errorlevel%" == "4" goto theme4
if "%Errorlevel%" == "5" goto theme5
if "%Errorlevel%" == "6" goto settings
:theme1
cls
color 0A
if exist theme.txt del theme.txt
set theme=0A
echo %theme% >> theme.txt
goto theme
:theme2
cls
color 01
if exist theme.txt del theme.txt
set theme=01
echo %theme% >> theme.txt
goto theme
:theme3
cls
color 0C
if exist theme.txt del theme.txt
set theme=0C
echo %theme% >> theme.txt
goto theme
:theme4
cls
color 09
if exist theme.txt del theme.txt
set theme=09
echo %theme% >> theme.txt
goto theme
:theme5
cls
color 0D
if exist theme.txt del theme.txt
set theme=0D
echo %theme% >> theme.txt
goto theme 

