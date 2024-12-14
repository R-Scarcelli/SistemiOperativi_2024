#!/bin/bash

NUM=$( grep "*" /usr/include/*.h | wc -l )
echo ${NUM} 1<&2
