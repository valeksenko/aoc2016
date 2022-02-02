\ https://adventofcode.com/2016/day/1

: input>pad ( -- u flag ; pad changed )
pad 80 stdin read-line abort" read failed" ;

0 value x
0 value y
0 value direction \ 0 north, 1 east, 2 south, 3 west

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

: distance ( -- )
x abs y abs + ;

: walk ( -- )
begin input>pad while
  0 0 rot pad 1 + swap 1- >number drop drop d>s

  pad c@ case
   'R' of turnright endof
   'L' of turnleft endof
  endcase

  forward
repeat ;

walk distance . cr

bye
