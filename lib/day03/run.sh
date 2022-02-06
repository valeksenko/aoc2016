#!/bin/bash

dir=$( dirname $0 )
echo -n "*** RUN d03p1: "
cat $dir/../../data/day03.txt | bash $dir/part1.sh

echo -n "*** RUN d03p2: "
cat $dir/../../data/day03.txt | bash $dir/part2.sh
