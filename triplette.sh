#!/bin/bash
for VAR1 in $(ls) ; do
	for VAR2 in $(ls) ; do
		for VAR3 in $(ls) ; do
			echo \(${VAR1}\;${VAR2}\;${VAR3}\);
		done
	done
done
