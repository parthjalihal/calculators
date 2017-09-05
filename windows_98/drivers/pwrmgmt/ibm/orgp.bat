@echo off
set localroot=\builds\patch\apm
echo.
echo ***************************************
echo ********   WIN95 APM PATCH    *********
echo ********       Build 1        *********
echo ***************************************
echo.

echo.

rem -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
rem       Base InstallShield files
cd %localroot%\final

call sp other install\w95i30

get -w -y -r1.1 _isdel.exe
get -w -y -r1.2 _inst32i.ex_
get -w -y -r1.3 _setup.dll
get -w -y -r1.2.1.0 _setup.lib
get -w -y -r1.2 setup.exe
get -w -y -vw95patchSAMfbapm01 fbpatch.ins
rename fbpatch.ins setup.ins

rem -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
cd %localroot%\files

call sp mwavemgr mwavew95
get -w -y -vw98fixvmw430tws02 vmw50430.vxd
get -w -y -vw98fixvmwtws01 mwave.vxd
get -w -y -vw98fixvmwaudtws01 vmwaudio.vxd
get -w -y -vw98fixvmwaudtws01 vmwmidip.vxd

call sp audio synthdrv
get -w -y -vsynth_970805 mwsynlsc.drv



:PACKEM
echo.
echo ********** Files pulled from library. **********
echo.

dir *.* /s | grep "file(s)"
echo.
cd %localroot%

choice /c:yn /n "          Would you like to pack the files now?"
if errorlevel==2 goto EXIT

echo. 
echo  Packing the files into PATCH.Z
echo. 
cd %localroot%\final
if exist patch.z del patch.z
icomp -h -i %localroot%\files\*.* %localroot%\final\patch.z

echo.
echo ********** Files packed. **********
echo.

choice /c:yn /n "          Would you like to build the EXE now?"
if errorlevel==2 goto EXIT
echo.
echo NOTE: Make sure you have the correct STUB file !!!
echo       (other\install\w95i30\i32stubc.exe rev 1.2)
echo.
..\exebuild
echo.
echo *** Press any key when the EXE is done being built ***
echo.
pause > nul
ren setupex.exe patch.exe
move patch.exe ..

:EXIT
cd %localroot%

