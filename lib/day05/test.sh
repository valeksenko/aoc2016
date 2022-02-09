#!/bin/bash

dir=$( dirname $0 )

echo -n "WARNING: SLOW! *** TEST d05p1: "
res=$( tclsh $dir/part1.tcl < $dir/../../data/examples/day05.txt )
if [ "$res" = "18f47a30" ]
  then
    echo "PASS"
  else
    echo "FAIL: $res"
fi

echo -n "WARNING: SLOW! *** TEST d05p2: "
res=$( tclsh $dir/part2.tcl < $dir/../../data/examples/day05.txt )
if [ "$res" = "05ace8e3" ]
  then
    echo "PASS"
  else
    echo "FAIL: $res"
fi
