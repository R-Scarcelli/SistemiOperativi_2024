#!/bin/bash

# Scrivere uno script separanomi.sh che separa i nomi di ciascuna directory
# contenuta nella variabile di ambiente PATH, e li visualizza uno per uno, uno per
# ciascuna riga di output, sullo standard output. Ad esempio, se
# PATH="/bin:/usr/bin:/usr/sbin" , lo script dovrà mettere in output 4 righe contenenti
# rispettivamente bin usr bin usr sbin

#!/bin/bash
RESIDUO=${PATH}
# Continuo fino a che la stringa non è vuota
while [[ -n ${RESIDUO} ]] ; do
#COnsidero il primo carattere
	PRIMOCHAR=${RESIDUO:0:1}
# Se è / o * lo taglio
	if [[ ${PRIMOCHAR} == "/" || ${PRIMOCHAR} == ":" ]] ; then
 		RESIDUO=${RESIDUO:1}
	else
# Se non è così considero la stringa più corta fino al prossimo / o * e la stampo
 		PEZZO1=${RESIDUO%%:*}
 		PEZZO2=${RESIDUO%%/*}
 		if (( ${#PEZZO1} < ${#PEZZO2} )) ; then
 			PEZZO=${PEZZO1}
 		else
 			PEZZO=${PEZZO2}
	 	fi
 		echo ${PEZZO}
# Aggiorno la posizione alla lunghezza del pezzo stampato più 1
 		OFFSET=$(( ${#PEZZO}+1 ))
 		RESIDUO=${RESIDUO:${OFFSET}}
	fi
done
