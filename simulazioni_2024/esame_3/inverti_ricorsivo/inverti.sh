#!/bin/bash

while read LINE ; do
	./inverti.sh
	echo ${LINE}
done
