\ https://adventofcode.com/2016/day/1#part2

: input>pad ( -- u flag ; pad changed )
pad 80 stdin read-line abort" read failed" ;

0 value x
0 value y
0 value x1
0 value y1
0 value direction \ 0 north, 1 east, 2 south, 3 west

variable visited 500 cells allot \ enough for my input
0 value n \ visited size

: turnleft ( -- )
direction 1- dup
0 < if 4 + then
to direction ;

: turnright ( -- )
direction 1+ dup
3 > if 4 - then
to direction ;

: forward ( n -- )
direction case
   0 of y swap - to y endof
   1 of x + to x endof
   2 of y + to y endof
   3 of x swap - to x endof
   endcase ;

: mark-visited ( -- )
x1 visited n cells + ! n 1+ to n
x visited n cells + ! n 1+ to n
y1 visited n cells + ! n 1+ to n
y visited n cells + ! n 1+ to n ;

: orient ( n n -- n n )
2dup min -rot max ;

: check-intersection ( a- n n -- n n n )
orient rot

dup @ swap 1 cells + @
orient

-rot tuck >= 2swap over >= -rot -rot and -rot max swap ;

: check-visited ( -- [ n n] n )
false

n 4 <= if exit then

\ skips the last visited so might fail to detect in some cases
visited n 4 - cells + visited ?do

i x1 x check-intersection i 2 cells + y1 y check-intersection rot and if rot drop true leave then
2drop

4 cells +loop ;

: distance ( n n -- n )
abs swap abs + ;

: walk ( -- n n )
0 0

begin input>pad while
  -rot to x1 to y1

  0 0 rot pad 1 + swap 1- >number drop drop d>s

  pad c@ case
   'R' of turnright endof
   'L' of turnleft endof
  endcase

  forward

  check-visited if exit then

  mark-visited
  y x

  repeat ;

\ to handle `exit` in `walk`
: go ( -- n n )
walk ;

go distance . cr

bye
