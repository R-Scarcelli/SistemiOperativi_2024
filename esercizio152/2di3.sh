#!/bin/bash
exec {FD}< /usr/include/stdio.h
if (($?==0)) ;  then
	while read -u ${FD} R1 R2 R3 ; do
		if [[ $?==0 && ${R3} != "" || ${R3:1:1} != "" ]] ; then
			echo ${R3:1:1}
		fi
	done
	exec {FD}<&-
fi
