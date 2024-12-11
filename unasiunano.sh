#!/bin/bash
OUT=0
while read LINE ; do
	if (( ${OUT} == 0 )) ; then
		echo ${LINE}
		OUT=1
	else OUT=0
	fi
done
