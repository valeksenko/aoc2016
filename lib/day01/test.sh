#!/bin/bash

dir=$( dirname $0 )

echo -n "*** TEST d01p1: "
res=$( cat $dir/../../data/examples/day01.txt | tr ',' '\n' | tr -d ' ' | gforth $dir/part1.fs)
if [ $res -eq 12 ]
  then
    echo "PASS"
  else
    echo "FAIL: $res"
fi

echo -n "*** TEST d01p2: "
res=$( cat $dir/../../data/examples/day01_1.txt | tr ',' '\n' | tr -d ' ' | gforth $dir/part2.fs)
if [ $res -eq 4 ]
  then
    echo "PASS"
  else
    echo "FAIL: $res"
fi
