#!/bin/sh

# arguments check
if [ $# -lt 1 ]; then
 echo "same2.sh requires 2 string inputs" 1>&2
 exit 1
fi
