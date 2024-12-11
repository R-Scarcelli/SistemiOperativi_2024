#!/bin/bash
./puntini.sh 30 &
kill -SIGKILL $!
