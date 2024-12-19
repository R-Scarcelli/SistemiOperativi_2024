#!/bin/bash

while read NOME COGNOME MULTA DATA ; do
	echo "${MULTA}"
done | sort | uniq -c | while read NUM MULTA ; do echo "${MULTA} ${NUM}" ; done
