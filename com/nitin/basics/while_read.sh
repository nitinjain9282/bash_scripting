#!/usr/bin/env bash

while
 read a b  #first word is a and remaining words taken as b
do
  echo a is $a and b is $b
done <data_file  #define data_file to read contents.




