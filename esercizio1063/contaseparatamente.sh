#!/bin/bash

### Realizzare uno script bash contaseparatamente.sh che effettua le seguenti operazioni:
### Lo script prende un numero variabile di argomenti, al massimo 9.
### Ciascun argomento è il nome di un file.
### Lo script scrive sullo standard output il numero totale di righe dei file passati come argomenti di
### indice pari.
### Lo script scrive sullo standard error il numero totale di righe dei file passati come argomenti di
### indice dispari.

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
