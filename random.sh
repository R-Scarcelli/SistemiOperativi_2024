#!/bin/bash
RANDOM=$(( `date +%s` % 32768 ))
REPEAT=0
while (( ${RANDOM}%10 != 2 )) ; do
	(( REPEAT=${REPEAT}+1 ))
done
echo ${REPEAT}
