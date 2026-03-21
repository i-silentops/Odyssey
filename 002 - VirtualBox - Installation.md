## Introduction

La virtualisation est une technologie qui permet de simuler les fonctionnalités matérielles pour installer un ou plusieurs systèmes d'exploitation sur une seule machine physique.  
Ces machines virtuelles peuvent être utiles dans de nombreux cas de figure. Par exemple pour tester un programme ou un service, et même pour analyser le comportement d'un programme dans le cadre de la sécurité informatique.  
Dans cette quête, tu vas installer le logiciel Oracle VirtualBox sur Windows et/ou sur Linux, selon ton Système d'Exploitation.  
Il te permettra de gérer des [machines virtuelles](https://fr.wikipedia.org/wiki/Machine_virtuelle) (ou **VM** pour *Virtual Machine*).

![Ecran Windows 11 avec une fenêtre VirtualBox ayant un Os Ubuntu](https://www.net-usb.com/images/upload/UNG/articles/webnot/1virtualbox-pic.jpg)

## 🎯 Objectifs:

✅ Vérifier l'activation de la virtualisation sur un ordinateur  
✅ Modifier les paramètres dans le BIOS  
✅ Installer VirtualBox  
✅ Savoir installer une extension pour VirtualBox

## Qu'est-ce que la virtualisation?

La virtualisation permet de créer plusieurs machines virtuelles (VM) à partir d'une machine physique. Plusieurs types de logiciel, qu'on appelle **Hyperviseur**, offrent ce type de fonctionnalités.

**Tu auras plus tard dans ta formation un cours spécifique et plus approfondi sur ce sujet.
Ce qui suit est un résumé du concept de virtualisation pour t'aider à aborder le sujet.**

On peut différencier 2 types d' **hyperviseurs**

- Les hyperviseurs de type 1  
	Couche physique, c'est à dire installé comme un OS. Exemple: ESXi, Proxmox...
- Les hyperviseurs de type 2  
	Couche application, c'est à dire un logiciel tournant sur un OS. Exemple: VirtualBox, VMWare WorkStation...

Le rôle de l' **hyperviseur** est d'attribuer les ressources aux machines virtuelles qu'il héberge en fonction des besoins.

> Note: il est donc primordial de prendre en compte les ressources nécessaire à l'hyperviseur avant d'attribuer des ressources à une machine virtuelle!

**La somme des ressources attribuées à l'ensemble des VM tournant simultanément doit être inférieure au total des ressources disponibles sur la machine physique, sinon l'hyperviseur ne peut plus continuer de fonctionner correctement.**

Exemple: Si un hyperviseur possède 4 CPU avec 8 Go de RAM et 250 Go d'espace disque, il n'est pas envisageable de créer une machine virtuelle avec 8 CPU, 12 Go de RAM et 300Go d'espace disque.

## Présentation de VirtualBox

VirtualBox est un logiciel libre de virtualisation, c'est un hyperviseur de type 2, développé par Oracle (une société américaine spécialisée dans les systèmes de bases de données et applicatifs). Le [site web officiel](https://www.virtualbox.org/) contient toutes les informations nécessaires ainsi qu'une documentation.

Dans les pages suivantes tu vas trouver les informations sur l'installation de VirtualBox pour Windows et Linux.  
Utilise les pages dont tu as besoin et passe les autres.

## Est-ce que la virtualisation est activée?

Pour faire de la virtualisation et gérer des machines virtuelles, ton ordinateur doit pouvoir le faire au niveau **matériel**.  
En effet, même si la virtualisation est un moyen de gérer plusieurs ordinateurs virtuellement, donc logiciellement, il faut que ton ordinateur physique soit capable de le faire.

Si la virtualisation n’est pas activée sur ton ordinateur, tu peux avoir un message de ce type: "La virtualisation matérielle VT-x/AMD-V n’est pas disponible sur votre système. Certains invités (comme OS/2 ou QNX) nécessitent cette fonctionnalité pour pouvoir démarrer".

**VT-x est la virtualisation sur les processeurs de la marque Intel.  
AMD-V est celle des processeurs AMD.**

**Comment connaitre la marque de mon processeur?**  
Tu a peut-être un sticker ou un autocollant avec la marque du processeur sur ton écran ou ton clavier.  
Sinon un logo apparaît peut-être au démarrage de ton ordinateur.

## Vérification de l'activation de la virtualisation

### Windows

**DISCLAIMER**

_Les expérimentations pratiques ont été testées sur une version Windows 11 Pro, avec une mise-à-jour 23H2.
La langue du système est le Français, et le clavier est un clavier Français AZERTY.  
Elles peuvent être reproduites avec une autre configuration d'ordinateur (autre version de Windows, autre mises-à-jour, autre langue),
mais des différences peuvent alors apparaître et tu devras peut-être modifier les actions à effectuer._


Avec un processeur Intel :  

- Télécharge l'utilitaire d'identification du processeur Intel, que tu trouve ici  
- Installe le avec la configuration par défaut  
- À la fin de l'installation, clique sur Exécuter  
- Accepte les "Conditions Générales d'utilisation"  
- Clique sur Non pour le recueil des données  
Après cela, l'utilitaire analyse ton ordinateur. Au bout de quelques minutes, le résultat va s'afficher :  

Clique sur Technologies du processeur :

Si tu as une marque ☑️ devant Technologies du processeur alors la virtualisation est activée 🎉 !

Si ce n'est pas le cas, tu vas devoir activer la virtualisation.
Avec un processeur AMD :

- Télécharge l'utilitaire de vérification AMD ici  
- Décompresse le fichier zip que tu as téléchargé  
- Exécute le fichier amdvhyperv.exe

Si la virtualisation est supportée par ton processeur, tu as le message This system is compatible with Hyper-V. This AMD64 system supports AMD Virtualization (AMD-V) Technology with Rapid Virtualization.  
Dans le cas contraire tu as This utility detected that AMD Virtualization (AMD-V) Technology is not enabled in BIOS. Enable AMD-V in BIOS. Re-run this utility to further verify your system is compatible with Hyper-V.  
  
Dans ce dernier cas, tu vas devoir activer la virtualisation.  

### Linux

**DISCLAIMER**

_Les expérimentations pratiques ont été testées sur une distribution Ubuntu version 24.04 LTS.
La langue du système est le Français, et le clavier est un clavier Français AZERTY.  
Elles peuvent être reproduites sur d'autres distribution Linux,
mais des différences peuvent alors apparaître et tu devras peut-être modifier les actions à effectuer. _ 


Ouvre un terminal et exécute la commande suivante :
```shell
1 cat /proc/cpuinfo | grep " lm "
```
Si des lignes apparaissent, la virtualisation est activée !

Dans le cas contraire, tu vas devoir l'activer.
Pour vérifier l'activation par rapport au processeur, exécute les commandes suivantes :
```shell
1 lscpu | grep -iE "virt|mod"
```

Exemple de résultat avec un processeur Intel :
```shell
1 Mode(s) opératoire(s) des processeurs : 32-bit, 64-bit
2 Address sizes:                          39 bits physical, 48 bits virtual
3 Nom de modèle :                         11th Gen Intel(R) Core(TM) i7-11800H @ 2.30GHz
4 Modèle :                                141
5 Virtualisation :                        VT-x
```

## Activation de la virtualisation


**N'effectue les actions ci-dessous que si la vérification précédente indique une virtualisation non-activée.**


Tout d'abord, il faut que tu ailles dans le **BIOS** de ton ordinateur.  
Mais qu'est-ce donc que cela???  
Le BIOS, pour **Basic Input Output System** est une interface graphique qui te permet de configurer des réglages directement liés à ton matériel, sans passer par ton Système d'Exploitation.  
Entre-autre réglage, on peut y configurer l'activation de la virtualisation, ce qui nous intéresse ici.

**Plus d'informations sur le BIOS**

Sur cette page WikipédiA tu as un complément d'information.  
https://fr.wikipedia.org/wiki/BIOS_(informatique)  

Pour y accéder, éteint ton ordinateur, puis démarre-le.

**Attention, sur certains matériels, il faut réellement arrêter l'ordinateur, PUIS le démarrer.
En effet, un redémarrage simple peut ne pas donner accès au BIOS**

Juste après le démarrage appuie plusieurs fois sur une des touches spéciales F1, F2, F3, etc. de ton clavier pour accéder au BIOS.  
Tu as [ici](https://www.malekal.com/liste-touches-acces-bios-boot-menu-constructeur/#Par_marque_de_PC) les touches du clavier selon la marque et la référence de ton ordinateur.

Une fois dans le BIOS, cherche un menu dont le titre contient " **Virtualisation** " ou encore " **Virtualization** ".  
Active les éléments de virtualisation **VT**.  
Sauvegarde ta configuration, redémarrer ton ordinateur, et vérifie que ta virtualisation est bien active sous Windows.

_Un complément d'informations pour activer la virtualisationActiver la virtualisation sur Windows._  
https://support.microsoft.com/fr-fr/windows/activer-la-virtualisation-sur-windows-c5578302-6e43-4b4b-a449-8ced115f58e1

## Suppression d'Hyper-V (uniquement Windows)

_N'effectue les actions ci-dessous que si tu as des erreurs de virtualisation à l'installation ou au lancement de VirtualBox._

Le logiciel **Hyper-V** est également un hyperviseur (comme VirtualBox), et il est souvent pré-installé sur les ordinateurs Windows.  
Il est fortement conseillé de le désinstaller pour éviter tout conflit avec VirtualBox.

Pour le désinstaller:

- Dans le menu démarrer, chercher **Panneau de configuration**
- Dans la fenêtre qui apparait, en haut à droite, modifie l'affichage pour le mettre par icône (petite ou grande)
- Clique sur **Programmes et fonctionnalités**
- Dans le panneau de gauche, clique sur **Activer ou désactiver des fonctionnalités Windows**
- Dans la fenêtre qui apparaît, décoche tout ce qui concerne le menu et les sous-menu **Hyper-V**
- Fais la même chose pour le menu **Plateforme de l'hyperviseur Windows**
- Clique sur OK et redémarre ton ordinateur

## Installation de VirtualBox

Maintenant que ton environnement système est prêt, tu peux installer VirtualBox à partir du lien ci-dessous.

**Source d'installation pour VirtualBox**  
https://www.virtualbox.org/wiki/Downloads

Clique sur Windows hosts pour télécharger la version pour Windows  
Installe Virtualbox à partir du fichier Virtualbox-7...exe téléchargé.  
Garde les paramètres par défaut.  

## Installation du VirtualBox Extension Pack

Le **VirtualBox Extension Pack** ajoute des fonctionnalités supplémentaires à VirtualBox.  
Son installation est facultative.

- À partir de la source officielle, sous "VirtualBox Extension Pack", clique sur **Accept and dowload**.

![Fenêtre pour le téléchargement de l'"extension pack"](https://storage.googleapis.com/assets_upload_prod/WZcCIyKYYfwVSFBYXRZ1Zie2RZEZyI5y.png)

- Lance le logiciel
- Vas dans le menu **Fichier ↦ Outils ↦ Extension Pack Manager**
- Clique sur **Install** et sélectionne le fichier `Oracle_VirtualBox_Extension_Pack...` avant de cliquer sur **Ouvrir**
- Clique sur **Installation**

## Exercice

## 💪Challenge

Active, si nécessaire la virtualisation sur ton ordinateur et installe VirtualBox ainsi que l'Extension Pack.

**Pour vérifier si VirtualBox est bien installé :**  

Vas dans l'Explorateur de fichiers dans C:\Program Files  
Si tu as un dossier Oracle avec à l’intérieur un autre dossier VirtualBox alors VirtualBox est bien installé !  

**Pour vérifier si l'Extension Pack est bien installé :**  

Vas dans l'Explorateur de fichiers dans C:\Program Files\Oracle\VirtualBox\ExtensionPacks  
Si tu as un dossier Oracle_VirtualBox_Extension_Pack avec une date de modification récente alors il est bien installé !  


## 🧐 Critères d'acceptation

VirtualBox est installé ainsi que l'Extension Pack.
