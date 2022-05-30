#!/bin/bash
if [ $# -ne 1 ]; then
  echo "Invalid input"
  echo "Please enter input again as one argument only"
else
  echo $1 | tr [:lower:] [:upper:]
fi
