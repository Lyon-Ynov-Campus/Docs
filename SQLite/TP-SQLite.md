# Exercices SQLITE

<div style="color: #a94442;
    background-color: #f2dede;
    border-color: #ebccd1;
    padding: 15px;">
Ressources

[Go web Examples](https://gowebexamples.com/mysql-database/)

[Official SQLite3 Github](https://github.com/mattn/go-sqlite3/blob/master/_example/simple/simple.go)
</div>


Afin de réaliser ces exercices et votre projet, il vous faudra utiliser **les modules golang**. 
De plus si jamais vous souhaitez effectuer le sujet *"herokuize"*, les utiliser sera indispensable pour que cela fonctionne. 

Pour ce faire, à la racine de votre projet effectuez:
``` bash
go mod init project_name
```

Ensuite il ne vous reste plus qu'à **installer SQLite3**
``` bash
go get github.com/mattn/go-sqlite3
```

Pour utiliser SQLite dans votre projet il vous faut maintent l'importer comme suit:
``` go
import (
	"database/sql"
	_ "github.com/mattn/go-sqlite3"
)
```

Par la suite tout les packages que vous aurez créés vous même et qui nécessitent d'être importés seront sous la forme:
``` go
import "project_name/mysubpackage"
```

---

### Exercice 0 - Initialiser la BDD
Pour commencer nous allons créer la Base de Donnée.

Créer la base de donnée consiste à appeler quelques fonctions du package *sqlite3* pour ouvrir un nouveau fichier qui contiendra vos données.

* Créer une fonction `initDatabase` qui ouvre la base de donnée. Le nom de la BDD est libre, mais doit terminer par ***.db***
* Cette fonction *return* la BDD, son type est **\*sql.DB**

<div style="color: #31708f;
    background-color: #d9edf7;
    border-color: #bce8f1;
    padding: 15px;">
En exécutant cette fonction, si celle-ci fonctionne, vous devriez maintenant avoir un nouveau fichier créé à la racine de votre projet du nom que vous avez choisi.

**Ex:** forum.db
</div>

### Exercice 1 - Créer une Table
#### 1.1 ---
Dans cet exercice il faudra créer une table`users` dans votre base de donnée, **SI ELLE N'EXISTE PAS DEJA**.

* Rajouter à la fonction `initDatabase` les commandes nécessaire pour créer cette table.

La table doit se présenter comme suit :

| id | name | email | password |
| -------- | -------- | -------- | -- |
| INT     | TEXT     | TEXT     | TEXT |

- `id` doit être la clé primaire et **AUTOINCREMENT**
- l'`email` doit être **UNIQUE** dans la base de donnée. Deux users ne peuvent pas avoir le même email
- Tout les champs doivent être marque comme **NOT NULL**
- Lorsque vous relancer le programme la table doit rester intact et ne pas écraser celle qui existait déjà

<!-- <div style="color: #31708f;
    background-color: #d9edf7;
    border-color: #bce8f1;
    padding: 15px;">
CREATE TABLE

**et**

db.Exec
</div> -->

#### 1.2 ---

Maintenant la table créée, insérez trois nouveaux utilisateurs dans la table `users`.

Créez une fonction `insertIntoUsers` qui permet d'insérer un seul utilisateur dans la BDD.

``` go
func insertIntoUsers(db *sql.DB, name string, email string, password string) (int64, error);
```
Cette fonction doit aussi *return* le dernier Id inséré dans la BDD en utilisant la fonction. 
`result` est le retour de l'execution de la requête **INSERT INTO**
``` go
result.LastInsertId()
```

| Name | Email | Password |
| -------- | -------- | -------- |
| Mathieu     | m.m@gmail.com     | abcde     |
| Thomas     | t.t@gmail.com     | fghij     |
| Lucas     | l.l@gmail.com     | klmno    |

> Pour rappel, l'id doit s'incrémenter automatiquement.


<!-- <div style="color: #31708f;
    background-color: #d9edf7;
    border-color: #bce8f1;
    padding: 15px;">
INSERT INTO

**et**

db.Exec
</div> -->

<br>

### Exercice 2 - Selectionner

Maintenant que nous avons créé la table et que nous y avons insérer des lignes, il faut désormais récupérer les informations.

D'abord, **collez cette structure** dans votre code, nous en aurons besoin par la suite.

``` go
type User struct {
    Id       int
    Name     string
    Email    string
    Password string
}
```

#### 2.1 ---

Créez une fonction `selectAllFromTable` qui prend en paramètre la BDD et le nom de la table
``` go
func selectAllFromTable(db *sql.DB, table string) *sql.Rows;
```

* Cette fonction doit *return* toutes les lignes contenues dans la table spécifié

* Dans un second temps, affichez toutes ces lignes *(cf ressources + utilisez la structure)*


<!-- <div style="color: #31708f;
    background-color: #d9edf7;
    border-color: #bce8f1;
    padding: 15px;">
 SELECT ... FROM ...
 
 **et**
 
 db.Query
</div> -->

#### 2.2 ---

Créez une fonction `selectUserById` qui prend en paramètre la BDD et un id
``` go
func selectUserById(db *sql.DB, id int) User;
```

* Cette fonction doit *return* une structure `User` qui contient les information de l'utilisateur à l'id donné

* Dans un second temps, affichez cet utilisateur


<!-- <div style="color: #31708f;
    background-color: #d9edf7;
    border-color: #bce8f1;
    padding: 15px;">
 SELECT ... FROM ... WHERE ...
 
 **et**
 
 db.QueryRow
</div> -->

#### 2.3 ---

Créez une fonction `selectUserNameWithPattern` qui prend en paramètre la BDD et un pattern à trouver
``` go
func selectUserNameWithPattern(db *sql.DB, pattern string) *sql.Rows;
```

* Cette fonction doit *return* les lignes contenu dans la table spécifié où le nom correspond au pattern en paramètre

* Dans un second temps, affichez toutes ces lignes

> **Exemple:**
``` go 
selectUserNameWithPattern(db, "as");

{2, Thomas, t.t@gmail.com, fghij}
{3, Lucas, l.l@gmail.com, klmno}
```

<!-- <div style="color: #31708f;
    background-color: #d9edf7;
    border-color: #bce8f1;
    padding: 15px;">
 SELECT ... FROM ... WHERE ... LIKE %...%
 
 **et**
 
 db.Query
</div> -->

<br>

### Exercice 3 - Foreign Keys

<div style="color: #a94442;
    background-color: #f2dede;
    border-color: #ebccd1;
    padding: 15px;">

Attention, pour que les FOREIGN KEYS fonctionnent, il faut éxécuter la requête sql suivante à l'initialisation de la BDD :

```
PRAGMA foreign_keys = ON;
```

**Ressource:**
[Foreign key SQLite](https://www.sqlitetutorial.net/sqlite-foreign-key/)

</div>

#### 3.1 ---

Créez une nouvelle table `posts` dans votre base de donnée, **SI ELLE N'EXISTE PAS DEJA**.

* Rajouter à la fonction `initDatabase` les commandes nécessaire pour créer cette table.

La table doit se présenter comme suit :

| id | content | user_id |
| -------- | -------- | -------- |
| INT     | TEXT     | INT      |

- `id` doit être la clé primaire et **AUTOINCREMENT**
- `user_id` doit être une **FOREIGN KEY** et faire **REFERENCES** à l'id user dans la table `users`
- Tout les champs doivent être marque comme **NOT NULL**
- Lorsque vous relancer le programme la table doit rester intact et ne pas écraser celle qui existait déjà

<!-- <div style="color: #31708f;
    background-color: #d9edf7;
    border-color: #bce8f1;
    padding: 15px;">
CREATE TABLE <br>
FOREIGN KEY ... REFERENCES ...

**et**

db.Exec
</div> -->

#### 3.2 ---

Maintenant la table créée, insérez cinq nouveaux posts dans la table `posts`.


| Content | user_id |                   |
| ------- | ------- | ----------------- |
| Post1   | 1       | *(lié à Mathieu)* |
| Post2   | 2       | *(lié à Thomas)*  |
| Post3   | 2       | *(lié à Thomas)*  |
| Post4   | 1       | *(lié à Mathieu)* |
| Post5   | 3       | *(lié à Lucas)*   |

> Pour rappel, l'id du post doit s'incrémenter automatiquement.

<!-- <div style="color: #31708f;
    background-color: #d9edf7;
    border-color: #bce8f1;
    padding: 15px;">
INSERT INTO

**et**

db.Exec
</div> -->

#### 3.3 ---

Actuellement, chaque post est relié à un id user précis et qui existe. 
Que ce passe-t-il si on essaye d'insérer un nouveau post pour un utilisateur inexistant ?

* Essayez d'insérer un nouveau post avec l'id 4 (qui n'est pas censé exister si vous avez suivi le fil de ces exercices). Observez ce qu'il se passe.

<br>

### Exercice 4 - Autres
[Delete](https://www.sqlitetutorial.net/sqlite-delete/): Supprimer un ou plusieurs élément d'une table

[Update](https://www.sqlitetutorial.net/sqlite-update/): Mettre à jour un ou plusieurs élément d'une table

[OrderBy](https://www.sqlitetutorial.net/sqlite-order-by/): Permet de trier de manière croissant ou décroissant nos résultat SQL en fonction d'un des champs de la table

[Limit](https://www.sqlitetutorial.net/sqlite-limit/): Permet de limiter notre commande à n ligne ou dans une range de *n* à *m* lignes.
(**ex:** pagination)

[Count](https://www.sqlitetutorial.net/sqlite-count-function/): Permet de récupérer le nombre de ligne que notre command à retourner.
(**ex:** likes/dislike, nombres de commentaires, ...)

