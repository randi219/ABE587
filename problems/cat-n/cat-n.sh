#!/bin/bash


set -u

if [[ $# -lt 1 ]]; then
    printf "Usage: %s file\n" $(basename $0)
    exit 1
fi

filename="$1"

i=0
while read -r line
do
    let i++
    printf "%d $line\n" $i
done < "$filename"
