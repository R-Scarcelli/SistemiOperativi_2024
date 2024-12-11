#!/bin/bash

# Scaricare il file di testo
# http://www.cs.unibo.it/~ghini/didattica/sistemioperativi/ESERCIZI/miofileNoNL.txt
# che ha anche delle righe vuote e che termina con una riga che non ha il
# carattere di andata a capo. Scrivere poi uno script leggitutto.sh che legga riga
# per riga quel file e stampi a video ciascuna riga letta, compresa l'ultima

FILE="/home/rebecca_scarcelli/EserciziBash/Lab02/Es_25/miofileNoNL.txt"
exec {FD}< ${FILE}
if (( $?==0 )) ; then
# soluzione prof: while read -u ${FD} LINE ; [[ $? == 0 || ${LINE} != "" ]] ; do
	while read -u ${FD} LINE ; do
		echo ${LINE}
	done
	exec {FD}>&-
fi
