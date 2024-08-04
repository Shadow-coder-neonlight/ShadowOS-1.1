@shift /0
@echo off
@mode 31,19
@title Standard Calcuator
@setlocal enabledelayedexpansion
color 07

::---Program---::
call :Calculator_Display
call :GetInput
::-------------::


::---Functions---::
::// SETTINGS /////
:Calculator_Display
batbox /h 0
fn.dll font 9
set "sps=                         "
set "Left="
set "Right="
set /a LngE=-1 , LN=0 , _LN=0
::Buttons
set LOB1=8  8 10  8  12  8 14  8  16  8 18  8  20  8 22  8
set LOB2=8 10 10 10  12 10 14 10  16 10 18 10  20 10 22 10
set LOB3=8 12 10 12  12 12 14 12  16 12 18 12  20 12 22 12
set LOB4=8 14 10 14  12 14 14 14  16 14 18 14  20 14 22 14
set LOB5=8 16 10 16  12 16 14 16  16 16 18 16  20 16 22 16
set LOBT=%LOB1% %LOB2% %LOB3% %LOB4% %LOB5%
set NOL=0 & batbox /g 0 0
for /f "tokens=*" %%i in (X) do (set /a NOL+=1 & echo. %%i& if !NOL!==4 (goto :Clscr))
:Clscr
batbox /g 0 7 & for /f "skip=4 tokens=*" %%i in (X) do (echo        %%i)
exit /b
:://///

::// OPERATION DISPLAY ////
:GetInput
::Get pressed key 'saved in %errorlevel%'
Getinput /m %LOBT% %Left% %Right% /h b0
set keyp=%errorlevel%
call :Clscr
call :keyp %keyp% Ch
set "Exp=%Exp%%Ch%"
set "Ch="
:: Left button settings
batbox /g 2 1 /d " " /g 28 1 /d " "
if %LngE% geq 25 (
    batbox /c 0x0a /g 2 1 /d "<" /c 0x07
    set "Left=2 1 2 1"
    if not "%k%"=="D" if "%_1%"=="false"  (set /a LN+=1)
)
if %LN%==0 (batbox /g 2 1 /d " " & set "Left=")
:: Right button settings
set /a _LN= LngE - LN
if %_LN% gtr 24 (
    batbox /c 0x0a /g 28 1 /d ">" /c 0x07
    set Right=28 1 28 1
)
if %_LN%==24 (batbox /g 28 1 /d " " & set "Right=")
if %LngE% geq 25 (set Exp1=!Exp:~%LN%,25!) else (set "Exp1=")
if defined Exp1 (set "_Exp=%Exp1%") else (set "_Exp=%Exp%")
batbox /g 3 1 /d "%sps%" /g 3 1 /d "%_Exp%"
goto :GetInput
::///////////

::// IDENTIFY PRESSED KEY ////
:keyp
set x=0
set _1=false
batbox /g 2 2 /d "%sps%"
if %1==21 (
    if %LN% gtr 0 (set /a LN-=1) else (set /a LN+=1)
    set "%2="
    set _1=true
    exit /b
)
if %1==22 (
    set /a LN+=1
    set "%2="
    set _1=true
    exit /b
)
for %%i in (
    "k=D" "k=C" "k=(" "k=)" "k=7" "k=8" "k=9" "k=/" "k=4" "k=5" 
    "k=6" "k=x" "k=1" "k=2" "k=3" "k=-" "k=." "k=0" "k==" "k=+"
) do (set /a x+=1 & if %1==!x! (set %%i))
::Verifiying
if "%k%"=="x" (set "k=*")
if "%k%"=="C" (
    set "Exp="
    set "%2="
    set /a LngE=-1
    set /a LN=0
    batbox /g 2 2 /d "%sps%"
)
if "%k%"=="=" if not "%Exp%"=="" (
    call :Calc_Result "%Exp%"
    set "%2="
    if %LN% gtr 0 (set /a LN-=1)
)
if "%k%"=="D" (if !LngE! geq 0 (
    set /a LngE-=1
    set Exp=!Exp:~0,%LngE%!
    if %LN% gtr 0 (set /a LN-=1)
)) else (if not "%k%"=="="  if not "%k%"=="C" (
    set /a LngE+=1
    set "%2=%k%"
))
exit /b
:://///

::// CACULATING ////
:Calc_Result
set "Result="
for /f "tokens=*" %%i in ('cscript //nologo Float.vbs "%Exp%" 2^>nul') do (set "Result=%%i")
if defined Result (batbox /g 2 2 /d "%sps%" /c 0x0b /g 2 2 /d "= %Result%" /c 0x07
) else (batbox /g 2 2 /d "%sps%" /g 2 2 /c 0x0c /d "Syntax error" /c 0x07)
exit /b
:://///
::---------------::