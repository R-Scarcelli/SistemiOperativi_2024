#!/bin/bash

# I due file RisultatiProvaPratica1.txt e RisultatiProvaPratica2.txt contengono in
# ciascuna riga di testo il Nome, il Cognome, la Matricola e il Voto ottenuti dallo
# studente nellla prova pratica N° 1 e N° 2 rispettivamente. Ciascun Nome e ciascun
# Cognome è composto da una sola parola. Il numero di matricola è univoco. Il
# Cognome e il nome, invece, potrebbero essere ripetuti. Il voto può essere non
# sufficiente ( voto < 18).
#
# Scrivere uno script bash insuff2.sh che metta in output l'elenco dei soli studenti che
# rispettano TUTTE le seguenti caratteristiche:
#	 --- Hanno sostenuto la seconda prova prativa, ottenendo un voto NON sufficiente,
#	 --- Non hanno sostenuto la prima prova pratica.
# L'output deve essere formattato su più righe di testo. Ciascuna riga contiene le
# informazioni su uno studente, in particolare la Matricola, il Nome, il Cognome ed il
# voto ottenuto nella seconda prova pratica, in quest'ordine. Le righe dell'output
# devono essere ordinate secondo il Cognome, in senso crescente.

# sort -k n ordina in base al n-esimo argomento
# wc -l stampa il numero di newline

while read NAME SUNAME MATRICOLA GRADE ; do
	if [[ ${GRADE} -lt 18 ]] ; then
		#Conto il numero di righe in cui è presente matricola nel file1
		NoFirst=`grep ${NAME} RisultatiProvaPratica1.txt | wc -l`
		if [[ "${NoFirst}" == "0" ]] ; then
			echo ${MATRICOLA} ${NAME} ${SURNAME} ${GRADE} | sort -k 3
		fi
	fi
done< RisultatiProvaPratica2.txt
