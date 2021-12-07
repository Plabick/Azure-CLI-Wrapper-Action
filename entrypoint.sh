#!/usr/bin/env bash
set -e # Abort at first error
if[ "$5" != "true"]
then
    echo "Running \"az login --service-principal -u "$1" -p "$3" --tenant "$2"\""
    az login --service-principal -u "$1" -p "$3" --tenant "$2"
    echo "----------Logged In----------"
fi
eval "$4"
