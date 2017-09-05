Readme File for the Hewlett-Packard HP-GL/2 & HP RTL Windows Driver
Product name:
		HP DesignJet Printer Driver
		(HP-GL/2 and HP RTL)
		for Microsoft Windows 3.1, Windows 95 and Windows 98.

Version number:  v2.4

Language(s) supported:   English, French, Italian, German, Spanish, Japanese,
		Traditional Chinese, Simplified Chinese, Korean.

Products supported:
			HP DesignJet
			HP DesignJet 200
			HP DesignJet 220
			HP DesignJet 230
			HP DesignJet 250C
			HP DesignJet 330
			HP DesignJet 350C
			HP DesignJet 430
			HP DesignJet 450C
			HP DesignJet 455CA
			HP DesignJet 600
			HP DesignJet 650C
			HP DesignJet 700
			HP DesignJet 750C
			HP DesignJet 750C Plus
			HP DesignJet 755CM

Installation instructions: See detailed instructions at the end of this file.

Platform requirements:  MS Windows 3.1, 3.11, 95 or 98.


SOFTWARE APPLICATION NOTES:

General notes:
Large paper sizes:
If your application has a Page Setup, or similarly named menu item, you should always
take care when it is used to set a large paper size.  ZoomSmart scaling settings in
the Paper Sizes properties page may be active.  If so, the scaling effect could
generate an error message which tells you that the scaled paper size is too large for
your printer and that scaling will be disabled.  However, in some extreme cases this
error message will be repeated several times.  After the final error message your
drawing will be printed according to the Page setup settings and with the scaling
setting disabled.

Inked area:
The inked area functionality of some HP DesignJet printers may not work as expected
when working with some applications.  This happens because these applications draw
objects around the page, or at the upper left-hand corner.  These objects may be
hidden or might just be a single pixel.  Therefore, the resulting cut page (inked
area) may be bigger than you expected.

Some applications that show this behavior are: Micrografx Picture Publisher, SPC
Harvard Graphics, and Microsoft Powerpoint.

Cancelling printing:
If you decide to cancel a job that you have started printing, you are recommended to
use the Cancel button in the driver rather than using the Print Manager (Windows 3.1)
or the Settings -> Printers dialog box (Windows 95 and Windows 98).

AutoCAD R13 for Windows:
Problem - You are using the 8 bits per pixel option of the render functionality and
your prints are black or almost completely black, and have general color
inconsistencies.

Workaround - To avoid this problem, use the 24 bits per pixel rendering option.
(You can select this option in the Render window of Autocad.  In the Render window go
to Options menu then Color depth and select 24 bits per pixel.  You will need to
render the plot again for this change to be effective.)


Internet Links from the Driver's Help File

The driver's help file contains some useful links for users with access to the
Internet.  If you use Windows 3.1, you will see the message "Unable to run the
specified file" if you attempt the links.  On Windows 95 or Windows 98, you can
normally link from the help file to these Internet pages provided that your Netscape
settings specify that Startup is to use the Netscape Browser.  However, even if you 
cannot link automatically to these pages, they can still provide you with useful 
information.

The pages are:
	HP Home Page					http://www.hp.com/
	HP DesignJet Home Page		http://www.hp.com/go/designjet
	Internet Imaging				http://www.image.hp.com/


INSTALLATION INSTRUCTIONS

IMPORTANT:
No other applications should be running when you install this driver.


Quick Installation from Windows 3.1 and 3.11

1.	Insert the driver disk into the A (or other) drive of your computer.
2.	In the Program Manager, select File and then Run...
3.	On the Command Line, type a:\install and click on OK.
4.	Select the desired configuration in the Installation dialog box and click on
        OK.

Quick Installation from DOS (Windows not running)

1.	Insert the driver disk into the A (or other) drive of your computer.
2.	Type:    win a:\install.
3.	Select the desired configuration in the Installation dialog box and click on
        OK.

Standard Windows 3.1 and 3.11 Installation

1.	Insert the driver disk into the A (or other) drive of your computer.
2.	Open the Program Manager in MS Windows.
3.	In the Program Manager, select Main.
4.	In Main, select Control Panel.
5.	In Control Panel, select Printers.
6.	In the Printers dialog box, click on Add Printer >>.
7.	In the List of Printers list box, double click on the Unlisted Printer entry.
8.	In the Add unlisted printer dialog box, double click on the A: (or other)
        drive in the Directories list box.
9.	Double click on the model name of the printer you want to install in the
        "Printer model" list box.
10.	Click on Use Print Manager.
11.	In the Printers dialog box, click on Connect.
12.	In the Printers - Connect dialog box, click on the desired port.
13.	In the Printers - Connect dialog box, change both the Device Not Selected and
        Transmission Retry time-outs to 900 and click on Fast Printing Direct to
        Port.  Click on OK
14.	Double click on the desired installed printer so it appears in the Default
        Printer box.  Click on Close.

Windows 3.1 and 3.11 installation note:

If you experience problems with the recommended procedure for installing the driver
(running the INSTALL program from the Program Manager), try using the alternative
method (go to Control Panel, Printers and click Add).

Standard Windows 95 and Windows 98 Installation

Note that, unless stated otherwise, all mouse clicks in the following procedure
assume you are using the left mouse-button.

1.	With the "HP DesignJet Printer Driver (HP-GL/2 and HP RTL) for Microsoft
        Windows 3.1 and Windows 95" disk or the disk for Windows 98 inserted in your
        floppy drive and with Windows 95 or Windows 98 running, click on Start, 
        select Settings and then Printers to open the Printers dialog box.

2.	Double-click on the Add Printer icon to open the Add Printer Wizard dialog
        box.

3.	Follow the steps displayed on your screen.  Below is a series of questions
        which, depending on your system configuration, you may be requested to
        answer.

How is this printer attached to your computer?

Select:
	Local printer if the printer is connected to your computer by a cable running
        directly between them.

	Network printer if the printer has a network option installed, such as "The
        HP JetDirect Network Interface", and you will use it to communicate with your
        printer.

Click on Have Disk... and in the "Install From Disk" dialog box, enter the
	specification of your floppy disk drive and click on OK.  This time in the
	"Add Printer Wizard" dialog box select your HP DesignJet Printer from the
	list and click on Next.  If you already have an existing driver for your
	printer we recommend to replace it using the one on the disk.

Do you print from MS-DOS-based programs?

	We recommend that you select No.  Select Yes only in the case where you have
        an MS-DOS driver which can print to a HP DesignJet series printer.

4.	At the end of the installation procedure you will be asked if you want to
        benefit from the offer of free driver updates; we encourage you to do this.
        You will also have to opportunity of seeing the Software Application Notes
        section of the driver's help system.  You are recommended to read the
        sections which apply to the applications which you use.  After that you can
        close the help file and you will be returned to Windows 95 or Windows 98.

5.	Remove the driver installation disk.


HP DesignJet 450C/430/455CA Toolbox for Windows 95 and Windows 98

If you use Windows 95 or Windows 98 with a direct connection (that is, not on a 
network) to an HP DesignJet 450C, 430 or 455CA printer, you can use the set of 
utilities provided to allow parallel communication with your DesignJet.

After installing the driver, insert the "HP DesignJet 450C/430/455CA Toolbox for
Windows 95" diskette  or the diskette for Windows 98 and run the hplsetup.exe 
program to install these utilities.


©Copyright Hewlett-Packard Company 1996. All rights reserved.
Version 2.4 September 1997

A limited License is granted for the use of this Software (and related documentation)
only with Hewlett-Packard printers on a no-cost, sharing basis.  You may distribute
and copy this Software (and related documentation) so long as it is strictly for use
with Hewlett-Packard printers, it is not modified and remains a completely unaltered
package, it is not sold for profit and it is advertised for use with Hewlett-Packard
printers.
