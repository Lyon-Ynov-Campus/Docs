#!/bin/bash

[ -f ./Directory1/Subdirectory/TextFile1.txt ] && grep -q "J'apprends les bases de linux" ./Directory1/Subdirectory/TextFile1.txt && echo "./Directory1/Subdirectory/TextFile1.txt OK !"
!([ -f ./Directory1/Subdirectory/TextFile1.txt ] && grep -q "J'apprends les bases de linux" ./Directory1/Subdirectory/TextFile1.txt) && echo "./Directory1/Subdirectory/TextFile1.txt PAS OK !"

[ -f ./Directory1/TextFile1.txt ] && grep -q "Je suis en filière informatique" ./Directory1/TextFile1.txt && echo "./Directory1/TextFile1.txt OK !"
!([ -f ./Directory1/TextFile1.txt ] && grep -q "Je suis en filière informatique" ./Directory1/TextFile1.txt) && echo "./Directory1/TextFile1.txt PAS OK !"

[ -f ./Directory1/TextFile2.txt ] && grep -q "Je suis en première année" ./Directory1/TextFile2.txt && echo "./Directory1/TextFile2.txt OK !"
!([ -f ./Directory1/TextFile2.txt ] && grep -q "Je suis en première année" ./Directory1/TextFile2.txt) && echo "./Directory1/TextFile2.txt PAS OK !"

[ -f ./TextFile1.txt ] && grep -q "Bonjour je suis étudiant" ./TextFile1.txt && echo "./TextFile1.txt OK !"
!([ -f ./TextFile1.txt ] && grep -q "Bonjour je suis étudiant" ./TextFile1.txt) && echo "./TextFile1.txt PAS OK !"

[ -f ./Directory2/TextFile1.txt ] && grep -q "Les mentors sont trop cool" ./Directory2/TextFile1.txt && echo "./Directory2/TextFile1.txt OK !"
!([ -f ./Directory2/TextFile1.txt ] && grep -q "Les mentors sont trop cool" ./Directory2/TextFile1.txt) && echo "./Directory2/TextFile1.txt PAS OK !"

PERMFILEONE=$(stat -c %A ./Directory3/TextFile1.txt)
if [ "$PERMFILEONE" = "--wxr-x-w-" ]; then
    echo "Permissions ./Directory3/TextFile1.txt OK !"
else
    echo "Permissions ./Directory3/TextFile1.txt PAS OK !"
fi

PERMFILETWO=$(stat -c %A ./Directory3/TextFile2.txt)
if [ "$PERMFILETWO" = "-r-x-w--w-" ]; then
    echo "Permissions ./Directory3/TextFile2.txt OK !"
else
    echo "Permissions ./Directory3/TextFile2.txt PAS OK !"
fi

DATEFILEONE=$(date -r ./Directory3/TextFile1.txt "+%m-%d-%Y")
if [ "$DATEFILEONE" = "10-11-2010" ]; then
    echo "Date ./Directory3/TextFile1.txt OK !"
else
    echo "Date ./Directory3/TextFile1.txt PAS OK !"
fi

DATEFILETWO=$(date -r ./Directory3/TextFile2.txt "+%m-%d-%Y")
if [ "$DATEFILETWO" = "01-24-2021" ]; then
    echo "Date ./Directory3/TextFile2.txt OK !"
else
    echo "Date ./Directory3/TextFile2.txt PAS OK !"
fi

LINKFILEONE=$(readlink ./Directory3/TextFile3.txt)
if [ "$LINKFILEONE" = "../Directory1/TextFile1.txt" ]; then
    echo "SYMBOLIC LINK ./Directory3/TextFile3.txt OK !"
else
    echo "SYMBOLIC LINK ./Directory3/TextFile3.txt PAS OK !"
fi

LINKFILETWO=$(readlink ./Directory3/TextFile4.txt)
if [ "$LINKFILETWO" = "../Directory2/TextFile1.txt" ]; then
    echo "SYMBOLIC LINK ./Directory3/TextFile4.txt OK !"
else
    echo "SYMBOLIC LINK ./Directory3/TextFile4.txt PAS OK !"
fi
