#!/bin/bash

while read -r line; do
  echo "we can read $line"
done </usr/share/dict/words
