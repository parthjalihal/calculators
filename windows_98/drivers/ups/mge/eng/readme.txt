CONTENTS

1) Starting Solution-Pac 97
2) Starting Solution-Pac 97 / WAN
3) What you have to know
4) Information about pager/mail (Jericho)
   - Using MAPI-Mail driver
   - Session closure under Windows NT
   - Creating a new BIP driver

                      -----------------------------

1) Starting Solution-Pac 97
===========================

Shutdown
--------
  This function is starting automatically during the boot of the station
  
  Starting
  - Click on the icon "Solution-Pac 97 Start"
  
  Stopping 
  - Click on the icon "Solution-Pac 97 Stop"

Management
----------
  Shutdown function must be running

  Starting
  - Click on the icon "Solution-Pac 97 Manager"

Pageur/Mail utility
-------------------
  Starting
  - Click on the icon "Jericho"

2) Starting Solution-Pac 97 / WAN
=================================

Communication : UM-Agent
------------------------
  This function is starting automatically during the boot of the
  computer
  
  Starting
    - Click on the icon "SP 97 - WAN Start Comm."
  
  Stopping
  - Click on the icon "SP 97 - WAN Stop Comm."

Shutdown : UM-Client
--------------------
  This function is starting automatically during the boot of the
  computer
  
  Starting
    - Click on the icon "SP 97 - WAN Start Monitoring"
  
  Stopping
  - Click on the icon "SP 97 - WAN Stop Monitoring"

Management
----------
  Shutdown function must be running

  Starting
    - Click on the icon "SP 97 - WAN Start Manager"
  
  Stopping
  - Click on the icon "SP 97 - WAN Stop Manager"

  
Pageur/Mail utility
-------------------
  Starting
  - Click on the icon "Jericho"

3) What you have to know
========================

Solution-Pac 97 NT workstation : sending messages on UPS events
---------------------------------------------------------------
To allow the software to send messages, you must activate the NT message
service on your station.

Solution-Pac 97 Windows : Messages for Novell environment
---------------------------------------------------------
With some specifics operating system configurations, when our module
named Jericho is starting, it could send the two following messages :
"IPX Not installed" and "Unable to start SPX" in two windows titled
"Interface NetWare-Windows for Jericho".
If you want to be connected with a NetWare server, you have to check
if the client for NetWare is correctly installed.
If you don't need to be connected to NetWare, it is possible to 
suppress the two messages, modifing file UPSMAN\MMI\JERICHO\Jericho.ini
To do so, you have to disable the "Deport_Netware= ... " control key 
in section "[Modules] (adding comment character ";" at the beginning 
of the line)
NOTA :
The messages refered above will not disturb our software, except to 
communicate with a NetWare server.

UM-Client Netware : Using the AUTORUN.NLM module
------------------------------------------------
Purpose:
 - executing a Netware command or a NCF file followed by a 
   character string simulating a keyboard entry.

There's no check:
 - upon the module execution, without error.
 - upon the file accessibility defined by the search path.

Syntax:
The syntax is :
 load autorun /command /character string

Warning:
This module is provided on the CDROM but isn't copied during
the Solution-Pac 97 install procedure.

Under OS2
---------
Under OS2, users are strongly advised not to use the manager
to supervise a UM-Agent installed ON THE SAME station. 
IN THIS CASE, the windows emulation used by the manager 
reserves significant resources and saturates the processor.

UM-Agent OS2 and WARP Connect : SNMP configuration
--------------------------------------------------
Installation has to be done on the computer connected to the
UPS for OS/2 and OS/2 LAN Server systems.

The installation process will also modify your system startup
file (startup.cmd), if this one already exists.

Your startup.cmd file should comprise at least the following
commands according to your configuration in order to allow
UM-Agent automatic startup :

@echo off
rem ------ start TCP/IP
call tcpstart.cmd
rem ------ start SNMP Agent
start /b /min snmpd (OS/2)
start /b /min snmpd -dpi tcp (WARP Connect)

SCO UNIX Open Server enterprise system 5.0
------------------------------------------
With this operating system only use its specific cable to link the UPS
and your computer (to get it fill in the form and return it by fax).

4) Information about pager/mail (Jericho)
=========================================
Using MAPI-Mail driver
----------------------

The MAPI-Mail driver of JERICHO uses the messaging interface of
Windows 95/NT (MAPI). It can function only if the MICROSOFT EXCHANGE
module is installed and correctly configured.
To open and configure Microsoft Exchange, double-click on the
Microsoft Exchange icon on the desktop.

Under Windows NT, when JERICHO is automatically launched, it functions
as a service and is not attached to a user context. It has not
therefore access to user profiles created by Microsoft Exchange.

To use the MAPI-Mail driver under Windows NT, it is necessary to
launch JERICHO from the desktop (from the "Start" menu or by adding it
to the "Startup" group).

The syntax to use to define the address of the receiver when dispatching
a message through the MAPI-Mail driver depends on the messaging service 
selected. For the basic services installed under Windows 95 and Windows NT,
this syntax is the following:

-> Internet Mail

	Use the e-mail address of the receiver

-> Microsoft Mail : 
	
	Use the syntaxe : NETWORK/POSTOFFICE/MAILBOX

	with

	NETWORK		= network name (generally "Windows")
	POSTOFFICE 	= MS-Mail server
	MAILBOX		= mailbox of the receiver

To know parameters to use, open the address book of Microsoft Exchange
("Tools" menu) and double-click on the name of the desired receiver.

Session closure under Windows NT
--------------------------------

When JERICHO is automatically launched at Windows start, it is running as
e service. For reasons of to long closure time at Windows shutdown,
JERICHO must anticipate its closure on receipt of log off message.
For this reason, JERICHO is stopped when the user logs off the system.


Creating a new BIP driver
-------------------------

Le gestionnaire "Bip" peut être paramétré pour appeler tout type de bips :
service de bip intégré à l'autocom de l'entreprise, système de recherche
de personnes, service de bip public.
Lorsqu'on a paramétré ce gestionnaire pour l'utilisation d'un service de bip
particulier, il est possible de le duppliquer puis de le renommer pour en
faire un nouveau gestionnaire (à l'exemple du gestionnaire "Tatoo").

The "Bip" driver can be setup to call all type bips : bip service
integrated to the enterprise pabx, person research system, public bip paging
service.

When the bip driver is setup for use of a specific bip service, it can be
duplicated then renamed to make a new driver (as Tatoo).

To do it :

1) Setup the "Bip" driver with appropriate values and modify its name
(for example : Bip -> Bip-New)

2) In the file "BIP.INI", at the "[Drivers]" entry, copy the first line
("0=Bip-New" in the example) and add it at the end of the entry with
the number following the last defined driver. Then rename the first driver
in the file.

	[Drivers]	---->		[Drivers]

	0=Bip-New			0=Bip
	1=Tatoo				1=Tatou
					2=Bip-New

3) In the file "PAGER.INI", at the "[Drivers]" entry, add a line to identify
the new driver :

	[Drivers]
	Bip=100,Bip.DLL,0,1
	Tatoo=101,Bip.DLL,1,1

--->	[Drivers]
	Bip=100,Bip.DLL,0,1
	Tatoo=101,Bip.DLL,1,1
	Bip-New=102,Bip.DLL,2,1
