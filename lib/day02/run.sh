#!/bin/bash

dir=$( dirname $0 )
echo -n "*** RUN d02p1: "
rexx $dir/part1.rexx $dir/../../data/day02.txt

echo -n "*** RUN d02p2: "
rexx $dir/part2.rexx $dir/../../data/day02.txt
