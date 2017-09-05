//-------------------------------------------------------------------------------------
//--  MSN Setup Script (setup1.mss)  Win98 Version  	TR 455 9 MAR 1998 JRG
//-------------------------------------------------------------------------------------

// Using MSNAK to skip typical/complete dialog 
WRITE_REG  keyname="HKEY_LOCAL_MACHINE\software\Microsoft\MSN\MSNAK" valname="InstallType" value="1" 
WRITE_REG  keyname="HKEY_LOCAL_MACHINE\software\Microsoft\MSN\MSNAK" valname="ForceReboot" value="0"
WRITE_REG  keyname="HKEY_LOCAL_MACHINE\software\Microsoft\MSN\MSNAK" valname="reqSpace" value="5"  datatype=dword
WRITE_REG  keyname="HKEY_LOCAL_MACHINE\software\Microsoft\MSN\MSNAK" valname="InstallTime" value="about 2 to 15 minutes"

SET 	appname="MSN Setup for Win98"  source_url="http://setup.msn.com"

//-- list of component files (Note: compid's must be unique) --------------
//--   Note: use squotes around params containing double-quote chars ------
//
//-- begin TYPICAL INSTALL components
FILE-COMPONENT	compid=2049   name=Wininst.exe rules=noreinstall descrip="Microsoft Outlook Express"  clsid=B7AAC060-2638-11d1-83A9-00C04FBD7C09 compsize=1456984 fullsize=4200000 version=4.72.2106.0  flags="athena.inf OutlookExpress"
FILE-COMPONENT	compid=2010   name=mcdpkgtm.exe descrip="MSN Multicast Detection"  clsid=0 compsize=179040 fullsize=117651 version=2.5.2.455 flags="/R:n /Q" reboot=no
FILE-COMPONENT	compid=2007   name=msnsvc.exe   descrip="MSN Dialer && Connection Manager"       clsid=0 compsize=210000 fullsize=262000 version=6.0.48.0    flags="/r:n /Q"
FILE-COMPONENT	compid=2002   name=Wininst.exe  rules=noreinstall descrip="Microsoft Chat 2.1"      clsid=241AF500-8FB6-11CF-ADC5-00AA00BADF6F compsize=875227 fullsize=4460000 version=4.71.2201  flags="cchat21.inf cchat"
FILE-COMPONENT	compid=2008   name=controls.exe descrip="MSN Controls"       clsid=8F0F5093-0A70-11d0-BCA9-00C04FD85AA6 compsize=780000 fullsize=1573619 version=4.71.0.10 flags='/r:n /Q' reboot=no
FILE-COMPONENT	compid=2420   name=CoreUI.exe   descrip="MSN Quick View"     clsid=0 compsize=531000 fullsize=1080000 version=2.5.2.455 flags="/R:n /Q" reboot=no

//-- begin COMPLETE INSTALL components

//-- startup UI for setup program
STARTUP-ONE

//-- install all components that are required ---
INSTALL-COMPONENTS

//-- allow COMPLETE INSTALL components only a chance to install
//--    on a second checklist screen, but only if Complete install chosen
INSTALL-COMPONENTS

//-------------------------------------------------------------------------------------
//--  MSN CD Setup Script (setup2.mss)   // Win98 version, part two of CD setup, after reboot
//-------------------------------------------------------------------------------------


//-- write version info into registry for Metro
WRITE_REG  keyname="HKEY_LOCAL_MACHINE\software\Microsoft\MSN\SoftwareInstalled" valname="Major" value="2"
WRITE_REG  keyname="HKEY_LOCAL_MACHINE\software\Microsoft\MSN\SoftwareInstalled" valname="Minor" value="5"
WRITE_REG  keyname="HKEY_LOCAL_MACHINE\software\Microsoft\MSN\softwareInstalled" valname="Other" value="2"
WRITE_REG  keyname="HKEY_LOCAL_MACHINE\software\Microsoft\MSN\softwareInstalled" valname="Build" value="455"
WRITE_REG  keyname="HKEY_LOCAL_MACHINE\software\Microsoft\MSN\softwareInstalled" valname="Media" value="0"
WRITE_REG  keyname="HKEY_LOCAL_MACHINE\software\Microsoft\MSN\softwareInstalled" valname="Language" value="English"
WRITE_REG  keyname="HKEY_LOCAL_MACHINE\software\Microsoft\MSN\softwareInstalled" valname="Distributor" value="A1ABUFFETT"
WRITE_REG  keyname="HKEY_LOCAL_MACHINE\software\Microsoft\MSN\softwareInstalled" valname="Campaign" value="1MEMPHIS10"
WRITE_REG  keyname="HKEY_CURRENT_USER\software\Microsoft\MSN\Settings" valname="IgnorePV" value="1" datatype=dword 

//-- Launch MSN (after reboot)---
LAUNCH-COREUI

END
