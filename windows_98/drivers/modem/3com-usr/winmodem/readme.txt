** Files in this folder should only be used if you are having difficulty
installing your modem after upgrading to Windows 98.

Windows 98 Specific Winmodem issues.
1. Installation of Generic 3Com/USR WinModem drivers.
2. Re-enable DosBox support after upgrading to Windows 98.
3. Unknown device in Device Manager after upgrade

1. Installation of Generic 3Com/USR WinModem drivers

The Generic 3Com/USR WinModem driver on the Windows 98 CD is a Limited Functionality driver; 
it only has data/fax features. It is intended as a temporary workaround for customers who have 
lost the Original installation disk for their modem, or are experiencing 
problems with their modem after upgrading to Windows 98. Using the Limited 
Functionality driver on the Windows 98 CD, you will be able to access the 
internet or BBS, to obtain the correct driver for your model modem.

The program Wmregdel.exe, located in this folder, will clean the registry 
of Winmodem related keys.   

If you are having difficulty installing your Winmodem please follow these 
steps:

1) Double Click on the wmregdel.exe file located in this directory.
2) Follow on screen instructions.
3) Shutdown and reboot computer.
4) When you computer restarts, your modem should be detected and the add/new
   hardware wizard will appear, insert the original installation disk that 
   came with your modem, and follow the onscreen instructions.  
   If you don't have the original disk, you may chose to install the limited
   functionality driver provided on the Windows98 CD, choose 
   <Specify Location>, and <browse> to this directory and the Winmodem.inf 
   file.  After the modem is installed you should be able to use your modem 
   to get to the internet or BBS, to download the specific driver for your 
   modem.

2. Re-enable DosBox support after upgrading to Windows 98

After upgrading to Windows 98, some Winmodems will lose DosBox functionality.
If your Winmodem supports DosBox, please follow these steps to re-enable 
this feature.

Goto the <Winmodem> icon in <ControlPanel>
and select the <Port Settings> tab and uncheck <Enable Dos Boxes>, press the
<OK> button.  ** Note if you do not see the <Enable Dos Boxes> section your
Winmodem does not support this feature.

Repeate the process by going to the <Winmodem> icon in <ControlPanel>
and select the <Port Settings> tab and this time CHECK the 
<Enable Dos Boxes> box and press <OK> button.  Restart your computer.


3. <Unknown device> in Device Manager after upgrade

After upgrading your Winmodem from Windows 95 to Windows 98, there may be 
an <Unknown Device> listed in the Device Manager with a Error Code 28 
listed.  To relsove this issue, please highlight the <Unknown Device> by 
single clicking on it Device Manager, and select the <Remove> button.  
