# Les fonctions 
Une fonction est un ensemble de taches définis par vous-même qui vas permettre d’exécuter une fonctionnalité précise. Les fonctions permettent :
* Une meilleurs lisibilité du code
* D’exécuter une tâche sans avoir besoin de réécrire tout le code
* De transférer une partie de votre code facilement dans un autre programme. 

## Déclarer une fonction 
Voici ce à quoi une déclaration de fonction ressemble : 

    func nomDeLaFonction( paramètres ) Type de retour
    {
	    /* Votre code */
    }

* le nom de la fonction c’est le nom qui décrit votre fonction. Comme pour les variables, il est conseillé d’utiliser les bonnes conventions de nommage type Camel Case, c’est à dire que chaque mot commence par une majuscule à l’exception du premier. Le nom de la fonction vous permettras d’appeler cette fonction à un moment dans votre code, lorsque vous en aurez besoin.

* Les paramètres sont des variables que nous passons à la fonction afin que celle-ci l’exploite. 
Les paramètres sont facultatifs à la fonction, vous pouvez déclarer une fonction sans paramètre.
 
* Le type de retour c’est le type de la fonction qui est retourné. Il s’agit bien souvent d’une valeur qui correspond au résultat de la fonction qui est retourné pour y accéder, en dehors de la fonction.

Voici comment on déclare une variable sans paramètres et sans type de retour : 

    func print()
    {
	    fmt.println("Bienvenue dans la fonction print !")
    }

    Func main()
    {
	    print() //Appel de la fonction print
    }


A l’exécution, le programme affichera, « Bienvenue dans la fonction print ! »

La fonction main() est la fonction principale de votre programme, sans elle, le compilateur vous affichera une erreur pour vous indiquer qu’il manque la fonction main().
