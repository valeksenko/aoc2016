#!/bin/bash

dir=$( dirname $0 )
echo -n "*** RUN d01p1: "
cat $dir/../../data/day01.txt | tr ',' '\n' | tr -d ' ' | gforth $dir/part1.fs

echo -n "*** RUN d01p2: "
cat $dir/../../data/day01.txt | tr ',' '\n' | tr -d ' ' | gforth $dir/part2.fs
