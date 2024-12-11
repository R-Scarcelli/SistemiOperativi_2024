#!/bin/bash

### Ciascuna riga del file cadutevic.txt  contiene 4 campi: l'anno di una caduta, la località della caduta, il motivo
### della caduta, i danni riportati.
### Notare che quando un campo è formato da più di una parola le parole sono unite da un
### carattere underscore _ Ad esempio incisivo_perso
### Notare che nessun campo motivo è una sottostringa di qualche altro campo motivo.
### Realizzare uno script bash che emette sullo standard output alcune righe. In ciascuna riga
### compare un motivo della caduta e il numero delle volte che quella motivo è accaduto.
### Potrebbe essere utile usare qualche file temporaneo in cui salvare informazioni parziali.
### Per evitare ripetizioni di righe in output si può usare un comando uniq che permette di
### eliminare le righe ripetute di un file. Usare il man per capire come funziona.

while read YEAR PLACE REASON DAMAGE ; do
	LINES=`grep ${REASON} cadutevic.txt | wc -l`
	echo ${REASON} ${LINES}
done< cadutevic.txt | sort | uniq

