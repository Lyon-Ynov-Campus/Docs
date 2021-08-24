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
 
* Le type de retour c’est le type de la fonction, c'est même le type de la valeur retourné par la fonction. Il s’agit bien souvent d’une valeur qui correspond au résultat de la fonction qui est retourné, pour y accéder en dehors de la fonction.

* L'ensemble de ce qui constitue une fonction (nom, paramètre, type de retour) est appellé "prototype d'une fonction".

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

Voici à quoi ressemble, l'utilisation d'une fonction qui possède des paramètres :

    func sub(x int, y int){
        echo x - y
    }

    func main(){
        sub(20, 15) // 5
    }

Ici, nous avons deux paramètres qui sont des variable de type int. Les valeurs de ces paramètre sont initialisé dans l'appel de la fonction sub(int, int) présente dans la fonction main(). La fonction sub affiche ensuite la soustraction des deux valeurs.

Notez que vous pouvez déclarer une fonction avec un nombre non défini de paramètre du même type.

Exemple :

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


Voici à quoi ressemble, l'utilisation d'une fonction avec une valeur de retour :

    func area(lenght int, width int) : int {
        return lenght * width
    }

    func main(){
        echo area(6, 3) // Affiche 18
    }

Ici, comme pour la fonction précédente, nous avons 2 paramètres qui vont permettre à la fonction de calculer l'air d'un rectangle. Aprés ces paramètre nous avons cette fois-ci une valeur de retour de type int. Ce qui signifie que notre fonction elle même est de type int et que la valeur qu'elle retourne ne peut être qu'un entier.
Vous remarquerez qu'ici, l'affichage du resultat ne se fait pas dans la fonction area(int, int) mais bien dans le main(). Comme notre fonction retourne une valeur, alors nous pouvons directement faire un "echo" de notre fonction.

## Passage de paramètre

Il existe de multiple moyens d'effectuer un passage de paramète. Les différentes façon de faire permettent d'effectuer cette tache dans des cas précis. Voici la manière la plus simple d'effectuer un passage de paramètre.

 * Passage de paramètre par valeur 

        func multByTwo(j int, nb int) {
            while(j >= 0) //j possède la valuer de i
                echo "nb *= 2\n" // Affiche "20 40 80 30 60 120 40 80 160 320"
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

Dans ce programme, nous avons une fonction multByTwo avec 2 paramètre. j qui sert d'index que l'on décrémente et nb qui est la valeur que l'on multiplie par 2 et que l'on affiche ensuite. lors de l'appel de la fonction multByTwo(int, int), nous lui passons 2 arguments => i, l'index que l'on incrémente de 0 à 3 et value. à chaque incrémentation nous passon en paramètre la valeur de l'incrémentation et la fonction MultByTwo elle, la décrémente jusqu'à ce qu'elle soit inférieur ou égal à 0.