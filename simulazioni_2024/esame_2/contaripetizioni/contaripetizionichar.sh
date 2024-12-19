#!/bin/bash

if (( $# != 1 )) ; then
	echo "Numero errato di argomenti!"
	exit 1
fi
STRING=$1

for (( OFFSET=0 ; ${OFFSET} < ${#STRING} ; OFFSET=${OFFSET}+1 )) ; do
	echo "${STRING:OFFSET:1}"
done | sort | uniq -c
