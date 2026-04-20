#!/bin/bash

greet() {
  local name=$1
  echo "Hello $name (from func)"
  return 0

}

for name in "$@"; do
  greet "$name"
done

greet aman
echo $?
