#!/bin/bash
x=01
y=1
echo comparing $x and $y
if
[ $x == $y ]   # its a string compare hence it will print not ==
then
   echo ==
else
   echo not ==
fi
if
[ $x -eq $y ]   # numeric compare hence eq is printed.
then
   echo eq
else
   echo not eq
fi

if
((x==y))   #numeric compare
then
   echo '(())' ==
else
   echo not '(())' ==
fi


