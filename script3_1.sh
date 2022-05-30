#!/bin/bash
echo "This script randomly generates the lottery numbers for you:"
echo "1) Loto"
echo "2) Euro Million"
echo "3) Exit"
echo "Select your game"
read game
while [ $game -lt 3 ]
do
  if [ $game -eq 1 ]
  then
    loto1=`echo $[ 1 + $[ RANDOM % 49 ]]`
    loto2=`echo $[ 1 + $[ RANDOM % 49 ]]`
    loto3=`echo $[ 1 + $[ RANDOM % 49 ]]`
    loto4=`echo $[ 1 + $[ RANDOM % 49 ]]`
    loto5=`echo $[ 1 + $[ RANDOM % 49 ]]`
    lucky=`echo $[ 1 + $[ RANDOM % 10 ]]`
    echo "Number: $loto1 $loto2 $loto3 $loto4 $loto5 Lucky: $lucky"
  elif [ $game -eq 2 ]
  then
    Eu1=`echo $[ 1 + $[ RANDOM % 50 ]]`
    Eu2=`echo $[ 1 + $[ RANDOM % 50 ]]`
    Eu3=`echo $[ 1 + $[ RANDOM % 50 ]]`
    Eu4=`echo $[ 1 + $[ RANDOM % 50 ]]`
    Eu5=`echo $[ 1 + $[ RANDOM % 50 ]]`
    star1=`echo $[ 1 + $[ RANDOM % 12 ]]`
    star2=`echo $[ 1 + $[ RANDOM % 12 ]]`
    echo "Number: $Eu1 $Eu2 $Eu3 $Eu4 $Eu5 Stars: $star1 $star2"
  fi
  echo "Select your game"
  read game
done
