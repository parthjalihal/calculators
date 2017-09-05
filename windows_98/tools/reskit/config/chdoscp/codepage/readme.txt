CHDOSCP.EXE:
CHANGING THE CODE PAGE AND KEYBOARD FOR CONSOLE APPLICATIONS

You can use the Regional Settings option in Control Panel to change the locale, 
but this will affect only the display in Windows-based applications. 
For MS-DOS-based applications and for the MS-DOS prompt, the code page 
installed during Setup is always used. Windows 98 does not include any feature 
that allows you to change the code page used by MS-DOS.

You can use CHDOSCP.EXE to change the code page used for MS-DOS-based 
applications and the MS-DOS prompt. This application makes all the changes for fonts 
and other system elements in the Registry and other configuration files. 

CHDOSCP is useful to you if your site uses an alternate character set other 
than the default code page the Windows 98 Setup uses. You know that you need 
an alternate code page if, after installing Windows 98, your MS-DOS-based 
applications do not display properly -- specifically, if the wrong fonts appear 
or the wrong characters appear as you type. 
CHDOSCP also usefull to change frequently the keyboard layout in dos mode.

For example, the default code page installed for French Canadian under Windows 98 
is 850, but your site might use code page 863 as a standard. As another example, 
the United States default is 437, but some companies choose to use code page 850. 
In these cases, use CHDOSCP to install the alternate code page.
Or suppose a multilingual user or organisation that need to change frequently 
the DOS keyboard, this tool will  proof to be very handy for that matter .

When you choose a keyboard from the list box the tool will 
detect if the code page associated with this keyboard is different 
from the one on your system, in this case it will generate a warning that some file 
names my become unreadable in DOS mode consequently to this change, although 
files become unreadable doesn't happen systematically be aware of the risk.

-Important-
The CHDOSCP utility is not designed to be used 
for changing code pages on a regular basis. Also, frequently switching 
the MS-DOS code page will confuse users of MS-DOS-based applications.

changing just keyboard contain no risk as long as the code page remain the same,
For Example :if a user have an 850 Dos code page he/she can select all the keyboards
with the mention (850) associated, without any worry about the risk related to 
code page change.



