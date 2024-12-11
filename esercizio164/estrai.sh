#!/bin/bash

# Realizzare uno script estrai.sh che stampa a video le righe lette dal file input1.txt ma
# senza i numeri in mezzo a ciascuna riga e senza la virgola che segue il numero.
# Infine, stampa a video la somma dei numeri che non ha visualizzato

OLDIFS=${IFS}
IFS=$",\n"
SOMMA=0
exec 3< input.txt
if (( $?==0 )) ; then
	while read -u 3 A B C ; do
		(( SOMMA=${SOMMA}+${B} ))
		echo "${A},${C}"
	done
	exec 3>&-
fi
echo ${SOMMA}
IFS=${OLDIFS}

