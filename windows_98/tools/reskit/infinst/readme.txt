Infinst.exe

What Infinst.Exe does:
It adds an inf file and the associated drivers to a Windows 98 setup share.  
When Windows 98 is installed on other machines from the share, the added drivers will be 
installed as if they were part of the original Windows 98 setup.  These drivers may be for 
any type of hardware or for additional network clients, protocols or services.  
To automatically install network clients, protocols or services you will need to add them 
to your msbatch.inf.  This can be done using Microsoft Batch 98.

How to use Infinst:
Note: the tool requires a Windows 98 setup share with write permissions.  
It will not add files to a CD-ROM.
1.  Start the tool by double clicking it.
2.  Enter the path and filename of the inf you wish to add to Windows 98 setup.
3.  Enter the path and filename for Setup.exe on the Windows 98 setup share you wish 
    to add the inf to.
4.  Click Add Inf.

Infinst does the following when adding an inf:  
*  It copies the inf and the driver files needed (listed in the CopyFiles= sections of
   the inf) to the Windows 98 setup share.  If a catalog (.cat) file or 
   layout (.inf) file is specified in the inf, Infinst also adds it.
*  It adds the appropriate entries to the following files: all previous inf files with 
   matching PnP IDs, the Custom.inf, and the Infinst.log. The files are changed as 
   outlined below.  
   Note: Infinst copies all files listed in the inf's CopyFiles= section to 
   the setup share; however Infinst does not automatically process any infs listed in 
   the CopyFiles= section.  These infs may need to be added manually for setup to 
   complete successfully.

How Infinst.Exe works:
1.  It creates two directories in the Windows 98 setup share. One (Oldinf) is for infs 
    that are replaced by new infs of the same name, and one (Wininf) is for storing 
    the infs included with Windows 98. 
2.  It checks the versioning of the infs to be added (only infs with version $CHICAGO$ 
    should be added, although Infinst.Exe will correct certain versions to $CHICAGO$ 
    automatically).
3.  It searches the inf to be added for its PnP IDs (Plug and Play IDs).
4.  It compares the found PnP IDs of the new inf with the PnP IDs contained in all the 
    infs that are in the Wininf directory.
5.  If an inf with a matching PnP ID is found, Infinst.Exe copies it to the directory 
    containing the Windows 98 setup files, as long as there is not an inf file of the 
    same name there already. 
6.  It compares the found PnP IDs of the new inf with the PnP IDs contained in all the 
    infs that are contained in the Windows 98 setup share.
7.  If an inf with a matching PnP ID is found, the matching PnP IDs are commented out. 
8.  It copies the new inf and all necessary driver files to the directory where the 
    Windows 98 setup files reside.
9.  It edits the Custom.inf file.  Note: Infs and drivers of install media classes 
    (such as net) are added to more sections of the Custom.inf than those of other 
    classes, because they may be needed earlier in setup.
10. It appends to the Infinst.log.

Infinst.Exe can add infs for single or multiple PnP device(s), whether or not they are 
supported by Windows 98.  Drivers added by Infinst.Exe should install properly whether 
Windows 98 is setup locally or across a network, regardless of whether it is a clean 
install or an upgrade.  In other words, you can install all the infs you want and run 
setup any way you want.

Design Limitations:
1.  Adding an inf with the same name as one included with Windows 98 or one previously 
    added will eliminate all functionality of the previous inf, regardless of PnP IDs.
2.  You must have write permission to the location of the Windows 98 setup files for 
    Infinst.Exe to work.  (I.E. it will not work on a CD-ROM).
3.  Adding an inf containing the same PnP IDs as an inf already included in the setup 
    share will result in eliminating those PnP IDs from the already included inf.

Trouble Shooting:
1.  When adding an inf to a Novell server, Maximum File Locks per Connection must be
    greater than 600 or infinst will be unable to add the inf correctly.
2.  All infs and drivers being added must not be marked as read only.
