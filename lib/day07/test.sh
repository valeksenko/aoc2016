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
exit

echo -n "*** TEST d07p2: "
res=$( go run $dir/part2.go < $dir/../../data/examples/day07.txt )
if [ "$res" = "07ace8e3" ]
  then
    echo "PASS"
  else
    echo "FAIL: $res"
fi
