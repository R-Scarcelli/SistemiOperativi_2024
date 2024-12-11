#!/bin/bash

### due file esame1.txt ed esame2.txt che contengono ciascuno i risultati di una prova
### pratica di sistemi operativi.
### In ciascuna riga dei file c'é il numero di MATRICOLA di uno studente presente alla prova
### ed il VOTO ottenuto in quella prova, separati da spazi bianchi.
### La prova pratica, i cui risultati sono nel file esame2.txt, è la prova più recente.
### Qualche studente potrebbe essere stato presente solo ad una delle due prove.
### Se uno studente è stato presente alla seconda prova allora il risultato della prima
### prova non è più valido e vale solo il voto della seconda.
### Implementare uno script voti.sh che legge i due file esame1.txt ed esame2.txt e
### mette in output delle righe; ciascuna riga contiene il voto più recente ottenuto da
### uno studente preceduto dal numero di matricola di quello studente.
### Il pratica lo script voti.sh deve mettere in output il voto più recente di ciascuno
###  studente, nello stesso formato dei file di input.

# I voti della seconda prova li devo mettere tutti nello standard output
cat esame2.txt
# Poi devo mettere nello standard output i voti della prima prova
# ottenuti dagli studenti che non hanno un voto nella seconda prova

while read MATRICOLA VOTO ; do
        LINES=`grep ${MATRICOLA} esame2.txt`
	if [[ "${LINES}" == "" ]] ; then
                echo ${MATRICOLA} ${VOTO}
        fi
done< esame1.txt
