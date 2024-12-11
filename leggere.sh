#!/bin/bash

# Scrivere uno script bash leggere.sh che legge le righe del file /usr/include/stdio.h
# e stampa a video la sola terza parola di ciascuna riga, o niente se la terza parola
# non esiste

FILE="/usr/include/stdio.h"
exec {FD}< ${FILE}
if (( $?==0 )) ; then
	while read -u ${FD} A B C D ; do
		echo ${C}
	done
	exec {FD}>&-
fi
