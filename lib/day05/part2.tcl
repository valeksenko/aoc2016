# https://adventofcode.com/2016/day/5#part2

package require md5

set door_id [string trimright [read stdin]]

array set password {}

for {set i 0} {[array size password] < 8} {incr i} {
  #set hash [md5::md5 -hex [join [list $door_id $i] ""]]
  # speed optimization
  binary scan [md5::md5c [join [list $door_id $i] ""]] H* hash

  if {[string compare -length 5 $hash "00000"] == 0} {
    set ind [string index $hash 5]
    if {($ind >= 0) && ($ind < 8) && (! [info exists password($ind)])} {
      set password($ind) [string index $hash 6]
    }
  }
}

set decoded ""
for { set i 0 }  { $i < [array size password] }  { incr i } {
  append decoded $password($i)
}

puts $decoded

