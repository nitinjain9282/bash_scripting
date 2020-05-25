#!/usr/bin/env bash

for i in cat dog elephant
do
  echo i is $i
done

#another example with seq

for i in `seq 1 5`
do
  echo i is $i
done

# another way in replacement for seq
for i in {6..8}
do
  echo i is $i
done

# another usage of for loop
for f in $(find /etc 2>/dev/null | grep grub)
do
  echo grub named things are $f
done
