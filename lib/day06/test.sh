#!/bin/bash

dir=$( dirname $0 )

echo -n "*** TEST d06p1: "
res=$( perl $dir/part1.pl < $dir/../../data/examples/day06.txt )
if [ "$res" = "easter" ]
  then
    echo "PASS"
  else
    echo "FAIL: $res"
fi
exit

echo -n "*** TEST d06p2: "
res=$( perl $dir/part2.pl < $dir/../../data/examples/day06.txt )
if [ "$res" = "06ace8e3" ]
  then
    echo "PASS"
  else
    echo "FAIL: $res"
fi
