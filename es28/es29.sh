#!/bin/bash

cut -b 3-5,10-15 | sed 's/ //g ' | sed 's/\t//g ' | sed 's/*//g ' asterischi.txt
