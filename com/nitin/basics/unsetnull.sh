#!/bin/bash

unset x
a=${x:-Hotdog}  #since x is unset, it return value Hotdog to a. but it doesn't assign value to x.
echo a is $a
echo x is $x

a=${x:=Hotdog}  #since x is unset still, it return value Hotdog to a. and it also assign value Hotdog to x.
echo a is $a
echo x is $x

unset x        # above value of Hotdog assigned to x is now unset again.
${x:?}         # :? displays an error and exit script since x is unset above.
echo Will not get here


