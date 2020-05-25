#!/bin/bash
ls -l /etc | while   # this read from ls -l output each line and assigned values a, b,c,d
     read a b c d
do
     echo owner is $c
done