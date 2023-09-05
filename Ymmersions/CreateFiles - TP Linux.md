# Exercise Linux - CreateFiles

### Objective

You learned several basic commands in Linux, we will test your skills with this exercise.
The goal of this exercise is to reproduce a file tree with particular parameters. You will be able to test your tree structure with a script that is provided.
<br>

### Reproduce the tree structure

Reproduce the tree structure below :

![Arborescence](https://i.imgur.com/zyB3bFa.png)

<br>

### Write in text files

> - CreateFiles/TextFile1.txt --> **Bonjour je suis étudiant**
> - CreateFiles/Directory1/TextFile1.txt --> **Je suis en filière informatique**
> - CreateFiles/Directory1/TextFile2.txt --> **Je suis en première année**
> - CreateFiles/Directory1/Subdirectory/TextFile1.txt --> **J'apprends les bases de linux**
> - CreateFiles/Directory2/TextFile1.txt --> **Les mentors sont trop cool**


<br>

### Modification of rights, file dates and symbolic links

From the **CreateFiles/Directory3/ directory**, create the files **TextFile1.txt** and **TextFile2.txt** with the same permissions, the same dates as presented in the image below.
Create the files **TextFile3.txt** and **TextFile4.txt** with the same symbolic links as presented in the image below (ls -l to list the files with this display) :

![Droits fichiers](https://i.imgur.com/RV8NbB3.png)

<br>

#### Run the script

To run the script, you must give it the execute and write rights (chmod 500 ./CreateFiles/CheckFiles.sh) and then you can run it with **./CheckFiles.sh**.
