
## 1. Installer le rôle Serveur de fichiers

Le rôle Serveur de fichiers est installé par défaut, mais si il faut l'installer, suivre les étapes suivantes :
  1. Cliquer sur **Add Roles and Features**
  2. **Next > Next > Next**
  3. Sélectionner le rôle **File and Storage Services > Storage Services**
  4. Cliquer sur **Add Features**
  5. **Next > Install**

## 2. Créer un dossier **Documents_Entreprise** à la racine du disque **C:**

Dans l'explorateur de fichier, se déplacer à la racine du disque **C:**  
Clic droit > **New > Folder** puis le renommer **Documents_Entreprise**  
  
  ![image](https://github.com/frederick-tech/Odyssey/blob/d25579d486f6fd78197ec16a49d02d996dfcbcd1/Ressources/documents_entreprise.PNG)

## 3. Configurer un partage nommé **Docs** pour ce dossier

  1. Ouvrir le Server Manager
  2. Puis sélectionner **Files and Storage Services > Shares**
  4. Faire un clic droit > **New Share**
  
  ![image](https://github.com/frederick-tech/Odyssey/blob/8e4b605e7cce2dbb86174499efbd8b7f86153761/Ressources/docs_1.PNG)
    
  6. Sélectionner **SMB Share - Quick** > Next
    
  ![image](https://github.com/frederick-tech/Odyssey/blob/8e4b605e7cce2dbb86174499efbd8b7f86153761/Ressources/docs_2.PNG)
    
  7. Sélectionner **Type a custome path** puis cliquer sur Browse pour choisir **Documents_Entreprise** à la racine
    
  ![image](https://github.com/frederick-tech/Odyssey/blob/8e4b605e7cce2dbb86174499efbd8b7f86153761/Ressources/docs_3.PNG)
    
  8. Spécifier le nom du partage, celui-ci s'affichera pour l'utilisateur
    
  ![image](https://github.com/frederick-tech/Odyssey/blob/d25579d486f6fd78197ec16a49d02d996dfcbcd1/Ressources/docs_4.PNG)
    
  9. Cocher la case "Enable access-based enumeration" pour gérer les permissions sur le dossier
    
  ![image](https://github.com/frederick-tech/Odyssey/blob/d25579d486f6fd78197ec16a49d02d996dfcbcd1/Ressources/docs_5.PNG)
    
  10. Cliquer sur **Create**
    
  ![image](https://github.com/frederick-tech/Odyssey/blob/d25579d486f6fd78197ec16a49d02d996dfcbcd1/Ressources/docs_6.PNG)

## 4. Créer trois sous-dossiers : RH, Comptabilité et Direction

Dans l'explorateur de fichier, se déplacer dans le dossier **Documents_Entreprise**  
Clic droit > New > Folder puis le renommer **RH**  
Faire cette manipulation pour les deux dossiers **Comptabilité** et **Direction**  
  
![image](https://github.com/frederick-tech/Odyssey/blob/6b8420b8e366d73e67f10e12f6714f0f7d6db4ad/Ressources/sous_dossiers.PNG)
  
## 5. Configurer les permissions NTFS et de partage.

Pour les opérations, ne pas oublier de créer les utilisateurs, les groupes de sécurité et d'ajouter les utilisateurs dans ces derniers.
Si ce n'est pas le cas, il sera impossible de gérer les permissions fines de ces dossiers.

Il faut que :
  - Le groupe **RH** ait un accès en lecture/écriture au dossier **RH**
  - Le groupe **Comptabilité** ait un accès en lecture/écriture au dossier **Comptabilité**
  - Le groupe **Direction** ait un accès en lecture/écriture à tous les dossiers
  - Tous les utilisateurs du domaine aient un accès en lecture seule au dossier **Documents_Entreprise**

### 5.1 Configurer les permissions du dossier **Documents_Entreprise**
  
  5.1.1. Ouvrir le **Server Manager**  
  5.1.2. Sélectionner **Files and Storage Services > Shares**  
  5.1.3. Faire un clic droit sur le partage Docs (qui concerne le dossier **Documents_Entreprise**)
    
  ![image](https://github.com/frederick-tech/Odyssey/blob/6b8420b8e366d73e67f10e12f6714f0f7d6db4ad/Ressources/ntfs_docs_1.PNG)
    
  5.1.4. Cliquer sur **Permissions > Customize permissions**
    
  ![image](https://github.com/frederick-tech/Odyssey/blob/6b8420b8e366d73e67f10e12f6714f0f7d6db4ad/Ressources/ntfs_docs_2.PNG)
    
  5.1.5. Cliquer sur "**Disable inheritance**" car les permissions sur ce dossier permettront uniquement d'accéder aux sous-dossiers RH, Comptabilité et Direction.
    
  ![image](https://github.com/frederick-tech/Odyssey/blob/6b8420b8e366d73e67f10e12f6714f0f7d6db4ad/Ressources/ntfs_docs_3.PNG)

  Sélectionner " **Convert inherited permissions into explicit permissions on this object.** "  
  
  ![image](https://github.com/frederick-tech/Odyssey/blob/6b8420b8e366d73e67f10e12f6714f0f7d6db4ad/Ressources/ntfs_docs_4.PNG)
  
  5.1.6. Supprimer les groupes de sécurité Users
    
  ![image](https://github.com/frederick-tech/Odyssey/blob/6b8420b8e366d73e67f10e12f6714f0f7d6db4ad/Ressources/ntfs_docs_5.PNG)
  
  5.1.7. Dans l'onglet **Permissions**, ajouter le groupe de sécurité domaine locale (DL) qui contient les utilisateurs du domaine, sélectionner "**This folder only**"
    
  ![image](https://github.com/frederick-tech/Odyssey/blob/5a6f5bc31c22399cf3633cd877858b6dfdaf1d69/Ressources/ntfs_docs_7.PNG)

  Cliquer sur **Apply** :
  
  ![image](https://github.com/frederick-tech/Odyssey/blob/6b8420b8e366d73e67f10e12f6714f0f7d6db4ad/Ressources/ntfs_docs_6.PNG)
  
  5.1.8. Dans l'onglet **Share**, ajouter le même groupe puis cocher la case **Read**

  ![image](https://github.com/frederick-tech/Odyssey/blob/32b5a305b402e18f35104fe6648983435a424187/Ressources/ntfs_docs_9.PNG)

  Cliquer sur **Apply** :

  ![image](https://github.com/frederick-tech/Odyssey/blob/32b5a305b402e18f35104fe6648983435a424187/Ressources/ntfs_docs_8.PNG)

### 5.2 Configurer le groupe Comptabilité (faire les mêmes opérations pour le groupe RH)

  5.2.1. Reprendre les étapes 5.1.1. à 5.1.6.  

  5.2.2 Dans l'onglet **Permissions**, ajouter les groupes de sécurité de domaine local Comptabilité ET Direction, sélectionner **This folder, subfolders and files**

  ![image](https://github.com/frederick-tech/Odyssey/blob/32b5a305b402e18f35104fe6648983435a424187/Ressources/ntfs_sous_dossiers_1.PNG)

  Cliquer sur **Apply** :

  ![image](https://github.com/frederick-tech/Odyssey/blob/32b5a305b402e18f35104fe6648983435a424187/Ressources/ntfs_sous_dossiers_2.PNG)
  
  5.2.3 Dans l'onglet **Share**, ajouter les mêmes groupes puis cocher les cases **Change** et **Read**

  ![image](https://github.com/frederick-tech/Odyssey/blob/32b5a305b402e18f35104fe6648983435a424187/Ressources/ntfs_sous_dossiers_3.PNG)
  
  Cliquer sur **Apply** :
  
  ![image](https://github.com/frederick-tech/Odyssey/blob/32b5a305b402e18f35104fe6648983435a424187/Ressources/ntfs_sous_dossiers_4.PNG)

## 6. Utiliser PowerShell pour lister tous les partages sur le serveur

![image](https://github.com/frederick-tech/Odyssey/blob/dc066f224fa935aa3a604ec9311df333c3e5ea8c/Ressources/smbshare.PNG)

## 7. Sur un poste client Windows 10, configurer un lecteur réseau pointant vers ce partage via PowerShell

7.1. L'utilisateur User1 est dans le groupe de sécurité domaine local RH DL_RH

![image](https://github.com/frederick-tech/Odyssey/blob/dc066f224fa935aa3a604ec9311df333c3e5ea8c/Ressources/user1_1.png)

7.1. L'utilisateur User2 est dans le groupe de sécurité domaine local DL_Direction

![image](https://github.com/frederick-tech/Odyssey/blob/dc066f224fa935aa3a604ec9311df333c3e5ea8c/Ressources/user2_1.png)

## 8. Teste l'accès depuis le poste client avec différents comptes utilisateurs

8.1 Le lecteur Docs est bien présent, mappé avec la lettre J

![image](https://github.com/frederick-tech/Odyssey/blob/dc066f224fa935aa3a604ec9311df333c3e5ea8c/Ressources/user1_2.png)

L'utilisateur User1 ne voit que le sous dossier RH et peut y faire des modifications sur des fichiers ou dossiers

![image](https://github.com/frederick-tech/Odyssey/blob/dc066f224fa935aa3a604ec9311df333c3e5ea8c/Ressources/user1_3.png)

8.1 Le lecteur Docs est bien présent, mappé avec la lettre K

![image](https://github.com/frederick-tech/Odyssey/blob/dc066f224fa935aa3a604ec9311df333c3e5ea8c/Ressources/user2_2.png)

L'utilisateur User2, contrairement aux utilisateurs des DL_RH et DL_Comptabilité, peut voir les trois dossiers et peut y faire des modifications sur des fichiers ou dossiers

![image](https://github.com/frederick-tech/Odyssey/blob/dc066f224fa935aa3a604ec9311df333c3e5ea8c/Ressources/user2_3.png)
