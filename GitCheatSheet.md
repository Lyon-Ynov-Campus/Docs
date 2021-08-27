# Git Cheat Seet

Git est un outil de versionning. Il vous permettra de sauvegarder votre code et des versions antérieur de celui-ci.
C'est un outil collaboratif avec lequel vous pourrez travailler à plusieurs sur le même projet, sans impacter le travail d'un autre.
Il sera possible à tout moment de revenir à une ancienne version ou fusionner le travail de vos collègues avec le votre.

## Commandes indispensables

Pour utiliser git, il vous faut d'abord avoir créé un repository (un dossier) sur la plateforme de votre choix (Github, Gitlab, Gitea, ...).
A Ynov nous utilisons Gitea, vous devrez donc utiliser cette plateforme

#### Télécharger un repository et son historique de versions
```
git clone [url] 
``` 
> - url: *https://git.ytrack.learn.ynov.com/USERNAME/repository-name.git*
> - Cette commande vous demandera vos identifiants Gitea, pour ne plus les rentrer de nouveau à l'avenir, exécuter 
``` 
git config --global credential.helper store 
```

#### Lister tout les fichier modifié ou ajouter en attente d'un commit
```
git status
```
> - Il est fortement recommandé d'utiliser cette commande à outrance afin d'être toujours au clair sur ce que vous voulez ajouter ou garder encore en modification 

#### Ajouter des fichiers à envoyer
```
git add [chemin du fichier]
```

#### Créer un paquet de données dans l'historique de version local (à envoyer plus tard) 
```
git commit -m "[message descriptif]"
```
> - Le message du commit est très important, il permet de se retrouver dans l'historique de version et de comprendre quels changements cela apporte au projet

#### Envoyer les données sur votre repository Gitea.
```
git push origin [branch]
```
> - `branch`: Une branche est un espace de travail indépendant. Un repository peu avoir plusieurs branches.
> - La branche par défaut d'un repository est `main`.
> - Cette commande envoie tout les commits de la branche locale (effectué jusqu'ici) vers Gitea

#### Récuperer le travail de vos collègues
```
git pull origin [branch]
```
> - Récupère tout l'historique de version de la branche et applique les modifications si nécessaire.

## Commandes utiles