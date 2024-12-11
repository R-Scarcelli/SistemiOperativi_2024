#!/bin/bash

REVERSE=""

echo $1 | while (( 1 )) ; do
		read -n 1 CHAR
		if (( $?==0 )) ; then
			REVERSE=${CHAR}${REVERSE}
		else
			echo ${REVERSE}
			break
		fi
	 done
