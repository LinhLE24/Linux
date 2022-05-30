#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Invalid input"
  echo "Please enter input again as one integer number"
  read n
  result=1
  for((i=2;i<=n;i++))
  {
    result=$((result * i))
  }
  echo "($n!)=$result"
else
  result=1
  for((i=2;i<=$1;i++))
  {
    result=$((result * i))
  }
  echo "($1!)=$result"
fi
