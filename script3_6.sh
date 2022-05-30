#!/bin/bash
declare -a array

if [ $# = 0 ]; then
  echo " Please give list of numbers as arguments"
  exit 1
fi
for i
do
  array+=($i)
done

sorted_array=( $( printf "%s\n" "${array[@]}" | sort -n ) )
echo "${sorted_array[*]}"
