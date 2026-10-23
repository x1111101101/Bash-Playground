#!/bin/bash

ac=$#
if [ $ac -lt 1 ]; then
    echo "./score_simple.sh 점수"
    exit 1;fi;

is_valid=$([[ "$1" =~ ^[0-9]+$ ]] && ((10#$1 >= 0)) && ((10#$1 <= 100)) && echo 1 || echo 0)
if ((!is_valid)); then
    echo "invalid input"
    exit 1;fi;

map="FFFFFFFCBAA"
idx=$((10#$1 / 10))
echo "$((10#$1)) -> ${map:idx:1}"

