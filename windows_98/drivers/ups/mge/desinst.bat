@echo off
rem Personal Solution Pac removal procedure for Windows 95 - version 1.00 (part 1)
rem ------------------------------------------------------------------------------
cls
echo.
echo.
echo Personal Solution Pac for Windows 95 - Removal procedure
echo --------------------------------------------------------
echo.
echo.

if not exist COM.EXE goto baddir
if not exist MON.EXE goto baddir
if not exist PSP.EXE goto baddir
if not exist GETVAR.EXE goto incdir
if not exist UMDELKEY.EXE goto incdir
if not exist DESINST1.BAT goto incdir

echo This program will erase all Personal Solution Pac files and directories.
echo You MUST stop Personal Solution Pac before starting removal procedure.
echo Continue (Y/N) ?

getvar.exe REPONS
call setenv.bat
if not "%REPONS%" == "Y" if not "%REPONS%" == "y" goto abort

if not exist \ETC\PSP_PATH goto nopath
getvar.exe PSPP <\ETC\PSP_PATH
call setenv.bat
if "%PSPP%" == "" goto nopath
if not exist %PSPP%\*.* goto nopath

erase %PSPP%\COM.EXE >nul
if exist %PSPP%\COM.EXE goto running
erase %PSPP%\MON.EXE >nul
if exist %PSPP%\MON.EXE goto running
erase %PSPP%\PSP.EXE >nul
if exist %PSPP%\PSP.EXE goto running
erase %PSPP%\PSP_ED.EXE >nul
if exist %PSPP%\PSP_ED.EXE goto running

copy %PSPP%\desinst1.bat \ETC >nul

\ETC\desinst1.bat
echo Error : file DESINST1.BAT cannot be accessed or copied.
goto abort

:running
echo Error : Personal Solution Pac is running.
goto abort

:nopath
echo Error : file \ETC\PSP_PATH not found or incorrect.
goto abort

:incdir
echo Error : utilities are missing in Personal Solution Pac directory,
echo         check GETVAR.EXE, UMDELKEY.EXE and DESINST1.BAT.
goto abort

:baddir
echo Error : current directory must be directory where 
echo         Personal Solution Pac is installed.

:abort
echo Removal procedure aborted.
echo.
set PSPP=
set REPONS=
pause
