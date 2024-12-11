#!/bin/bash
echo "$$"
if (( ${INDEX}<${MAX} )) ; then
	(( INDEX=${INDEX}+1 ))
	./figlio.sh
fi
