::-------------------------------------------------------------------------------------------
:: Modifies on : 05-01-2023
:: By Meir.e
:: Functions libarary here.
:: REF|https://github.com/Meir-E/MAN/blob/main/Menu_MAN.bat
:: default on : %USERPROFILE%\Documents\GitHub\Functions\BATman.bat
::-----------------Run once , can run inly in batch file , Global----------------------------
@echo See Manual&pause&GOTO :EOF
::----------------------------Functions-----------------------------------------
:ConsolePrint <>
	setlocal
	<nul set /p "=%~1"
	endlocal
EXIT /B 0
:GetChar <res>
	setlocal
	:: 0123456789abcdefghijklmnopqrstuvwxyz , can change here what char are available,Mei-R
	for /F "tokens=1 delims=," %%a in ('"choice /N /C 0123456789abcdefghijklmnopqrstuvwxyz"') do (set "result=%%a")
	endlocal & set result=%result% & set %~1=%result%
EXIT /B 0
:ConsolePrintColor <hexColorCode> <str>
	setlocal
	::need run once | REF | https://stackoverflow.com/questions/30025027/code-for-changing-colors-in-batch-how-is-it-working
	for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%m in (1) do rem"') do (set "BS_Char=%%a" ) & echo off &REM Generate the BS Character Method.
	call :ConsolePrint %BS_Char% > "%~2" &REM moves BS character
	findstr /v /a:%1 /R "^$" "%~2" nul
	del "%~2" > nul 2>&1i
	endlocal
	EXIT /B 0
:Print_MAN_Logo
	echo -----------------------------------------------------------
	echo "       @@@@        @@@.      @@@       #@*     @*      "      
	echo "       @@*@(      @&#@.     @@@@@      #@@     @#      "      
	echo "       @@ (@.    @@ #@.    @@   @@     #@*@    @#      "      
	echo "       @@  @@   @@  #@.   @@=====@@    #@* @   @#      "      
	echo "       @@   @@ (@   #@.  @@       @@   #@*  @ @@#      "      
	echo "       @@    @@@,   #@. @@         @@  #@     @@#      "
	echo ----------------------------------------------------------
EXIT /B 0
::------------------------------------END-------------------------------------------
