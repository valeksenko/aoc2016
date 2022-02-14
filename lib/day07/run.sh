#!/bin/bash

dir=$( dirname $0 )
echo -n "*** RUN d07p1: "
go run $dir/part1.go < $dir/../../data/day07.txt
exit

echo -n "*** RUN d07p2: "
go run $dir/part2.go < $dir/../../data/day07.txt
