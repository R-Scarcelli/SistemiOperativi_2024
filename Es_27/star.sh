#!/bin/bash

# Scrivere poi lo script star.sh che deve leggere una per una le righe provenienti
# dallo standard input e stampare a video, per ciascuna riga, la quarta e la terza
# parola della riga, in quest'ordine, separate da spazi.
# Lanciare lo script star.sh passandogli nello standard input il contenuto del file
# asterischi.txt.

FILE="/home/rebecca_scarcelli/EserciziBash/Lab02/Es_27/asterischi.txt"
exec {FD}< ${FILE}
if (( $?==0 )) ; then
	while read -u ${FD} A B C D ; do
		echo ${D}" "${C}
	done
	exec {FD}>&-
fi
