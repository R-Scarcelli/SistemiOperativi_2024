#!/bin/bash

OUT=""

while read LINE ; do
	OUT="${LINE}\\n${OUT}"
done < input.txt

echo -e  ${OUT%\\n}
