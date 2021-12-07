#!/usr/bin/env sh
set -e # Abort at first error
echo "Running \"az login --service-principal -u "$1" -p "$3" --tenant "$2"\""
#az login --service-principal -u "$1" -p "$3" --tenant "$2"
echo "----------Logged In----------"
eval "$4"
