# 🌳 Atelier git 2023

## **Introduction**

- Installer Git sur votre machine : Avant de commencer, assurez-vous que Git est installé sur votre machine. Vous pouvez le télécharger à partir du site officiel de Git et suivre les instructions d'installation appropriées pour votre système d'exploitation.

Note : Mettre le lien de l’installation de Git

- Configurer vos identifiants Git sur votre machine : Configurez votre nom d'utilisateur et votre adresse e-mail Git à l'aide de la commande **`git config`**.

## **Partie 1: Création d'un dépôt et gestion des fichiers**

La création d'un dépôt Git est la première étape pour commencer à gérer votre code avec Git. Cela initialise un nouveau dépôt dans le répertoire spécifié, où Git commencera à suivre les modifications de vos fichiers.

---

1. Création d'un dépôt :
    - Procédure :
        - Ouvrez Git Bash ou votre terminal.
        - Créez un nouveau répertoire pour votre projet : **`mkdir mon_projet`**.
        - Accédez au répertoire du projet : **`cd mon_projet`**.
        - Initialisez un dépôt Git : **`git init`**.
        - Vérifiez l'état du dépôt : **`git status`**.
2. Ajout et commit de fichiers :
    
    L'ajout et le commit de fichiers sont les actions fondamentales dans Git. L'ajout avec **`git add`** permet à Git de commencer à suivre les modifications du fichier spécifié. Le commit avec **`git commit`** enregistre les modifications dans l'historique du dépôt Git avec un message descriptif.
    
    - Procédure :
        - Créez un fichier vide : **`touch fichier.txt`**.
        - Ajoutez le fichier au suivi de Git : **`git add fichier.txt`**.
        - Effectuez un commit avec un message descriptif : **`git commit -m "Ajout du fichier.txt"`**.

## **Partie 2: Collaboration, ajout d'un membre et gestion des conflits**

Les branches sont utiles pour travailler sur des fonctionnalités ou des tâches isolées. Dans le contexte de la collaboration, chaque membre de l'équipe peut créer sa propre branche pour travailler sur une partie spécifique du projet. La fusion des branches permet d'intégrer les modifications de différentes branches dans la branche principale.

---

1. Création et fusion de branches :
    - Procédure :
        - Créez une nouvelle branche : **`git branch nouvelle-branche`**.
        - Basculez sur la nouvelle branche : **`git checkout nouvelle-branche`**.
        - Apportez des modifications au fichier.txt.
        - Ajoutez et effectuez un commit des modifications : **`git add fichier.txt`** puis **`git commit -m "Modifications dans la nouvelle branche"`**.
        - Revenez à la branche principale : **`git checkout master`**.
        - Fusionnez la branche avec la principale : **`git merge nouvelle-branche`**.
        
2. Ajout d'un membre au dépôt :
    
    L'ajout d'un membre au dépôt permet à d'autres développeurs de rejoindre l'équipe et de contribuer au projet. En les invitant, vous leur accordez l'accès au dépôt afin qu'ils puissent cloner le projet sur leur machine locale et soumettre leurs propres modifications.
    
    - Procédure :
        - Sur la plateforme d'hébergement du dépôt (par exemple, GitHub), accédez aux paramètres du dépôt.
        - Invitez un nouveau membre en utilisant son nom d'utilisateur ou son adresse e-mail.
        - Le nouveau membre recevra une invitation par e-mail pour rejoindre le dépôt.
        - Une fois l'invitation acceptée, le nouveau membre pourra cloner le dépôt et y contribuer.
        
3. Collaboration et gestion des conflits :
    
    La collaboration dans un dépôt Git implique que plusieurs membres travaillent simultanément sur différentes fonctionnalités ou tâches. Lorsque deux membres modifient la même partie du code, un conflit de fusion peut se produire lors de la tentative de fusion des branches. Les membres doivent communiquer, résoudre les conflits en examinant les modifications et en choisissant les modifications à conserver. La résolution des conflits nécessite une communication et une coordination efficaces entre les membres de l'équipe pour s'assurer que toutes les modifications sont intégrées correctement.
    
    - Procédure :
        - Assurez-vous que tous les membres ont cloné le dépôt sur leur machine locale.
        - Chaque membre crée une branche pour travailler sur une fonctionnalité spécifique : **`git branch fonctionnalite`** et **`git checkout fonctionnalite`**.
        - Chaque membre apporte des modifications à ses fichiers respectifs et effectue des commits locaux.
        - Lorsque deux membres modifient la même partie du code, un conflit peut survenir lors de la fusion des branches.
        - Pour résoudre le conflit, les membres doivent communiquer et décider des modifications à conserver.
        - Chaque membre résout les conflits dans les fichiers concernés et effectue les étapes suivantes : **`git add fichier.txt`** puis **`git commit`**.
        - Après la résolution des conflits, les membres peuvent fusionner leurs branches respectives dans la branche principale en utilisant la commande **`git merge`**.

## **Partie 3: Révisions et gestion des versions**

Les tags Git permettent de marquer des points spécifiques dans l'historique du projet, généralement pour marquer des versions stables ou des jalons importants. La création d'un tag avec **`git tag`** et la publication du tag sur le dépôt distant avec **`git push`** permettent aux autres contributeurs du projet de référencer facilement les versions spécifiques.

---

1. Création d'une release :
    - Procédure :
        - Marquez le commit de la version stable comme une release : **`git tag -a v1.0 -m "Version 1.0"`**.
        - Publiez la release sur le dépôt distant : **`git push origin v1.0`**.
        
2. Rétablissement et annulation de commits :

Il peut être nécessaire d'annuler ou de rétablir des commits précédents pour corriger des erreurs ou revenir à une version antérieure du projet. **`git revert`** crée un nouveau commit qui annule les modifications d'un commit précédent, tandis que **`git reset`** permet de revenir à un commit précédent en supprimant les commits ultérieurs. L'utilisation de ces commandes nécessite une bonne compréhension de l'historique des commits.

- Procédure :
    - Identifiez le commit à annuler à l'aide de **`git log`**.
    - Rétablissez le projet à l'état du commit précédent : **`git revert <commit_hash>`**.
    - Annulez un commit en gardant les modifications locales : **`git reset HEAD~1`**.

## **Partie 4: Gestion des fichiers ignorés**

1. Gestion des fichiers ignorés :
    
    Le fichier **`.gitignore`** permet de spécifier les fichiers ou répertoires à exclure du suivi de Git. Vous pouvez l'utiliser pour exclure des fichiers générés automatiquement, des fichiers de configuration ou des fichiers contenant des informations sensibles. Une fois que le fichier **`.gitignore`** est ajouté et validé, les fichiers correspondant aux règles spécifiées ne seront pas inclus dans les commits ultérieurs.
    
    - Procédure :
        - Créez un fichier **`.gitignore`** dans le répertoire racine du dépôt : **`touch .gitignore`**.
        - Ouvrez le fichier **`.gitignore`** dans un éditeur de texte.
        - Ajoutez les règles pour ignorer certains fichiers ou répertoires.
        - Enregistrez et fermez le fichier **`.gitignore`**.
        - Ajoutez le fichier **`.gitignore`** au suivi de Git : **`git add .gitignore`**.
        - Effectuez un commit pour ajouter le fichier **`.gitignore`** : **`git commit -m "Ajout du fichier .gitignore"`**.
        - Créez un fichier à exclure, par exemple **`secret.txt`** : **`echo "Informations secrètes" > secret.txt`**.
        - Ajoutez le fichier au suivi de Git : **`git add secret.txt`**.
        - Vérifiez que le fichier est ignoré en exécutant **`git status`** et vérifiez qu'il est répertorié en tant que "untracked" (non suivi).
        - Effectuez un commit pour ajouter les autres fichiers : **`git commit -m "Ajout des autres fichiers"`**.