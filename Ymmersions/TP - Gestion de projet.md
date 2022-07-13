# TP - Gestion de projet

### Objectif

Après avoir vu les différentes techniques d'organisation de projet, vous devrez les mettre en pratique en réalisant le TP qui va suivre.
<br>

### Définition du projet

Définissez un groupe de 4 à 5 personnes.
Nous vous fournissons le fichier **main.go** avec le code ci-dessous :
```
package main

import (
	"github.com/01-edu/z01"
)

func main() {
    tab := []int{45, 12, 24, 4, 1}
	tab = SortTab(tab)
	tab = CalculateTab(tab)
	tab = SquareTab(tab)
	tab = PrimeTab(tab)
	for _, k := range tab {
		if k == 7 {
			z01.PrintRune('7')
			z01.PrintRune('\n')
		}
	}
}
```

Vous devrez, en vous répartissant les différentes tâches, effectuer chacune des 4 fonctions ci-dessous :
> - SortTab --> Fonction qui prend en entrée un tableau d'entiers et retourne ce même tableau trié par ordre croissant
> - CalculateTab --> Fonction qui prend en entrée un tableau d'entiers et retourne un tableau de tous ces entiers modifiés avec la fonction f(x) = 2(3x+4x) avec x chaque entier du tableau en entrée
> - SquareTab --> Fonction qui prend en entrée un tableau d'entiers et retourne un tableau des racines carrées de chacun de ces nombres
> - PrimeTab --> Fonction qui prend en entrée un tableau d'entiers et retourne un tableau avec uniquement les nombres premiers du tableau en entrée

La fonction main devra retourner le chiffre **7**. Si ce n'est pas le cas c'est que les fonctions sont fausses.
<br>

### Définition et répartition des tâches

Maintenant que vous avez défini votre projet, définissez les tâches. Créez un [trello](https://trello.com/) en reproduisant le modèle que l'on vous a présenté.
Répartissez-vous les différentes tâches entre vous.

<br>

### Organisation du répo github

Maintenant que vous vous êtes répartis les tâches, créez votre repository sur [github](https://github.com/), puis ajoutez chaque membre du groupe comme collaborateur. 
Par la suite, organisez votre répo avec la recette Git Workflow.
Pour rappel, voici une image :
![git workflow](https://i.imgur.com/qQVJStx.png)

<br>

### A vous de jouer !

Après avoir réuni toutes vos fonctions en une branche, et après les avoir testé avec notre fonction **main**, appelez un mentor pour valider ou non.