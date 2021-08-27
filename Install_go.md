Avant de commancer veiller a vien avoir un wsl2 d'installer sur votre machine

* Pour commencer rendez vous sur le site de [golang](https://golang.org/doc/install)

* Une foi sur le site cliquer sur linux dans le 2. Puis cliquer sur Télécharger Go pour Linux dans la 1. (Attention le site est en anglais). 
Cela demarera un telechargement d'un fichier tar ne le decompresser pas.

* Ouvrez un explorateur de fichier puis ans le chemin c'acces au fichier placez y ce-ci ```\\wsl$```, cliquer sur votre vertion de linux puis dans home, et pour finir sur votre compte utilisateur.

* Placer l'archive telecharger precedament a cette endroit.

* ouvrez le terminal WSL (linux) puis executer la commande suivante. 
```rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.linux-amd64.tar.gz```

Important 🚩 : cette étape supprimera une installation précédente dans ```/usr/local/go```, le cas échéant, avant l'extraction. Veuillez sauvegarder toutes les données avant de continuer.

(si premiere install no problem (╯°□°）╯︵ ┻━┻ )

* puis executer ```export PATH="$PATH:/usr/local/go/bin"```
Remarque : les modifications apportées à un fichier de profil peuvent ne s'appliquer qu'à la prochaine connexion à votre ordinateur. Pour appliquer les modifications immédiatement, exécutez simplement les commandes shell directement ou exécutez-les à partir du profil à l'aide d'une commande telle que source $HOME/.profile.

Vérifiez que vous avez installé Go en ouvrant une invite de commande et en tapant la commande suivante :
```$ go version```
Confirmez que la commande imprime la version installée de Go.