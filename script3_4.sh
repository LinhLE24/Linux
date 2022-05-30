#!/bin/bash

if [ $# -ne 3 ]; then
echo "Invalid input"
echo "Please enter input as 3 parameters: number operator number"
echo "The operators include +,-,x,/,pow,mod"
exit 1
fi

if [[ "$2" = "+" ]]; then
  echo $(($1 + $3))
elif [[ "$2" = "-" ]]; then
  echo $(($1 - $3))
elif [[ "$2" == "x" ]]; then
  echo $(($1 * $3))
elif [[ "$2" = "/" ]]; then
  echo "scale=2; $1 / $3" | bc
elif [[ "$2" = "pow" ]]; then
  echo $(($1 ** $3))
elif [[ "$2" = "mod" ]]; then
  echo $(($1 % $3))
else
  echo "Invalid input"
  echo "Please enter input as 3 parameters: number operator number"
  echo "The operators include +,-,x,/,pow,mod"
fi
