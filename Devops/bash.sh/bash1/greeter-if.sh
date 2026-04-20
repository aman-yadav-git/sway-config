#!/bin/bash

greet() {
  local name
  if [[ -n $1 ]]; then
    local name=$1
  else
    read -p "What is your name: " name
  fi
  echo "Hello $name"

}

if [[ $# -eq 0 ]]; then
  greet
else
  for name in "$@"; do
    greet "$name"
  done
fi

#greet aman
#for name in "$@"; do
#  ./hello "$name"
#done
