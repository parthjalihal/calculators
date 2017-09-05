@echo off
rem ***************************************************************
rem              Personal Solution Pac for Windows 95
rem                  Workstation Broadcast Script
rem ***************************************************************
rem
rem This script may use the following parameters :
rem
rem %1  Event name (same as defined in message file EVENTS.INI)
rem %2  Message to send to users : YES or NO
rem %3  Message date and time
rem %4  Message text
rem
rem Example of customization :
rem
rem if not %1=="UPSCommFailure" goto next1
rem    specific action ...
rem :next1
rem
rem ***************************************************************

rem Displays Pop-up window
rem ----------------------

psp_pop.exe %3 %4
