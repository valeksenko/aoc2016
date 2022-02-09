#!/bin/bash

dir=$( dirname $0 )
echo -n "*** RUN d05p1: "
tclsh $dir/part1.tcl < $dir/../../data/day05.txt

echo -n "*** RUN d05p2: "
tclsh $dir/part2.tcl < $dir/../../data/day05.txt
