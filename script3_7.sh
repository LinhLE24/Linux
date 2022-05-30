#!/bin/bash
if [ $# != 1 ]; then
  echo " Please give one and only one argument"
  echo "The argument is the name of the file"
  exit 1
fi
while IFS= read -r line; do echo ${#line}; done < $1
