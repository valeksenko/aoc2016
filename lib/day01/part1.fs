\ https://adventofcode.com/2016/day/1

: input>pad ( -- u flag ; pad changed )
pad 80 stdin read-line abort" read failed" ;

0 value x
0 value y
0 value direction \ 0 east, 1 north, 2 west, 3 south

: turnright ( -- )
direction 1- to direction
direction 0 < if direction 4 + to direction then ;

: turnleft ( -- )
direction 1+ to direction
direction 3 > if direction 4 - to direction then ;

: forward ( n -- )
direction case
   0 of x + to x endof
   1 of y + to y endof
   2 of x swap - to x endof
   3 of y swap - to y endof
   endcase ;

: solve ( -- )
begin input>pad while
  0 0 rot pad 1 + swap 1- >number drop drop d>s

  pad c@ case
   'R' of turnright endof
   'L' of turnleft endof
  endcase

  forward
repeat ;

solve
x abs y abs + . cr

bye
