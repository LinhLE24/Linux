#!/bin/bash
if [ $# != 1 ]; then
  echo " Please give one and only one argument"
  echo "The argument can be the month number or month name"
  exit 1
fi
X=`cal $(date +$1) $(date +%Y) | grep -v '[A-Za-z]' | wc -w`
echo "Number of day in month $1 is $X"
