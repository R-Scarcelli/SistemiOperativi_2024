#!/bin/bash

### Notare che i singoli campi del file cadutevic.txtsono delimitati (prima e dopo) da un doppio apice "
### che fa parte del campo stesso.
### Quindi la stringa "freno infilato in una coscia" viene considerato come un unico campo.
### Realizzare uno script bash che scrive sullo standard output solo il TERZO campo di ciascuna riga
### del file cadutevic.txt


while read LINE ; do
	NEW=${LINE#\"*\"*\"*\"}
	echo ${NEW%\"*\"}
done < cadutevic.txt


