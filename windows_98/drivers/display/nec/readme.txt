PowerVR Software Release ReadMe 12 August 1997

Build 4.0.0.81

For PowerVR PCX-1 & PCX-2.

Contents
1. Distribution contents
2. Installation procedure
3. Problem reporting
4. Changes from previous versions
5. Known Outstanding Problems

1. Distribution Contents
This readme file.

SGL drivers for PowerVR PCX-1
	\windows\sgl.dll
	\windows\sglmid4.dll
	\windows\pvros.dll
	\windows\system\vsgl.vxd


SGL drivers for PowerVR PCX-2
	\windows\sgl.dll
	\windows\sglmid5.dll
	\windows\pvros.dll
	\windows\system\vsgl.vxd

D3D files for PowerVR PCX-1
\windows\system\pvrhal32.dll
\windows\pvrmid4.dll
\windows\pvros.dll
\windows\system\vsgl.vxd

D3D files for PowerVR PCX-2
\windows\system\pvrhal32.dll
\windows\pvrmid5.dll
\windows\pvros.dll
\windows\system\vsgl.vxd

Control Panel Files
\windows\system\pvrinit.exe
\windows\system\pvrsm3d.dll

The installation script (PowerVR.inf)

Development include files and libraries
	
sgl.h
sglwin32.h
pvrd3d.h
sgl.lib

2. Installation procedure
Use the PowerVR.inf file supplied with this release in the normal way from the Update Drivers option for the PowerVR card in Device Manager. 

This installs the latest release of SGL/D3D for both PowerVR PCX1 and PCX2.

3. Problem Reporting
If you have problem with the release, detail the nature of the problem using the BETABUG.DOC and forward it to:

	support@videologic.com.

4. Changes from previous release
4.1 New Features


This is a bug fixing release based on the feature set implemented for Beta5.

Applications should now get ini file settings via API calls 
sgl_get_ini_string & sgl_get_ini_int -  see SGL.H


4.2 Bug Fixes


-  App Hint added for increasing the screen device size 
  by 1 pixel in both directions (works on Mech2 only ):

			IncScreenXYby1 = 0(Off) or 1(On)

-	  Points & Lines : fix for vingetting when
	  shadow or LV's on	

-	  Bilinear Filtering is now switchable again

-  Lines and Points - WIREFRAME behaviour changed 
   to match Microsoft's implementation.
	
-  Can now set 128K TSPParamSize again.
	
-  MoonRacer fix - problems with callbacks.

-  Shadow and Light Volume support now fixed within Direct3D.


4.3 Optimisation

- PCX2's D3D performance.

5. Known Issues
5.1 Direct 3D
5.1.1 SDK Examples
UVIS does not seem to clear the background from a previously run application.

5.1.2 OSR2
The driver file details cannot be seen from Device Manager.

5.1.3 Retained Mode
Text on Fly disappears when 3D data is rendered into the same region as 2D. This is a possible Retained Mode driver problem, ingnoring NO2DDURING3D - under further investigation.

5.1.4 2D/3D Compositing
Due to the strict enforcement of capabilities, games not implementing BeginScene(), EndScene() and NO2DDURING3D correctly may fail to work.

Examples of this are:
Hellbender
Monster Truck Madness
Hyperblade
Agile Warrior
Cyberspeed
Cyber Gladiators

5.2 PowerSGL
5.2.1 Displaying error messages on startup
Errors on startup will now be reported through SGLHW.INI in the [Last Error] section. If required, error messages can be displayed via a dialog box through setting the following in SGLHW.INI:

[Debug]
EnableDebugMessage=1

5.3 PowerSGL Direct

5.4 System Compatibility

5.4.1 Graphics card Compatibility
5.4.1.1 Working Combinations
The current list of tested graphics controllers include
S3 KV2, ViRGE, Trio64, Trio64V+, 868, 968.
Tseng ET6000.
ATI Mach64 VRAM/DRAM.

5.4.1.2 Incompatible Combinations
The following do not currently work: S3 864, 964.

In addition, the D3D drivers do not work with 16bit graphics drivers, such as those for Trident controllers.

5.4.2 Matrox Graphics Card Compatibility

Version 3.62 onwards of the Matrox drivers have been tested with the 'Maximum Performance' setting enabled. If you are using previous versions of the driver you may encounter problems unless 'Maximum Compatability' is set.

However, there are still problems with PCX-1 applications requiring 2D/3D compositing.


5.4.3  968/Trident Graphics Cards
When using these graphics cards with PowerVR and SGL/D3D, the system may hang when you are running a game and you move the mouse. This may be for 2 reasons. Firstly, some controllers (trident) do not support simultaneous access by Host and PCI into video memory. Secondly, because some drivers switch from linear to page mode when handling the mouse. The usual solution is to set StrictLocks in SGLHW.INI. Unfortunately this facility is currently broken.

However, your application code using SGL Addressing mode will need to work slightly differently with DirectDraw - see PowerVR sample code.

5.4.4 Processor Support
There is currently a problem when running with the Cyrix processor that will cause the system to crash.

5.4.5 Award BIOS
There seems to be a general PnP problem with the Award BIOS, that goes beyond PowerVR. General effect is that system will not boot with a PowerVR card installed or that the PowerVR card is not configured correctly. Requires BIOS upgrade to 4.51. Further Award BIOS relatd problems can arise as described below.

5.4.5.1 Award BIOS & 968 Graphics cards
Award BIOS 4.51 and 968 graphics cards fail to run with PowerVR with the following configurations:

·Pentium Motherboard featuring Intel Triton VX and HX chipsets ·S3 868 or S3 968 based graphics adapter
·AWARD Bios

During PCI initialisation, graphics cards based on the S3 868 and 968 chips will request only 32Mbytes of virtual memory rather than 64Mbytes they actually require. The AWARD BIOS will allocate the requested 32 Mbytes to the graphics adapter and locate the PowerVR memory range just above that, therefore within the memory range used (but not declared) by the S3 graphics card. 

Attempts to use the PowerVR hardware will fail, typically the system will hang with some garbage on the screen. This is due to the illegal memory range overlap caused by the wrong memory size request of the S3 adapter.

This problem can be worked around using the Windows ' Device Manager as follows:

1)  Go to Control Panel -> System -> Device Manager 
2)  Select Sound, Video and Game Controllers -> PowerVR PCX1 or PowerVR PCX2 
3)  Select Properties -> Resources
4)  Remove check "Use Automatic Settings" to allow manual setup 5)  Choose the second item from the list (Memory Range I)
6)  Click on "Change Setting" and alter the range to FFBE0000-FFBEFFFF  
7)  Choose the last item from the resource list (Memory Range II) 
8)  Click on "Change Setting" and alter the range to FF400000-FF7FFFFF
9)  Confirm everything by clicking OK

This assumes that there is no memory allocation conflict due to devices present at FF400000-FFBEFFFF. One should cross-check for conflicts by checking the allocated memory ranges for other PCI devices by double-clicking the computer icon in the Device Manager and choosing "Memory".

This will allow you to run PowerVR applications successfully and it is normally not necessary to reconfigure the memory settings again since Windows will remember the new settings every time it starts up and reallocate the memory for PowerVR automatically.


5.4.6 Gigabyte Motherboards

On Gigabyte Pentium-class motherboards, which by default feature an Award BIOS, there can be a problem with the PCI bus signal quality which can cause PowerVR to time out very frequently. This time-out has been seen to occur every few hundred frames down to every single frame, resulting in a frozen display for the time specified in RenderTimeout in sglhw.ini .
The problem has been observed with different types of Gigabyte motherboards featuring the Triton-VX and -HX chipsets. It also seems to be independent of the type of graphics adapter, the problem has been seen with S3-868,S3-968 and ATI-Mach64 based graphics cards. Changing the BIOS to AMI or MR-BIOS might be a solution but this has not been investigated. 

It was found that the position of the PCI adapters in the PCI slots seems to matter, at least for this motherboard configuration. Moving the PowerVR board to PCI slot 1 (or in fact to any slot with a lower number than the slot occupied by the graphics adapter) seems to solve the timeout problem. Tests have shown that the distance between the cards does not matter (ie whether slots 2&3 or 1&4 are occupied).

5.4.7 Demo's running in Window Mode
If running an application in Window mode and the window goes off-screen, corruption of the desktop and cursor will take place. This is because there is no hardware clipping and data will fall outside of the DirectDraw surface in use by the application. To avoid this problem you need to use a screen mode greater than the maximum viewport you intend to use and avoid moving the Window off-screen.

5.4.8 24bit Screen Modes and SGL Address Mode
Applications wishing to take advantage of this screen mode and using the SGL address mode of operation should be aware of the pixel alignment requirements. Please read the DirectDraw application note (sglddraw.pdf).

5.4.9 Write Combining on Pentium Pro PC's
By default write combining on Pentium Pro PC's is enabled. However this has been seen to cause lock ups on some system configurations. To disable write combining, add the following to your SGLHW.INI and reboot

[Default]
WriteCombining=0




