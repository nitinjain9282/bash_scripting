#!/bin/bash
echo Just '>' ---------------------------------------
find /etc -name grub >grub.out    #stdout to grub.out but stderr on screen
echo Doing '2>' ---------------------------------------
find /etc -name grub 2>errs.out  #stderr to errs.out but stdout to screen
echo Doing '&>' ---------------------------------------
find /etc -name grub &>both.out #both stdout and stderr to screen



