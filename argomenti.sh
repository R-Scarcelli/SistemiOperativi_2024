#!/bin/bash
STRING=""
INDEX=0
for ((INDEX=2 ; ${INDEX} <= $# ; INDEX=${INDEX}+2)) do
	STRING=${STRING}"${!INDEX}";
done
for ((INDEX=1 ; ${INDEX} <= $# ; INDEX=${INDEX}+2)) do
	STRING=${STRING}"${!INDEX}";
done
echo "${STRING}"
