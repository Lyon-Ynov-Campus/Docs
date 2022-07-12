# TP Linux - CreateFiles

### Objectif

Après avoir vu les commandes de base en Linux, nous allons tester vos compétences dans ce TP.
Le but de ce TP est de reproduire une arborescence de fichiers. Vous pourrez tester votre arborescence avec un script qui vous est fourni.
<br>

### Reproduire l'arborescence

Reproduire l'arborescence ci-dessous :

![Arborescence](https://i.imgur.com/zyB3bFa.png)

<br>

### Ecrire dans les fichiers texte

> - CreateFiles/TextFile1.txt --> **Bonjour je suis étudiant**
> - CreateFiles/Directory1/TextFile1.txt --> **Je suis en filière informatique**
> - CreateFiles/Directory1/TextFile2.txt --> **Je suis en première année**
> - CreateFiles/Directory1/Subdirectory/TextFile1.txt --> **J'apprends les bases de linux**
> - CreateFiles/Directory2/TextFile1.txt --> **Les mentors sont trop cool**


<br>

### Modification de droits, de dates de fichiers et liens symboliques

A partir du répertoire CreateFiles/Directory3/ créer les fichiers TextFile1.txt et TextFile2.txt avec les mêmes permissions, les dates des différents fichiers et les fichiers TextFile3.txt et TextFile4.txt avec les différents liens symboliques comme l'image ci-dessous (ls -l pour lister les fichiers avec cet affichage) :

![Droits fichiers](https://i.imgur.com/RV8NbB3.png)

<br>

### Script de test

Vous pouvez désormais tester si vous avez réussi tout le TP en lançant un script que vous pouvez retrouver [ici](https://raw.githubusercontent.com/Lyon-Ynov-Campus/Docs/main/Ymmersions/CheckFiles.sh).

Téléchargez le fichier CheckFiles.sh puis mettez-le dans le répertoire **./CreateFiles/** (de façon à ce que son chemin d'accès soit **/CreateFiles/CheckFiles.sh**)

#### Lancer le script

Pour lancer le script, il vous suffit de lui donner les permissions d'exécution et d'écriture (chmod 500 ./CreateFiles/CheckFiles.sh) puis de le lancer avec **./CheckFiles.sh**.