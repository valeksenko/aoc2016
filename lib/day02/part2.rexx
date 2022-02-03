/* https://adventofcode.com/2016/day/2 */

PARSE ARG file

keypad. = '0'
keypad.1.3 = '1'
keypad.2.2 = '2'
keypad.2.3 = '3'
keypad.2.4 = '4'
keypad.3.1 = '5'
keypad.3.2 = '6'
keypad.3.3 = '7'
keypad.3.4 = '8'
keypad.3.5 = '9'
keypad.4.2 = 'A'
keypad.4.3 = 'B'
keypad.4.4 = 'C'
keypad.5.3 = 'D'

row = 3
col = 1

res = ''
DO WHILE LINES(file)
  line = LINEIN(file)

  DO i = 1 TO LENGTH(line)
    dir = SUBSTR(line, i, 1)

    row1 = row
    col1 = col

    SELECT
      WHEN dir = 'U' THEN row1 -= 1
      WHEN dir = 'D' THEN row1 += 1
      WHEN dir = 'L' THEN col1 -= 1
      WHEN dir = 'R' THEN col1 += 1
      OTHERWISE NOP
    END

    IF keypad.row1.col1 <> '0' THEN
      DO
        row = row1
        col = col1
      END
  END

  res ||= keypad.row.col
END

SAY res

EXIT
