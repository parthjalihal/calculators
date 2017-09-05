@echo ==============================================================
@echo               Welcome to Microsoft System Recovery!
@echo ==============================================================
@echo       Sit back and relax while the System Recovery program
@echo       prepares your system to be restored.  This will take
@echo       approximately 30-60 minutes,  depending on the speed
@echo       of your computer.
@echo ==============================================================
@echo       When preparation is complete, the system recovery wizard
@echo       will help you complete the restore process.  Make sure
@echo       you have your full system backup handy.
@echo ==============================================================
@pause
@echo OFF
md C:\restore
copy msbatch.inf c:\restore\msbatch.inf
cd\
cd\
cd\
cd win98
setup.exe c:\restore\msbatch.inf /is /id /iq /im /id /ie /IW
