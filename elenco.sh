#!/bin/bash

LungNomiDirectory=0
NumFile=0
for FILE in `ls ./` ; do
	if [ -d ${FILE} ] ; then
		(( LungNomiDirectory=${LungNomiDirectory}+${#FILE} ))
	else ((NumFile=${NumFile}+1))
	fi
done
echo "Lunghezza nomi: ${LungNomiDirectory} Numero di file non directory: ${NumFile}"
