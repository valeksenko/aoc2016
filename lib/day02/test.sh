#!/bin/bash

dir=$( dirname $0 )

echo -n "*** TEST d02p1: "
res=$( rexx $dir/part1.rexx $dir/../../data/examples/day02.txt )
if [ $res -eq 1985 ]
  then
    echo "PASS"
  else
    echo "FAIL: $res"
fi

echo -n "*** TEST d02p2: "
res=$( rexx $dir/part2.rexx $dir/../../data/examples/day02.txt )
if [ "$res" = "5DB3" ]
  then
    echo "PASS"
  else
    echo "FAIL: $res"
fi
