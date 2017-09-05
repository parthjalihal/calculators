             HP JETADMIN FOR WINDOWS 98 (VERSION 2.54)
                          
                                
*********************************************************************

TABLE OF CONTENTS

A. UPDATE SUMMARY
B. SYSTEM REQUIREMENTS
C. NEW FEATURES/FIXES
D. HOW TO INSTALL THE SOFTWARE
E. COMMON ISSUES
F. HOW TO OBTAIN THE LATEST SOFTWARE UPDATES
G. SOFTWARE LICENSE AGREEMENT
H. TRADEMARKS

*********************************************************************

A. UPDATE SUMMARY

HP JETADMIN FOR WINDOWS 98 contains support for the latest printers
from HP.  This product allows users to install, configure, and manage
HP JetDirect connected printers.

This version provides new refresh options under the 'Device Refresh'
menu item.  In addition, HP JetAdmin 2.54 allows administrators to
completely configure HP JetDirect print servers for NetWare Directory
Services (NDS) from within HP JetAdmin.

This version uses the IPX/SPX or TCP/IP protocol.  The default
protocol is now displayed on the main HP JetAdmin screen.

HP DesignJet Plotters can now be configured using TCP/IP.

*********************************************************************

B. SYSTEM REQUIREMENTS

 Windows 98 Systems

  - PC running Windows 98.
  - 6MB to unzip HP JetAdmin onto your hard drive.
  - 12MB to install HP JetAdmin onto your hard drive.
    (Additional space may be required depending on the number of HP
     JetDirect devices on the network.)
  - Direct Mode TCP/IP requires Client for Microsoft Networks and the
    Microsoft TCP/IP Protocol.
  - Direct Mode IPX/SPX requires Client for Microsoft Networks and
    Microsoft IPX/SPX-compatible Protocol.
  - Requires Microsoft TCP/IP Protocol for TCP/IP support.
  - Requires Microsoft Winsock DLL files.  Third Party Winsock files
    are not supported.
  - Novell IntranetWare Client.  It is HP's intention to provide 
    compatibility with Novell's latest NetWare/IntranetWare client 
    software.  However, an incompatibility has been reported with
    Novell's IntranetWare Client 2.2 and the HP JetDirect EX Plus3.  
    (See Section E -- Common Issues) 
  - HP JetAdmin also supports the Microsoft Client for NetWare
    Networks.

NOTE:  HP JetAdmin does NOT support the Microsoft Service for NetWare
       Directory Services.

*********************************************************************

C. NEW FEATURES/FIXES

*  Improved NDS Configuration
   - Complete NDS configuration is performed from within HP JetAdmin
   - NDS Queues can be created and selected within HP JetAdmin
*  The default protocol is now displayed in the main HP JetAdmin
   window
*  The HP JetDirect EX Plus3 properly displays and configures all
   three ports
*  New device refresh options are available.  See the online help
   files for an explanation of each option
*  Enhanced installation options.  Individual components can be
   selected individually for installation.
*  When searching for specific addresses under the IPX/SPX Discovery
   Tab, the user can now select where these addresses are stored.
*  HP DesignJet Plotters can now be configured using TCP/IP.

   This version supercedes previous versions.

*********************************************************************

D. HOW TO INSTALL THE SOFTWARE

CREATING THE INSTALL DISKETTES

 The HPJA98xx.exe is a self-extracting zip file.  The xx will specify
 the localized language.  For example, the English file will be named
 HPJA98EN.EXE.  This executable will ask for the directory in which
 to place the files.  It then creates four subdirectories under this
 target directory, one for each of the four disk images (Disk1,
 Disk2, Disk3, Disk4).

Contents of Disk 1:
_INST16.EX_     _INST32I.EX_      _ISDEL.EXE     _SETUP.DLL     
_SETUP.LIB      _SETUP32.LIB      DISK1.ID       JAREADME.TXT
JETADMIN.1      LICENSE.TXT       SETUP.BMP      SETUP.EXE
SETUP.INI       SETUP.INS         SETUP.ISS      SETUP.PKG      

Contents of Disk 2:
DISK2.ID        JETADMIN.2

Contents of Disk 3:
DISK3.ID        JETADMIN.3

Contents of Disk 4:
DISK4.ID        JETMS.1           JETNET.1


INSTALLING THE HP JETADMIN SOFTWARE

1. Before installing a new version of HP JetAdmin, remove any
   previous versions of HP JetAdmin.  For uninstalling HP JetAdmin
   2.3x and above, use the HP JetAdmin Uninstall utility to remove HP
   JetAdmin.  For HP JetAdmin 2.1x, use the Windows 98 Add/Remove
   Programs utility to remove HP JetAdmin. 

2. Run 'Setup.exe' located on disk 1.

3. Change disks as necessary.  (If install is performed from the
   hard disk, disk changes will not be required).

4. When prompted, reboot the PC after the installation process
   completes.  This is a required step.

Files placed in the \windows\system directory:

 CALWIN32.DLL    CLNWIN32.DLL    CLNWINTH.DLL    CLXWIN32.DLL
 HPA.DAT**       HPALERTS.DLL    HPALP.HPA       HPALPUI.HPA
 HPBCOM.DLL      HPBLPT.VXD      HPBMLC.HPA      HPBPML.DLL
 HPCOLA.DAT**    HPCOLA.DLL      HPDCMON.DLL     HPDMIP.HPA
 HPDMIPX.HPA     HPECLUI.HPA     HPELKUI.HPA     HPFL.HPA
 HPFLASH.HLP     HPFLSH.HPA      HPHCO.HLP       HPHCO.HPA
 HPHCOUI.HPA     HPJAHLP.CNT     HPJDCOM.HPA     HPJDNP.DLL
 HPJDPP.DLL      HPJDUI.HPA      HPJDUND.HLP     HPJDUND.HPA
 HPJMON.DLL      HPJMON.HLP      HPLOCMON.DLL    HPLOCMON.HLP
 HPLOT.HLP       HPLOTCP.HPA     HPLOTUI.HPA     HPMOBYUI.HPA
 HPMS.HPA        HPMSTOR.HLP     HPMSUI.DLL      HPNETSRV.HPA
 HPNRA.EXE       HPNW416.DLL     HPNW432.DLL     HPNWPSRV.DLL
 HPNWSHIM.DLL    HPOBJ.HPA       HPPAL16.DLL     HPPAL416.DLL
 HPPAL432.DLL    HPPELK.HPA      HPPJL.HPA       HPPRECL.HLP
 HPPRECL.HPA     HPPRELK.HLP     HPPRMOBY.HPA    HPPRNTR.HLP
 HPPRNTR.HPA     HPPROPTY.EXE    HPPRUI.HPA      HPRRM.HPA
 HPSHELL.DLL     HPSNMP.DLL      HPTDPI.TDS      HPTDS.DLL
 HPTRBIT.HPA     HPUNINST.DLL    JAREADME.TXT    JETADMIN.CPL
 JETADMIN.EXE    JETADMIN.HLP    LOCWIN32.DLL    MFC42.DLL
 MSVCRT.DLL      NCPWIN32.DLL    NETWIN32.DLL    NWCALLS.DLL
 NWIPXSPX.DLL    NWLOCALE.DLL    NWNET.DLL       NWPNW.DLL
 NWPSRV.DLL      NWSIPX32.DLL    SUPWIN32.DLL

 **  These two files are created after HP JetAdmin is run for the
     first time.

 For detailed information pertaining to HP JetAdmin, select the Help
 pull-down menu within HP JetAdmin and click on the Help Topics item.

*********************************************************************

E. COMMON ISSUES


 Issue:    When configuring the second or third ports of an HP 
	   JetDirect EX Plus3, Windows 98 displays the following
           error message: "JETADMIN caused an invalid page fault
           in module NETWIN32.DLL".  

 Solution: This problem has been reported with the IntranetWare 
           Client version 2.2, but was not seen with earlier
           IntranetWare Client versions.  HP recommends using 
           an earlier IntranetWare Client version to configure 
           the HP JetDirect EX Plus3.


 Issue:    DOS Printing and Printer Sharing

 Solution: Setting up a printer to be shared in Windows 98:
           1. Add a printer using the Add Printer Wizard.
           2. When the Wizard asks to you choose Local or Network,
              choose Local.
           3. Choose LPT1: as the printer port.  (This will be
              changed later).
           4. Do not print a self-test page.
           5. Finish the configuration.
           6. Right click on the new printer you created, and then
              click on Properties.
           7. Select the Details tab.
           8. Under Details, select Add Port.
           9. Select Other and HP JetDirect Port.
           10. Click on OK.  This launches the HP Port Monitor.
           11. At this point, you can enter the known Network Printer
               Name, the HP JetDirect Address, or perform a search to
               locate a printer.
           12. Click on Next once the printer is located.
           13. Enter the Port Name. DO NOT USE LPT1.  In order to use
               an HP JetDirect-attached printer from the DOS prompt,
               the Port Name must be named LPT2, LPT3, or above
               depending on what is defined in the [PORTS] section of
               the WIN.INI file.  Click Next.
           14. Click on Finish to complete the configuration.


 Issue:    How do I remove ports created by HP JetAdmin?

 Solution: 1. Right click on a printer icon in the Printers screen.
              (Click on Start, Settings, Printers).
           2. Click on Properties
           3. Click on the Details tab.
           4. Click on Delete Port
           5. Select the HP JetDirect port to be deleted.
           6. Click on OK.
           7. Repeat this process to delete additional HP JetDirect
              ports.

     Note: You cannot delete an HP JetDirect port if it is in use.
           If the "Print to the following port:" line shows an HP
           JetDirect port, you will first have to reassign that
           printer to use another port (such as LPT1) before that
           HP JetDirect port can be deleted.


 Issue:    How do I uninstall HP JetAdmin?

 Solution: Remove all ports created by HP JetAdmin prior to
           uninstalling the software.  Refer to the issue above.
           Once HP JetAdmin 2.3x or above is installed on your
           system, an icon called "unInstall HP JetAdmin Utilities"
           will appear in the HP JetAdmin Utilities program group (or
           target group if specified during installation).  This
           program will remove all 2.3x and above HP JetAdmin
           Utilities.  The HP*.DAT files are not removed by this
           process.  They can be removed manually if so desired.
           They are located in the \windows\system directory. 
           Reboot the PC to complete the uninstall process.

     NOTE: If prompted to delete shared .DLL files, it is best to not
           remove these files.  The Uninstall software cannot
           determine if these common files are used by other
           applications.


 Issue:    Cannot install new version of HP JetAdmin because Windows
           98 claims an older version of HP JetAdmin is still
           installed.

 Solution: For HP JetAdmin 2.3x, use the HP JetAdmin Uninstall
           utility to remove HP JetAdmin.  Then reboot the PC.

           For HP JetAdmin 2.1x, use the Windows 98 Add/Remove
           Programs utility to remove HP JetAdmin.

           For additional information on uninstalling HP JetAdmin
           versions below 2.3x, refer to the HP First
           (1-800-333-1917) fax-back document, ID 6575.

           If the problem still persists, try performing a search in
           the Registry under HKEY_LOCAL_MACHINE for "JADM" or
           "JANW."  If either 'szSubKey = "Enum\\Network\\JADM"' or
           'szSubKey = "Enum\\Network\\JANW"' appears in the
           Registry, remove only the "JADM" or "JANW" key.

           ***Warning********Warning********Warning********Warning***
           Use caution when making any modifications to the Registry.
           It is recommended that you backup the Registry prior to
           making changes.  Damage to your Registry can cause the
           system to fail.  Contact Microsoft for assistance with
           this procedure if you are unsure.
           ***Warning********Warning********Warning********Warning***


 Issue:    HP JetAdmin does not run properly with the Novell client
           found on the Windows 98 disk(s).

 Solution: HP JetAdmin for Windows 98 requires the Microsoft
           IPX/SPX compatible protocol or Microsoft TCP/IP
           protocol.  If you are using HP JetAdmin (NetWare Support),
           you should be running the Microsoft Client for NetWare
           Networks or Novell's Client32 client for NetWare Networks.
           The clients shipped with Windows 98 shown under the
           'Novell' heading in "Select Network Client" are not
           compatible with HP JetAdmin software.  Novell has released
           a new 32-bit client.  This client is available from Novell
           on the WEB at URL:

           http://www.novell.com


 Issue:    How do I configure an HP JetDirect print server for Queue
           Server Mode under NDS?

 NOTE:     These instructions supersede the instructions included in
           the documentation accompanying previous versions of HP
           JetAdmin.

           Previous versions of HP JetAdmin required the use of
           NWAdmin or PCONSOLE to complete the NDS configuration.
           This is not necessary with version 2.54

 Solution: 1. Verify that the default protocol is IPX/SPX.
           2.To configure a new device, select 'Device' and 'New'.
             Select the printer's IPX address from the list and click
             'Configure'.
           3. Under the General window type a Print Server name
              (required) and description (Optional) and press 'Next'.
           4. From the NetWare window, select 'NetWare Directory
              Services' to configure the Print Server Tree and
              context.  (NOTE:  HP JetAdmin will display the
              workstation's context as the Print Server context.  If
              a different Print Server context is desired, it may be
              entered manually.
           5. Click 'Operating Mode' and select Queue Server.
           6. Click 'Queues', then click 'Change' to add a queue.
           7. Under available queues, select the appropriate context
              from the NDS tree and either select an existing queue
              or click 'Create'.
           8. Type the name of the new queue and press OK.  The queue
              name format should conform to the following example:
              "CN=NDSQUEUE.OU=org1.O=org.".
           9. Select a different file server and volume (if
              necessary).
           10. Click OK to add the newly created queue to the list of
               serviced queues.
           11. Click OK to close the Queues window.
           12. Click Next.
           13. Click Finish to complete the configuration.
           14. Click OK to save the device configuration.


 Issue:    Why do I have to log into a specific file server to
           complete an NDS configuration?

 Solution: When performing an NDS configuration, a queue is created
           on a specific file server volume.  HP JetAdmin performs a
           server-based permissions check prior to creating the queue
           on a file server.


 Issue:    I am unable to manage NDS queues from within HP JetAdmin.

 Solution: HP JetAdmin displays job information for bindery queues
           only.  Use PCONSOLE or another Novell utility to manage
           NDS queues.


 Issue:    HP JetDirect devices are not showing up in the list of
           configured or unconfigured devices.

 Solution: Select an appropriate refresh option from the 'Device
           Refresh' menu choice.  A static file (hpcola.dat) stores
           the list of discovered devices.  This list is used to
           display the devices for HP JetAdmin.

           Actual discovery of devices occurs if a .DAT file does
           not exist or if a 'Device Refresh' option is selected.
           When the list of discovered devices is refreshed, the
           updated data is saved to the hpcola.dat file when the
           HP JetAdmin utility is exited.

           On large networks, it may be necessary to refresh more
           than once.


 Issue:    When searching for specific addresses under the IPX/SPX
           Discovery Tab, why would a user want to select where
           these addresses are stored?

 Solution: This new feature lets the user define the location of
           where these addresses are stored.  If the user selects
           "Put addresses in file on local machine," addresses added
           under this screen are placed in the Windows Registry file
           on the local machine for future reference during
           discovery.

           If the user selects "Put addresses in file on remote
           server," a Novell NetWare server must first exist on the
           network.  With this option selected, addresses added in
           this screen will be stored in a file called JETSET.INI in
           the \login\hp_print directory on the server the client is
           attached to.  This allows the use of a central point of
           administration for accessing this list of addresses for
           future discoveries.


 Issue:    When performing a subnet ping search of an IP subnet,
           devices are not displayed in the list of configured or
           unconfigured printers.

 Solution: A Subnet ping requires more time to complete than a
           Subnet broadcast search.  While the search is in progress
           you may update the list displayed in HP JetAdmin by
           pressing F6.


 Issue:    When configuring an HP JetDirect port, my printer's IPX
           address is displayed twice in the list.

 Solution: Under Options, Preferences, IPX/SPX discovery, remove the
           IPX address of the printer which is displayed twice.


 Issue:    A device named "NPIXXXXXX" appears in the configured
           printers list.

 Solution: "NPIXXXXXX" is an artificial name for a device on the
           network.  Under normal conditions this name is replaced by
           the real name of the device.

           Sometimes this name will remain in the printer list if the
           real name could not be discovered.

           HP JetAdmin can fail to discover the real name of the
           device if:

           A.  The card has been "Reset to Factory Defaults" but the
               printer has not yet been power cycled.

           B.  In a NetWare environment, SAPs have been turned off on
               the card, an entry has been created in the Jetset.ini
               on the file server (of the form:
               NODE = NetworkNumber.NodeAddress) and HP JetAdmin
               cannot communicate with the device.  This could be
               because the device is no longer on the network or
               because of network communication problems.

           NOTE:  Within HP JetAdmin it is possible to configure
                  IPX/SPX discovery to discover a specific device.
                  If this device is powered off or no longer on the
                  network, this artificial device name will also
                  be displayed.

           C.  The device fails to respond because it is too old to
               reply to certain requests.

           D.  Network traffic is so heavy we do not have reliable
               communication.

           E.  The HP JetAdmin printer database is corrupt.  Pressing
               F7 from within HP JetAdmin will launch a new discovery
               and rebuild the database.


 Issue:    Are third-party versions of winsock.dll supported?

 Solution: Hewlett-Packard has tested only the Microsoft
           winsock.dll.  Other winsock.dll files have not been
           tested, and therefore are not supported with
           HP JetAdmin 2.54.


 Issue:    How does TCP/IP Discovery work in HP JetAdmin 2.54?

 Solution: HP JetAdmin can use two different methods for finding
           printers on the network.  The settings are applied
           in HP JetAdmin in the TCP/IP tab under Options,
           Preferences.  The first (default) method
           is to send a broadcast to the local subnet to locate
           supported HP JetDirect devices.  The method is very quick
           and should find most printers.  If the device you are
           searching for is not discovered the first time, you can
           simply refresh to discover more devices.  The second
           method is to perform a "ping" search to your local
           network.  The range of addresses is based on your
           local subnet mask and your TCP/IP address to determine
           your local subnet.  All possible addresses on the local
           subnet will be "pinged."  This method will do a more
           thorough search of the local subnet by attempting to
           "ping" each device on the local subnet.  This discovery
           method can take longer depending on the size of the local
           subnet.

           Subnets larger than 2K in size will not be "pinged" by
           default.  To increase the amount of nodes that HP JetAdmin
           will "ping," the value "Maximum Subnet Search Size" in
           the registry should be modified.  This value only
           appears if "Subnet Ping" search is selected and a
           discovery has occurred (e.g. F5 pressed).

           ***Warning********Warning********Warning********Warning***
           Use caution when making any modifications to the Registry.
           It is recommended that you backup the Registry prior to
           making changes.  Damage to your Registry can cause the
           system to fail.  Contact Microsoft for assistance with
           this procedure if you are unsure.
           ***Warning********Warning********Warning********Warning***

             To modify this value -

             1. Run the program regedit.exe.
             2. Double click on SOFTWARE from the Hkey_Local_Machine
                tree.
             3. Double click on Hewlett-Packard.
             4. Double click on HP JetAdmin.
             5. Double click on TCP/IP.
             6. Double click on Maximum Subnet Search Size.
             7. Click on the decimal radio button under the "Radix"
                box.
             8. Enter the "new" maximum subnet size.
             9. Click on Registry, then Exit to save the changes.

      Note: Three things to be aware of when using the TCP/IP
            discovery features of HP JetAdmin:

           1. If the local subnet size exceeds the Maximum Subnet
              Search Size and the "Search Local Subnet" box has
              Subnet Ping selected, the TCP/IP protocol will not
              discover printers on the local subnet.

           2. Subnets outside the local subnet can be searched using
              the "ping" method by placing a TCP/IP address of any
              device on that subnet in the TCP/IP tab located under
              Options, Preferences in HP JetAdmin in the Advanced
              section.  The subnet search is calculated with your
              computer's subnet mask and the TCP/IP address of the
              device added to the list.  Using this feature may cause
              extreme network traffic on very large subnets.  The
              Maximum Subnet Search Size value does not apply to
              non-local subnet searches.

           3. Remote subnets can also be searched using a Broadcast
              search.


 Issue:    How do I search for specific TCP/IP addresses on my
           network?

 Solution: In the TCP/IP tab located under Options, Preferences in
           HP JetAdmin, check the "Search for specific IP addresses"
           box and add any devices that you wish to find.  TCP/IP
           addresses need not be on the same subnet to be found in
           this search.


 Issue:    HP JetAdmin does not reflect a recently reset HP JetDirect
           card.

 Solution: Reboot the printer or HP JetDirect EX Print Server.  Press
           F7 from within HP JetAdmin to rebuild the database and
           rediscover the printers on the network.  HP JetAdmin will
           then properly display the new settings.


 Issue:    A Token Ring HP JetDirect device using a locally
           administered address will not reset to factory defaults
           though HP JetAdmin.

 Solution: The only way to restore the factory default address is to
           cold reset the HP JetDirect device manually.  Refer to
           your HP JetDirect Print Server documentation.


 Issue:    HP JetAdmin has been removed but the printer ports still
           remain.

 Solution: If you remove HP JetAdmin, the port monitor will appear to
           be active until all the HP JetDirect ports have been
           removed.  Refer to the issue above titled "How do I remove
           ports created by HP JetAdmin?"


 Issue:    When certain HP printer drivers are removed, the HP
           JetDirect ports are also removed from the system.

 Solution: Reinstall HP JetAdmin.  When HP JetAdmin is reinstalled,
           the HP JetDirect ports should be restored to the system.


 Issue:    HP JetAdmin no longer provides support for the Auto Driver
           Download function in Windows 98.

 Solution: The HP JetAdmin-initiated driver download in the Windows
           98 environment has been removed in favor of using the
           automatic driver download capabilities included in Windows
           98.  This eliminates the confusion that the two different
           solutions could create.  It also falls in line with HP's
           strategy to make printing functionality as seamless to the
           customer as possible.  Known as "Point and Print," this
           feature allows a system administrator to install a default
           print driver and assign it to a particular print queue.
           Once done, a user desiring to use a particular network
           printer may select the queue from the Network Neighborhood
           and the system will prompt the user to setup the device on
           their workstation.  This procedure will then install the
           printer driver on the user's local workstation and assign
           it to the print queue.  The steps required to implement
           this feature are as follows:

           1. The system administrator will first create the NetWare
              queues.  If an HP JetDirect device is used, then HP
              JetAdmin will be used to create bindery queues and to
              assign the HP JetDirect device to service them.  If NDS
              queues are used, then NetWare's NWADMIN or PCONSOLE is
              used to create the NDS print objects.  Then HP JetAdmin
              is used to service them.

           2. Using Network Neighborhood, the administrator can then
              choose the file server which contains the desired print
              queue and then select the PROPERTIES of that queue.
              The Properties page will display a page entitled "Setup
              Point and Print."  The administrator can then select a
              location on the file server to install the print driver
              (or accept the default) and then proceed to install the
              desired driver to be associated with it.  The
              administrator must have the Windows 98 CD or diskette
              set (or the diskettes containing the print driver) to
              complete this task.

           3. Once the administrator has configured the print queue
              and installed the default driver, any network user
              running Windows 98 may then choose to use the printer
              by selecting the queue from Network Neighborhood.
              Typically the user will first choose the file server,
              then double click on the available print queue of
              choice.  The user will be prompted with the message
              that the printer must first be set up on their
              workstation.  If the user proceeds, this process will
              be automatic.  The procedure would be the same as using
              the "Add Printer Wizard" except the user does not need
              to know what driver is needed or where it is located.
              Therefore, the user is not prompted to choose a printer
              type or to put a diskette in their drive.  Once this
              process is completed, the user will be able to print to
              the printer via the NetWare queue.

*********************************************************************

F. HOW TO OBTAIN THE LATEST SOFTWARE UPDATES

The HP JetAdmin for Windows 98 software can be found on the
following sources:

*  WWW:         http://www.hp.com/cposupport/indexes1/jet.html
*  CompuServe:  Go HPLASER, JetDirect and Network library
*  HP FTP Site: ftp.hp.com /pub/networking/software
*  HP BBS:      (208) 344-1691 (28,800 n,8,1) Network Printer
                Software Library (1J)
*  AOL:         HP FORUM

 The software is also available from the HP Driver Distribution
 Center - call (970) 339-7009 to order it.

*********************************************************************

G. SOFTWARE LICENSE AGREEMENT

HP SOFTWARE LICENSE TERMS

The following License Terms govern your use of the accompanying
Software unless you have a separate signed agreement with HP.

License Grant.
HP grants you a license to Use one copy of the Software.  "Use" means
storing, loading, installing, executing or displaying the Software.
You may not modify the Software or disable any licensing or control
features of the Software.  If the Software is licensed for
"concurrent use", you may not allow more than the maximum number of
authorized users to Use the Software concurrently.

Ownership.
The Software is owned and copyrighted by HP or its third party
suppliers.  Your license confers no title to, or ownership in, the
Software and is not a sale of any rights in the Software.  HP's third
party suppliers may protect their rights in the event of any
violation of these License Terms.

Copies and Adaptations.
You may only make copies or adaptations of the Software for archival
purposes or when copying or adaptation is an essential step in the
authorized Use of the Software.  You must reproduce all copyright
notices in the original Software on all copies or adaptations.  You
may not copy the Software onto any public network.

No Disassembly or Decryption.
You may not disassemble or decompile the Software unless HP's prior
written consent is obtained.  In some jurisdictions, HP's consent may
not be required for limited disassembly or decompilation.  Upon
request, you will provide HP with reasonably detailed information
regarding any disassembly or decompilation.  You may not decrypt the
Software unless decryption is a necessary part of the operation of
the Software.

Transfer.
Your license will automatically terminate upon any transfer of the
Software.  Upon transfer, you must deliver the Software, including
any copies and related documentation, to the transferee.  The
transferee must accept these License Terms as a condition to the
transfer.

Termination.
HP may terminate your license upon notice for failure to comply with
any of these License Terms.  Upon termination, you must immediately
destroy the Software, together with all copies, adaptations and
merged portions in any form.

Export Requirements.
You may not export or re-export the Software or any copy or
Adaptation in violation of any applicable laws or regulations.

U.S. Government Restricted Rights.
The Software and any accompanying documentation have been developed
entirely at private expense.  They are delivered and licensed as
"commercial computer software" as defined in DFARS 252.227-7013
(Oct 1988), DFARS 252.211-7015 (May 1991) or DFARS 252.227-7014
(Jun 1998), as a "commercial item" as defined in FAR 2.101(a), or
as "Restricted computer software" as defined in FAR 52.227-19
(Jun 1987) (or any equivalent agency regulation or contract clause),
whichever is applicable.  You have only those rights provided for
such Software and any accompanying documentation by the applicable
FAR or DFARS clause or the HP standard software agreement for the
product involved.

ATTENTION ANY PARTY INSTALLING THIS SOFTWARE FOR USE BY PARTIES OTHER
THAN THEMSELVES (e.g. VAR's, RESELLERS, SYSTEM INTEGRATORS, etc.):

ANY PERSON TO WHOM THIS SOFTWARE IS TRANSFERRED SHOULD BE AWARE THAT
USE OF THE SOFTWARE IS SUBJECT TO ANY HP SOFTWARE LICENSE TERMS
DISTRIBUTED WITH THE SOFTWARE.  USE OF THE SOFTWARE INDICATES
ACCEPTANCE OF THESE TERMS.  IF THE USER DOES NOT ACCEPT THESE TERMS,
THE SOFTWARE SHOULD BE RETURNED.

*********************************************************************

H. TRADEMARKS

*  Microsoft and Windows are registered trademarks of Microsoft in
   the U.S. and other countries.

*  Novell, NetWare, and IntranetWare are registered trademarks of
   Novell Inc.



