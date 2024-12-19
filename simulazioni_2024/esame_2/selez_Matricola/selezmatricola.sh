#!/bin/bash

echo $( grep --B 1 --no-group-separator "SISTEMI OPERATIVI" lista.txt | grep -v "SISTEMI OPERATIVI" | cut -d "" -f 1 )
