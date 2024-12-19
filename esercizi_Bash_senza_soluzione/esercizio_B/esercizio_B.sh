#!/bin/bash

### Scrivi uno script che copia tutti i file con estensione .txt da una directory di origine a una directory di
### destinazione, entrambe specificate mediante un argomento a riga di comando. Lo script deve
### ignorare i file vuoti.

if (( $# != 2 )) ; then
	echo "Invalido numero di argomenti"
	exit 1
fi

source="$1"
destination="$2"

if [[ ! -d ${source} || ! -d ${destination} ]] ; then
	echo "Le directory non sono valide"
fi

for FILE in "${source}*.txt"; do
	if [ -s "$FILE" ] ; then
		cp ${FILE} "${destination}"
	fi
done

