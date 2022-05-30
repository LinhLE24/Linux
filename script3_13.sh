#!/bin/bash
for i in *
do
  [ $(stat --printf '%s' "$i") -gt 104857600 ] && rm "$i"
done
