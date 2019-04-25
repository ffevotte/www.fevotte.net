#! /bin/bash

rm -rf biblio-* bibtype-*
grep @ ../publications/biblio.bib |
    perl -pne 's/@//;' -e 's/{/ /;' -e 's/,//;' |
    tac |
    while read LINE; do
        IFS=' ' read TYPE REF <<<"$LINE"
        TYPE=$(echo "$TYPE" | tr 'A-Z' 'a-z')
        echo '\nocite{'$REF'}' >> bibtype-${TYPE}.tex

        (echo '\def\bibname{'$TYPE'}'
         echo '\input{biblio.tex}') >biblio-${TYPE}.tex
    done

for FILE in biblio-*.tex; do
    latexmk -pdf $FILE
done
