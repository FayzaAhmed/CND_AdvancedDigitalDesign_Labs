set matrix {1 2 3 4 5 6 7 8 9}
set transpose {}

for {set i 0} {$i < 3} {incr i} {
    for {set j $i} {$j <= [expr {[llength $matrix]-1}]} {incr j 3} {
        lappend transpose [lindex $matrix $j]
    }
lappend transpose \n
}

puts $transpose

