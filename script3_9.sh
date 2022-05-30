#!/bin/bash

# The "bash" type is associated with files that have an extension of ". sh".
# Since many Bash scripts do not have a file extension,
# any "plaintext" file that contains the text "#!/bin/bash" within the first
# line of the file (upon opening the file) will also be interpreted as a bash script

count=0
for i in * #%.sh
do
  read -r firstline<$i
  echo "$firstline"
  # count=$((count + 1))
  if [[ $firstline = "#!/bin/bash" ]]; then
    count=$((count + 1))
  fi
done
echo "Number of bash files after is: $count"

#In case there is only bash files with extension .sh; we can use the code below
# count=0
# for i in *.sh
# do
# count=$((count + 1))
# done
# echo "Number of bash files is: $count"
