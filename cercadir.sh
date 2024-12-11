#!/bin/bash
DIR="/usr/include/"
for VAR in "$DIR"* ; do
#	if [[ -d ${VAR} && -r ${VAR} && ${VAR} -nt "$DIR"stdio.h ]] ;
#	if [ -d ${VAR} -a -r ${VAR} -a ${VAR} -nt "$DIR"stdio.h ] ;
	if test  -d ${VAR} -a -r ${VAR} -a ${VAR} -nt "$DIR"stdio.h ;
		then echo /usr/include/${VAR} ;
	fi
done
