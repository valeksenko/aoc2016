#!/bin/bash

dir=$( dirname $0 )

echo -n "*** TEST d04p1: "
res=$( cat $dir/../../data/examples/day04.txt | gawk -f $dir/part1.awk)
if [ $res -eq 1514 ]
  then
    echo "PASS"
  else
    echo "FAIL: $res"
fi

exit
echo -n "*** TEST d04p2: "
res=$( cat $dir/../../data/examples/day04_1.txt | gawk -f $dir/part2.awk)
if [ $res -eq 1 ]
  then
    echo "PASS"
  else
    echo "FAIL: $res"
fi
