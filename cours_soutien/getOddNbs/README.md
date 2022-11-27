***Écrire un programme en GO qui demande à l'utilisateur de taper N entiers et les stocker dans un tableau,
puis affiche seulement les nombres impairs***

    - Vous aurez le droit d'utiliser la fonction Atoi donnée dans l'énoncé
    - Vous devrez utiliser les packages 'os' et 'bufio' pour récupérer l'input de l'user
    - Vous devez créer 4 fonctions:
        > 1 pour récupérer l'input de l'user et le retourner sous forme de string
        > 2 pour séparer la string reçue en paramètre en un []string qu'on retournera (à chaque espace on crée une nouvelle string)
        > 3 pour transformer le []string récupéré en paramètre et le retourner en []int (utiliser Atoi pour passer de string a int)
        > 4 pour filtrer le []int qu'elle récupère en paramètre et return uniquement un []int avec les nombres impairs

NB: On considèrera dans un premier temps pour la fonction 1 que l'utilisateur ne rentre que des nombres strictement positifs et entiers
    Pour ceux qui ont fini, faire des gestions d'erreurs si l'utilisateur sépare les entiers par des ',' ou des ';'.

***Se lancer***


1 - Setup les paramètres et valeurs de retour en lisant l'énoncé :

    func getNumbers() {
    }

    func separateString() {
    }

    func stringInt() {
    }

    func evenOrOdd() {
    }

2 - Lancez vous sur les fonctions !