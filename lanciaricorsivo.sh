#!/bin/bash

if (( $1>0 )) ; then
	source ./lanciaricorsivo.sh $(( $1-1 )) &
	echo $!
	wait $!
fi
