@echo off
rem ****************************************************************************
rem *  Personal Solution Pac installation program for Windows 95 (version 1.02)
rem ****************************************************************************
cls
echo.
echo.
echo Personal Solution Pac for Windows 95 - Installation program
echo -----------------------------------------------------------
echo.
echo.

rem Initialisations
rem ---------------
set PSPU=0

rem Verification de l'existence des utilitaires
rem -------------------------------------------
if exist GETVAR.EXE goto copytmp
echo.
echo 
echo Installation program cannot be run from this drive,
echo set distribution disk as current disk.
goto abort

rem Tentative de copie de getvar.exe sur disque
rem -------------------------------------------
:copytmp
if "%temp%"=="" goto tryc
xcopy GETVAR.EXE %temp%\ >nul
if errorlevel 1 goto tryc
set PSPT=%temp%
goto drivok

:tryc
xcopy GETVAR.EXE C:\ >nul
if errorlevel 1 goto tryd
set PSPT=C:
goto drivok

:tryd
xcopy GETVAR.EXE D:\ >nul
if errorlevel 1 goto notmp
set PSPT=D:

rem Demande le nom du disque d'installation
rem ---------------------------------------
:drivok
echo Enter Windows 95 system disk drive [ C: ] :
%PSPT%\getvar.exe PSPD %PSPT%
call %PSPT%\setenv.bat
if "%PSPD%"=="" set PSPD=C:
if "%PSPD%"=="" goto enverr

rem Verifie l'existence d'une precedente installation
rem -------------------------------------------------
if not exist %PSPD%\ETC\PSP_PATH goto askdir
%PSPT%\getvar.exe PSPPE %PSPT% <%PSPD%\ETC\PSP_PATH
call %PSPT%\setenv.bat
if "%PSPPE%" == "" goto askdir
if not exist %PSPD%%PSPPE%\PSP.EXE goto askdir

echo.
echo Personal Solution Pac is already installed in directory %PSPD%%PSPPE%.
echo Continue and update currently installed software (Y/N) ?
%PSPT%\getvar.exe REPONS %PSPT%
call %PSPT%\setenv.bat
if not "%REPONS%" == "Y" if not "%REPONS%" == "y" goto abort

set PSPU=1
set PSPPA=%PSPPE%
goto language

rem Demande le repertoire d'installation
rem ------------------------------------
:askdir
echo Enter path where Personal Solution Pac is to be loaded [ \UPSMAN ] :
%PSPT%\getvar.exe PSPP %PSPT%
call %PSPT%\setenv.bat
if "%PSPP%"=="" set PSPP=\UPSMAN
if "%PSPP%"=="" goto enverr

rem Demande la langue des messages
rem ------------------------------
:language
echo.
echo The available languages for Personal Solution Pac are :
echo     French
echo     English
echo.
echo Enter the language (or Q to Quit) :
:retype
%PSPT%\getvar.exe PSPL %PSPT%
call %PSPT%\setenv.bat
if "%PSPL%" == "Q" goto abort
if "%PSPL%" == "q" goto abort
if "%PSPL%" == "French" goto french
if "%PSPL%" == "french" goto french
if "%PSPL%" == "FRENCH" goto french
if "%PSPL%" == "f" goto french
if "%PSPL%" == "F" goto french
if "%PSPL%" == "English" goto english
if "%PSPL%" == "english" goto english
if "%PSPL%" == "ENGLISH" goto english
if "%PSPL%" == "e" goto english
if "%PSPL%" == "E" goto english
echo This language is not correct, please retype (Q to Quit) :
goto retype

rem Langue Francaise
rem ----------------
:french
set PSPL=FRA
goto confirm

rem Langue Anglaise
rem ---------------
:english
set PSPL=ENG
goto confirm

rem Demande confirmation (sauf si mise a jour)
rem ------------------------------------------
:confirm
if "%PSPU%"=="1" goto testrun
echo.
echo Personal Solution Pac will be loaded from distribution disk to %PSPD%%PSPP%.
echo Continue (Y/N) ?
%PSPT%\getvar.exe REPONS %PSPT%
call %PSPT%\setenv.bat
if not "%REPONS%" == "Y" if not "%REPONS%" == "y" goto abort

set PSPPA=%PSPP%\PSP

rem Verifie si Personal Solution Pac est en cours d'execution
rem ---------------------------------------------------------
:testrun
if exist %PSPD%%PSPPA%\COM.EXE erase %PSPD%%PSPPA%\COM.EXE > nul
if exist %PSPD%%PSPPA%\COM.EXE goto running
if exist %PSPD%%PSPPA%\MON.EXE erase %PSPD%%PSPPA%\MON.EXE > nul
if exist %PSPD%%PSPPA%\MON.EXE goto running
if exist %PSPD%%PSPPA%\PSP.EXE erase %PSPD%%PSPPA%\PSP.EXE > nul
if exist %PSPD%%PSPPA%\PSP.EXE goto running
if exist %PSPD%%PSPPA%\PSP_ED.EXE erase %PSPD%%PSPPA%\PSP_ED.EXE > nul
if exist %PSPD%%PSPPA%\PSP_ED.EXE goto running

rem Sauvegarde des fichiers de parametres s'ils existent
rem ----------------------------------------------------
if not exist %PSPD%%PSPPA%\*.* goto copyfiles
  echo.
  echo Saving existing initialization files and scripts to directory
  echo %PSPD%%PSPPA%\SAVE ...
  if exist %PSPD%%PSPPA%\*.INI xcopy %PSPD%%PSPPA%\*.INI %PSPD%%PSPPA%\SAVE\ /F
  if errorlevel 1 goto coperr
  if exist %PSPD%%PSPPA%\*.BAT xcopy %PSPD%%PSPPA%\*.BAT %PSPD%%PSPPA%\SAVE\ /F
  if errorlevel 1 goto coperr

rem Copie des fichiers
rem ------------------
:copyfiles
  echo.
  echo Copying files to directory %PSPPA% ...

  xcopy *.EXE %PSPD%%PSPPA%\ /F
  if errorlevel 1 goto coperr
  xcopy DESINST*.BAT %PSPD%%PSPPA%\ /F
  if errorlevel 1 goto coperr
  xcopy PSP_*.BAT %PSPD%%PSPPA%\ /F
  if errorlevel 1 goto coperr
  xcopy *.PIF %PSPD%%PSPPA%\ /F
  if errorlevel 1 goto coperr
  xcopy *.INI %PSPD%%PSPPA%\ /F
  if errorlevel 1 goto coperr
  xcopy PSP_REF %PSPD%%PSPPA%\ /F
  if errorlevel 1 goto coperr
  xcopy PSP_PAR.TXT %PSPD%%PSPPA%\ /F
  if errorlevel 1 goto coperr
  xcopy %PSPL%\*.INI  %PSPD%%PSPPA%\ /F
  if errorlevel 1 goto coperr
  xcopy %PSPL%\*.HLP  %PSPD%%PSPPA%\ /F
  if errorlevel 1 goto coperr

rem Copie des fichiers initiaux
rem ---------------------------
  echo.
  echo Copying default initialization files and scripts 
  echo to directory %PSPD%%PSPPA%\DEFAULT ...
  xcopy %PSPD%%PSPPA%\*.INI %PSPD%%PSPPA%\DEFAULT\ /F
  if errorlevel 1 goto coperr
  xcopy %PSPD%%PSPPA%\*.BAT %PSPD%%PSPPA%\DEFAULT\ /F
  if errorlevel 1 goto coperr

rem Creation du fichier ETC\PSP_PATH avec creation du repertoire ETC si besoin
rem --------------------------------------------------------------------------
  echo.
  echo Creating  %PSPD%\ETC\PSP_PATH file ...
  if not exist %PSPD%\ETC\*.* md %PSPD%\ETC >nul
  echo %PSPPA%>%PSPD%\ETC\PSP_PATH
  if not exist %PSPD%\ETC\PSP_PATH goto coperr

rem Installation du demarrage automatique de Personal Solution Pac
rem --------------------------------------------------------------
  echo.
  echo Installing Personal Solution Pac automatic start...

  %PSPD%%PSPPA%\UMSETKEY.EXE PSP "%PSPD%%PSPPA%\PSP.EXE -s -h -start com mon"
  if errorlevel 1 goto keyerr

rem Installation Personal Solution Pac terminee
rem -------------------------------------------
:complete
echo.
echo Personal Solution Pac installation procedure completed.
echo.
goto fin

rem Personal Solution Pac en cours d'execution
rem ------------------------------------------
:running
  echo.
  echo Error : At least one module of Personal Solution Pac is running.
  echo         Stop Personal Solution Pac (PSP -stop all) and run INSTALL again.
  goto abort

rem Pas de repertoire temporaire
rem ----------------------------
:notmp
  echo.
  echo No temporary directory was found.
  echo Set TEMP environment variable with the name of a
  echo temporary working directory (ex : SET TEMP=C:\TMP).
  goto abort

rem Erreur d'environnement DOS
rem --------------------------
:enverr
  echo.
  echo Environment error,
  goto abort

rem Erreur dans UMSETKEY
rem --------------------
:keyerr
  echo.
  goto abort

rem Erreur de copie
rem ---------------
:coperr
  echo.
  echo Copy error,
  goto abort

:abort
  echo 
  echo Installation procedure aborted.
  goto fin

rem Fin des traitements
rem -------------------
:fin

  if not "%PSPT%"=="" if exist %PSPT%\getvar.exe erase %PSPT%\getvar.exe >nul
  if not "%PSPT%"=="" if exist %PSPT%\setenv.bat erase %PSPT%\setenv.bat >nul

  set PSPT=
  set PSPD=
  set PSPP=
  set PSPPA=
  set PSPL=
  set PSPU=
  set PSPDD=
  set REPONS=

  echo.
  echo.
  pause
