# https://adventofcode.com/2016/day/3

good=0

while read line ; do
  sides=($line)

  if [ $(( ${sides[0]} + ${sides[1]} )) -gt ${sides[2]} -a $(( ${sides[2]} + ${sides[1]} )) -gt ${sides[0]} -a $(( ${sides[0]} + ${sides[2]} )) -gt ${sides[1]} ]
    then
      ((good+=1))
  fi
done

echo $good
