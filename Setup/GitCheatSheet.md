# Git Cheat Seet

Git est un outil de versionning. Il vous permettra de sauvegarder votre code et des versions antérieur de celui-ci.
C'est un outil collaboratif avec lequel vous pourrez travailler à plusieurs sur le même projet, sans impacter le travail d'un autre.
Il sera possible à tout moment de revenir à une ancienne version ou fusionner le travail de vos collègues avec le votre.
<br>

## Commandes indispensables

Pour utiliser git, il vous faut d'abord avoir créé un repository (un dossier) sur la plateforme de votre choix (Github, Gitlab, Gitea, ...).
A Ynov nous utilisons Gitea, vous devrez donc utiliser cette plateforme

<br>

#### Télécharger un repository et son historique de versions
```
git clone [url] 
``` 
> - url: *https://git.ytrack.learn.ynov.com/USERNAME/repository-name.git*
> - Cette commande vous demandera vos identifiants Gitea, pour ne plus les rentrer de nouveau à l'avenir, exécuter 
``` 
git config --global credential.helper store 
```

<br>

#### Lister tout les fichier modifié ou ajouter en attente d'un commit
```
git status
```
> - Il est fortement recommandé d'utiliser cette commande à outrance afin d'être toujours au clair sur ce que vous voulez ajouter ou garder encore en modification 

<br>

#### Ajouter des fichiers à envoyer
```
git add [chemin vers le fichier]
```
> - Vous pouvez ajouter un ou plusieurs fichier ou même des dossiers entiers. Précisez le chemin exact du fichier<br>
> **Exemples:**<br>
> `.` : Le dossiers courant<br>
> `*` : Tout les fichiers en attente de commit<br>
> `folder/test.go` : Ajoute le fichier test.go se trouvant dans le dossier `folder`

<br>

#### Créer un paquet de données dans l'historique de version local (à envoyer plus tard) 
```
git commit -m "[message descriptif]"
```
> - Le message du commit est très important, il permet de se retrouver dans l'historique de version et de comprendre quels changements cela apporte au projet

<br>

#### Envoyer les données sur votre repository Gitea.
```
git push origin [branch]
```
> - `branch`: Une branche est un espace de travail indépendant. Un repository peu avoir plusieurs branches.
> - La branche par défaut d'un repository est `main`.
> - Cette commande envoie tout les commits de la branche locale (effectué jusqu'ici) vers Gitea

<br>

#### Récuperer le travail de vos collègues
```
git pull origin [branch]
```
> - Récupère tout l'historique de version de la branche et applique les modifications si nécessaire.


## Commandes utiles

#### Voir l'historique git
```
git log
```
> - Cette commande permet de voir l'historique des commit effectués jusqu'ici, avec leur messages, la date, l'auteur et leur identifiant (hash du commit)

<br>

#### Créer une nouvelle branche
```
git checkout -b [branch]
```
> - Les branches sont très utiles lors de travaux de groupe pour ne pas empiéter sur le travail de l'autre
> - Vous pouvez à tout moment récupérer le travail de votre collègue d'une branche à l'autre

<br>

#### Revenir à un ancien commit ou se déplacer sur une branche
```
git checkout [has du commit / branch]
```
> - Cette commande déplace l'utilisateur sur la branche spécifié ou sur un commit précédent
> - **Exemple de hash de commit** : *cf4bdccea88d0e34e573ca0d4264c5c26f810224*

<br>

#### Mettre de côté ses changement avant de `git pull`, sans commit
```
git stash
```
> - Un stash permet de "mettre de côté" vos modifications actuelles, avant de pull, sans effectuer de commit inutile

**Appliquer ses changements après le pull**
```
git stash apply
```
> - Une fois les modifications récupérées sur votre branche, il est temps de retrouver votre stash mis de côté !

