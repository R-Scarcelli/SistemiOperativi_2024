#!/bin/bash
RIS=""
for ((VAR=1 ; VAR <= $#; VAR=${VAR}+1)) ; do
	((RIS=${RIS}+${!VAR}*${!VAR}-${VAR})) ;
done
echo ${RIS}
