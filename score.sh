#!/bin/bash

ac=$#
if [ $ac -lt 1 ]; then
    echo "$0 점수..."
    exit 1;fi;

for v in "$@";do
    is_valid=$([[ "$v" =~ ^[0-9]+$ ]] && ((10#$v >= 0)) && ((10#$v <= 100)) && echo 1 || echo 0)
    if ((!is_valid)); then
        echo "invalid input: $v"
        exit 1;fi;
    done

sum=0

map="FFFFFFFCBAA"
for v in "$@";do ((sum+=10#$v));echo "$((10#$v)) -> ${map:$((10#$v / 10)):1}";done
echo "sum: $sum"
echo "avg: $((sum/ac))"
echo "count: $ac"
