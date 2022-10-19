#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
  else
    cat $1 | tr 'A-Z' 'a-z' | sed 's/--/ /g' | sed 's/[^a-z ]//g' | tr -s '[[:space:]]' '\n' | sort | uniq -c | sort -n | tail -n1
fi
