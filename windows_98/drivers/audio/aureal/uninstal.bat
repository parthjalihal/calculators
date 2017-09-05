echo off
cls
echo ===============================================================
echo WARNING:  You are about to unstall the Vortex Audio Drivers
echo ===============================================================
echo This program should only be run if you wish to remove the vortex
echo related drivers and Registry entries from your system.
echo . 
echo After running this program, you system should behave as it did
echo before installing the Vortex drivers.
echo .
echo Press Ctrl-C now to cancel this procedure.
echo Otherwise, press a key when prompted as the programs run.
pause
echo Removing Vortex entries from the Registry.
delkey keylist.txt
echo Done.  About to delete vortex files from the system.
rem pause
call clnfile
cls
echo Procedure complete.  
echo .
echo ==============================================================
echo YOUR ARE NOW STRONGLY URGED TO SHUTDOWN WINDOWS AND REBOOT 
echo ==============================================================
echo .
echo If you reboot your computer with a Vortex card installed, a normal
echo installtion procedure will prompt you to install new Vortex drivers.
echo .
pause
