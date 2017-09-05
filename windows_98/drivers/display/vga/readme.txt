VGA.DRV
--------
This is a special version of the Windows 98 VGA
display driver.  It works around a compatibility
problem between the Intel "Triton" PCI controller
and some PCI based display adapters.

If you have a PCI based computer and are
experiencing system lock-ups on the first boot
after installing your PCI display adapter, 
in "fail-safe boot", or when your display is 
set to 640x480, 16 colors, then you should 
copy this version of VGA.DRV over the version
already in your Windows \system directory.

VGA.VXD
--------
This is an extension to the Win98 VGA driver
needed on some older VGA adapters, including:
	DEC PC 320P laptops
	Cirrus Logic 5401/02 VGA adapters

If Win98 will not boot at all, even in fail-safe
boot, on a computer with a very old VGA adapter
installed, then VGA.VXD may correct the problem.

To use VGA.VXD, the display type must be set
to "Standard Graphics Adapter (VGA)" in the
Display control panel, Settings page, Change
Adapter Type dialog.

To install:
1) Copy VGA.VXD into the Win98 \system subdirectory.  
2) In SYSTEM.INI, edit the display= line in the [386enh] 
   section to add vga.vxd, so that it appears as:
	display=*vdd, vga.vxd
3) In SYSTEM.CB, add the line above to the [386enh] section.
   (This file is used instead of system.ini for fail-safe boot.)
4) Restart the computer, and Win98 should boot normally.


