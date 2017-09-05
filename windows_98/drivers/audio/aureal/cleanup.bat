@echo off
break on
cls
echo WARNING:  This program is about to remove Vortex related files.
echo .
echo Press Ctrl-C NOW to Abort.  Otherwise...
pause
echo Removing %winbootdir%\system\ASP4*.DRV files...
del %winbootdir%\system\asp4*.drv
echo Removing %winbootdir%\system\ASP4*.VXD files...
del %winbootdir%\system\asp4*.vxd
echo Removing %winbootdir%\inf\ASP4*.INF files...
del %winbootdir%\inf\asp4*.inf
echo Removing %winbootdir%\inf\OEM*.INF files...
del %winbootdir%\inf\oem*.inf
echo Removing %winbootdir%\inf\other\AUREAL*.INF files...
del %winbootdir%\inf\other\aure*.inf
echo Removing %winbootdir%\A3D*.*...
del %winbootdir%\A3D*.exe
del %winbootdir%\A3D*.wav
del %winbootdir%\A3D*.ini
echo Removing %winbootdir%\ASP4*.COM...
del %winbootdir%\asp4*.com
echo Removing %winbootdir%\ASP4*.INI...
del %winbootdir%\asp4*.ini
echo Removing %winbootdir%\ASP4*.EXE...
del %winbootdir%\asp4*.exe
echo Removing %winbootdir%\system\AUREALGM...
del %winbootdir%\system\aurealgm
echo Removing %winbootdir%\system\ASP4*.DLL...
del %winbootdir%\system\asp4*.dll
echo Removing %winbootdir%\system\A3D.DLL...
del %winbootdir%\system\a3d.dll
echo Removing %winbootdir%\system\A3D.VXD...
del %winbootdir%\system\a3d.vxd
echo Removing %winbootdir%\system\ASP4CPL.EXE...
del %winbootdir%\system\asp4cpl.exe
del %winbootdir%\aspen.com
del %winbootdir%\fmtsr00.com
del %winbootdir%\runasp.bat
echo There are general files, which may be needed by other programs:
echo   wing32.dll
echo   mfc42.dll
echo   msvcrt.dll
echo   msjstick.drv
echo   These files will also be removed unless you press Ctrl-C now.
pause
echo Removing %winbootdir%\system\MFC42.DLL...
del %winbootdir%\system\mfc42.dll
echo Removing %winbootdir%\system\MSVCRT.DLL...
del %winbootdir%\system\msvcrt.dll
echo Removing %winbootdir%\system\WING32.DLL...
del %winbootdir%\system\wing32.dll
echo Removing %winbootdir%\system\MSJSTICK.DRV...
del %winbootdir%\system\msjstick.drv

echo There is one more file, vjoyd.vxd, which if deleted, will require
echo reinstallation by Direct X 5.  This file will not be deleted.
echo to delete it, execute "del %winbootdir%\system\vjoyd.vxd".
rem del %winbootdir%\system\vjoyd.vxd
echo .
echo About to remove the file %winbootdir%\DOSSTART.BAT.  This file 
echo normally does not contain anything besides a Vortex related command.
pause
del %winbootdir%\dosstart.bat
echo 
echo About to remove installed applications 
deltree %winbootdir%\startm~1\programs\aureal~1
deltree %winbootdir%\..\progra~1\aureal
echo File removal complete...
pause




