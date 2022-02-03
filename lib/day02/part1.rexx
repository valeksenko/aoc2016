/* https://adventofcode.com/2016/day/2 */

PARSE ARG file

current = 5

res = ''
DO WHILE LINES(file)
  current = enter(current, LINEIN(file))
  res ||= current
END

SAY res

EXIT

move:
PARSE ARG current, char

SELECT
  WHEN char = 'U' & current > 3 THEN next = current - 3
  WHEN char = 'D' & current < 7 THEN next = current + 3
  WHEN char = 'L' & (current // 3) <> 1 THEN next = current - 1
  WHEN char = 'R' & (current // 3) <> 0 THEN next = current + 1
  OTHERWISE next = current
END

RETURN next

enter:
PARSE ARG current, line

DO i = 1 TO LENGTH(line)
  current = move(current, SUBSTR(line, i, 1))
END

RETURN current
