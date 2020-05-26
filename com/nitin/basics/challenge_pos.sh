#!/usr/bin/env bash

#script that loops through all command line arguments echoing them one per line.

while
[[ $# -gt 0 ]]  # so we are in loop until number of command line arguments is greater than 0.
do
  echo $1
  shift
done
# can run this script as challenge.sh {A..F}

#write a program that will assign to variable File the value of the variable "The File" if the File is set.
#othewise it will assign to File "/tmp/data.file"
File=${TheFile:-/tmp/data.file}
echo File is $File TheFile is $TheFile

# write script that will echo names of all "*.c" files in current directory without the ".c" suffix.
for i in *.c  #run script in cfiles dir.
do
  echo ${i%.c}
done

