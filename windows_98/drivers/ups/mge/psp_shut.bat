@echo off
rem ***************************************************************
rem              Personal Solution Pac for Windows 95
rem                       Shutdown Script
rem ***************************************************************
rem
rem Stops some windows applications
rem -------------------------------
psp_kill.exe WinPopup
psp_kill.exe SP97NWndClass
psp_kill.exe SP97WndClass

rem Starts immediate system shutdown
rem --------------------------------
psp_down.exe -force
