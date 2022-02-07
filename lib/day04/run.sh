#!/bin/bash

dir=$( dirname $0 )
echo -n "*** RUN d04p1: "
cat $dir/../../data/day04.txt | gawk -f $dir/part1.awk

exit
echo -n "*** RUN d04p2: "
cat $dir/../../data/day04.txt | gawk -f $dir/part2.awk
