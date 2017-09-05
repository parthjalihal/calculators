SOMMAIRE

1) Démarrer Solution-Pac 97
2) Démarrer Solution-Pac 97 / WAN
3) A savoir
4) Complément à la documentation de l'option pageur/mail (Jericho)
     - Utilisation du gestionnaire MAPI-Mail
     - Fermeture de session sous Windows NT
     - Création d'un nouveau gestionnaire BIP

                      -----------------------------

1) Démarrer Solution-Pac 97
===========================

Fonction de protection
----------------------
  Cette fonction démarre automatiquement au démarrage de votre station
  
  Pour démarrer manuellement
  - Double-cliquer sur l'icône "Solution-Pac 97 Start"
  
  Pour arreter manuellement 
  - Double-cliquer sur l'icône "Solution-Pac 97 Stop"

Fonction de supervision
-----------------------
  La fonction de protection doit être active

  Pour démarrer cette fonction
  - Double-cliquer sur l'icône "Solution-Pac 97 Manager"

Fonction complémentaire Pageur/Mail
-----------------------------------
  Pour démarrer cette fonction
  - Double-cliquer sur l'icône "Jericho"


2) Démarrer Solution-Pac 97 / Wan
=================================

Fonction de communication : UM-Agent
------------------------------------
  Cette fonction démarre automatiquement au démarrage de votre station
  
  Pour démarrer manuellement
  - Double-cliquer sur l'icône "SP 97 - WAN Start Comm."
  
  Pour arreter manuellement 
  - Double-cliquer sur l'icône "SP 97 - WAN Stop Comm."

Fonction de protection : UM-Client
----------------------------------
  Cette fonction démarre automatiquement au démarrage de votre station
  
  Pour démarrer manuellement
  - Double-cliquer sur l'icône "SP 97 - WAN Start Monitoring"
  
  Pour arreter manuellement 
  - Double-cliquer sur l'icône "SP 97 - WAN Stop Monitoring"

Fonction de supervision
-----------------------
  La fonction de protection doit être active

  Pour démarrer cette fonction
  - Double-cliquer sur l'icône "SP 97 - WAN Manager"

Fonction complémentaire Pageur/Mail
-----------------------------------
  Pour démarrer cette fonction
  - Double-cliquer sur l'icône "Jericho"

3) A savoir
===========

Solution-Pac 97 NT workstation : Diffusion message evenement onduleur
---------------------------------------------------------------------
Pour autoriser la diffusion des messages par le logiciel, vous devez 
imperativement activer le service message de NT sur votre systeme. 

Solution-Pac 97 Windows :Messages relatif à l'environnement Novell 
------------------------------------------------------------------
Pour certaines configurations des systèmes Windows, au démarrage du
module Jericho de notre offre logiciel, il peut y avoir émission des
deux messages suivants : "IPX Not installed" et "Unable to start SPX"
dans deux fenêtres intitulées "Interface NetWare-Windows for Jericho".
Si vous voulez communiquer avec un serveur NetWare, il faut vérifier
impérativement que le client NetWare est correctement installé sur 
votre station. 
Dans le cas contraire, vous pouvez supprimer l'apparition de ces 
messages en modifiant le fichier UPSMAN\MMI\JERICHO\Jericho.ini . 
Pour cela, vous devez invalider par un commentaire (mettre ";" en 
début de ligne) la clé "Deport_Netware= ... " de la section "[Modules].
NOTE :
Sauf pour établir une communication avec un serveur NetWare, 
l'apparition de ces messages ne gène en rien le bon fonctionnement
de nos différents composants logiciels.

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
Pour ce système uniquement, connecter l’onduleur à votre ordinateur
avec son câble spécifique. (le demander en nous retournant par fax
le formulaire joint).

4) Complément à la documentation de l'option pageur/mail (Jericho)
==================================================================

Utilisation du  gestionnaire MAPI-Mail
--------------------------------------

Le gestionnaire MAPI-Mail de JERICHO utilise l'interface de programmation
de messagerie standard de Windows 95/NT (MAPI). Il ne peut fonctionner
que si Le module MICROSOFT EXCHANGE est installé et correctement configuré.
Pour ouvrir et configurer Microsoft Exchange, cliquer 2 fois sur l'icône
Boite de réception du bureau.

Sous Windows NT, lorsque JERICHO est lancé automatiquement, il fonctionne
sous la forme d'un service et n'est pas attaché à un contexte utilisateur.
Il n'a donc pas accès aux profils utilisateur créés pour l'utilisation de
Microsoft Exchange.
Pour utiliser le gestionnaire MAPI-Mail sous Windows NT, il faut lancer
JERICHO à partir du bureau (depuis le menu "Démarrer" ou en l'ajoutant au
groupe "Démarrage").

La syntaxe à utiliser pour définir l'adresse du destinataire lors de l'envoi
d'un message via le gestionnaire MAPI-Mail dépend du service de messagerie
sélectionné. Pour les services installés en standard sous Windows 95 et
Windows NT, cette syntaxe est la suivante :

-> Internet Mail

	Utiliser l'adresse e-mail du correspondant

-> Microsoft Mail : 
	
	Utiliser la syntaxe : RESEAU/BUREAU DE POSTE/BOITE AUX LETTRES

	avec

	RESEAU			= nom du reseau (en général "Windows")
	BUREAU DE POSTE 	= serveur de messagerie MS-Mail
	BOITE AUX LETTRES	= boite aux lettres du destinataire

	Pour connaitre les paramètres à utiliser, ouvrir le carnet d'adresses
	de le boite de réception Microsoft Exchange (Menu "Outils") et cliquer
	deux fois sur le nom du destinataire désiré.

Fermeture de session sous Windows NT
------------------------------------

Lorsque JERICHO est démarré automatiquement au lancement de Windows, il
fonctionne sous la forme d'un service. Pour des raisons de temps de
fermeture trop long à l'arrêt de Windows, il a été nécessaire d'anticiper
l'arrêt de JERICHO à la fermeture de session.


Création d'un nouveau gestionnaire BIP
--------------------------------------

Le gestionnaire "Bip" peut être paramétré pour appeler tout type de bips :
service de bip intégré à l'autocom de l'entreprise, système de recherche
de personnes, service de bip public.
Lorsqu'on a paramétré ce gestionnaire pour l'utilisation d'un service de bip
particulier, il est possible de le duppliquer puis de le renommer pour en
faire un nouveau gestionnaire (à l'exemple du gestionnaire "Tatoo").

Pour ce faire :

1) Paramétrer le driver "Bip" avec les valeurs adéquates et en modifiant son
nom (par exemple : Bip -> Bip-New)

2) Dans le fichier "BIP.INI", à la rubrique "[Drivers]", recopier la 1ère
ligne ("0=Bip-New" dans l'exemple) et l'ajouter à la fin de la rubrique
avec le numéro d'ordre suivant du dernier gestionnaire défini. Puis renommer
dans le fichier le 1er gestionnaire.

	[Drivers]	---->		[Drivers]

	0=Bip-New			0=Bip
	1=Tatoo				1=Tatou
					2=Bip-New

3) Dans le fichier "PAGER.INI", à la rubrique "[Drivers]", ajouter une ligne
pour identifier le nouveau gestionnaire :

	[Drivers]
	Bip=100,Bip.DLL,0,1
	Tatoo=101,Bip.DLL,1,1

--->	[Drivers]
	Bip=100,Bip.DLL,0,1
	Tatoo=101,Bip.DLL,1,1
	Bip-New=102,Bip.DLL,2,1

