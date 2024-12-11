#!/bin/bash

# Scrivere uno script bash leggerecaratteri.sh che legge uno per uno i caratteri del
# file /usr/include/stdio.h e stampa a video il numero dei caratteri letti dal file

FILE="/usr/include/stdio.h"
NUM=0
exec 4< ${FILE}
if (( $?==0 )) ; then
	while read -u 4 -N 1 CHAR ; do
		(( NUM=${NUM}+1 ))
	done
	exec 4>&-
fi
echo ${NUM}
