# https://adventofcode.com/2016/day/5

package require md5

set door_id [string trimright [read stdin]]

set password ""

for {set i 0} {[string length $password] < 8} {incr i} {
  #set hash [md5::md5 -hex [join [list $door_id $i] ""]]
  # speed optimization
  binary scan [md5::md5c [join [list $door_id $i] ""]] H* hash

  if {[string compare -length 5 $hash "00000"] == 0} {
    append password [string index $hash 5]
  }
}

puts $password

