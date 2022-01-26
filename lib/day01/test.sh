#!/bin/bash

dir=$( dirname $0 )
echo "*** TEST d01p1"
cat $dir/../../data/examples/day01.txt | tr ',' '\n' | tr -d ' ' | gforth $dir/part1.fs
