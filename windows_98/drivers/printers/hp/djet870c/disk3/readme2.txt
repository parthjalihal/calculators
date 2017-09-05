   NOTES ON THE HP DESKJET CONTROL PANEL FOR DOS, VERSION 2.0
   (1/9/95)
   ==============================================================
 
   NOTE: To print this file, enter "PRINT README2.TXT" 
         at the DOS (C:\DESKJET>) prompt. (The default [PRN]
         is LPT1. If you have connected the printer to another
         port, enter that port in the command line, for example,
         LPT2 for parallel port 2). 
 
   ============================================================= 
   CONTENTS 
   ============================================================= 
 
   Using the DeskJet Control Panel 
   Command Line Switches 
   Installation Troubleshooting Problems 
   Known Problems 
 
   ============================================================= 
   USING THE DESKJET CONTROL PANEL
   ============================================================= 
 
   ACCESSING THE CONTROL PANEL (NON-RESIDENT) 
   ------------------------------------------  
   To access the Control Panel, type "DJCP" at the DOS (C:\DESKJET>) 
   prompt.  If the \DESKJET directory is in your PATH, you can
   access the Control Panel from any directory. 
 
    
   USING THE DESKJET CONTROL PANEL AS A RESIDENT PROGRAM 
   ----------------------------------------------------- 
   You can run the Control Panel as a memory-resident program. 
   A memory-resident program is a program that is available even 
   when other software programs are running. The Control Panel 
   is accessed from within your software program through a 
   hot-key. The default hot-key for the Control Panel is "<Alt> p". 

   The memory-resident Control Panel reports the current status 
   of the printer and lets you select print quality, orientation, 
   and font size settings. 
 
   There are two ways to load the Control Panel as a 
   memory-resident program: 
 
   * Type "DJCPTSR" at the DOS (C:\>) prompt. 
 
   * Make the Control Panel resident through the non-resident 
     version as follows: 
       
     1. Type "DJCP" at the DOS (C:\>) prompt. 
     2. Click "More Settings" in the Control Panel. 
     3. Click "Memory-Resident Functions". 
     4. Click "Make Memory-Resident" and follow instructions.
     5. Reboot your computer. 

   This will cause the memory resident Control Panel to be
   loaded through your AUTOEXEC.BAT file every time you reboot.

   UNLOADING THE MEMORY-RESIDENT CONTROL PANEL 
   ------------------------------------------- 
   To unload the memory-resident control panel:

     Type "DJCPTSR /U" at the DOS (C:\>) prompt. 

   NOTE: You can unload the memory-resident Control Panel only 
         if it is the last loaded memory-resident program. If
         it is not the last loaded memory-resident program,
         the system displays an error message.

   PREVENT FUTURE LOADING OF THE MEMORY-RESIDENT CONTROL PANEL 
   -----------------------------------------------------------   
   * Remove the Control Panel through the non-resident version 
     as follows: 
       
     1. Type "DJCP" at the DOS (C:\>) prompt. 
     2. Click "More Settings" in the Control Panel. 
     3. Click "Memory-Resident Functions". 
     4. Click "Undo Memory-Resident" and follow instructions. 
     5. Reboot your computer. 
 
     This will remove the line from your AUTOEXEC.BAT file that
     automatically loads the memory-resident Control Panel. 

   ============================================================== 
   COMMAND LINE SWITCHES
   ============================================================== 
 
   /Dx  Specifies the model number of the printer to which the
        Control Panel is connected.

   /Px  Specifies the parallel port to which the printer is
        connected. Valid values for "x" are 1, 2, or 3. If this
        switch is not included, the Control Panel will default
        to the port it used the last time you ran the Control
        Panel (or the value set during installation if you have
        not used the control panel before).

   /?   Displays help about using the DJCP command. 
 
   /H   Displays help about using the DJCP command. 
 
   /M   Changes the colors used in the Control Panel to be
        compatible with monochrome displays. 
 
   /U   Removes the memory-resident Control Panel from memory. 
        See the instructions in the "UNLOADING THE MEMORY-RESIDENT
        CONTROL PANEL" section of this file for detailed
        information. (The /U switch works only with the DJCPTSR
        command.)
 
   Example: To select the printer on parallel port 2 (lpt2),  
            type "DJCP /P2" at the DOS (C:\>) prompt. 
 
   ============================================================== 
   INSTALLATION TROUBLESHOOTING PROBLEMS 
   ============================================================== 
 
   If a screen with the message "Communication cannot be
   established between the printer and the computer to which it
   is connected" is displayed during installation, the
   installation program has been unable to establish two-way
   communications with the printer.

   The problem may be caused by one of the following conditions:

   * The printer is turned off.
   * A printer interface cable problem.
   * Use of a switch box or fax accessory.
   * Your printer is connected to a network.
   * Your computer's parallel port, cable, or switch box does not
     support two-way communication.

   Some printer interface cables and switch boxes do not
   support all 25 lines on the parallel port. This is required
   for two-way communication between the computer and the printer.

   You may still be able to print. Try printing a document.
   If it prints, you can use the printer, but some printer
   functions will not be available. If you have set up your
   printer according to the First Time Setup instructions
   in the user's guide for your printer and your printer is
   still not printing, replace the printer interface cable.

   If replacing the cable does not solve the problem, call the
   HP Customer Support Center.
 
   ============================================================== 
   KNOWN PROBLEMS 
   ============================================================== 
 
   Changing Print Settings While a Document is Printing
   ----------------------------------------------------
   If print settings are changed through the Control Panel
   while a document is currently printing, the printout may
   be corrupted, and the printer may not receive the new
   settings. 

   Printing in Landscape Orientation
   ---------------------------------
   This feature is provided for use with programs that do not
   provide the capability of printing in landscape. If your
   program supports printing in landscape, make sure that the
   orientation in the Control Panel is set to Portrait.

   Some programs will print incorrectly if the printer is set
   to landscape orientation in the Control Panel. These include
   Microsoft Word for DOS, Microsoft Works for DOS, Harvard
   Graphics for DOS, and AutoCAD.  To print in landscape from
   these programs, set the orientation in the program, NOT in the
   Control Panel.

   Mouse Drivers
   -------------
   If you are having problems using the mouse with the
   memory-resident Control Panel, make sure the load command
   for the Control Panel is after the load command for your
   mouse driver in the AUTOEXEC.BAT file. Edit AUTOEXEC.BAT to
   place the line "C:\DESKJET\DJCPTSR.EXE" after the
   mouse driver line.

   Hot-Key conflicts
   -----------------
   Microsoft Works and Broderbund Print Shop Deluxe: The default
   hot-key (<Alt> p) used for the memory-resident version of
   the HP DeskJet Control Panel conflicts with the print key
   sequence (<Alt> p) for Microsoft Works and Broderbund
   Print Shop Deluxe. To use the Control Panel with these
   programs, redefine the hot-key through the non-resident
   Control Panel. To do this, run DJCP from the DOS prompt.

   Incompatibilities
   -----------------
   Microsoft Flight Simulator: The memory-resident Control Panel
   is not compatible with Microsoft Flight Simulator.  Running the
   memory-resident Control Panel from within Microsoft Flight
   Simulator may cause errors.


