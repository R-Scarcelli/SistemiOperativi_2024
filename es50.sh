#!/bin/bash

(
	head -n 3 /usr/include/stdio.h | tail -n 5 ;
	tail -n 4 /usr/include/stdio.h | cut -b -3
) | (
	read FirstLine ; read SecondLine ;
	echo ${SecondLine} ; echo ${FirstLine}
	read LINE &> /dev/null;
	while read RIGA ; do
		echo ${#RIGA}
	done
)
