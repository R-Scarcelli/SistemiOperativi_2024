#!/bin/bash

# Scrivere uno script separa.sh che:
# -->separa i diversi percorsi contenuti nella variabile di ambiente PATH (che vi
#    ricordo sono separati da : ).
# -->li visualizza uno per uno sullo standard output, ciascun percorso trovato in una
#    riga di output che dopo il percorso contiene la lunghezza del percorso

for path in ${PATH} ; do
	echo ${path} | sed 's/:/\n/g'
done

