# Les fonctions 
Une fonction est un ensemble de taches définis par vous-même qui vas permettre d’exécuter une fonctionnalité précise.
Les fonctions permettent :
* Une meilleurs lisibilité du code
* D’éxécuter une tâche sans avoir besoin de réécrire tout le code
* De transférer une partie de votre code facilement dans un autre programme. 

## Déclarer une fonction 
Voici ce à quoi une déclaration de fonction ressemble : 
``` Go
    func nomDeLaFonction( paramètres ) Type de retour
    {
	    /* Votre code */
    }
```

* le nom de la fonction c’est le nom qui décrit votre fonction. Comme pour les variables, il est conseillé d’utiliser les bonnes conventions de nommage type:
    - camel Case, où chaque mot commence par une majuscule à l’exception du premier.
    - Pascal Case où chaque mot commence par une majuscule. **Cette notation est indispensable pour exporter les fonctions entres fichiers**
    
Le nom de la fonction vous permettras d’appeler cette fonction à un moment dans votre code, lorsque vous en aurez besoin.

* Les paramètres sont des variables que nous passons à la fonction afin que celle-ci l’exploite. 
Les paramètres sont facultatifs à la fonction, vous pouvez déclarer une fonction sans paramètre.
 
* Le type de retour c’est le type de la fonction, c'est même le type de la valeur retourné par la fonction. Il s’agit bien souvent d’une valeur qui correspond au résultat de la fonction qui est retourné, pour y accéder en dehors de la fonction.

* L'ensemble de ce qui constitue une fonction (nom, paramètre, type de retour) est appellé "prototype" ou "signature" d'une fonction.

Voici comment on déclare une fonction sans paramètres et sans type de retour : 
``` Go
    func print()
    {
	    fmt.PrintLn("Bienvenue dans la fonction print !")
    }

    func main()
    {
	    print() //Appel de la fonction print
    }
```

A l’exécution, le programme affichera, `Bienvenue dans la fonction print !`

## Fonction main 

La fonction `main()` est la fonction principale de votre programme, sans elle, le compilateur vous affichera une erreur pour vous indiquer qu’il manque la fonction main(). C'est la fonction par laquelle votre programme commencera.

Voici à quoi ressemble, l'utilisation d'une fonction qui possède des paramètres :
``` Go
    func sub(x int, y int){
        fmt.Println(x - y)
    }

    func main(){
        sub(20, 15) // 5
    }
```

Ici, nous avons deux paramètres qui sont des variable de type int. Les valeurs de ces paramètre sont initialisé dans l'appel de la fonction `sub(int, int)` présente dans la fonction `main()`. La fonction sub affiche ensuite la soustraction des deux valeurs.

Notez que vous pouvez déclarer une fonction avec un nombre non défini de paramètre du même type.

**Exemple:**
``` Go
    func add(...nb){
        result := 0
        for _, value := range nb{
            result += nb
        }
        echo result //Affiche 15
    }

    func main(){
        add(1, 2, 3, 4, 5)
    }
```

Voici à quoi ressemble, l'utilisation d'une fonction avec une valeur de retour :

``` Go
    func area(lenght int, width int) int {
        return lenght * width
    }

    func main(){
        fmt.Println(area(6, 3)) // Affiche 18
    }
```

Ici, comme pour la fonction précédente, nous avons 2 paramètres qui vont permettre à la fonction de calculer l'air d'un rectangle. 

A la suite de ces paramètres, nous avons cette fois-ci une valeur de retour de type `int`. Ce qui signifie que notre fonction elle même est de type int et que la valeur qu'elle retourne ne peut être qu'un entier.

Vous remarquerez qu'ici, l'affichage du resultat ne se fait pas dans la fonction area(int, int) mais bien dans le main(). Comme notre fonction retourne une valeur, alors nous pouvons directement faire un "echo" de notre fonction.

## Passage de paramètres

Il existe de multiples moyens d'effectuer un passage de paramètres. 
<!-- Les différentes façons de faire permettent d'effectuer cette tâche dans des cas précis. -->
Voici la manière la plus simple d'effectuer un passage de paramètre.

 * Passage de paramètre par valeur 

``` Go
        func multByTwo(j int, nb int) {
            for j >= 0 //j possède la valuer de i
                nb *= 2;
                fmt.Println(nb) // Affiche "20 40 80 30 60 120 40 80 160 320"
                j--
            }
        }

        func main(){
            value := 10
            for i := 0; i <= 3; i++{
                multByTwo(i, value)
                value += value
            }
        }
```

Dans ce programme, nous avons une fonction `multByTwo` avec 2 paramètres. 
- `j` qui sert d'index que l'on décrémente et `nb` qui est la valeur que l'on multiplie par 2 et que l'on affiche ensuite. 

Lors de l'appel de la fonction `multByTwo(int, int)`, nous lui passons 2 arguments:
- `i`, l'index que l'on incrémente de 0 à 3 et `value`. 

A chaque incrémentation nous passon en paramètre la valeur de l'incrémentation et la fonction `MultByTwo` elle, la décrémente jusqu'à ce qu'elle soit inférieur ou égal à 0.