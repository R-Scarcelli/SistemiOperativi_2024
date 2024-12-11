#!/bin/bash

# Scrivere uno script separanomi.sh che separa i nomi di ciascuna directory
# contenuta nella variabile di ambiente PATH, e li visualizza uno per uno, uno per
# ciascuna riga di output, sullo standard output. Ad esempio, se
# PATH="/bin:/usr/bin:/usr/sbin" , lo script dovrà mettere in output 4 righe contenenti
# rispettivamente bin usr bin usr sbin

P=${PATH//\//\\n}
P=${P//:/}
echo -e "${P}"
