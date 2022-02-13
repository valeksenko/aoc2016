#!/bin/bash

dir=$( dirname $0 )
echo -n "*** RUN d06p1: "
perl $dir/part1.pl < $dir/../../data/day06.txt

exit
echo -n "*** RUN d06p2: "
perl $dir/part2.pl < $dir/../../data/day06.txt
