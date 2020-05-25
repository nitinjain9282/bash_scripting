#!/usr/bin/env bash
exec 19<data_file   #open file descriptor 19 for reading from data_file
lsof -p $$          # prints all process and file descriptors in current shell
cat 0<&19           #0 is std input and 19 refers to file descriptor. so take input to whatever file descriptor 19 refers to.
exec 7>&1           # open file descriptor 7 and it refers to same thing where stdout is right now. Meaning save stdout in 7
exec  1>&-          # close stdout
lsof -p $$
cat                 # no stdout now
exec 1>&7           # copy 7 back to stdout
cat                 # it will give stdout whatever we typed above.


