#!/bin/bash
filename='data.csv'
echo "Enter 1 to add new information; 2 to modify"
read first_input
if [[ $first_input -eq 1 ]]; then
  echo "Enter name of people"
  read name
  echo "Enter phone number for $name"
  read phone_number
  echo "Enter address for $name"
  read address

  if grep -q $name "$filename"; then
    echo "The username already exist. Can not add this username"
    exit 1
  else
    echo "$name,$phone_number,$address" >> $filename
  fi

elif [[ $first_input -eq 2 ]]; then
  echo "Enter username of people you would like to modify information"
  echo "Please make sure you enter a right username"
  read name
  if grep -q $name "$filename"; then
    echo ""
  else
    echo "The username doesn't exist"
    exit 1
  fi
  echo "Enter updated username "
  read new_name
  echo "Enter updated phone number for $name"
  read phone_number
  echo "Enter updated address for $name"
  read address
  printf "%s\n" "/^$name,/c" "$new_name,$phone_number,$address" "." w | ed -s $filename

else
  echo "Invalid input"
  echo "Please enter input as 1 or 2"
fi
