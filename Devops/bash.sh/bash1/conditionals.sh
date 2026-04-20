#!/bin/bash

a=2
b=2
if [[ $a == $b ]]; then
  echo "a & b is the same"
fi

c=3
d=4
if [[ $c != $d ]]; then
  echo "c & d is not same"
fi

if [[ -e file.txt ]]; then
  echo "file.txt exists and is a file"
fi
