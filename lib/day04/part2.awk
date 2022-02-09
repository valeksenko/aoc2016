# https://adventofcode.com/2016/day/4#part2

BEGIN {
  FS = "[-[\\]]"
  A = 97
  Z = 122
  for (n = A; n <= Z; n++) {
    ord[sprintf("%c", n)] = n
    chr[n] = sprintf("%c", n)
  }
}

function sorter(c1, n1, c2, n2) {
  if (n1 > n2)
    return -1
  else if (n1 < n2)
    return 1
  else if (c1 < c2)
    return -1
  else if (c1 > c2)
    return 1
  else
    return 0
}

function match_checksum(letters,   i, checksum) {
  split($(NF - 1), checksum, "")

  for (i in checksum)
    if (checksum[i] != letters[i])
      return 0

  return 1
}

function rotate(word, id,   chars, c, res) {
  split(word, chars, "")

  for (c in chars) {
    res = res chr[(ord[chars[c]]  - A + id) % 26 + A]
  }

  return res
}

{
  delete letters
  for (i = 1; i < NF - 2; i++) {
    split($i, chars, "")
    
    for (c in chars) {
      letters[chars[c]]++
    }
  }

  asorti(letters, sorted, "sorter")

  if (match_checksum(sorted)) {
    for (i = 1; i < NF - 2; i++)
      printf "%s ", rotate($i, $(NF - 2))
    print "- ", $(NF - 2)
  }
}
