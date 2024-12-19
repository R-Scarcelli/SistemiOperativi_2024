#!/bin/bash

if (( $# != 1 )) ; then
	echo "Nome del file di input mancante"
	exit 1
fi

./inverti.sh < $1
