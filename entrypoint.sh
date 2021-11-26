#!/usr/bin/env sh
set -e # Abort at first error
echo "Running \"pwsh /purge.ps1 -username "$1" -tenant "$2" -password "$3" -command "$4""
pwsh /action.ps1 -username "$1" -tenant "$2" -password "$3" -command "$4"
