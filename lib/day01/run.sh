#!/bin/bash

dir=$( dirname $0 )
echo "*** RUN d01p1"
cat $dir/../../data/day01.txt | tr ',' '\n' | tr -d ' ' | gforth $dir/part1.fs
