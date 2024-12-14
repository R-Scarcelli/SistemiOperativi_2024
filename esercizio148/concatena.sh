#!/bin/bash

# Implementare uno script bash chiamandolo concatena.sh
# Lo script concatena.sh scrive il proprio output nel file output.txt
# Se il file output.txt esiste già lo script lo svuota eliminando il contenuto.
# Lo script concatena.sh cerca tutti i files che stanno nella directory /usr/include/ e il cui nome inizia con la
# stringa std, ma non cerca nelle sottodirectory.
# Per ciascuno dei file trovati, lo script concatena.sh aggiunge al file output.txt la seconda, terza e quarta riga di
# quel file trovato.

echo ""> output.txt #Per svuotare il file nel caso esistesse già
L=0
if (( $# > 9 || $# == 0 )) ; then
        echo "Numero sbagliato di argomenti"
        exit 1
fi

PARI=0
DISPARI=0

for (( NUM=0; ${NUM} <= $#; NUM=${NUM}+1 )) ; do
        if (( ${NUM}%2 == 0 )) ; then
                PARI=$(( ${PARI}+$( cat ${!NUM} | wc -l ) ))
        else
                DISPARI=$(( ${DISPARI}+$( cat ${!NUM} | wc -l ) ))
        fi
done

echo ${PARI}
echo ${DISPARI} 1<&2




