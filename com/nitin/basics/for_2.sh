#!/usr/bin/env bash

for d in $(<data_file) #it loops over space/newline in data_file
do
  echo d is $d
done