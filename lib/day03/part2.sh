# https://adventofcode.com/2016/day/3

good=0

readarray -t triangles

for (( i=0; i<${#triangles[@]}; i+=3 )); do
  sides1=( ${triangles[i]} )
  sides2=( ${triangles[((i+1))]} )
  sides3=( ${triangles[((i+2))]} )

  for j in {0..2}; do
    if [ $(( ${sides1[j]} + ${sides2[j]} )) -gt ${sides3[j]} -a $(( ${sides1[j]} + ${sides3[j]} )) -gt ${sides2[j]} -a $(( ${sides2[j]} + ${sides3[j]} )) -gt ${sides1[j]} ]
      then
        ((good+=1))
    fi
  done
done

echo $good
