#!/usr/bin/env bash

#!/bin/bash
function f {
    typeset A
    A=1
}
A=2
f
echo after f, A = $A

cd /usr/bin
for i in *
do
if [[ -f $i ]]
then
     if
     strings $i | grep -q "unable to fork"
     then
         echo $i has \"unable to fork\" in it
     fi
fi
done

n=1
ps -ly | while
read c1 c2 c3 c4 c5 c6 c7 c8 c9 c10
do
    if ((n>1))
    then
        ((rss=rss+c8))
        (( sz=sz+c9 ))
        echo rss=$rss sz=$sz
    fi
((n++))
done




