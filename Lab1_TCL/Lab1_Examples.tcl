#Example 1
set a 3
set b 2
set c [expr $a & $b]
puts "Value of a & b = $c"
set c [expr $a | $b]
puts "Value of a | b = $c"
set c [expr $a ^ $b]
puts "Value of a ^ b = $c"
set c [expr $a && $b]
puts "Value of a && b = $c"
set c [expr $a || $b]
puts "Value of a || b = $c"
puts "_________________________________________________"
#Example 2
set x 1
set res 0
while {$x < 6} {
	set res [expr $res + $x]
	incr x
}
puts "The sum from 1 to 5 = $res"
set res 0
for {set x 10} {$x < 16} {incr x} {
	set res [expr $res + $x]
}
puts "The sum from 10 to 15 = $res"
puts "_________________________________________________"
#Example 3
array set first {0 5 1 6 2 7 3 8 4 9}
array set second {0 1 1 1 2 1 3 1 4 1}
#array set result {}
for {set x 0} {$x < 5} {incr x} {
	set result($x) [expr $first($x) + $second($x)]
}
foreach index [array names result] {
	puts "result($index): $result($index)"
}

puts "-----------------------------"
set e 4
array set rotated {}
for {set x 0} {$x < 5} {incr x} {
	set rotated($x) $result($e)
	set e [expr $e - 1]
}
if 0 { foreach index [array names rotated] {
	puts "rotated($index): $rotated($index)"
}
}
parray rotated

