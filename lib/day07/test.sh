#!/bin/bash

dir=$( dirname $0 )

echo -n "*** TEST d07p1: "
res=$( go run $dir/part1.go < $dir/../../data/examples/day07.txt )
if [ $res -eq 2 ]
  then
    echo "PASS"
  else
    echo "FAIL: $res"
fi

echo -n "*** TEST d07p2: "
res=$( go run $dir/part2.go < $dir/../../data/examples/day07_1.txt )
if [ $res -eq 3 ]
  then
    echo "PASS"
  else
    echo "FAIL: $res"
fi
