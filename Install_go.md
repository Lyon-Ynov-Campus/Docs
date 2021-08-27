Avant de commencer veillez a bien avoir installé WSL2 sur votre machine [via la doc suivante](https://github.com/Lyon-Ynov-Campus/Docs/blob/main/WSL2.md)

* Pour commencer rendez vous sur le site de [golang](https://golang.org/doc/install)

* Une fois sur le site cliquez sur Linux dans la partie 2. Puis cliquez sur `Télécharger Go pour Linux ` dans la partie 1. (Attention le site est en anglais).<br>
Cela demarrera le téléchargement d'une archive tar, **ne la décompressez pas tout de suite.**

* Ouvrez un explorateur de fichier Windows, puis dans le chemin d'acces au fichier placez y ceci ```\\wsl$```.
Cela vous redirige sur les dossiers de WSL.
Une fois dedans cliquez sur votre version de Linux puis dans `home`, et pour finir sur votre compte utilisateur.

* Placer l'archive téléchargée précédemment à cet endroit.

* Ouvrez un terminal WSL (linux) puis executez la commande suivante. 
```
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.17.1.linux-amd64.tar.gz
```
Cette commande supprime l'ancienne version de go si existente, puis décompresse l'archive dans le dossier `/usr/local`

::: danger
Important 🚩 : cette étape supprimera une installation précédente dans ```/usr/local/go```, le cas échéant, avant l'extraction. Veuillez sauvegarder toutes les données avant de continuer.
:::

(si premiere install no problem (╯°□°）╯︵ ┻━┻ )

* Dans le fichier `.bashrc` se trouvant dans votre `/home/username` coller la commande suivante: 
``` bash
export PATH="$PATH:/usr/local/go/bin"
```

* Pour terminer executer la commande suivante afin d'appliquer les changement à votre terminal.
``` bash
source ~/.bashrc
```

* Vérifiez que vous avez installé Go et que la version est la bonne,tappez la commande suivante :
```
go version
```
Confirmez que la commande imprime la version installée de Go.