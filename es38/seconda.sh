#!/bin/bash
if (( $# != 1 )) ; then echo "serve nomefile" ; exit 1 ; fi
if [[ ! -r $1 ]] ; then echo "il file $1 non esiste"; exit 2; fi
OUT=""
exec {FD}< ./file.txt
while read Word1 Word2 Word3 ; do
	if [[ -n ${Word2} ]] ; then
		OUT=${OUT}${Word2}
	fi
	done < $1
echo ${OUT}

