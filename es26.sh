#!/bin/bash

# Invocare il comando echo in modo da fargli scrivere nello stderr la parola CIAO.
# Verificare che la parola NON vada sullo stdout

echo "CIAO" 1<&2
