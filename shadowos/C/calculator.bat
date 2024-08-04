@echo off
mode 80,25
call :data
color %bg%%fg%
if "%usealt%"=="false" set multi=x&set divide=๖
if "%usealt%"=="true" set multi=*&set divide=/
title Calculator
cls
setlocal EnableDelayedExpansion
set "tab=			"
for /l %%a in (1,1,1000) do set "bck=!bck!"
bg cursor
set num=
set data=
bg cursor 0
goto mainscreen
:disp
echo %tab%%bck% 2>nul&set /p=<nul
if "%memory%"=="" echo. ษอออออออออออออออออออออออออออออออออออออออป
if not "%memory%"=="" echo. ษออออออออออออออออออออออออออออออออออหออออป
Echo. บ%displaynum%            
if "%memory%"=="" echo. ศอออออออออออออออออออออออออออออออออออออออผ
if not "%memory%"=="" echo. ศออออออออออออออออออออออออออออออออออสออออผ
if not "%memory%"=="" echo Data saved.     &set skipmam=yes
if "%memory%"=="" echo Data cleared.      &set skipmam=yes
:mainscreen
color %bg%%fg%
if "%usealt%"=="false" set multi=x&set divide=๖
if "%usealt%"=="true" set multi=*&set divide=/
echo %tab%%bck% 2>nul&set /p=<nul
if "%memory%"=="" echo. ษอออออออออออออออออออออออออออออออออออออออป
if not "%memory%"=="" echo. ษออออออออออออออออออออออออออออออออออหออออป
if "%memory%"=="" echo. บ                                       บ
if not "%memory%"=="" echo. บ                                  บ MR บ
if "%memory%"=="" echo. ศอออออออออออออออออออออออออออออออออออออออผ
if not "%memory%"=="" echo. ศออออออออออออออออออออออออออออออออออสออออผ
if "%skipmam%"=="yes" echo.&set skipmam=&goto displaykeys
if not "%memory%"=="" echo Data in memory.
if "%memory%"=="" echo No data.
:displaykeys
echo.
echo. ษอออออออหอออออออหอออออออหอออออออหอออออออป
echo. บ   7   บ   8   บ   9   บ   +   บ   %divide%   บ
echo. ฬอออออออฮอออออออฮอออออออฮอออออออฮอออออออน
echo. บ   4   บ   5   บ   6   บ   -   บ   0   บ
echo. ฬอออออออฮอออออออฮอออออออฮอออออออฮอออออออน
echo. บ   1   บ   2   บ   3   บ   %multi%   บ   =   บ
echo. ศอออออออสอออออออสอออออออสอออออออสอออออออผ
echo.
echo.        ษอออป  ษอออป  ษอออป  ษอออป
Echo.        บ C บ  บ^<ฤฤบ  บ M บ  บDelบ
Echo.        ศอออผ  ศอออผ  ศอออผ  ศอออผ
Echo.
Echo.  ษออออออออออป  ษออออออออออป  ษอออออออออป
Echo.  บ Settings บ  บ   Exit   บ  บ  About  บ
Echo.  ศออออออออออผ  ศออออออออออผ  ศอออออออออผ
:display
call :data
echo %tab%%bck% 2>nul&set /p=<nul
set displaynum=%num%
if "%num%"=="" set displaynum=0
if "%num%"=="" set displaynum=0&set num=
if "%memory%"=="" echo. ษอออออออออออออออออออออออออออออออออออออออป
if not "%memory%"=="" echo. ษออออออออออออออออออออออออออออออออออหออออป
Echo. บ%displaynum%               
if "%memory%"=="" echo. ศอออออออออออออออออออออออออออออออออออออออผ
if not "%memory%"=="" echo. ศออออออออออออออออออออออออออออออออออสออออผ
if not "%msg%"=="" echo.%msg%&set msg=
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
:: Number 7
if "%key%"=="6x2" set num=%num%7
if "%key%"=="6x3" set num=%num%7
if "%key%"=="6x4" set num=%num%7
if "%key%"=="6x5" set num=%num%7
if "%key%"=="6x6" set num=%num%7
if "%key%"=="6x7" set num=%num%7
if "%key%"=="6x8" set num=%num%7
::Number 8
if "%key%"=="6x10" set num=%num%8
if "%key%"=="6x11" set num=%num%8
if "%key%"=="6x12" set num=%num%8
if "%key%"=="6x13" set num=%num%8
if "%key%"=="6x14" set num=%num%8
if "%key%"=="6x15" set num=%num%8
if "%key%"=="6x16" set num=%num%8
::Number 9
if "%key%"=="6x18" set num=%num%9
if "%key%"=="6x19" set num=%num%9
if "%key%"=="6x20" set num=%num%9
if "%key%"=="6x21" set num=%num%9
if "%key%"=="6x22" set num=%num%9
if "%key%"=="6x23" set num=%num%9
if "%key%"=="6x24" set num=%num%9
::Add
if "%key%"=="6x26" set data=%data%%num%+&set num=
if "%key%"=="6x27" set data=%data%%num%+&set num=
if "%key%"=="6x28" set data=%data%%num%+&set num=
if "%key%"=="6x29" set data=%data%%num%+&set num=
if "%key%"=="6x30" set data=%data%%num%+&set num=
if "%key%"=="6x31" set data=%data%%num%+&set num=
if "%key%"=="6x32" set data=%data%%num%+&set num=
::Divide
if "%key%"=="6x34" set data=%data%%num%/&set num=
if "%key%"=="6x35" set data=%data%%num%/&set num=
if "%key%"=="6x36" set data=%data%%num%/&set num=
if "%key%"=="6x37" set data=%data%%num%/&set num=
if "%key%"=="6x38" set data=%data%%num%/&set num=
if "%key%"=="6x39" set data=%data%%num%/&set num=
if "%key%"=="6x40" set data=%data%%num%/&set num=
::Number 4
if "%key%"=="8x2" set num=%num%4
if "%key%"=="8x3" set num=%num%4
if "%key%"=="8x4" set num=%num%4
if "%key%"=="8x5" set num=%num%4
if "%key%"=="8x6" set num=%num%4
if "%key%"=="8x7" set num=%num%4
if "%key%"=="8x8" set num=%num%4
::Number 5
if "%key%"=="8x10" set num=%num%5
if "%key%"=="8x11" set num=%num%5
if "%key%"=="8x12" set num=%num%5
if "%key%"=="8x13" set num=%num%5
if "%key%"=="8x14" set num=%num%5
if "%key%"=="8x15" set num=%num%5
if "%key%"=="8x16" set num=%num%5
::Number 6
if "%key%"=="8x18" set num=%num%6
if "%key%"=="8x19" set num=%num%6
if "%key%"=="8x20" set num=%num%6
if "%key%"=="8x21" set num=%num%6
if "%key%"=="8x22" set num=%num%6
if "%key%"=="8x23" set num=%num%6
if "%key%"=="8x24" set num=%num%6
::Subtract
if "%key%"=="8x26" set data=%data%%num%-&set num=
if "%key%"=="8x27" set data=%data%%num%-&set num=
if "%key%"=="8x28" set data=%data%%num%-&set num=
if "%key%"=="8x29" set data=%data%%num%-&set num=
if "%key%"=="8x30" set data=%data%%num%-&set num=
if "%key%"=="8x31" set data=%data%%num%-&set num=
if "%key%"=="8x32" set data=%data%%num%-&set num=
::Number 0
if "%key%"=="8x34" set num=%num%0
if "%key%"=="8x35" set num=%num%0
if "%key%"=="8x36" set num=%num%0
if "%key%"=="8x37" set num=%num%0
if "%key%"=="8x38" set num=%num%0
if "%key%"=="8x39" set num=%num%0
if "%key%"=="8x40" set num=%num%0
if "%num%"=="00" set num=&set msg=Illegal input.
if "%num%"=="01" set num=1
if "%num%"=="02" set num=2
if "%num%"=="03" set num=3
if "%num%"=="04" set num=4
if "%num%"=="05" set num=5
if "%num%"=="06" set num=6
if "%num%"=="07" set num=7
if "%num%"=="08" set num=8
if "%num%"=="09" set num=9
::Number 1
if "%key%"=="10x2" set num=%num%1
if "%key%"=="10x3" set num=%num%1
if "%key%"=="10x4" set num=%num%1
if "%key%"=="10x5" set num=%num%1
if "%key%"=="10x6" set num=%num%1
if "%key%"=="10x7" set num=%num%1
if "%key%"=="10x8" set num=%num%1
::Number 2
if "%key%"=="10x10" set num=%num%2
if "%key%"=="10x11" set num=%num%2
if "%key%"=="10x12" set num=%num%2
if "%key%"=="10x13" set num=%num%2
if "%key%"=="10x14" set num=%num%2
if "%key%"=="10x15" set num=%num%2
if "%key%"=="10x16" set num=%num%2
::Number 3
if "%key%"=="10x18" set num=%num%3
if "%key%"=="10x19" set num=%num%3
if "%key%"=="10x20" set num=%num%3
if "%key%"=="10x21" set num=%num%3
if "%key%"=="10x22" set num=%num%3
if "%key%"=="10x23" set num=%num%3
if "%key%"=="10x24" set num=%num%3
::Multiply
if "%key%"=="10x26" set data=%data%%num%*&set num=
if "%key%"=="10x27" set data=%data%%num%*&set num=
if "%key%"=="10x28" set data=%data%%num%*&set num=
if "%key%"=="10x29" set data=%data%%num%*&set num=
if "%key%"=="10x30" set data=%data%%num%*&set num=
if "%key%"=="10x31" set data=%data%%num%*&set num=
if "%key%"=="10x32" set data=%data%%num%*&set num=
::Equate
if "%key%"=="10x34" set /a num=%data%%num%&set data=
if "%key%"=="10x35" set /a num=%data%%num%&set data=
if "%key%"=="10x36" set /a num=%data%%num%&set data=
if "%key%"=="10x37" set /a num=%data%%num%&set data=
if "%key%"=="10x38" set /a num=%data%%num%&set data=
if "%key%"=="10x39" set /a num=%data%%num%&set data=
if "%key%"=="10x40" set /a num=%data%%num%&set data=
::Clear
if "%key%"=="14x10" set num=&set data=&set msg=Variables cleared.
if "%key%"=="14x11" set num=&set data=&set msg=Variables cleared.
if "%key%"=="14x12" set num=&set data=&set msg=Variables cleared.
::Backspace
if "%key%"=="14x16" set num=%num%
if "%key%"=="14x17" set num=%num%
if "%key%"=="14x18" set num=%num%
::Add memory
if "%key%"=="14x22" @echo.set memory=%num%>>calculator.bat&set memory=%num%&goto disp
if "%key%"=="14x23" @echo.set memory=%num%>>calculator.bat&set memory=%num%&goto disp
if "%key%"=="14x24" @echo.set memory=%num%>>calculator.bat&set memory=%num%&goto disp
::Delete memory
if "%key%"=="14x28" @echo.set memory=>>calculator.bat&set "memory="&goto disp
if "%key%"=="14x29" @echo.set memory=>>calculator.bat&set "memory="&goto disp
if "%key%"=="14x30" @echo.set memory=>>calculator.bat&set "memory="&goto disp
::Settings
if "%key%"=="18x3" cls&goto settings
if "%key%"=="18x4" cls&goto settings
if "%key%"=="18x5" cls&goto settings
if "%key%"=="18x6" cls&goto settings
if "%key%"=="18x7" cls&goto settings
if "%key%"=="18x8" cls&goto settings
if "%key%"=="18x9" cls&goto settings
if "%key%"=="18x10" cls&goto settings
if "%key%"=="18x11" cls&goto settings
if "%key%"=="18x12" cls&goto settings
::Exit
if "%key%"=="18x17" exit /b
if "%key%"=="18x18" exit /b
if "%key%"=="18x19" exit /b
if "%key%"=="18x20" exit /b
if "%key%"=="18x21" exit /b
if "%key%"=="18x22" exit /b
if "%key%"=="18x23" exit /b
if "%key%"=="18x24" exit /b
if "%key%"=="18x25" exit /b
if "%key%"=="18x26" exit /b
::About
if "%key%"=="18x31" goto aboutscreen
if "%key%"=="18x32" goto aboutscreen
if "%key%"=="18x33" goto aboutscreen
if "%key%"=="18x34" goto aboutscreen
if "%key%"=="18x35" goto aboutscreen
if "%key%"=="18x36" goto aboutscreen
if "%key%"=="18x37" goto aboutscreen
if "%key%"=="18x38" goto aboutscreen
if "%key%"=="18x39" goto aboutscreen
::Read memory
if "%memory%"=="" goto display
if "%key%"=="1x37" set num=%memory%&set msg=Data loaded.       
if "%key%"=="1x38" set num=%memory%&set msg=Data loaded.       
if "%key%"=="1x39" set num=%memory%&set msg=Data loaded.       
if "%key%"=="1x40" set num=%memory%&set msg=Data loaded.
goto display

:settings
if "%bg%"=="%fg%" goto setfg
echo %tab%%bck% 2>nul&set /p=<nul
echo.
echo. Settings
echo.
echo. Theme: %bg%%fg%
echo. Use alternate multiplication and division symbols: %usealt% 
if "%usealt%"=="true" echo.  Example: / * + -
if "%usealt%"=="false" echo.  Example: ๖ x + -
Echo.
Echo. To get help with theme codes, type color /? at the command prompt
Echo.
Echo. ษอออออออออป
Echo. บ Go back บ
echo. ศอออออออออผ
Echo.
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
set key=%down%x%top%
if "%key%"=="3x8" goto setbg
if "%key%"=="3x9" goto setfg
if "%key%"=="4x52" goto changealt
if "%key%"=="4x53" goto changealt
if "%key%"=="4x54" goto changealt
if "%key%"=="4x55" goto changealt
if "%key%"=="4x56" goto changealt
if "%key%"=="10x2" cls&@echo.set "fg=%fg%">>calculator.bat&@echo.set "bg=%bg%">>calculator.bat&@echo.set usealt=%usealt%>>calculator.bat&goto mainscreen
if "%key%"=="10x3" cls&@echo.set "fg=%fg%">>calculator.bat&@echo.set "bg=%bg%">>calculator.bat&@echo.set usealt=%usealt%>>calculator.bat&goto mainscreen
if "%key%"=="10x4" cls&@echo.set "fg=%fg%">>calculator.bat&@echo.set "bg=%bg%">>calculator.bat&@echo.set usealt=%usealt%>>calculator.bat&goto mainscreen
if "%key%"=="10x5" cls&@echo.set "fg=%fg%">>calculator.bat&@echo.set "bg=%bg%">>calculator.bat&@echo.set usealt=%usealt%>>calculator.bat&goto mainscreen
if "%key%"=="10x6" cls&@echo.set "fg=%fg%">>calculator.bat&@echo.set "bg=%bg%">>calculator.bat&@echo.set usealt=%usealt%>>calculator.bat&goto mainscreen
if "%key%"=="10x7" cls&@echo.set "fg=%fg%">>calculator.bat&@echo.set "bg=%bg%">>calculator.bat&@echo.set usealt=%usealt%>>calculator.bat&goto mainscreen
if "%key%"=="10x8" cls&@echo.set "fg=%fg%">>calculator.bat&@echo.set "bg=%bg%">>calculator.bat&@echo.set usealt=%usealt%>>calculator.bat&goto mainscreen
if "%key%"=="10x9" cls&@echo.set "fg=%fg%">>calculator.bat&@echo.set "bg=%bg%">>calculator.bat&@echo.set usealt=%usealt%>>calculator.bat&goto mainscreen
if "%key%"=="10x10" cls&@echo.set "fg=%fg%">>calculator.bat&@echo.set "bg=%bg%">>calculator.bat&@echo.set usealt=%usealt%>>calculator.bat&goto mainscreen
goto settings

:setbg
if "%bg%"=="0" set bg=1&goto finishbg
if "%bg%"=="1" set bg=2&goto finishbg
if "%bg%"=="2" set bg=3&goto finishbg
if "%bg%"=="3" set bg=4&goto finishbg
if "%bg%"=="4" set bg=5&goto finishbg
if "%bg%"=="5" set bg=6&goto finishbg
if "%bg%"=="6" set bg=7&goto finishbg
if "%bg%"=="7" set bg=8&goto finishbg
if "%bg%"=="8" set bg=9&goto finishbg
if "%bg%"=="9" set bg=A&goto finishbg
if "%bg%"=="A" set bg=B&goto finishbg
if "%bg%"=="B" set bg=C&goto finishbg
if "%bg%"=="C" set bg=D&goto finishbg
if "%bg%"=="D" set bg=E&goto finishbg
if "%bg%"=="E" set bg=F&goto finishbg
if "%bg%"=="F" set bg=0&goto finishbg
:finishbg
color %bg%%fg%
goto settings

:setfg
if "%fg%"=="0" set fg=1&goto finishfg
if "%fg%"=="1" set fg=2&goto finishfg
if "%fg%"=="2" set fg=3&goto finishfg
if "%fg%"=="3" set fg=4&goto finishfg
if "%fg%"=="4" set fg=5&goto finishfg
if "%fg%"=="5" set fg=6&goto finishfg
if "%fg%"=="6" set fg=7&goto finishfg
if "%fg%"=="7" set fg=8&goto finishfg
if "%fg%"=="8" set fg=9&goto finishfg
if "%fg%"=="9" set fg=A&goto finishfg
if "%fg%"=="A" set fg=B&goto finishfg
if "%fg%"=="B" set fg=C&goto finishfg
if "%fg%"=="C" set fg=D&goto finishfg
if "%fg%"=="D" set fg=E&goto finishfg
if "%fg%"=="E" set fg=F&goto finishfg
if "%fg%"=="F" set fg=0&goto finishfg
:finishfg
color %bg%%fg%
goto settings
:changealt
if "%usealt%"=="false" set usealt=true&goto settings
if "%usealt%"=="true" set usealt=false&&goto settings
goto changealt

:aboutscreen
cls
echo.
echo. About
Echo.
Echo. GUI calculator accessory
Echo. Version 1.0a (Public version)
Echo. Created by: Markus Maal (TheMarkusGuy aka MarkusTegelane)
Echo.
Echo. Use of the code only allowed with permission
Echo.
Echo. Using BatchGraphics (bg.exe)
Echo.
Echo. Use mouse to select numbers to calculate. The symbols mean
Echo. the following:
Echo.
Echo. +   - Add                        =    - Calculate
Echo. -   - Subtract                   C    - Clear everything
if "%usealt%"=="true"Echo. *   - Multiply                   M    - Add data to memory
if "%usealt%"=="false" Echo. x   - Multiply                   M    - Add data to memory
if "%usealt%"=="true" Echo. /   - Divide                     ^<--  - Backspace
if "%usealt%"=="false" Echo. ๖   - Divide                     ^<--  - Backspace
Echo. Del - Delete data from memory    MR   - Read data from memory
Echo.
Echo Left click to continue... (primary button)
for /f "tokens=1- 3" %%a in ('bg.exe mouse') do set down=%%a&set top=%%b
cls
goto mainscreen

:data
set "fg=7"
set "bg=0"
set usealt=false
set "fg=7"
set "bg=0"
set usealt=false
set "fg=3"
set "bg=1"
set usealt=false
