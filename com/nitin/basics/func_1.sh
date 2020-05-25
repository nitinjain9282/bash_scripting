#!/usr/bin/env bash

# function 1 - simple one
function hello {
  echo HelloWorld
}
hello  #call function here
echo -e "\n"  #insert newline

# function 2 - capture return value
function foo() {
  echo in func
  return
  echo second line will not be printed
}
myval=$(foo)
echo $myval # it capture return value but not exit status. exit status if $?
echo exit satus code is $?
echo line after function execution
echo -e "\n"

#another function - exit will trigger to come out of function and shell, $? will have value 2 assigned here.
function f2() {
  echo in f2
  exit 2 # this will exit out of function and shell
  echo post f2 will not be printed.
}
echo before f2
f2
echo this will not be printed



