#!/bin/bash

dir=$( dirname $0 )

echo -n "*** TEST d02p1: "
res=$( cat $dir/../../data/examples/day02.txt | rexx $dir/part1.rexx)
if [ $res -eq 1985 ]
  then
    echo "PASS"
  else
    echo "FAIL: $res"
fi

exit 
echo -n "*** TEST d02p2: "
res=$( cat $dir/../../data/examples/day02_1.txt | rexx $dir/part2.rexx)
if [ $res -eq 4 ]
  then
    echo "PASS"
  else
    echo "FAIL: $res"
fi
