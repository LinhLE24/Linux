#!/bin/bash
echo "Enter the mark to continue or press \"q\" to quit"
read input
if [[ $input = "q" ]]; then
  number_of_mark=0
else
  number_of_mark=1
  minimum=$input
  maximum=$input
  number_of_mark_below_10=0
  if [[ input -lt 10 ]]; then
    number_of_mark_below_10=$((number_of_mark_below_10+1))
  fi
fi
total=$input;
# echo $number_of_mark
while [ $input != "q" ]
do
  echo "Enter the mark to continue or press \"q\" to quit"
  read input
  if [[ $input != "q" ]]; then
    number_of_mark=$((number_of_mark+1))
    if [[ $input -gt $maximum ]]; then
      maximum=$input
    fi
    if [[ $input -lt $minimum ]]; then
      minimum=$input
    fi
    if [[ input -lt 10 ]]; then
      number_of_mark_below_10=$((number_of_mark_below_10+1))
    fi
    total=`expr $total + $input`
  fi
  average=$((total / number_of_mark))
  # average=`expr $total/$number_of_mark`

  # expr $total
done
# echo "total = $total" > output3_3.txt
echo "number of marks: $number_of_mark" > output3_3.txt #to overwrite the file at the beginning
echo "average: $average" >> output3_3.txt
echo "maximum: $maximum" >> output3_3.txt
echo "minimum: $minimum" >> output3_3.txt
echo "number of marks below 10: $number_of_mark_below_10" >> output3_3.txt
