@echo off
rem ***************************************************************
rem              Personal Solution Pac for Windows 95
rem                        Log Script
rem ***************************************************************
rem
rem This script may use the following parameters :
rem
rem %1  Event label
rem %2  Event text
rem %3  Date and time
rem
rem ***************************************************************

psp_wlog.exe -l:%3 : %2
