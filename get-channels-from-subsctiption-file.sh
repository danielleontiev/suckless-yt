#!/bin/bash

cat $@ | grep -o "https://[a-zA-Z0-9./?=_-]*" | awk -F'=' '{print "https://www.youtube.com/channel/"$2}'

