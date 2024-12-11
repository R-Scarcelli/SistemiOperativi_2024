#!/bin/bash

NUM=0

while [[ ${NUM} -le $1 ]] ; do
	sleep 1
	echo ". ${BASHPID}"
	(( NUM=${NUM}+1 ))
done
