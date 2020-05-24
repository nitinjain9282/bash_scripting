#!/bin/bash

echo "Hello World"
# check process running
ps -l

# check time taken for given command, realtime is total time taken to run the command, usr and sys are cpu times.
#time find / -name core

# bash function uses braces and can modify variables of shell that calls function

a=2
(
a=3
)
echo "Value of a is " $a #this print 2

b=4
{
b=5
}
echo "Value of b is" $b #this  print 5

# no space during assignment works but we can combile commands
c=6 sleep 5  # it does work
