#!/usr/bin/env bash

function f1 () {
  typeset x
  x=4
  y=5
}
x=1
y=2
echo value of x is $x
echo value of y is $y

#call function
f1
echo value of x is $x   #prints 1 since value of x outside function will not change due to typeset used.
echo value of y is $y

