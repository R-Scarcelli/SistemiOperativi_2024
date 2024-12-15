#!/bin/bash

# Realizzare uno script nAnB.sh che prende come argomento una stringa di testo e verifica che la stringa sia
# formata esattamente da N caratteri A seguiti da N caratteri B, con un N qualunque maggiore di zero.
# Se la stringa corrisponde ai requisiti lo script scrive sullo standard output la parola "vero" seguita dal Numero
# N individuato.
# Altrimenti scrive "falso".
# Ad esempio, passando come argomento:
#			AAABBB vedo in output "vero N=3"
#			ADABBB vedo in output "falso" perché c'è carattere diverso da A e da B
#			AAB vedo in output "falso"
# 			AabB vedo in output "falso"

if (( $# != 1 )) ; then
	echo "Manca l'argomento di comando"
	exit 1;
fi

STRING=$1
NA=0
NB=0
LEN=0

# Contare il numero di A
# Contare il numero di B
# Vedere se sono uguali
# Se c'è un carattere diverso è automaticamente falso

while (( ${LEN}<${#STRING} )) ; do

	CHAR=${STRING:${LEN}:1} #Prendo in considerazione il carattere in posizione LEN nella strinnga
	(( LEN=${LEN}+1 ))

	if [[ ${CHAR} == "A" ]] ; then
		NA=$(( ${NA}+1 ))
	elif [[ ${CHAR} == "B" ]] ; then
		 NB=$(( ${NB}+1 ))
	fi
 	if [[ ${CHAR} != "A" || ${CHAR} != "B" ]] ; then
                echo "FALSO"
                exit 1
        fi
done

if (( ${NA}==${NB} )); then
	echo "VERO N=${NA}"

else
	echo "FALSO"
fi
