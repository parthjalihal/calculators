[English]
README.TXT                  MATROX GRAPHICS INC.              1998.03.10

             Millennium/Mystique MGA PowerDesk for Windows 98
                            Revision 3.83.017


Table of Contents
-----------------

- Description of This Release
- MGA PowerDesk Files
- Installation
- Registry Settings
- Notes, Problems, and Limitations
- MGA Diagnostic program
- IRQSET.EXE program

Note to users of localized versions: This file may contain some last
minute information not translated into your language. We apologize for 
the inconvenience.


Description of This Release
---------------------------

This product includes a Windows 98 display driver AND the MGA
PowerDesk for Windows 98, which allows: virtual desktop, hardware 
pan and zoom, DirectDraw/Direct3D driver and more...


MGA PowerDesk Files
-------------------

   Basic Driver files (installed in \Windows\System):

   MGAPDX64.INF   Installation support file
   MGAPDX64.DRV   MGA Win98 display driver
   MGAPDX64.VXD   MGA miniVDD
   MGALLX64.DLL   MGA initialization DLL
   MGAXDD.DRV     MGA DirectDraw 32-bit driver
   MGAXDD32.DLL   MGA 32-bit DirectDraw/Direct3D component
   MGAXDD.VXD     MGA VxD DirectDraw component

   PowerDesk files installed in \Windows\System:

   MGASHEET.DLL   MGA Settings property sheet (replaces regular sheet)
   M_SHEET.DLL    Text strings for MGASHEET.DLL
   MGASHEET.HLP   Help file for MGA Settings property sheet
   MGAMON.DLL     MGA Monitor property sheet
   M_MON.DLL      Text strings for MGAMON.DLL 
   MGAMON.HLP     Help file for MGA Monitor property sheet
   MGACTRL.EXE    MGA Control Center  (for PowerDesk)
   MGACTRL.DLL    MGA Keyboard hooker (for PowerDesk hot keys)
   M_CTRL.DLL     Text strings for MGACTRL.EXE
   MGAPREV.BMP    MGA Pixel Depth Preview Bitmaps 
   MGABKGND.BMP   MGA background bitmap for property sheets
   SXCIX64.DLL    Matrox 3D library (for Millennium only)

   PowerDesk files installed in \Program Files\Matrox MGA PowerDesk:

   README.TXT     This file
   ONLINE.DOC     MGA PowerDesk Documentation
   \Mon
   MGA.MON        MGA Monitor File
   MGA.BIN        Compressed MGA.MON monitor file
   \DNav
   MGADNAV.EXE    MGA Desktop Navigator program
   M_DNAV.DLL     Text strings for MGADNAV.EXE   
   \QDesk
   MGAQDESK.EXE   MGA QuickDesk program   
   M_QDESK.DLL    Text strings for MGAQDESK.EXE
   \Color
   HGCCTL98.EXE   MGA Color resident program
   HGCCPL.DLL     MGA Color property sheet
   HGCCPL.HLP     Help file for MGA Color property sheet


Installation
------------

To install both MGA PowerDesk and the MGA display driver, start the
included "setup" program.

The setup program first asks you which language you want to use, then 
to choose between a "Typical" or "Custom" installation. With a 
"Typical" installation, the setup program installs all MGA PowerDesk
utilities in the default "\Program Files\Matrox MGA PowerDesk" folder.
We recommend you use "Typical".

After PowerDesk is installed, the setup program automatically changes
the Windows 98 display driver, then prompts you to restart your computer
for all changes to take effect.

You can customize the installation process by editing the "mga.ini"
file. For example, you can change the default installation path, default
driver performance switches, default schemes, and so on. The file is
self-documented. This type of customization is for advanced users only.

- More Information
  For more information on settings, refresh rates etc., see the WordPad
  file "online.doc". This file is included on the Matrox disk, and installed
  in your \Program Files\Matrox MGA PowerDesk\ folder.

Registry Settings
-----------------

PowerDesk settings are kept in the Windows 98 registry, under the keys:

HKEY_LOCAL_MACHINE\SOFTWARE\MATROX\POWERDESK 
HKEY_LOCAL_MACHINE\SOFTWARE\MATROX\DESKNAV
HKEY_LOCAL_MACHINE\SOFTWARE\MATROX\COLOR CONTROL


Notes, Problems, and Limitations
--------------------------------

- DirectDraw, Direct3D and DirectVideo support

  The DirectDraw driver we provide is compatible with DirectX 2 (and
  later) and includes Direct3D support. For our DirectDraw/Direct3D
  driver to be called, and benefit from hardware acceleration,
  Microsoft DirectX 2 (or later) MUST be installed, even for programs
  originally made for DirectX 1.

  We provide DirectX 2 on the Matrox CD-ROM. The latest DirectX is
  available from the Microsoft Web site, and is included with many 
  DirectX programs.

  IMPORTANT: If the DirectX setup program prompts you to replace the
  existing display drivers, click "No". Otherwise, the setup program 
  installs display drivers which are not as optimized as the Matrox 
  drivers and which do not support PowerDesk software.

  Note that depending on the origin of your Microsoft DirectX software, 
  it may not include DirectVideo support. For faster playback of Indeo 
  and Cinepak AVI files, you should install Microsoft DirectVideo 
  support. 

- Matrox Bus Mastering

  The Matrox Mystique and Millennium II support bus mastering. Bus mastering 
  is a feature that allows expansion cards to perform tasks at the same time 
  as your computer's CPU. The performance of programs that take advantage of 
  this feature - for example, some 3D programs - is improved with bus 
  mastering.

  To use bus mastering, your graphics card needs an interrupt request (IRQ). 
  Most computers automatically assign an IRQ to graphics cards, but some do 
  not. If your graphics card hasn't been assigned an IRQ, programs that 
  use Matrox bus mastering may not work properly. To test for an IRQ, start 
  the MGA Diagnostic program in the MGA PowerDesk folder. (Some older 
  computers may not support bus mastering at all.)

- Adobe Type Manager limitation

  With Adobe Type Manager installed, you cannot run the driver if
  the "Advanced Graphics Acceleration Settings" is set to none. Note
  that ATM is installed as part of Adobe Acrobat Reader. This is an
  Adobe problem documented in the Windows 98 "display.txt" file.

- Monitors in interlaced mode

  Some older monitors such as the NEC 3D and many "SuperVGA" monitors
  do not support non-interlaced mode in all resolutions. The MGA display 
  driver does not properly handle interlaced mode with the Windows 98 
  monitor selection method. If you have one of these monitors, please 
  use the MGA Monitor selection method.

- DirectDraw and Automatic Power Management

  As stated in "Microsoft DirectX release Notes", September 30, 1998, a 
  DirectDraw game may be unable to restore properly if it is suspended 
  by Automatic Power Management utilities.

- Installation in different language versions of Windows 98

  If you install software in a language different from the language of 
  your operating system (for example, English software on a Japanese 
  system), you may have problems with text and dialog box controls being 
  cut off. This is because of differences in system fonts.

- VESA modes:

  DOS programs running in DOS full-screen mode are handled by the 
  MGA Video BIOS. The BIOS supports all standard VGA modes, AND many
  VESA VBE 1.2 and 2.0 modes:

     VESA Graphics Modes
  Mode   Resolution  Colors            
  
  100h   640x400     256        
  101h   640x480     256 
  110h   640x480     32K
  111h   640x480     64K
  112h   640x480     16.8M
  102h   800x600     16
  103h   800x600     256
  113h   800x600     32K
  114h   800x600     64K
  115h   800x600     16.8M
  105h   1024x768    256
  116h   1024x768    32K
  117h   1024x768    64K
  118h   1024x768    16.8M(*)
  107h   1280x1024   256
  119h   1280X1024   32K(*)
  11Ah   1280X1024   64K(*)
  11Ch   1600X1200   256
  11Dh   1600X1200   32K(*)
  11Eh   1600X1200   64K(*)

  (*) requires 4Mb memory

       Text Modes
  Mode   Columns     Rows

  108h      80         60
  109h     132         25
  10Bh     132         50
  10Ch     132         60


MGA Diagnostic program
----------------------

Restart your computer and close all other programs before running MGA
Diagnostic. 

The MGA Diagnostic program tests the bus mastering feature of your 
system and if another program is using bus mastering at the same time (a 
3D game for example), a system error may occur.


IRQSET.EXE program
------------------

If you have a 3D program for Windows 98 that doesn't start or stops 
running, you may be having a problem with bus mastering. The Matrox card
needs an Interrupt Request (IRQ) number for bus mastering to work
properly and some computers do not automatically give the Matrox card an
IRQ. You can manually assign your Matrox card an IRQ through the 
IRQSET.EXE program we provide.

First, check for an IRQ number:

  (1) Right-click "My Computer" on the Windows desktop background.
  (2) Click the "Properties" menu item.
  (3) Click the "Device Manager" tab.
  (4) Click the "Properties" button.
  (5) Check if the MGA display driver appears in the IRQ list. 
      If it does, there is no need to manually assign an IRQ and you
      can stop here.
      IF NOT, note which IRQ number (10, 11 or 12) is not used and 
      continue with the instructions below.

To manually assign an IRQ:

  (1) Open your "autoexec.bat" file with the Windows 98 Notepad program.
      Your autoexec.bat file is in the root directory of your boot 
      drive.

  (2) Add a line to your autoexec.bat with the path to "IRQSET", 
      followed by the IRQ you want to use (the unused number you noted 
      above). For example, to assign your Matrox card IRQ 10, insert the
      following line in your autoexec.bat (INCLUDING the quotation 
      marks):

           C:"\Program Files\Matrox MGA PowerDesk\IRQSET" A

      (The path you use MIGHT be different if you have a customized 
      installation of MGA PowerDesk on your computer.)

      The above example is for IRQ 10. To use a different IRQ, replace
      "A" with ONE of the following letters (capitalized):

          B (for IRQ 11)
          C (for IRQ 12)

  (3) Save the changes to the autoexec.bat and exit Notepad.

  (4) Restart your computer for the changes to take effect.

