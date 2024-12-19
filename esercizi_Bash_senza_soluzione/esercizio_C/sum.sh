#!/bin/bash

#!/bin/bash

### Scrivi uno script che legge un file contenente numeri interi (uno per riga) e stampa a video due
### somme, cioè la somma dei numeri nelle righe di indice pari e la somma dei numeri nelle righe di
### indice dispari.

L=1
PARI=0
DISPARI=0
while read NUM ; do
	if (( ${L}%2 == 0 )) ; then
		PARI=$(( ${PARI}+${NUM} ))
	else
		DISPARI=$(( ${DISPARI}+${NUM} ))
	fi
	L=$(( ${L}+1 ))
done < input.txt

echo "${PARI}"
echo "${DISPARI}"
