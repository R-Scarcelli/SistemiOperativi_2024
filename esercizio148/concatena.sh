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
for FILE in /usr/include/std* ; do
        exec {FD}< ${FILE}
        while read -u ${FD} LINE ; do
                L=$(( ${L}+1 ))
                if [[ L -gt 1 && L -lt 5 ]] ; then
                        echo "${LINE}">> output.txt
                fi
        done
        exec {FD}>&-
done

echo ${PARI}
echo ${DISPARI} 1<&2




