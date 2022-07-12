#!/bin/bash

[ -f ./Directory1/Subdirectory/TextFile1.txt ] && grep -q "J'apprends les bases de linux" ./Directory1/Subdirectory/TextFile1.txt && echo -e "./Directory1/Subdirectory/TextFile1.txt \033[;32mOK\033[0m !"
!([ -f ./Directory1/Subdirectory/TextFile1.txt ] && grep -q "J'apprends les bases de linux" ./Directory1/Subdirectory/TextFile1.txt) && echo -e "./Directory1/Subdirectory/TextFile1.txt \033[1;31mPAS OK\033[0m !"

[ -f ./Directory1/TextFile1.txt ] && grep -q "Je suis en filière informatique" ./Directory1/TextFile1.txt && echo -e "./Directory1/TextFile1.txt \033[;32mOK\033[0m !"
!([ -f ./Directory1/TextFile1.txt ] && grep -q "Je suis en filière informatique" ./Directory1/TextFile1.txt) && echo -e "./Directory1/TextFile1.txt \033[1;31mPAS OK\033[0m !"

[ -f ./Directory1/TextFile2.txt ] && grep -q "Je suis en première année" ./Directory1/TextFile2.txt && echo -e "./Directory1/TextFile2.txt \033[;32mOK\033[0m !"
!([ -f ./Directory1/TextFile2.txt ] && grep -q "Je suis en première année" ./Directory1/TextFile2.txt) && echo -e "./Directory1/TextFile2.txt \033[1;31mPAS OK\033[0m !"

[ -f ./TextFile1.txt ] && grep -q "Bonjour je suis étudiant" ./TextFile1.txt && echo -e "./TextFile1.txt \033[;32mOK\033[0m !"
!([ -f ./TextFile1.txt ] && grep -q "Bonjour je suis étudiant" ./TextFile1.txt) && echo -e "./TextFile1.txt \033[1;31mPAS OK\033[0m !"

[ -f ./Directory2/TextFile1.txt ] && grep -q "Les mentors sont trop cool" ./Directory2/TextFile1.txt && echo -e "./Directory2/TextFile1.txt \033[;32mOK\033[0m !"
!([ -f ./Directory2/TextFile1.txt ] && grep -q "Les mentors sont trop cool" ./Directory2/TextFile1.txt) && echo -e "./Directory2/TextFile1.txt \033[1;31mPAS OK\033[0m !"

PERMFILEONE=$(stat -c %A ./Directory3/TextFile1.txt)
if [ "$PERMFILEONE" = "--wxr-x-w-" ]; then
    echo -e "Permissions ./Directory3/TextFile1.txt \033[;32mOK\033[0m !"
else
    echo -e "Permissions ./Directory3/TextFile1.txt \033[1;31mPAS OK\033[0m !"
fi

PERMFILETWO=$(stat -c %A ./Directory3/TextFile2.txt)
if [ "$PERMFILETWO" = "-r-x-w--w-" ]; then
    echo -e "Permissions ./Directory3/TextFile2.txt \033[;32mOK\033[0m !"
else
    echo -e "Permissions ./Directory3/TextFile2.txt \033[1;31mPAS OK\033[0m !"
fi

DATEFILEONE=$(date -r ./Directory3/TextFile1.txt "+%m-%d-%Y")
if [ "$DATEFILEONE" = "10-11-2010" ]; then
    echo -e "Date ./Directory3/TextFile1.txt \033[;32mOK\033[0m !"
else
    echo -e "Date ./Directory3/TextFile1.txt \033[1;31mPAS OK\033[0m !"
fi

DATEFILETWO=$(date -r ./Directory3/TextFile2.txt "+%m-%d-%Y")
if [ "$DATEFILETWO" = "01-24-2021" ]; then
    echo -e "Date ./Directory3/TextFile2.txt \033[;32mOK\033[0m !"
else
    echo -e "Date ./Directory3/TextFile2.txt \033[1;31mPAS OK\033[0m !"
fi

LINKFILEONE=$(readlink ./Directory3/TextFile3.txt)
if [ "$LINKFILEONE" = "../Directory1/TextFile1.txt" ]; then
    echo -e "SYMBOLIC LINK ./Directory3/TextFile3.txt \033[;32mOK\033[0m !"
else
    echo -e "SYMBOLIC LINK ./Directory3/TextFile3.txt \033[1;31mPAS OK\033[0m !"
fi

LINKFILETWO=$(readlink ./Directory3/TextFile4.txt)
if [ "$LINKFILETWO" = "../Directory2/TextFile1.txt" ]; then
    echo -e "SYMBOLIC LINK ./Directory3/TextFile4.txt \033[;32mOK\033[0m !"
else
    echo -e "SYMBOLIC LINK ./Directory3/TextFile4.txt \033[1;31mPAS OK\033[0m !"
fi
