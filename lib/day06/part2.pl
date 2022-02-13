# https://adventofcode.com/2016/day/6#part2
use warnings;
use strict;

my %counts;

while(<>) {
  chomp;
  my @chars = split("");

  for (my $i=0; $i <= $#chars; $i++) {
    $counts{$i}->{$chars[$i]}++;
  }
}

for my $i (sort keys %counts) {
  my %chars = %{$counts{$i}};
  my @sorted = sort { $chars{$a} <=> $chars{$b} } keys(%chars);

  print $sorted[0];
}

print "\n";
