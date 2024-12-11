#!/bin/bash

# Scrivere uno script bash cercarecente.sh che comincia cercando tutti i file con estensione .h in
# tutte le sottodirectory della directory /usr/include/linux/ escludendo i files che si trovano
# direttamente nella directory /usr/include/linux/
# Confrontare la data di ultima modifica dei file così trovati e stampare a video il nome del file
# modificato più recentemente.

#Cerco i file con le caratteristiche volute
FILES=`find /usr/include/linux/ -mindepth 2 -name "*.h" -print`
# Prendo il primo file trovato come più recente
for REC in ${FILES} ; do
	REC=${FILES}
	break
done

#Per tutti i file trovati controllo se il corrente è più recente di REC se è così  diventa REC
for file in ${FILES} ; do
	if [[ ${REC} -ot ${file} ]] ; then
		REC=${file}
	fi
done
echo ${REC}
