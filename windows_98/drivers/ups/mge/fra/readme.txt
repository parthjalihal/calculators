SOMMAIRE

1) D�marrer Solution-Pac 97
2) D�marrer Solution-Pac 97 / WAN
3) A savoir
4) Compl�ment � la documentation de l'option pageur/mail (Jericho)
     - Utilisation du gestionnaire MAPI-Mail
     - Fermeture de session sous Windows NT
     - Cr�ation d'un nouveau gestionnaire BIP

                      -----------------------------

1) D�marrer Solution-Pac 97
===========================

Fonction de protection
----------------------
  Cette fonction d�marre automatiquement au d�marrage de votre station
  
  Pour d�marrer manuellement
  - Double-cliquer sur l'ic�ne "Solution-Pac 97 Start"
  
  Pour arreter manuellement 
  - Double-cliquer sur l'ic�ne "Solution-Pac 97 Stop"

Fonction de supervision
-----------------------
  La fonction de protection doit �tre active

  Pour d�marrer cette fonction
  - Double-cliquer sur l'ic�ne "Solution-Pac 97 Manager"

Fonction compl�mentaire Pageur/Mail
-----------------------------------
  Pour d�marrer cette fonction
  - Double-cliquer sur l'ic�ne "Jericho"


2) D�marrer Solution-Pac 97 / Wan
=================================

Fonction de communication : UM-Agent
------------------------------------
  Cette fonction d�marre automatiquement au d�marrage de votre station
  
  Pour d�marrer manuellement
  - Double-cliquer sur l'ic�ne "SP 97 - WAN Start Comm."
  
  Pour arreter manuellement 
  - Double-cliquer sur l'ic�ne "SP 97 - WAN Stop Comm."

Fonction de protection : UM-Client
----------------------------------
  Cette fonction d�marre automatiquement au d�marrage de votre station
  
  Pour d�marrer manuellement
  - Double-cliquer sur l'ic�ne "SP 97 - WAN Start Monitoring"
  
  Pour arreter manuellement 
  - Double-cliquer sur l'ic�ne "SP 97 - WAN Stop Monitoring"

Fonction de supervision
-----------------------
  La fonction de protection doit �tre active

  Pour d�marrer cette fonction
  - Double-cliquer sur l'ic�ne "SP 97 - WAN Manager"

Fonction compl�mentaire Pageur/Mail
-----------------------------------
  Pour d�marrer cette fonction
  - Double-cliquer sur l'ic�ne "Jericho"

3) A savoir
===========

Solution-Pac 97 NT workstation : Diffusion message evenement onduleur
---------------------------------------------------------------------
Pour autoriser la diffusion des messages par le logiciel, vous devez 
imperativement activer le service message de NT sur votre systeme. 

Solution-Pac 97 Windows :Messages relatif � l'environnement Novell 
------------------------------------------------------------------
Pour certaines configurations des syst�mes Windows, au d�marrage du
module Jericho de notre offre logiciel, il peut y avoir �mission des
deux messages suivants : "IPX Not installed" et "Unable to start SPX"
dans deux fen�tres intitul�es "Interface NetWare-Windows for Jericho".
Si vous voulez communiquer avec un serveur NetWare, il faut v�rifier
imp�rativement que le client NetWare est correctement install� sur 
votre station. 
Dans le cas contraire, vous pouvez supprimer l'apparition de ces 
messages en modifiant le fichier UPSMAN\MMI\JERICHO\Jericho.ini . 
Pour cela, vous devez invalider par un commentaire (mettre ";" en 
d�but de ligne) la cl� "Deport_Netware= ... " de la section "[Modules].
NOTE :
Sauf pour �tablir une communication avec un serveur NetWare, 
l'apparition de ces messages ne g�ne en rien le bon fonctionnement
de nos diff�rents composants logiciels.

UM-Client Novell : utilisation du module autorun.nlm
----------------------------------------------------
Fonction:
- execution d'une commande Netware suivi d'une chaine de 
caractere simulant une entree clavier

Il n'y a aucune verification:
- sur l'execution correcte, sans erreur, du nlm ou ncf
- sur l'accessibilite definie par les differents chemins
  de recherche de l'executable appele.

Les consequences de cette execution sont de la responsabilite
de l'utilisateur.

Syntaxe:
La syntaxe utilisee est :
 load autorun /commande /chaine

Attention:
Ce module est present sur le CDROM mais il n'est pas 
installe par defaut.

Sous OS2
--------
Sous OS2, il est fortement deconseille d'utiliser le manager 
pour superviser un UM-Agent implante SUR LA MEME station. 
DANS CE CAS, l'emulation windows utilisee par le manager 
reserve des ressources importantes et sature le processeur.

UM-Agent OS2 et Warp connect : complement config. SNMP
------------------------------------------------------
Pour les systemes OS/2 et les serveurs OS/2 LAN Server,
l'installation doit etre effectuee sur le poste de travail 
physiquement connecte a l'onduleur.

Cette installation modifie le fichier de demarrage du systeme
(startup.cmd), s'il existe deja.
Verifiez que le fichier startup.cmd contient au minimum les 
commandes ci-apres (selon le systeme), qui permettent un 
demarrage automatique correct d'UM-Agent :

@echo off
rem ------ start TCP/IP
call tcpstart.cmd
rem ------ start SNMP Agent
start /b /min snmpd (OS/2)
start /b /min snmpd -dpi tcp (WARP Connect)

SCO UNIX Open Server enterprise system 5.0
------------------------------------------
Pour ce syst�me uniquement, connecter l�onduleur � votre ordinateur
avec son c�ble sp�cifique. (le demander en nous retournant par fax
le formulaire joint).

4) Compl�ment � la documentation de l'option pageur/mail (Jericho)
==================================================================

Utilisation du  gestionnaire MAPI-Mail
--------------------------------------

Le gestionnaire MAPI-Mail de JERICHO utilise l'interface de programmation
de messagerie standard de Windows 95/NT (MAPI). Il ne peut fonctionner
que si Le module MICROSOFT EXCHANGE est install� et correctement configur�.
Pour ouvrir et configurer Microsoft Exchange, cliquer 2 fois sur l'ic�ne
Boite de r�ception du bureau.

Sous Windows NT, lorsque JERICHO est lanc� automatiquement, il fonctionne
sous la forme d'un service et n'est pas attach� � un contexte utilisateur.
Il n'a donc pas acc�s aux profils utilisateur cr��s pour l'utilisation de
Microsoft Exchange.
Pour utiliser le gestionnaire MAPI-Mail sous Windows NT, il faut lancer
JERICHO � partir du bureau (depuis le menu "D�marrer" ou en l'ajoutant au
groupe "D�marrage").

La syntaxe � utiliser pour d�finir l'adresse du destinataire lors de l'envoi
d'un message via le gestionnaire MAPI-Mail d�pend du service de messagerie
s�lectionn�. Pour les services install�s en standard sous Windows 95 et
Windows NT, cette syntaxe est la suivante :

-> Internet Mail

	Utiliser l'adresse e-mail du correspondant

-> Microsoft Mail : 
	
	Utiliser la syntaxe : RESEAU/BUREAU DE POSTE/BOITE AUX LETTRES

	avec

	RESEAU			= nom du reseau (en g�n�ral "Windows")
	BUREAU DE POSTE 	= serveur de messagerie MS-Mail
	BOITE AUX LETTRES	= boite aux lettres du destinataire

	Pour connaitre les param�tres � utiliser, ouvrir le carnet d'adresses
	de le boite de r�ception Microsoft Exchange (Menu "Outils") et cliquer
	deux fois sur le nom du destinataire d�sir�.

Fermeture de session sous Windows NT
------------------------------------

Lorsque JERICHO est d�marr� automatiquement au lancement de Windows, il
fonctionne sous la forme d'un service. Pour des raisons de temps de
fermeture trop long � l'arr�t de Windows, il a �t� n�cessaire d'anticiper
l'arr�t de JERICHO � la fermeture de session.


Cr�ation d'un nouveau gestionnaire BIP
--------------------------------------

Le gestionnaire "Bip" peut �tre param�tr� pour appeler tout type de bips :
service de bip int�gr� � l'autocom de l'entreprise, syst�me de recherche
de personnes, service de bip public.
Lorsqu'on a param�tr� ce gestionnaire pour l'utilisation d'un service de bip
particulier, il est possible de le duppliquer puis de le renommer pour en
faire un nouveau gestionnaire (� l'exemple du gestionnaire "Tatoo").

Pour ce faire :

1) Param�trer le driver "Bip" avec les valeurs ad�quates et en modifiant son
nom (par exemple : Bip -> Bip-New)

2) Dans le fichier "BIP.INI", � la rubrique "[Drivers]", recopier la 1�re
ligne ("0=Bip-New" dans l'exemple) et l'ajouter � la fin de la rubrique
avec le num�ro d'ordre suivant du dernier gestionnaire d�fini. Puis renommer
dans le fichier le 1er gestionnaire.

	[Drivers]	---->		[Drivers]

	0=Bip-New			0=Bip
	1=Tatoo				1=Tatou
					2=Bip-New

3) Dans le fichier "PAGER.INI", � la rubrique "[Drivers]", ajouter une ligne
pour identifier le nouveau gestionnaire :

	[Drivers]
	Bip=100,Bip.DLL,0,1
	Tatoo=101,Bip.DLL,1,1

--->	[Drivers]
	Bip=100,Bip.DLL,0,1
	Tatoo=101,Bip.DLL,1,1
	Bip-New=102,Bip.DLL,2,1

