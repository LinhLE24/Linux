#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Invalid input"
  echo "Please enter input again as one integer number"
else

  # binary=$(("obase=2; $1" | bc))
  echo "Binary of input number is below: "
  echo "obase=2; $1" | bc
  echo ""
  echo "OCTAL of input number is below: "
  echo "obase=8; $1" | bc
  echo ""
  echo "Hexadecimal of input number is below: "
  echo "obase=16; $1" | bc
fi
