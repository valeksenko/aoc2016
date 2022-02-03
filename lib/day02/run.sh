#!/bin/bash

dir=$( dirname $0 )
echo -n "*** RUN d02p1: "
cat $dir/../../data/day02.txt | rexx $dir/part1.rexx

echo -n "*** RUN d02p2: "
#cat $dir/../../data/day02.txt | tr ',' '\n' | tr -d ' ' | gforth $dir/part2.fs
