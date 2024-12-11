#!/bin/bash

#ERRATO:if[[-e /usr/include/stdio.h]];then echo esiste;fi
if [[ -e  /usr/include/stdio.h ]] ; then 
	echo "Esiste" ;
fi
