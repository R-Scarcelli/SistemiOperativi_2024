#!/bin/bash

### Realizzare uno script bash contaseparatamente.sh che effettua le seguenti operazioni:
### Lo script prende un numero variabile di argomenti, al massimo 9.
### Ciascun argomento è il nome di un file.
### Lo script scrive sullo standard output il numero totale di righe dei file passati come argomenti di
### indice pari.
### Lo script scrive sullo standard error il numero totale di righe dei file passati come argomenti di
### indice dispari.

PARI=0
DISPARI=0

for file in $@ ; do
	if (( $( cat ${file} | wc -l )%2 == 0 )) ; then
		PARI=$(( PARI + $( cat ${file} | wc -l) ))
	else
		DISPARI=$(( DISPARI + $( cat ${file} | wc -l) ))
	fi
done
echo ${PARI}
echo ${DISPARI} 1>&2
