            Synaptics Touchpad Driver Installation Notes
                         Version 4.1.28
                              
Contents
--------
   1. Installing the Synaptics TouchPad Driver.
   2. Personal Computer and Windows 98 Configuration Issues.
   3. Other potential conflicts with the TouchPad Driver.

1. Installing the Synaptics TouchPad Driver
-------------------------------------------

First, make sure that your Synaptics TouchPad is connected
to your system (a driver will be installed for each currently
connected TouchPad).

If you have received your driver distribution in the form of a
self-extracting archive, then you must first extract the installation
files from the archive.  Execute the self-extracting archive file
by double-clicking on it from Explorer, running it from the Start/Run
dialog, or running it from a DOS box command prompt.

Next, run the Setup.exe program, which automatically installs the
driver on your computer.  You can run this program either from a DOS box
by going to the directory that contains the driver files and typing "setup",
or using Start/Run and running setup (e.g. if the driver files are on a 
floppy disk in the A: drive, you would type "A:\setup"), or by exploring 
the directory containing the driver files and double clicking on the 
Setup.exe program.

If the driver has been installed correctly, after you have restarted 
Windows you should see the TouchPad Icon in your task bar next to the 
clock.  Also, a dialog box entitled "Information about your TouchPad" 
will pop up. You can prevent this dialog box from coming up in the 
future by checking the "Stop showing me this message" checkbox. 

For help on using the advanced features of your Synaptics TouchPad,
choose "Tell me more..." from the "Information about your TouchPad"
dialog box, or double-click on the TouchPad Icon in your task bar,
and click on the "Help" button.

If either of the above indicators of successful installation does not 
appear, or if you have other trouble with the installation, the rest of
this document contains important additional information about the 
following issues:

    - BIOS settings
    - Windows 98 mouse port settings
    - Windows 98 serial port settings
    - Mouse control software that was not provided as part of the
      original Windows 98 system
    - Difficulties that some users have experienced with 
      TouchPads installed in keyboards. 

2. Personal Computer and Windows 98 Configuration Issues
--------------------------------------------------------
The new, Windows 98 preferred method for viewing your system's hardware 
configuration is in the Device Manager. The Device Manager can be 
accessed from the Control Panel-->System page.

The Control Panel offers a set of options for configuring your Windows 
98 computer. To access it, click on the Start button, then click on 
Settings, and then click on Control Panel. Once the Control panel is up, 
double click on the System icon in the Control Panel, and then click on 
the Device Manager TAB in the resulting window. 

This page contains individual device configurations for each hardware 
device associated with your computer. Individual items may be viewed by 
clicking the "+" symbols beside the device type names. For example, to 
view the TouchPad or Mouse configurations, click on the "+" symbol 
beside the word Mouse. This will show a list (probably just 1 item for 
typical machines), of available device configurations for pointing 
devices. E.g., if a machine has both a Serial TouchPad and a PS/2 mouse 
attached (or thinks that it does), there would be 2 entries under 
"Mouse".

Any of the available device configurations may be viewed by double 
clicking on the selection or by selecting the item and then clicking on 
the "Properties" button.

2a) Potential PC/Windows Configuration Conflicts.

A) BIOS Settings

Many PCs include a BIOS that permits you to change serial port 
addresses and disable the on board PS/2 mouse port. Changes made 
after Windows 98 was installed may not be known to Windows 98. It is 
recommended that BIOS changes be made only in severe cases, or when 
you are familiar with the impact of the changes.

One possible conflict that can be caused by BIOS settings is that the 
PS/2 port on your computer might be disabled.

If you are attempting to connect a pointing device to a PS/2 port and 
Windows 98 does not know that the port exists (i.e., a "PS/2 Mouse" 
device doesn't show up in the Device Manager's Mouse page), you should 
tell Windows to search for one. To do this, click on the Add New 
Hardware icon in the Control Panel and follow the instructions that are 
displayed; when it asks you if you want to let Windows 98 search for new 
devices, say yes. If Windows 98 does not find a PS/2 port there may be a 
BIOS setting that has disabled the port.

To access the BIOS settings of the computer you must restart your PC and 
watch the screen carefully for instructions on how to "Enter Setup". 
These instructions appear prior to the PC beginning to load Windows 98 
and may be displayed briefly. Refer to your PC's documentation for 
proper procedures to access the BIOS setup.

If the PS/2 port is disabled by a BIOS setting, it must be enabled and 
the new configuration must be saved. Windows 98 may not find this port 
automatically upon restarting and you may have to follow the above 
instructions for Adding New Hardware again. Once the PS/2 port has been 
found by Windows 98, try using the Setup program again to install the 
TouchPad drivers.

B) Windows 98 MOUSE Settings

Some computers include a standard PS/2 mouse port on the PC's 
motherboard, but do not provide any connector for a PS/2 mouse. In this 
case, Windows 98 will still try to find the PS/2 port when it configures 
itself, and if found, will install the software to support it 
automatically, even if no PS/2 device (or even connector) is present.

If you have a PC that automatically adds its PS/2 port to the list, you 
may have an entry in the Device Manager's list of Mouse configurations 
that has a yellow circle with an exclamation mark over it. This will 
always be present and will not cause any problems for Windows 98 
operation.

If you attach a serial pointing device to the PC, and do not attach 
anything to the PS/2 port, Windows 98 will automatically use the serial 
device even though Windows 98 is configured to use a PS/2 mouse. In this 
setting Windows 98 has used a fall-back procedure that supports the 
serial pointing device in a basic mode without any of its special 
features.  If you have a serial TouchPad connected, and run the 
Setup program, then a serial Synaptics TouchPad driver will be
installed, and the PS/2 port driver will be unchanged.  In other
words, you will still see a PS/2 mouse driver in the Device Manager's
list, flagged with an error, but this should cause no problems.

C) Windows 98 SERIAL PORT Settings

When Windows 98 was installed, it found the serial ports available on 
the PC at that time. If new serial ports are added (e.g., by plugging in 
a new serial card), or the current ports have had their addresses 
changed, Windows 98 may not know about the changes.  

Once changes in serial port addresses have been made at the BIOS level, 
Windows 98 needs to be updated with new configuration information. The 
easiest way to ensure that Windows 98 correctly identifies each port is 
to delete all the Communications Ports found under the Port section of 
the System's Device Manager. Next, shut the system down and power off 
and then on again. If Windows 98 did not automatically detect the new 
ports, run the Add New Hardware application from the Control Panel, let 
Windows 98 search for new hardware, and it should find the reconfigured 
serial ports.  Once Windows 98 has detected its serial ports, you can
connect your serial TouchPad and run the Setup program to install the
serial driver.

3. Other potential conflicts with the TouchPad driver.
------------------------------------------------------

Conflicting Software:

The Microsoft application "IntelliPoint" may cause unintended 
behavior for some users. IntelliPoint interferes with the operation of 
internal TouchPads and external pointing devices on some computers. 
Please refer to the readme file included on disk 1 of the IntelliPoint 
installation disk set.

Some other types of "Mouse Enhancement" software may interfere with the 
operation of your Synaptics TouchPad. If all else appears correct and 
you are still having difficulty remove or disable the other software.

Issues related to keyboards with integrated TouchPads:

Some keyboards with TouchPads built into them have a port on the back of 
the keyboard is called a "pass through" port.   This port supports 
plugging in another serial pointing device, which can be selected by 
switching a switch on the bottom of the keyboard.

**CAUTION**

Some pointing devices (particularly inexpensive serial mice), can cause 
conflicts with the built-in TouchPad simply by being plugged into the 
port (i.e., even if they are switched off by the switch on the bottom of 
the keyboard). If all else appears correct with your Windows 98 setup, 
but you are still not seeing the TouchPad icon in the control tray, 
unplug the other pointing device from your keyboard, make sure that the 
switch on the bottom of the keyboard is set to TouchPad, and restart 
your computer.

WHAT TYPE OF CONNECTOR DO I HAVE? 

A PS/2 port is round and is about 1/4 inch in diameter. A serial port is 
either a 9 pin connector about 1 inch wide  or a 25 pin connector about 
2 inches wide. Neither serial connector appears round. The type of port 
is critical for the successful operation of your Synaptics TouchPad. The 
TouchPad's type of connector controls which type of port you must use. 
Windows 98 mouse setting's port and the TouchPad's port type must match 
exactly.

WHAT TYPE OF PORT DOES WINDOWS 98 THINK I HAVE

To determine what Windows 98 thinks it is using as your TouchPad port, 
go to the Device Manager from the System icon of the Control Panel. 
Click on the "+" symbol beside the word "Mouse" if it is not already 
open. The mouse types that Windows 98 knows about are each represented 
here. Any installed driver that Windows 98 thinks is not functioning 
correctly will have a yellow circle with an exclamation mark over it.

If there is more than one definition and you have only one TouchPad 
connected to your computer this might be the source of some difficulty. 
If there is only one definition present then this is the one Windows 98 
will try to use.

Double click on the definition which says Synaptics, if present. If 
there is a TAB on the resulting window which is labelled "Resources" 
then Windows 98 thinks it is using a PS/2 port for the TouchPad, even 
though you may have told the computer to install a Synaptics Serial 
TouchPad!

3A)  If your TouchPad has a Serial connector

The TouchPad must be connected to a serial port. Once the TouchPad
is connected, run the Setup program to install a serial driver for
it.

3B) If your TouchPad has a PS/2 connector

Your TouchPad must be connected to the PS/2 port of the PC.  Run the 
Setup program to install a PS/2 port for the TouchPad.

3C) If your TouchPad is a "Combo" device
 
You can plug the TouchPad into either the PS/2 or the serial
port, using the provided adapter when necessary.


