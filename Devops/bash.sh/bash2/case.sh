#!/usr/bin/env bash

s=$1
case "$s" in
aman)
  echo "Hello $s"
  ;;
dave)
  echo "hello bro $s"
  ;;
other)
  echo "Hi there $s"
  ;;
*)
  echo "your name is not in list"
  ;;
esac

#if (($# == 0)); then
#  echo "name is reqired!" >&2
#  exit 1
#fi
