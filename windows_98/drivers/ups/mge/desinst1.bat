@echo off
rem Personal Solution Pac removal procedure for Windows 95 - version 1.00 (part 2)
rem ------------------------------------------------------------------------------

if "%PSPP%" == "" goto error
if not exist %PSPP%\DESINST.BAT  goto error
if not exist %PSPP%\DESINST1.BAT goto error

cd \
echo Removing automatic start...
%PSPP%\UMDELKEY.EXE PSP

echo Removing files ...
attrib -r -h %PSPP%\*.*
for %%f in (%PSPP%\*.*) do erase %%f
for %%f in (%PSPP%\DEFAULT\*.*) do erase %%f

erase \ETC\PSP_PATH

set EXSAVE=0
if not exist %PSPP%\SAVE\*.* goto removdir
set EXSAVE=1
for %%f in (%PSPP%\SAVE\*.*) do erase %%f

:removdir
echo Removing directory : %PSPP%\DEFAULT
rmdir %PSPP%\DEFAULT

if not "%EXSAVE%"=="1" goto remdir
echo Removing directory : %PSPP%\SAVE
rmdir %PSPP%\SAVE

:remdir
echo Removing directory : %PSPP%
rmdir %PSPP%

echo.
echo Removal procedure complete.
echo.
pause
erase \etc\desinst1.bat
goto exit

:error
cls
echo.
echo.
echo Personnal Solution Pac for Windows 95 - Removal procedure
echo ---------------------------------------------------------
echo.
echo.
echo File DESINST1.BAT cannot be accessed, please start
echo DESINST.BAT first.
echo.
pause

:exit
set PSPP=
set REPONS=
set EXSAVE=
