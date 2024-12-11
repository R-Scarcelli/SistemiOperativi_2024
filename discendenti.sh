#!/bin/bash

# Scrivere uno script bash discendenti.sh, che prende un argomento intero a riga di
# comando. L'intero indica il numero di script figli da lanciare.
# Ad esempio, all'inizio lo script potrebbe essere lanciato passandogli come
# argomento "3".
# Lo script controlla l'argomento che gli è stato passato.
#
#		• Se il valore dell'argomento è maggiore di 0, lo script lancia in background lo
#		  script stesso tante volte quanto il valore dell'argomento intero e passa come
#		  argomento a ciascuno script proprio quel valore intero diminuito di 1. Poi lo
#		  script attende la fine di tutti i suoi processi figli. Poi stampa a video l'argomento
#		  che gli è stato passato. Infine termina restituendo 0.
#
# 		• Se invece il valore dell'argomento è uguale a zero, allora lo script stampa a
# 		  video l'argomento che gli è stato passato e poi termina restituendo 0.

if [[ $1 -ge 0 ]] ; then
	echo $1
	./discendenti.sh $(( $1-1 )) &
	wait
	exit 0
fi
