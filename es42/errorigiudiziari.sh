#!/bin/bash

### Un file denunce.txt contiene, in ciascuna riga, la descrizione di una denuncia sottoposta
### al vaglio della polizia. Ciascuna riga contiene 4 o più parole cioè nome e cognome
### dell'accusato seguito da un identificatore univoco della denuncia (un numero), seguito
### da una descrizione del reato formata da una o più parole.
### Un secondo file processi.txt contiene delle righe con due parole ciascuna, un
### identificatore della denuncia e un identificatore del processo originato dalla denuncia.
### Un terzo file verdetti.txt contiene righe formate ciascuna da un identificatore del
### processo seguito da una o più parole che descrivono il verdetto.
### Scrivere uno script errorigiudiziari.sh che, per ciascun verdetto contenuto nel file
### verdetti.txt stampa una riga contenente: nome e cognome dell'accusato, descrizione del
### reato e descrizione del verdetto.
### I file contengono i seguenti dati (decidete voi i separatori: spazi bianchi o tab).

while read ID_PROCESSO VERDETTO ; do
	while read ID_DENUNCIA id_processo ; do
		if [[ "${ID_PROCESSO}" == "${id_processo}" ]] ; then
			while read NAME SURNAME id_denuncia DESCRIPTION ; do
				if [[ "${ID_DENUNCIA}" == "${id_denuncia}" ]] ; then
					echo ${NAME} ${SURNAME} ${DESCRIPTION} ${VERDETTO}
				fi
			done <denunce.txt
		fi
	done <processi.txt
done <verdetti.txt
