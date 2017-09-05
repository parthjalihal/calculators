//------------------------------------------------------------------------------------------
//--  MSN Setup Script (setup2.mss)   // Win98 version, part two of CD setup, after reboot
//------------------------------------------------------------------------------------------

SET 	appname="MSN Setup for Win98"  source_url="http://setup.msn.com"

//-- Part Two: -------------------------------------------------------------//

//-- welcome back page
STARTUP-TWO

//-- install all components that are required ---
//INSTALL-COMPONENTS

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
