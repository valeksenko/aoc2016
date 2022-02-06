#!/bin/bash

dir=$( dirname $0 )

echo -n "*** TEST d03p1: "
res=$( cat $dir/../../data/examples/day03.txt | bash $dir/part1.sh)
if [ $res -eq 1 ]
  then
    echo "PASS"
  else
    echo "FAIL: $res"
fi

echo -n "*** TEST d03p2: "
res=$( cat $dir/../../data/examples/day03_1.txt | bash $dir/part2.sh)
if [ $res -eq 1 ]
  then
    echo "PASS"
  else
    echo "FAIL: $res"
fi
